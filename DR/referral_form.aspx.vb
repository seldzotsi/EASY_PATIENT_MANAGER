Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Data
Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared
Partial Class DR_referral_form
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim con_id As String = Session("consult_id")
        Dim pat_id As String = Session("pat_id")

        Dim adaptor As New SqlDataAdapter()
        Dim tab As New DataSet
        Dim con As New SqlConnection()
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        con.Open()
        Dim com As New SqlCommand()
        com.Connection = con
        com.CommandType = CommandType.Text
        adaptor.SelectCommand = com
        com.Parameters.AddWithValue("@patient_id", pat_id)
        com.Parameters.AddWithValue("@consult_id", con_id)
        com.CommandText = "SELECT dbo.PATIENT.FIRST_NAME, dbo.PATIENT.LAST_NAME, dbo.PATIENT.GENDER, dbo.CONSULTATION.CONSULT_ID, dbo.SYMPTON.SYMPTON, dbo.REFFERAL.REFFERED_TO FROM dbo.CONSULTATION INNER JOIN dbo.PATIENT ON dbo.CONSULTATION.PATIENT_ID = dbo.PATIENT.PATIENT_ID INNER JOIN dbo.SYMPTON ON dbo.CONSULTATION.SYMPTONS_ID = dbo.SYMPTON.SYMPTON_ID INNER JOIN dbo.REFFERAL ON dbo.PATIENT.PATIENT_ID = dbo.REFFERAL.PATIENT_ID where patient.patient_id = @patient_id and CONSULTATION.CONSULT_ID = @consult_id"
        adaptor.Fill(tab)
        Dim rep As New ReportDocument()
        rep.Load(Server.MapPath("~/dr/patient_referral.rpt"))
        rep.SetDataSource(tab.Tables(0))

        Session.Add("reff", rep)
        CrystalReportViewer1.RefreshReport()
        con.Close()

        CrystalReportViewer1.ReportSource = Session("reff")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session.RemoveAll()
        Response.Redirect("~/DR/medical_summary.aspx")
    End Sub
End Class
