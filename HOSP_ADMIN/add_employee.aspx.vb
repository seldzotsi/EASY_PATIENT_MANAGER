Imports System.IO
Partial Class HOSP_ADMIN_add_employee
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim pchdb As New PCH_dataDataContext
        Dim rand As New id_generator

        Dim id As String = rand.generate

        If FileUpload1.HasFile And FileUpload1.FileName.ToLower.EndsWith("jpg") Then
            Dim myfolder As String = "~/user_images/"
            Dim loc As String = Server.MapPath(myfolder)

            Dim file_name As String = Guid.NewGuid.ToString()
            Dim ext As String = Path.GetExtension(FileUpload1.FileName)
            FileUpload1.SaveAs(Path.Combine(loc, file_name + ext))


            '****************PUTING IMG INTO DB******************
            Dim imageurl As String = myfolder + file_name + ext

            Dim emp As New USER With {.FIRST_NAME = fn.Text, .LAST_NAME = ln.Text, .PHONE = ph.Text, .USER_ID = id, .USERNAME = UN.Text, _
                                      .IMAGE = imageurl
                                     }

            pchdb.USERs.InsertOnSubmit(emp)
            pchdb.SubmitChanges()

        Else

            Dim emp As New USER With {.FIRST_NAME = fn.Text, .LAST_NAME = ln.Text, .PHONE = ph.Text, .USER_ID = id, .USERNAME = UN.Text, _
                                                 .IMAGE = "NO IMAGE"
                                                }

            pchdb.USERs.InsertOnSubmit(emp)
            pchdb.SubmitChanges()

        End If

        If DropDownList1.SelectedValue = "SELECT ROLE" Then
            If IsPostBack Then
                errorlab.Visible = True
            End If

        Else
            Dim pass As String = Membership.GeneratePassword(5, 0)
            Membership.CreateUser(UN.Text, pass, email.Text)
            Roles.AddUserToRole(UN.Text, DropDownList1.SelectedValue)

            Label8.Visible = True
            UPASS.Visible = True
            UPASS.Text = pass
            errorlab.Visible = False
        End If

        'FNLB.Visible = True
        'FNLB.Text = fn.Text

        'LNLB.Visible = True
        'LNLB.Text = ln.Text

        'UNLB.Visible = True
        'UNLB.Text = UN.Text

        'PASSLB.Visible = True
        'PASSLB.Text = PASSLB
        If IsPostBack Then
            fn.Text = " "
            ln.Text = " "
            email.Text = " "
            ph.Text = " "
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DropDownList1.DataSource = Roles.GetAllRoles
        DropDownList1.DataBind()

    End Sub
End Class
