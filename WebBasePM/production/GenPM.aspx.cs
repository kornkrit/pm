using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




namespace WebBasePM
{
    public partial class ProductionGenerator : System.Web.UI.Page
    {

        SqlConnection objConn;
        SqlCommand objCmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            custComFull.ReadOnly = true;
            custComAbbv.ReadOnly = true;

        }

        protected void srhProjCode_Click(object sender, EventArgs e)
        {

            string projCode = projCodeInput.Text;
            custComFull.Text = "";
            custComAbbv.Text = "";
            string projectCodeQuery = "SELECT [projectCode],[customerCompanyFull],[customerAbbv],[projectName],[quater],[pmstatus],[Reviewer],[Authun] FROM [PM].[dbo].[PmInfo] WHERE [projectCode] = '" + projCode + "';";
            string strConnString = "Server=localhost;Uid=sa;PASSWORD=08102535;database=PM;Max Pool Size=400;Connect Timeout=600;";
            objConn = new SqlConnection(strConnString);
            // Try to open database and read information.\SqlDataReader reader;
            SqlDataReader reader;
            objCmd = new SqlCommand(projectCodeQuery, objConn);
            objConn.Open();
            reader = objCmd.ExecuteReader();
            while (reader.Read())
            {
                if (reader["projectCode"].ToString() == projCode)
                {
                    custComFull.Text = reader["customerCompanyFull"].ToString();
                    custComAbbv.Text = reader["customerAbbv"].ToString();
                }
                else {
                    custComFull.Text = "None";
                    custComAbbv.Text = "None";
                }
            }


            reader.Close();
            reader = null;

        }
        /*
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage","alert('Called from code-behind directly!');", true);
            if (OSFileUpload.HasFile)
            {
                try
                {
                    string filename = System.IO.Path.GetFileName(OSFileUpload.FileName);
                    OSFileUpload.SaveAs(Server.MapPath("~/") + filename);
                    StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }
        */
       

        public string searchTextEnvironment(List<environment> list, string keyword)
        {
            string result = "";
            for (int i = 0; i < list.Count(); i++)
            {
                if (list[i].getHeader().ToLower().Equals(keyword.ToLower()))
                {
                    result = list[i].getValue();
                    break;
                }
                else
                {
                    result = null;
                }
            }

            return result;
        }

        public string searchTextEnvironment(List<Hardware> list, string keyword)
        {
            string result = "";
            for (int i = 0; i < list.Count(); i++)
            {
                if (list[i].getHeader().ToLower().Equals(keyword.ToLower()))
                {
                    result = list[i].getValue();
                    break;
                }
                else
                {
                    result = null;
                }
            }

            return result;
        }

        protected void Finish_Click(object sender, EventArgs e)
        {
            string projectCode = projCodeInput.Text;
            string quarter = quarterInput.Text;
            osConfigGen();
        }

        public void osConfigGen()
        {
            string projectcode = "1";
            string quarter = "1/2016";
            List<environment> environmentList = new List<ProductionGenerator.environment>();
            List<Hardware> hardwareList = new List<ProductionGenerator.Hardware>();
            List<DiskSpace> diskList = new List<ProductionGenerator.DiskSpace>();
            // Checking server machine specification
            string hostname = "", ipAddress = "", oracleOwner_login = "", oracleOwner_homeDirectory = "", oracleOwner_shell = "", oracleGroup_firstGroup = "", oracleGroup_secondGroup = "";
            string osNode = "1", osType = "AIX", osInfo = "", osMemSize = "", osSwap = "", osTmp = "", osJava = "", osKernel = "";
            string systemModel = "", machineSerialNumber = "", processorType = "", processorImplementationMode = "", processorVersion = "", numOfProc = "", procClockSpeed = "", cpuType = "", kernelType = "", ipaddress = "", subNetMask = "", crontab = "";
            List<CuteWebUI.AttachmentItem> osFilesList = new List<CuteWebUI.AttachmentItem>();
            foreach (CuteWebUI.AttachmentItem item in OSFILES.Items)
            {
                osFilesList.Add(item);
            }

            for (int i = 0; i < osFilesList.Count(); i++)
            {
                string fileName = osFilesList[i].FileName;
                string filePath = osFilesList[i].GetTempFilePath().ToString();
                if (fileName.ToLower().Equals("user_environments.txt"))
                {
                    /// Load Environment
                    TextReader reader = File.OpenText(filePath);
                    string line;
                    string[] strtmps = null;
                    while ((line = reader.ReadLine()) != null)
                    {
                        if (line.Trim().Length > 0)
                        {
                            strtmps = line.Trim().Split(new char[] { '=' }, 2);
                            environmentList.Add(new environment(strtmps[0].ToString(), strtmps[1].ToString()));
                        }
                    }
                }
                else if (fileName.ToLower().Equals("user_id.txt"))
                {
                    TextReader reader = File.OpenText(filePath);
                    string line;
                    while ((line = reader.ReadLine()) != null)
                    {
                        string[] strtmps2 = line.Trim().Split(new char[] { '(', ')' });
                        string[] strtmps = new string[2];

                        strtmps[0] = "";
                        strtmps[1] = "";

                        if (strtmps2.Length > 3)
                        {
                            strtmps[0] = strtmps2[3];
                        }
                        if (strtmps2.Length > 5)
                        {
                            strtmps[1] = strtmps2[5];
                            for (int j = 7; j < strtmps2.Length; j += 2)
                            {
                                strtmps[1] += "," + strtmps2[j];
                                oracleGroup_firstGroup = strtmps[1].ToString();
                                oracleGroup_secondGroup = strtmps2[j].ToString();
                            }
                        }
                    }
                }
                else if (fileName.ToLower().Equals("crontab.txt"))
                {
                    TextReader reader = File.OpenText(filePath);

                    string line;
                    string[] strtmps = null;
                    if ((line = reader.ReadToEnd()) != null && line.Trim().Length > 0)
                    {
                        strtmps = line.Trim().Split(new char[] { }, 1);
                    }
                    else
                    {
                        strtmps = new string[] { "-" };
                    }

                    crontab = strtmps.ToString();
                }
                else if (fileName.ToLower().Equals("hostname.txt"))
                {
                    TextReader reader = File.OpenText(filePath);

                    string line;
                    object[] objtmps = null;
                    if ((line = reader.ReadLine()) != null)
                    {
                        objtmps = new object[2];
                        objtmps[0] = "Hostname";
                        objtmps[1] = line.Trim();
                        hostname = objtmps[1].ToString();
                    }

                }
                else if (fileName.ToLower().Equals("ip.txt"))
                {
                    TextReader reader = File.OpenText(filePath);
                    string line;
                    bool notFirst = false;
                    string ipTmp = null;
                    object[] objtmps = null;
                    string[] strtmps = null;
                    char[] deli1 = new char[] { ' ' };

                    while ((line = reader.ReadLine()) != null)
                    {
                        if ((strtmps = line.Trim().Split(deli1)).Length > 1 && strtmps[0].Equals("inet") && !strtmps[1].Equals("127.0.0.1"))
                        {
                            if (notFirst)
                            {
                                ipTmp += "," + strtmps[1];
                            }
                            else
                            {
                                ipTmp = strtmps[1];
                                notFirst = true;
                            }
                        }
                    }
                    objtmps = new object[2];
                    objtmps[0] = "IP Address";
                    objtmps[1] = ipTmp;
                    ipAddress = objtmps[1].ToString();
                }
                else if (fileName.ToLower().Equals("os_info.txt"))
                {
                    TextReader reader = File.OpenText(filePath);
                    string line;
                    object[] objtmps = null;
                    if ((line = reader.ReadLine()) != null)
                    {
                        objtmps = new object[2];
                        objtmps[1] = line.Trim();
                        osInfo = objtmps[1].ToString();
                    }

                }
                else if (fileName.ToLower().Equals("disk.txt"))
                {
                    TextReader reader = File.OpenText(filePath);

                    string line;
                    object[] objtmps = null;
                    char[] deli1 = new char[] { ' ' };
                    if (reader.ReadLine() != null)
                    {
                        while (((line = reader.ReadLine()) != null) && (line.Trim().Length > 0))
                        {
                            objtmps = line.Split(deli1, 7, StringSplitOptions.RemoveEmptyEntries);
                            diskList.Add(new DiskSpace(objtmps[0].ToString(), objtmps[1].ToString(), objtmps[2].ToString(), objtmps[3].ToString(), objtmps[4].ToString(), objtmps[5].ToString(), objtmps[6].ToString()));
                        }
                    }
                }
                else if (fileName.ToLower().Equals("system_info.txt"))
                {
                    TextReader reader = File.OpenText(filePath);
                    string line;
                    string[] strtmps = null;
                    while ((line = reader.ReadLine()) != null)
                    {
                        if (line.Trim().Length > 0)
                        {
                            strtmps = line.Trim().Split(new char[] { ':' }, 2);
                            if (strtmps.Length > 1)
                            {
                                hardwareList.Add(new Hardware(strtmps[0].ToString(), strtmps[1].ToString()));
                            }
                          
                        }
                    }
                    systemModel = searchTextEnvironment(hardwareList, "System Model");
                    machineSerialNumber = searchTextEnvironment(hardwareList, "Machine Serial Number"); 
                    processorType = searchTextEnvironment(hardwareList, "Processor Type");
                    processorImplementationMode = searchTextEnvironment(hardwareList, "Processor Implementation Mode");
                    processorVersion = searchTextEnvironment(hardwareList, "Processor Version");
                    numOfProc = searchTextEnvironment(hardwareList, "Number Of Processors");
                    procClockSpeed = searchTextEnvironment(hardwareList, "Processor Clock Speed");
                    cpuType = searchTextEnvironment(hardwareList, "CPU Type");
                    kernelType = searchTextEnvironment(hardwareList, "Kernel Type");
                    ipaddress = searchTextEnvironment(hardwareList, "IP Address");
                    subNetMask = searchTextEnvironment(hardwareList, "Sub Netmask");


                }
                else if (fileName.ToLower().Equals("swap.txt"))
                {
                    TextReader reader = File.OpenText(filePath);
                    string line;
                    string[] strtmps = null;
                    char[] deli1 = new char[] { ' ' };
                    object[] objtmps = null;
                    if (reader.ReadLine() != null)
                    {
                        if (((line = reader.ReadLine()) != null) && (line.Trim().Length > 0))
                        {
                            strtmps = line.Split(deli1, 9, StringSplitOptions.RemoveEmptyEntries);
                            if ((strtmps != null) && (strtmps.Length > 3) && (strtmps[3].Length > 0))
                            {
                                objtmps = new object[2];
                                objtmps[1] = "Paging Space Information\n   Total Paging Space : " + strtmps[3];
                                osSwap = objtmps[1].ToString();
                            }
                        }
                    }
                }
                else if (fileName.ToLower().Equals("tmp_space.txt"))
                {
                    TextReader reader = File.OpenText(filePath);
                    string line;
                    string[] strtmps = null;
                    char[] deli1 = new char[] { ' ' };
                    object[] objtmps = null;
                    if (reader.ReadLine() != null)
                    {
                        if (((line = reader.ReadLine()) != null) && (line.Trim().Length > 0))
                        {
                            strtmps = line.Split(deli1, 7, StringSplitOptions.RemoveEmptyEntries);
                            if ((strtmps != null) && (strtmps.Length > 1) && (strtmps[1].Length > 0))
                            {
                                objtmps = new object[2];

                                objtmps[1] = "Tmp size: " + strtmps[1] + " Megabytes";
                                osTmp = objtmps[1].ToString();
                            }
                        }
                    }
                }
                else if (fileName.ToLower().Equals("java_version.txt")) {
                    TextReader reader = File.OpenText(filePath);
                    string line;
                    object[] objtmps;
                    if ((line = reader.ReadLine()) != null)
                        {
                            string strtmp = line.Trim();
                            while (((line = reader.ReadLine()) != null) && (line.Trim().Length > 0))
                            {
                                strtmp += "\n" + line.Trim();
                            }

                            objtmps = new object[2];
                           
                            objtmps[1] = strtmp;
                        osJava = objtmps[1].ToString();
                        }
                }
            }
            oracleOwner_login = searchTextEnvironment(environmentList, "LOGNAME");
            oracleOwner_homeDirectory = searchTextEnvironment(environmentList, "HOME");
            oracleOwner_shell = searchTextEnvironment(environmentList, "SHELL");
            osMemSize = searchTextEnvironment(hardwareList, "Memory Size");
            string insertStr = "INSERT INTO [PM].[dbo].[ChkServerMacSpec]([projectCode] ,[projectQuater],[hostname],[ipAddress],[oracleOwner_login],[oracleOwner_homeDirectory],[oracleOwner_shell],[oracleGroup_firstGroup],[oracleGroup_secondGroup]) VALUES";
            insertStr = insertStr + "('"+ projectcode + "', '"+ quarter +"' ,'" + hostname + "','" + ipAddress + "','" + oracleOwner_login + "','" + oracleOwner_homeDirectory + "','" + oracleOwner_shell + "','" + oracleGroup_firstGroup + "','" + oracleGroup_secondGroup + "')";
            string strConnString = "Server=localhost;Uid=sa;PASSWORD=08102535;database=PM;Max Pool Size=400;Connect Timeout=600;";
            objConn = new SqlConnection(strConnString);
            objConn.Open();
            SqlCommand cmd1 = new SqlCommand(insertStr, objConn);
            cmd1.ExecuteNonQuery();

            string diskInsrtStr = "INSERT INTO [PM].[dbo].[OSDiskSpace]([projectCode],[projectQuater],[node],[fileSystem],[mbBlocks],[free],[percentUsed],[iUsed],[percentIUsed],[mountedOn])VALUES";
            for (int j = 0; j < diskList.Count; j++)
            {
                diskInsrtStr = diskInsrtStr + "('"+projectcode+"','"+quarter+"',1,'" + diskList[j].getDiskObject()[0].ToString() + "','" + diskList[j].getDiskObject()[1].ToString() + "','" + diskList[j].getDiskObject()[2].ToString() + "','" + diskList[j].getDiskObject()[3].ToString() + "','" + diskList[j].getDiskObject()[4].ToString() + "','" + diskList[j].getDiskObject()[5].ToString() + "','" + diskList[j].getDiskObject()[6].ToString() + "')";
                if (j != diskList.Count)
                {
                    diskInsrtStr = diskInsrtStr + ",";
                }
            }
            diskInsrtStr = diskInsrtStr.Substring(0,diskInsrtStr.Length - 1);
            diskInsrtStr = diskInsrtStr + ";";
            SqlCommand cmd2 = new SqlCommand(diskInsrtStr, objConn);
            cmd2.ExecuteNonQuery();
            osKernel = "AIXTHREAD_SCOPE=" + searchTextEnvironment(environmentList, "AIXTHREAD_SCOPE");
            string osCompare = "INSERT INTO [PM].[dbo].[CompareOracleRequirement]([projectCode],[projectQuater],[osNode],[osType],[osInfo],[osMemSize],[osSwap],[osTmp],[osJava],[osKernel])";
            osCompare = osCompare + "VALUES('"+ projectcode +"','"+ quarter +"',"+ osNode +",'"+ osType +"','"+ osInfo +"','"+ osMemSize +"','"+ osSwap +"','"+ osTmp +"','"+ osJava +"','"+ osKernel +"')";
            SqlCommand cmd3 = new SqlCommand(osCompare, objConn);
            cmd3.ExecuteNonQuery();
            string hardwareStr = "INSERT INTO [PM].[dbo].[HardwareConfiguration]([projectCode],[projectQuater],[node],[systemModel],[machineSerialNumber],[processorType],[processorImplementationMode],[processorVersion],[numOfProc],[procClockSpeed],[cpuType],[kernelType],[ipaddress],[subNetMask],[crontab])VALUES";
            hardwareStr = hardwareStr + "('"+projectcode+"','"+quarter+"', "+ osNode +" , '"+systemModel+"','"+machineSerialNumber+"','"+processorType+"','"+processorImplementationMode+"','"+processorVersion+"','"+numOfProc+"','"+procClockSpeed+"','"+cpuType+"','"+kernelType+"','"+ipaddress+"','"+subNetMask+"','"+ crontab + "')";
            SqlCommand cmd4 = new SqlCommand(hardwareStr, objConn);
            cmd4.ExecuteNonQuery();
            string environmentStr = "INSERT INTO [PM].[dbo].[UserEnvironment]([projectCode],[quarter],[header],[value]) VALUES ";

            for (int j = 0; j < environmentList.Count; j++) {
                environmentStr = environmentStr + "('"+ projectcode +"','"+ quarter +"','"+ environmentList[j].getHeader() +"','"+ environmentList[j].getValue() +"'),";
                
            }
            environmentStr = environmentStr.Substring(0, environmentStr.Length - 1);
            environmentStr = environmentStr + ";";
            SqlCommand cmd5 = new SqlCommand(environmentStr, objConn);
            cmd5.ExecuteNonQuery();
            objConn.Close();
        }

        public class environment
        {
            public string header;
            public string value;

            public environment(string hearder, string value)
            {
                this.header = hearder;
                this.value = value;
            }
            public string getHeader()
            {
                return this.header;
            }
            public string getValue()
            {
                return this.value;
            }
        }

        public class Hardware
        {
            public string header;
            public string value;

            public Hardware(string hearder, string value)
            {
                this.header = hearder;
                this.value = value;
            }
            public string getHeader()
            {
                return this.header;
            }
            public string getValue()
            {
                return this.value;
            }
        }

        public class DiskSpace
        {
            public string fileSystem;
            public string mbBlocks;
            public string free;
            public string percentUsed;
            public string iUsed;
            public string percentIUsed;
            public string mountedOn;
            public object[] diskStroage;

            public DiskSpace(string fileSystem, string mbBlocks, string free, string percentUsed, string iUsed, string percentIUsed, string mountedOn)
            {
                this.fileSystem = fileSystem;
                this.mbBlocks = mbBlocks;
                this.free = free;
                this.percentUsed = percentUsed;
                this.iUsed = iUsed;
                this.percentIUsed = percentIUsed;
                this.mountedOn = mountedOn;
                diskStroage = new object[7];
                diskStroage[0] = fileSystem;
                diskStroage[1] = mbBlocks;
                diskStroage[2] = free;
                diskStroage[3] = percentUsed;
                diskStroage[4] = iUsed;
                diskStroage[5] = percentIUsed;
                diskStroage[6] = mountedOn;
            }
            public object[] getDiskObject() 
            {
                return this.diskStroage;
            }
        }
    }
}
 