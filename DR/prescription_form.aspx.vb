Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Data
Imports CrystalDecisions.CrystalReports.Engine
Imports CrystalDecisions.Shared
Partial Class DR_prescription_form
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Dim pat As String = Session("patient")
        prescribe()
        Prescription.ReportSource = Session("pres")
    End Sub

    Sub prescribe()
        Dim pp As String = Session("patient")
        Dim adaptor As New SqlDataAdapter()
        Dim tab As New DataSet
        Dim con As New SqlConnection()
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        con.Open()
        Dim com As New SqlCommand()
        com.Connection = con
        com.CommandType = CommandType.Text
        adaptor.SelectCommand = com
        com.Parameters.AddWithValue("@patient_id", pp)
        com.Parameters.AddWithValue("@date", Date.Today)

        com.CommandText = "SELECT PATIENT.FIRST_NAME, PATIENT.LAST_NAME, PATIENT.TELEPHONE, PRESCRIPTION_LIST.PRESCRIPTION_NAME, PAT_PRESCRIPTION.DOSAGE, PAT_PRESCRIPTION.FREQUENCEY, PAT_PRESCRIPTION.DURATION, PAT_PRESCRIPTION.MODE FROM (PCH_DB.dbo.PAT_PRESCRIPTION PAT_PRESCRIPTION INNER JOIN PCH_DB.dbo.PATIENT PATIENT ON PAT_PRESCRIPTION.PATIENT_ID=PATIENT.PATIENT_ID) INNER JOIN PCH_DB.dbo.PRESCRIPTION_LIST PRESCRIPTION_LIST ON PAT_PRESCRIPTION.PRESCRIPTION_ID=PRESCRIPTION_LIST.PRESCRIPTION_ID where PAT_PRESCRIPTION.PATIENT_ID = @patient_id and PAT_PRESCRIPTION.DATE = @date"
        adaptor.Fill(tab)

        Dim rep As New ReportDocument()
        rep.Load(Server.MapPath("~/dr/patient_prescription.rpt"))
        rep.SetDataSource(tab.Tables(0))

        Session.Add("pres", rep)
        Prescription.RefreshReport()
        con.Close()

    End Sub

    
    
    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    Session.RemoveAll()
    '    Response.Redirect("~/DR/medical_summary.aspx")
    'End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session.RemoveAll()
        Response.Redirect("~/DR/medical_summary.aspx")
    End Sub
End Class
