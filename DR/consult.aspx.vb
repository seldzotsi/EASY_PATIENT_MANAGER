
Partial Class DR_consult
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Request.UrlReferrer.ToString = "http://localhost:55097/INTERFACE/DR/medical_summary.aspx" Then

        pid.Text = Session("pat_id")
        'pid.Text = DirectCast(Session("pat_id"), String)
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
        'End If


        '*******************************KILLER BREAKTHROUGH CODE
        'Dim direction As String = Request.UrlReferrer.ToString
        '*********************************

    End Sub

    'Protected Sub ListBox1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListBox1.SelectedIndexChanged, sym1.TextChanged, sym4.TextChanged, sym3.TextChanged, sym2.TextChanged
    '    'sym1.Text = ListBox1.SelectedItem.ToString()
    '    'sym2.Text = ListBox1.SelectedItem.ToString()

    'End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim pdata As New PCH_dataDataContext
        Dim consult As New id_generator
        Dim id As String = consult.generate()


        If s1.SelectedValue.ToString = "SELECT SYMPTOM" And s2.SelectedValue.ToString = "SELECT SYMPTOM" And s3.SelectedValue.ToString = "SELECT SYMPTOM" And s4.SelectedValue.ToString = "SELECT SYMPTOM" And symplus.Text = "" And symplus2.Text = "" Then

            sym_war1.Visible = True

        Else


            If symplus.Text <> "" Then
                Dim sym_id As New id_generator
                Dim symid As String = sym_id.generate()

                Dim symp As New SYMPTON With {.SYMPTON = symplus.Text, .SYMPTON_ID = symid}
                pdata.SYMPTONs.InsertOnSubmit(symp)
                pdata.SubmitChanges()

                Dim consul_tation As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = symid, .CONSULT_ID = id, _
                                                            .DATE = Date.Today _
                                                           }
                pdata.CONSULTATIONs.InsertOnSubmit(consul_tation)
                pdata.SubmitChanges()

            End If

            If symplus2.Text <> "" Then
                Dim sym_idD As New id_generator
                Dim sym As String = sym_idD.generate()

                Dim symp As New SYMPTON With {.SYMPTON = symplus2.Text, .SYMPTON_ID = sym}
                pdata.SYMPTONs.InsertOnSubmit(symp)
                pdata.SubmitChanges()

                Dim consul_tation As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = sym, .CONSULT_ID = id, _
                                                            .DATE = Date.Today _
                                                           }
                pdata.CONSULTATIONs.InsertOnSubmit(consul_tation)
                pdata.SubmitChanges()

            End If


            If s1.SelectedValue = "SELECT SYMPTOM" Then

                sym_war1.Visible = True
            Else
                Dim consul_tation As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = s1.SelectedValue.ToString, .CONSULT_ID = id, _
                                                            .DATE = Date.Today _
                                                           }
                pdata.CONSULTATIONs.InsertOnSubmit(consul_tation)
                pdata.SubmitChanges()
            End If

            If s2.SelectedValue <> "SELECT SYMPTOM" Then
                Dim consul As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = s2.SelectedValue.ToString, .CONSULT_ID = id, _
                                                     .DATE = Date.Today _
                                                    }
                pdata.CONSULTATIONs.InsertOnSubmit(consul)
                pdata.SubmitChanges()

            End If

            If s3.SelectedValue <> "SELECT SYMPTOM" Then
                Dim consul_tati As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = s3.SelectedValue.ToString, .CONSULT_ID = id, _
                                                          .DATE = Date.Today _
                                                         }
                pdata.CONSULTATIONs.InsertOnSubmit(consul_tati)
                pdata.SubmitChanges()

            End If

            If s4.SelectedValue <> "SELECT SYMPTOM" Then
                Dim consultati As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = s4.SelectedValue.ToString, .CONSULT_ID = id, _
                                                            .DATE = Date.Today _
                                                           }
                pdata.CONSULTATIONs.InsertOnSubmit(consultati)
                pdata.SubmitChanges()

            End If

            'System.Threading.Thread.Sleep(2000)
            Session.Add("patient_id", pid.Text)
            Session.Remove("pat_id")
            Response.Redirect("~/dr/dr_prescription.aspx")

        End If

    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim pdata As New PCH_dataDataContext
        Dim consult As New id_generator
        Dim id As String = consult.generate()

        If s1.SelectedValue.ToString = "SELECT SYMPTOM" And s2.SelectedValue.ToString = "SELECT SYMPTOM" And s3.SelectedValue.ToString = "SELECT SYMPTOM" And s4.SelectedValue.ToString = "SELECT SYMPTOM" And symplus.Text = "" And symplus2.Text = "" Then

            sym_war1.Visible = True

        Else

            If symplus.Text <> "" Then
                Dim sym_id As New id_generator
                Dim symid As String = sym_id.generate()

                Dim symp As New SYMPTON With {.SYMPTON = symplus.Text, .SYMPTON_ID = symid}
                pdata.SYMPTONs.InsertOnSubmit(symp)
                pdata.SubmitChanges()

                Dim consul_tation As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = symid, .CONSULT_ID = id, _
                                                            .DATE = Date.Today _
                                                           }
                pdata.CONSULTATIONs.InsertOnSubmit(consul_tation)
                pdata.SubmitChanges()

            End If

            If symplus2.Text <> "" Then
                Dim sym_idD As New id_generator
                Dim sym As String = sym_idD.generate()

                Dim symp As New SYMPTON With {.SYMPTON = symplus2.Text, .SYMPTON_ID = sym}
                pdata.SYMPTONs.InsertOnSubmit(symp)
                pdata.SubmitChanges()

                Dim consul_tation As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = sym, .CONSULT_ID = id, _
                                                            .DATE = Date.Today _
                                                           }
                pdata.CONSULTATIONs.InsertOnSubmit(consul_tation)
                pdata.SubmitChanges()

            End If


            If s1.SelectedValue = "SELECT SYMPTOM" Then

                sym_war1.Visible = True
            Else
                Dim consul_tation As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = s1.SelectedValue.ToString, .CONSULT_ID = id, _
                                                            .DATE = Date.Today _
                                                           }
                pdata.CONSULTATIONs.InsertOnSubmit(consul_tation)
                pdata.SubmitChanges()
            End If

            If s2.SelectedValue <> "SELECT SYMPTOM" Then
                Dim consul As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = s2.SelectedValue.ToString, .CONSULT_ID = id, _
                                                     .DATE = Date.Today _
                                                    }
                pdata.CONSULTATIONs.InsertOnSubmit(consul)
                pdata.SubmitChanges()

            End If

            If s3.SelectedValue <> "SELECT SYMPTOM" Then
                Dim consul_tati As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = s3.SelectedValue.ToString, .CONSULT_ID = id, _
                                                          .DATE = Date.Today _
                                                         }
                pdata.CONSULTATIONs.InsertOnSubmit(consul_tati)
                pdata.SubmitChanges()

            End If

            If s4.SelectedValue <> "SELECT SYMPTOM" Then
                Dim consultati As New CONSULTATION With {.USER_ID = User.Identity.Name, .PATIENT_ID = pid.Text, .SYMPTONS_ID = s4.SelectedValue.ToString, .CONSULT_ID = id, _
                                                            .DATE = Date.Today _
                                                           }
                pdata.CONSULTATIONs.InsertOnSubmit(consultati)
                pdata.SubmitChanges()

            End If
            Session.Add("consult_id", id)
            Response.Redirect("~/dr/refer.aspx")

        End If



        
    End Sub

    Protected Sub pid_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles pid.TextChanged
        Dim patient_info As New retrieve_patient
        If patient_info.get_patient(pid.Text) Then
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
