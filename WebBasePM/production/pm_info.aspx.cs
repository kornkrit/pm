using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class production_pm_info : System.Web.UI.Page
{
    SqlConnection objConn;
    SqlCommand objCmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        string strConnString = "Server=localhost;Uid=sa;PASSWORD=08102535;database=PM;Max Pool Size=400;Connect Timeout=600;";
        objConn = new SqlConnection(strConnString);
        string os = "";

        


        string chkServerMacSpec = "SELECT * FROM ChkServerMacSpec WHERE projectCode = '" + "1 " +"' AND projectQuater = '" + "1/2016"+ "';"; 
        objConn = new SqlConnection(strConnString);
        SqlDataReader reader;
        objCmd = new SqlCommand(chkServerMacSpec, objConn);
        objConn.Open();
        reader = objCmd.ExecuteReader();
        while (reader.Read())
        {
           
                hostname.Text = reader["hostname"].ToString();
                hostname2.Text = reader["hostname"].ToString();
                ipAddress.Text = reader["ipAddress"].ToString();
                login.Text = reader["oracleOwner_login"].ToString();
                homeDirectory.Text = reader["oracleOwner_homeDirectory"].ToString();
                shell.Text = reader["oracleOwner_shell"].ToString();
                oracleFirstGroup.Text = reader["oracleGroup_firstGroup"].ToString();
                oracleSecondGroup.Text = reader["oracleGroup_secondGroup"].ToString();
        }
        reader.Close();
        reader = null;


        string compareOracleReq = "SELECT * FROM CompareOracleRequirement WHERE projectCode = '" + "1 " + "' AND projectQuater = '" + "1/2016" + "';";
        objConn = new SqlConnection(strConnString);
        SqlDataReader reader2;
        objCmd = new SqlCommand(compareOracleReq, objConn);
        objConn.Open();
        reader2 = objCmd.ExecuteReader();
        while (reader2.Read())
        {
            os = reader2["osType"].ToString();
            osInfo.Text = reader2["osInfo"].ToString();
            ram.Text = reader2["osMemSize"].ToString();
            swap.Text = reader2["osSwap"].ToString();
            tmp.Text = reader2["osTmp"].ToString();
            java.Text = reader2["osJava"].ToString();
            kernel.Text = reader2["osKernel"].ToString();
        }
        reader2.Close();
        osType.Text = os;
        osType1.Text = os;
        osType2.Text = os;
        osType3.Text = os;
        osType4.Text = os;

        string diskSpace = "SELECT * FROM OSDiskSpace WHERE projectCode = '" + "1 " + "' AND projectQuater = '" + "1/2016" + "';";
        objConn = new SqlConnection(strConnString);
        SqlDataReader reader3;
        objCmd = new SqlCommand(diskSpace, objConn);
        objConn.Open();
        reader3 = objCmd.ExecuteReader();
       
        while (reader3.Read())
        {
            TableRow tRow = new TableRow();
            TableCell fileSystem = new TableCell();
            fileSystem.Text = reader3["fileSystem"].ToString();
            TableCell mbBlocks = new TableCell();
            mbBlocks.Text = reader3["mbBlocks"].ToString();
            TableCell free = new TableCell();
            free.Text = reader3["free"].ToString();
            TableCell percentUsed = new TableCell();
            percentUsed.Text = reader3["percentUsed"].ToString();
            TableCell iUsed = new TableCell();
            iUsed.Text = reader3["iUsed"].ToString();
            TableCell percentIUsed = new TableCell();
            percentIUsed.Text = reader3["percentIUsed"].ToString();
            TableCell mountedOn = new TableCell();
            mountedOn.Text = reader3["mountedOn"].ToString();
            tRow.Cells.Add(fileSystem);
            tRow.Cells.Add(mbBlocks);
            tRow.Cells.Add(free);
            tRow.Cells.Add(percentUsed);
            tRow.Cells.Add(iUsed);
            tRow.Cells.Add(percentIUsed);
            tRow.Cells.Add(mountedOn);
            diskTable.Rows.Add(tRow);

        }
        reader3.Close();


        string userEnv = "SELECT * FROM UserEnvironment WHERE projectCode = '" + "1 " + "' AND projectQuater = '" + "1/2016" + "';";
        objConn = new SqlConnection(strConnString);
        SqlDataReader reader4;
        objCmd = new SqlCommand(userEnv, objConn);
        objConn.Open();
        reader4 = objCmd.ExecuteReader();

        while (reader4.Read())
        {
            TableRow tRow = new TableRow();
            TableCell parameter = new TableCell();
            parameter.Text = reader4["header"].ToString();
            TableCell valueEnv = new TableCell();
            valueEnv.Text = reader4["value"].ToString();
            TableCell free = new TableCell();
           
            tRow.Cells.Add(parameter);
            tRow.Cells.Add(valueEnv);
            envTable.Rows.Add(tRow);

        }
        reader4.Close();

        string hardwareConfig = "SELECT * FROM HardwareConfiguration WHERE projectCode = '" + "1 " + "' AND projectQuater = '" + "1/2016" + "';";
        objConn = new SqlConnection(strConnString);
        SqlDataReader reader5;
        objCmd = new SqlCommand(hardwareConfig, objConn);
        objConn.Open();
        reader5 = objCmd.ExecuteReader();

        while (reader5.Read())
        {
            systemModel.Text = reader5["systemModel"].ToString();
            machineSerialNumber.Text = reader5["machineSerialNumber"].ToString();
            processorType.Text = reader5["processorType"].ToString();
            processorImplementationMode.Text = reader5["processorImplementationMode"].ToString();
            processorVersion.Text = reader5["processorVersion"].ToString();
            numOfProc.Text = reader5["numOfProc"].ToString();
            cpuType.Text = reader5["cpuType"].ToString();
            kernelType.Text = reader5["kernelType"].ToString();
            ipaddresses.Text = reader5["ipaddresses"].ToString();
            subNetMask.Text = reader5["subNetMask"].ToString();
            crontab.Text = reader5["crontab"].ToString();
        }
        reader5.Close();

    }
}