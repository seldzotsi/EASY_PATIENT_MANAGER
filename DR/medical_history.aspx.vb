Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Data
Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared
Partial Class DR_medical_history
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        myreport()
        myrep()
        CrystalReportViewer1.ReportSource = Session("dbc")
    End Sub

    Sub myreport()
        Dim rep As New ReportDocument()
        rep.Load(Server.MapPath("~/dr/CrystalReport.rpt"))

        Dim adaptor As New SqlDataAdapter()
        Dim tab As New DataSet
        Dim con As New SqlConnection()
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        con.Open()
        Dim com As New SqlCommand()
        com.Connection = con
        com.CommandType = CommandType.Text
        adaptor.SelectCommand = com
        com.Parameters.AddWithValue("@patient_id", pid.Text)
        Dim ds As New med_hist
        com.CommandText = "Select * from patient where patient_id= @patient_id"
        adaptor.Fill(ds.PATIENT)
        '***************************************

        'Dim adaaptor As New SqlDataAdapter()
        Dim com2 As New SqlCommand()
        com2.Connection = con
        com2.CommandType = CommandType.Text
        adaptor.SelectCommand = com2
        com2.Parameters.AddWithValue("@patient_id", pid.Text)
        com2.CommandText = "Select * from opd where patient_id= @patient_id"
        
        adaptor.Fill(ds.OPD)



        rep.SetDataSource(ds)
        Session.Add("dbc", rep)
        CrystalReportViewer1.RefreshReport()
        con.Close()


    End Sub


    Sub myrep()
        'Dim adaptor As New SqlDataAdapter()
        'Dim tab As New DataSet
        'Dim con As New SqlConnection()
       
        'Dim com As New SqlCommand()
        'com.Connection = con
        'com.CommandType = CommandType.Text
        'adaptor.SelectCommand = com
        'com.Parameters.AddWithValue("@patient_id", pid.Text)
        'Dim ds As New med_hist
        'com.CommandText = "Select * from opd where patient_id= @patient_id"
        'adaptor.Fill(ds.OPD)


        'rep.Load(Server.MapPath("~/dr/CrystalReport.rpt"))
        'rep.SetDataSource(ds)
        'Session.Add("dbc", rep)
        'CrystalReportViewer1.RefreshReport()
        'con.Close()


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Session.Remove("dbc")
            myreport()
        End If
        CrystalReportViewer1.ReportSource = Session("dbc")
    End Sub

End Class
