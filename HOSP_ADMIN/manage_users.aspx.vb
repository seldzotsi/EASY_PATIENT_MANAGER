
Partial Class HOSP_ADMIN_manage_users
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If DropDownList1.SelectedValue <> "SELECT USER" And DD2.SelectedValue <> "SELECT ROLE" Then
           
            Roles.RemoveUserFromRole(DropDownList1.SelectedValue, DD2.SelectedValue)
        End If

        If DropDownList1.SelectedValue = "SELECT USER" Then
            SELUS.Visible = True
        End If

        If DD2.SelectedValue = "SELECT ROLE" Then
            SELUS0.Visible = True
        End If

        


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DropDownList1.DataSource = Membership.GetAllUsers
        DropDownList1.DataBind()

        dd2.DataSource = Roles.GetRolesForUser(DropDownList1.SelectedValue)
        DD2.DataBind()

        pickuser.DataSource = Membership.GetAllUsers
        pickuser.DataBind()

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If pickuser.SelectedValue = "SELECT USER" Then
            SEL.Visible = True
        Else
            Membership.DeleteUser(pickuser.SelectedValue)
        End If




    End Sub
End Class
