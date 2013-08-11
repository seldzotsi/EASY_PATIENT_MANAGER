
Partial Class prescription
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        pid2.Text = Session("patient_id")

       
        Dim patient_info As New retrieve_patient
        If patient_info.get_patient(pid2.Text) Then
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
            recnotfound.Visible = True
            FN.Text = ""
            LN.Text = ""
            GENDER.Text = ""
            AG.Text = ""
            Image1.ImageUrl = ""

        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim pat As String = pid2.Text
        Dim PRESCRIBE As New PCH_dataDataContext
        Dim identity As New id_generator
        Dim id As String = identity.generate()

        


        If MED1.SelectedValue <> "SELECT MEDICATION" And DOS1.SelectedValue <> "DOSAGE" And FREQ1.SelectedValue <> "FREQUENCY" And DUR1.SelectedValue <> "DURATION" And DIR1.SelectedValue <> "DIRECTION" Then

            Dim prescription As New PAT_PRESCRIPTION With {.MODE = DIR1.SelectedValue.ToString, .DOSAGE = DOS1.SelectedValue.ToString, .DURATION = DUR1.SelectedValue.ToString, .FREQUENCEY = FREQ1.SelectedValue.ToString, .DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = MED1.SelectedValue.ToString, .ID = id + "@#43FG#"}
            PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescription)
            PRESCRIBE.SubmitChanges()

            If IsPostBack Then
                Session.Add("patient", pid2.Text)
                Response.Redirect("prescription_form.aspx")
            End If
        Else
            sym_war1.Visible = True

        End If



        If MED1.SelectedValue <> "SELECT MEDICATION" And DOS1.SelectedValue <> "DOSAGE" And FREQ1.SelectedValue <> "FREQUENCY" And DUR1.SelectedValue <> "DURATION" And DIR1.SelectedValue <> "DIRECTION" _
            And MED2.SelectedValue <> "SELECT MEDICATION" And dos2.SelectedValue <> "DOSAGE" And freq2.SelectedValue <> "FREQUENCY" And DUr2.SelectedValue <> "DURATION" And DIR2.SelectedValue <> "DIRECTION" Then


            Dim prescription As New PAT_PRESCRIPTION With {.MODE = DIR1.SelectedValue.ToString, .DOSAGE = DOS1.SelectedValue.ToString, .DURATION = DUR1.SelectedValue.ToString, .FREQUENCEY = FREQ1.SelectedValue.ToString, .DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = MED1.SelectedValue.ToString, .ID = id + "@#43FG#"}
            PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescription)
            PRESCRIBE.SubmitChanges()

            Dim prescriptio As New PAT_PRESCRIPTION With {.MODE = DIR2.SelectedValue.ToString, .DOSAGE = dos2.SelectedValue.ToString, .DURATION = DUr2.SelectedValue.ToString, .FREQUENCEY = freq2.SelectedValue.ToString, .DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = MED2.SelectedValue.ToString, .ID = id + "@#43FG#"}
            PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescriptio)
            PRESCRIBE.SubmitChanges()

            If IsPostBack Then
                Session.Add("patient", pid2.Text)
                Response.Redirect("prescription_form.aspx")
            End If
        Else


        End If


        If MED1.SelectedValue <> "SELECT MEDICATION" And DOS1.SelectedValue <> "DOSAGE" And FREQ1.SelectedValue <> "FREQUENCY" And DUR1.SelectedValue <> "DURATION" And DIR1.SelectedValue <> "DIRECTION" _
            And MED2.SelectedValue <> "SELECT MEDICATION" And dos2.SelectedValue <> "DOSAGE" And freq2.SelectedValue <> "FREQUENCY" And DUr2.SelectedValue <> "DURATION" And DIR2.SelectedValue <> "DIRECTION" _
            And MED3.SelectedValue <> "SELECT MEDICATION" And dos3.SelectedValue <> "DOSAGE" And freq3.SelectedValue <> "FREQUENCY" And DUr3.SelectedValue <> "DURATION" And DIR3.SelectedValue <> "DIRECTION" Then



            Dim prescription As New PAT_PRESCRIPTION With {.MODE = DIR1.SelectedValue.ToString, .DOSAGE = DOS1.SelectedValue.ToString, .DURATION = DUR1.SelectedValue.ToString, .FREQUENCEY = FREQ1.SelectedValue.ToString, .DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = MED1.SelectedValue.ToString, .ID = id + "@#43FG#"}
            PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescription)
            PRESCRIBE.SubmitChanges()

            Dim prescriptio As New PAT_PRESCRIPTION With {.MODE = DIR2.SelectedValue.ToString, .DOSAGE = dos2.SelectedValue.ToString, .DURATION = DUr2.SelectedValue.ToString, .FREQUENCEY = freq2.SelectedValue.ToString, .DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = MED2.SelectedValue.ToString, .ID = id + "@#43FG#"}
            PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescriptio)
            PRESCRIBE.SubmitChanges()

            Dim prescripti As New PAT_PRESCRIPTION With {.MODE = DIR3.SelectedValue.ToString, .DOSAGE = dos3.SelectedValue.ToString, .DURATION = DUr3.SelectedValue.ToString, .FREQUENCEY = freq3.SelectedValue.ToString, .DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = MED3.SelectedValue.ToString, .ID = id + "@#43FG#"}
            PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescripti)
            PRESCRIBE.SubmitChanges()
            If IsPostBack Then
                Session.Add("patient", pid2.Text)
                Response.Redirect("prescription_form.aspx")
            End If
        Else


        End If

        'If MED2.SelectedValue <> "SELECT MEDICATION" Then
        '    Dim prescriptio As New PAT_PRESCRIPTION With {.MODE = DIR2.SelectedValue.ToString, .DOSAGE = dos2.SelectedValue.ToString, .DURATION = DUr2.SelectedValue.ToString, .FREQUENCEY = freq2.SelectedValue.ToString, .DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = MED2.SelectedValue.ToString, .ID = id + "DGJ@#"}
        '    PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescriptio)
        '    PRESCRIBE.SubmitChanges()
        'End If

        'If MED3.SelectedValue <> "SELECT MEDICATION" Then
        '    Dim prescripti As New PAT_PRESCRIPTION With {.MODE = DIR3.SelectedValue.ToString, .DOSAGE = dos3.SelectedValue.ToString, .DURATION = DUr3.SelectedValue.ToString, .FREQUENCEY = freq3.SelectedValue.ToString, .DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = MED3.SelectedValue.ToString, .ID = id + "WQ912@%#"}
        '    PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescripti)
        '    PRESCRIBE.SubmitChanges()
        'End If

            'If s4.SelectedValue <> "SELECT MEDICATION" Then
            '    Dim prescripti As New PAT_PRESCRIPTION With {.DATE = Date.Today, .PATIENT_ID = pat, .PRESCRIPTION_ID = s4.SelectedValue.ToString, .ID = id + "@#@JFD7&"}
            '    PRESCRIBE.PAT_PRESCRIPTIONs.InsertOnSubmit(prescripti)
            '    PRESCRIBE.SubmitChanges()
            'End If

           





    End Sub

    Protected Sub pid_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles pid2.TextChanged
        Dim patient_info As New retrieve_patient
        If patient_info.get_patient(pid2.Text) Then
            FN.Text = patient_info.first_name
            LN.Text = patient_info.last_name
            GENDER.Text = patient_info.gen_der

            Dim sys_date As Integer = Date.Today.Year
            Dim patient_dob As Integer = patient_info.dob.Year
            Dim age As Integer = sys_date - patient_dob
            AG.Text = age
            If patient_info.image.Contains("") Then
                Image1.ImageUrl = "~/noimg.jpg"
            Else
                Image1.ImageUrl = patient_info.image
            End If


        Else
            recnotfound.Visible = True
            FN.Text = ""
            LN.Text = ""
            GENDER.Text = ""
            AG.Text = ""
            Image1.ImageUrl = ""

        End If
    End Sub

    
End Class
