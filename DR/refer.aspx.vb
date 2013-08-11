
Partial Class DR_refer
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        pid.Text = DirectCast(Session("pat_id"), String)
        'pid.Text = CType(Session("pat_id"), String)

        Dim patient_info As New retrieve_patient
        If patient_info.get_patient(pid.Text) Then
            FN.Text = patient_info.first_name
            LN.Text = patient_info.last_name
            GENDER.Text = patient_info.gen_der

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

            FN.Text = ""
            LN.Text = ""
            GENDER.Text = ""
            AG.Text = ""
            Image1.ImageUrl = ""

        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ref_id As New id_generator
        Dim ref As String = ref_id.generate()
        Dim con_id As String = CType(Session("consult_id"), String)
        Dim db As New PCH_dataDataContext
        Dim refer As New REFFERAL With {.CONSULT_ID = con_id, .DATE = Date.Today, .PATIENT_ID = pid.Text, .REFFERED_TO = dest.SelectedValue, .USER_ID = User.Identity.Name, .REF_ID = ref}
        db.REFFERALs.InsertOnSubmit(refer)
        db.SubmitChanges()

        Response.Redirect("~/dr/referral_form.aspx")


    End Sub
End Class
