Imports Microsoft.VisualBasic
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Data

Public Class retrieve_next_of_kin

    Private patientid As String
    Private fn As String
    Private ln As String
    Private add As String
    Private mobile As String

    Property patient_id As String
        Get
            Return patientid
        End Get
        Set(ByVal value As String)
            patientid = value
        End Set
    End Property

    Property firstname As String
        Get
            Return fn
        End Get
        Set(ByVal value As String)
            fn = value
        End Set
    End Property

    Property lastname As String
        Get
            Return ln
        End Get
        Set(ByVal value As String)
            ln = value
        End Set
    End Property

    Property address As String
        Get
            Return add
        End Get
        Set(ByVal value As String)
            add = value
        End Set
    End Property

    Property tele As String
        Get
            Return mobile
        End Get
        Set(ByVal value As String)
            mobile = value
        End Set
    End Property

    Public Function get_next_of_kin(ByVal patient_id As String) As Boolean
        Dim con As New SqlConnection
        Dim adapter As New SqlDataAdapter
        Dim table As New DataTable
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        con.Open()
        Dim com As New SqlCommand()
        com.Connection = con
        com.CommandType = CommandType.Text
        adapter.SelectCommand = com
        com.Parameters.AddWithValue("@patient_id", patient_id)
        com.CommandText = "Select * from next_of_kin where patient_id= @patient_id"
        adapter.Fill(table)

        If table.Rows.Count > 0 Then
            patient_id = table.Rows(0)("PATIENT_ID").ToString
            firstname = table.Rows(0)("FIRST_NAME").ToString
            lastname = table.Rows(0)("LAST_NAME").ToString
            address = table.Rows(0)("ADDRESS").ToString
            tele = table.Rows(0)("MOBILE").ToString

            Return True

        Else
            Return False
        End If


        con.Close()

    End Function

    Public Function update_kin(ByVal patient_id As String) As Boolean
        Dim con As New SqlConnection
        Dim adapter As New SqlDataAdapter
        Dim table As New DataTable
        con.ConnectionString = ConfigurationManager.ConnectionStrings("PCH_DBConnectionString").ConnectionString
        con.Open()
        Dim com As New SqlCommand()
        com.Connection = con
        com.CommandType = CommandType.Text
        adapter.SelectCommand = com
        com.Parameters.AddWithValue("@patient_id", patient_id)
        com.Parameters.AddWithValue("@fn", firstname)
        com.Parameters.AddWithValue("@ln", lastname)
        com.Parameters.AddWithValue("@add", address)
        com.Parameters.AddWithValue("@mobile", tele)
        com.CommandText = "UPDATE NEXT_OF_KIN SET FIRST_NAME = @fn, LAST_NAME = @ln,  MOBILE = @mobile, ADDRESS = @add  WHERE NEXT_OF_KIN.PATIENT_ID = @patient_id"
        If com.ExecuteNonQuery() Then
            Return True

        Else
            Return False
        End If
    End Function
End Class
