
Partial Class NURSE_search
    Inherits System.Web.UI.Page

    
   
    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged
        Session("patid") = GridView1.SelectedValue.ToString
        Response.Redirect("~\NURSE\opd_vitals.aspx")
    End Sub
End Class
