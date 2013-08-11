
Partial Class NURSE_search_patient
    Inherits System.Web.UI.Page

    Protected Sub pid_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles pid.TextChanged
        Dim patient_info As New retrieve_patient
        If patient_info.get_patient(pid.Text) Then
            FN.Text = patient_info.first_name
            LN.Text = patient_info.last_name
            GENLIST.SelectedValue = patient_info.gen_der
            ADDRE.Text = patient_info.address
            TEL.Text = patient_info.telephone
            DOB.Text = patient_info.dob

            Dim sys_date As Integer = Date.Today.Year
            Dim patient_dob As Integer = patient_info.dob.Year
            Dim age As Integer = sys_date - patient_dob
            AG.Text = age
            If patient_info.image.ToString = "NO IMAGE" Then
                Image1.ImageUrl = "~/noimg.jpg"
            Else
                Image1.ImageUrl = patient_info.image
            End If


        Else
            recnotfound.Visible = True
            FN.Text = ""
            LN.Text = ""
            GENLIST.SelectedValue = "GENDER"
            AG.Text = ""
            Image1.ImageUrl = ""
            TEL.Text = ""
            ADDRE.Text = ""


        End If

        Dim next_of_kin As New retrieve_next_of_kin
        next_of_kin.get_next_of_kin(pid.Text)
        FN0.Text = next_of_kin.firstname
        LN0.Text = next_of_kin.lastname
        ADD.Text = next_of_kin.address
        TELEPH.Text = next_of_kin.tele
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        
        If GENLIST.SelectedValue = "GENDER" Then

            Label18.Visible = True
        Else
            Dim ret_pat As New retrieve_patient
            Dim KIN As New retrieve_next_of_kin
            ret_pat.telephone = TEL.Text
            ret_pat.dob = DOB.Text
            ret_pat.address = ADDRE.Text
            ret_pat.gen_der = GENLIST.SelectedValue
            ret_pat.first_name = FN.Text
            ret_pat.last_name = LN.Text

            KIN.address = ADD.Text
            KIN.firstname = FN0.Text
            KIN.lastname = LN0.Text
            KIN.tele = TELEPH.Text
            KIN.update_kin(pid.Text)

            If ret_pat.update_rec(pid.Text) Then
                Response.Redirect("~/NURSE/success.aspx")

            Else
                Response.Redirect("~/NURSE/fail.aspx")
            End If

        End If

        


        

    End Sub



    
End Class
