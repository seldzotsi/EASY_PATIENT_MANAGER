Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Data
Partial Class DR_med_historyaspx
    Inherits System.Web.UI.Page

  

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

        temp.Text = ""
        bp.Text = ""
        WEIGHT.Text = ""
        height.Text = ""

        '************************* CLEARING OF LISTBOXES DURING TEXT CHANGE EVENT************
        ListBox1.Items.Clear()
        ListBox2.Items.Clear()
        ListBox3.Items.Clear()

        '*************************DATE CLEARING FOR PATIENT ID TEXT CHANGED *****************
        selectdate.Items.Clear()
        selectdate.Items.Add("SELECT DATE")



    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If FN.Text = "" And LN.Text = "" And GENDER.Text = "" Then

        Else

            Session.Add("pat_id", pid.Text)
            Response.Redirect("~/DR/consult.aspx")
        End If


    End Sub

    
    Protected Sub selectdate_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles temp.TextChanged, bp.TextChanged, WEIGHT.TextChanged, height.TextChanged, selectdate.TextChanged, ListBox1.TextChanged

        '*****************************************OPD DETAILS RETRIEVAL*************************************
        Dim con As New SqlConnection
        Dim adapter As New SqlDataAdapter
        Dim table As New DataTable
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        con.Open()
        Dim com As New SqlCommand()
        com.Connection = con
        com.CommandType = CommandType.Text
        adapter.SelectCommand = com
        com.Parameters.AddWithValue("@patient_id", pid.Text)
        com.Parameters.AddWithValue("@date", selectdate.SelectedValue)
        com.CommandText = "select * from OPD where PATIENT_ID = @patient_id and DATE = @date"
        adapter.Fill(table)

        temp.Text = ""
        height.Text = ""
        WEIGHT.Text = ""
        bp.Text = ""

        temp.Text = table.Rows(0)("TEMPERATURE").ToString
        bp.Text = table.Rows(0)("BP").ToString
        height.Text = table.Rows(0)("HEGHT").ToString
        WEIGHT.Text = table.Rows(0)("WEIGHT").ToString

        con.Close()

        '*****************************************END OF OPD DETAILS RETRIEVAL LISTBOX1*************************************

        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        '*****************************************SYMPTON RETRIEVAL LISTBOX1************************************************
        Dim conect As New SqlConnection
        Dim adapt As New SqlDataAdapter
        Dim tabl As New DataTable
        conect.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        conect.Open()
        Dim cmd As New SqlCommand()
        cmd.Connection = conect
        cmd.CommandType = CommandType.Text
        adapt.SelectCommand = cmd
        cmd.Parameters.AddWithValue("@patient_id", pid.Text)
        cmd.Parameters.AddWithValue("@date", selectdate.SelectedValue)
        cmd.CommandText = "SELECT dbo.CONSULTATION.PATIENT_ID, dbo.CONSULTATION.DATE, dbo.SYMPTON.SYMPTON FROM dbo.CONSULTATION INNER JOIN dbo.SYMPTON ON dbo.CONSULTATION.SYMPTONS_ID = dbo.SYMPTON.SYMPTON_ID WHERE (dbo.CONSULTATION.PATIENT_ID = @patient_id) AND (dbo.CONSULTATION.DATE = @date)"

        adapt.Fill(tabl)

        ListBox1.Items.Clear()
        Dim i As Integer = 0
        For Each row In tabl.Rows
            ListBox1.Items.Add(tabl.Rows(i)("SYMPTON").ToString)
            i = i + 1

        Next

        conect.Close()

        '*****************************************END OF SYMPTON RETRIEVAL LISTBOX2************************************************

        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        '*****************************************PRESCRIPTION RETRIEVAL LISTBOX2************************************************
        Dim conec As New SqlConnection
        Dim adap As New SqlDataAdapter
        Dim tab As New DataTable
        conec.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        conec.Open()
        Dim COMAND As New SqlCommand()
        COMAND.Connection = conec
        COMAND.CommandType = CommandType.Text
        adap.SelectCommand = COMAND
        COMAND.Parameters.AddWithValue("@patient_id", pid.Text)
        COMAND.Parameters.AddWithValue("@date", selectdate.SelectedValue)
        COMAND.CommandText = "SELECT dbo.PAT_PRESCRIPTION.PATIENT_ID, dbo.PAT_PRESCRIPTION.DATE, dbo.PAT_PRESCRIPTION.ID, dbo.PRESCRIPTION_LIST.PRESCRIPTION_NAME FROM dbo.PAT_PRESCRIPTION INNER JOIN dbo.PRESCRIPTION_LIST ON dbo.PAT_PRESCRIPTION.PRESCRIPTION_ID = dbo.PRESCRIPTION_LIST.PRESCRIPTION_ID WHERE (dbo.PAT_PRESCRIPTION.PATIENT_ID = @patient_id) AND (dbo.PAT_PRESCRIPTION.DATE = @date)"

        adap.Fill(tab)

        ListBox2.Items.Clear()
        Dim X As Integer = 0
        For Each row In tab.Rows
            ListBox2.Items.Add(tab.Rows(X)("PRESCRIPTION_NAME").ToString)
            X = X + 1

        Next
        conec.Close()


        '*****************************************END OF PRESCRIPTION RETRIEVAL LISTBOX3************************************************

        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        '///////////////////////////////////////////////////////////////////////////////////////////////////////////////////


        '*****************************************REFERRAL RETRIEVAL LISTBOX3************************************************

        Dim cone As New SqlConnection
        Dim ada As New SqlDataAdapter
        Dim ta As New DataTable
        cone.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        cone.Open()
        Dim COMAN As New SqlCommand()
        COMAN.Connection = cone
        COMAN.CommandType = CommandType.Text
        ada.SelectCommand = COMAN
        COMAN.Parameters.AddWithValue("@patient_id", pid.Text)
        COMAN.Parameters.AddWithValue("@date", selectdate.SelectedValue)
        COMAN.CommandText = "SELECT REFFERED_TO FROM dbo.REFFERAL WHERE (dbo.REFFERAL.PATIENT_ID =@patient_id) AND (dbo.REFFERAL.DATE =@date)"

        ada.Fill(ta)
        ListBox3.Items.Clear()
        Dim y As Integer = 0
        For Each row In ta.Rows
            ListBox3.Items.Add(ta.Rows(y)("REFFERED_TO").ToString)
            y = y + 1

        Next

    End Sub

End Class
