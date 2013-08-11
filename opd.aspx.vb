Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Data
Partial Class DR_opd
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim get_pat As New retrieve_patient
        get_pat.get_patient(pid.Text)
        fn.Text = get_pat.first_name
        ln.Text = get_pat.last_name
        Image1.ImageUrl = get_pat.image
    End Sub

    
End Class
