Imports System.IO
Partial Class OPD_register_patient
    Inherits System.Web.UI.Page

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If dob.Text > Date.Today Then
            DATECHK.Visible = True

        Else

            If DropDownList1.SelectedValue = "SELECT GENDER" Then
                GENSELECT.Visible = True

            Else

                Dim prefix As String = Date.Today
                If FileUpload1.HasFile And FileUpload1.FileName.ToLower.EndsWith("jpg") Then
                    Dim myfolder As String = "~/patient_images/"
                    Dim loc As String = Server.MapPath(myfolder)

                    Dim file_name As String = Guid.NewGuid.ToString()
                    Dim ext As String = Path.GetExtension(FileUpload1.FileName)
                    FileUpload1.SaveAs(Path.Combine(loc, file_name + ext))


                    '****************PUTING IMG INTO DB******************
                    Dim imageurl As String = myfolder + file_name + ext

                    Dim id_gen As New id_generator
                    Dim identity As String = id_gen.generate

                    Dim pat_id As New patient_id_generator
                    Dim id As String = pat_id.generate


                    ''****************************PATIENT DATA ENTRY*****************************
                    Dim pch_database As New PCH_dataDataContext

                    Dim reg_patient As New PATIENT With {.FIRST_NAME = fn.Text, .LAST_NAME = ln.Text, .ADDRESS = add.Text, .TELEPHONE = tel.Text, _
                                                         .GENDER = DropDownList1.SelectedValue, .IMAGE = imageurl, .DOB = dob.Text, .PATIENT_ID = id, .REGISTER_DATE = Date.Today _
                                                        }

                    pch_database.PATIENTs.InsertOnSubmit(reg_patient)
                    pch_database.SubmitChanges()

                    ''***************************END OF PATIENT DATA ENTRY***********************


                    ''##########################NEXT OF KIN DATA ENTRY SECTION#####################

                    Dim next_of_kin As New NEXT_OF_KIN With {.FIRST_NAME = fnnok.Text, .LAST_NAME = lnnok.Text, .MOBILE = mobnok.Text, .ADDRESS = addnok.Text, _
                                                            .PATIENT_ID = id
                                                           }

                    pch_database.NEXT_OF_KINs.InsertOnSubmit(next_of_kin)
                    pch_database.SubmitChanges()

                    nupid.Visible = True
                    nupidbx.Visible = True

                    nupidbx.Text = id

                    ''#########################END OF NEXT OF KIN DATA ENTRY########################
                Else
                    Dim id_gen As New id_generator
                    Dim identity As String = id_gen.generate

                    Dim pat_id As New patient_id_generator
                    Dim id As String = pat_id.generate
                    'Dim prefix As String = Date.Today


                    Dim pch_database As New PCH_dataDataContext

                    Dim reg_patient As New PATIENT With {.FIRST_NAME = fn.Text, .LAST_NAME = ln.Text, .ADDRESS = add.Text, .TELEPHONE = tel.Text, _
                                                         .GENDER = DropDownList1.SelectedValue, .IMAGE = "NO IMAGE", .DOB = dob.Text, .PATIENT_ID = id, .REGISTER_DATE = Date.Today _
                                                        }

                    pch_database.PATIENTs.InsertOnSubmit(reg_patient)
                    pch_database.SubmitChanges()


                    ''##########################NEXT OF KIN DATA ENTRY SECTION#####################

                    Dim next_of_kin As New NEXT_OF_KIN With {.FIRST_NAME = fnnok.Text, .LAST_NAME = lnnok.Text, .MOBILE = mobnok.Text, .ADDRESS = addnok.Text, _
                                                             .PATIENT_ID = id
                                                            }
                    pch_database.NEXT_OF_KINs.InsertOnSubmit(next_of_kin)
                    pch_database.SubmitChanges()

                    nupid.Visible = True
                    nupidbx.Visible = True

                    nupidbx.Text = id

                End If

                If IsPostBack Then
                    GENSELECT.Visible = False
                End If

            End If
            If IsPostBack Then
                DATECHK.Visible = False
            End If
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        nupid.Visible = False
        nupidbx.Visible = False
    End Sub
End Class
