
Partial Class OPD_opd_vitals
    Inherits System.Web.UI.Page

   

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim pdata As New PCH_dataDataContext
        Dim opdid As New id_generator
        Dim id As String = opdid.generate()
        Dim emp As Double = 0

        If temp.Text <> "" And bp.Text <> "" And weight.Text <> "" And height.Text <> "" Then

            Dim op As New OPD With {.BP = bp.Text, .DATE = Date.Today, .HEGHT = height.Text, .OPD_ID = id, .PATIENT_ID = patient_id.Text, _
                                    .TEMPERATURE = temp.Text, .USER_ID = User.Identity.Name, .WEIGHT = weight.Text _
                                   }

            pdata.OPDs.InsertOnSubmit(op)
            pdata.SubmitChanges()

            
        End If


        If temp.Text <> "" Then
            Dim op2 As New OPD With {.BP = emp, .DATE = Date.Today, .HEGHT = emp, .OPD_ID = id, .PATIENT_ID = patient_id.Text, _
                                     .TEMPERATURE = temp.Text, .USER_ID = User.Identity.Name, .WEIGHT = emp _
                                    }

            pdata.OPDs.InsertOnSubmit(op2)
            pdata.SubmitChanges()

        End If




        If bp.Text <> "" Then
            Dim op3 As New OPD With {.BP = bp.Text, .DATE = Date.Today, .HEGHT = emp, .OPD_ID = id, .PATIENT_ID = patient_id.Text, _
                                    .TEMPERATURE = emp, .USER_ID = User.Identity.Name, .WEIGHT = emp _
                                   }

            pdata.OPDs.InsertOnSubmit(op3)
            pdata.SubmitChanges()

        End If

        If weight.Text <> "" Then

            Dim op4 As New OPD With {.BP = emp, .DATE = Date.Today, .HEGHT = emp, .OPD_ID = id, .PATIENT_ID = patient_id.Text, _
                                   .TEMPERATURE = emp, .USER_ID = User.Identity.Name, .WEIGHT = weight.Text _
                                  }

            pdata.OPDs.InsertOnSubmit(op4)
            pdata.SubmitChanges()
        End If


        If height.Text <> "" Then

            Dim op5 As New OPD With {.BP = emp, .DATE = Date.Today, .HEGHT = height.Text, .OPD_ID = id, .PATIENT_ID = patient_id.Text, _
                                   .TEMPERATURE = emp, .USER_ID = User.Identity.Name, .WEIGHT = emp _
                                  }

            pdata.OPDs.InsertOnSubmit(op5)
            pdata.SubmitChanges()
        End If
        If IsPostBack Then
            Response.Redirect("~/nurse/opd_vitals.aspx")
        End If


    End Sub

    Protected Sub patient_id_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles patient_id.TextChanged
        Dim patient_info As New retrieve_patient
        If patient_info.get_patient(patient_id.Text) Then
            FN.Text = patient_info.first_name
            LN.Text = patient_info.last_name
            GENDER.Text = patient_info.gen_der

            '*************AGE CALCULATION*******************'
            Dim sys_date As Integer = Date.Today.Year
            Dim patient_dob As Integer = patient_info.dob.Year
            Dim age As Integer = sys_date - patient_dob
            AG.Text = age
            '**************END AGE CALCULATION***************

            If patient_info.image.ToString = "NO IMAGE" Then
                Image1.ImageUrl = "~/noimg.jpg"

            ElseIf Not String.IsNullOrEmpty(patient_info.image) Then

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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        patient_id.Text = Session("patid")
    End Sub
End Class
