Imports Microsoft.VisualBasic
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.Data.SqlTypes
Imports System.Data

Public Class retrieve_patient

    Private id As String
    Private firstname As String
    Private lastname As String
    Private gender As String
    Private birth As Date
    Private add As String
    Private picture As String
    Private phone As String
    Private registration_date As Date

    Property patient_id As String
        Get
            Return id
        End Get
        Set(ByVal value As String)
            id = value
        End Set
    End Property
    Property first_name As String
        Get
            Return firstname
        End Get
        Set(ByVal value As String)
            firstname = value
        End Set
    End Property
    Property last_name As String
        Get
            Return lastname
        End Get
        Set(ByVal value As String)
            lastname = value
        End Set
    End Property
    Property gen_der As String
        Get
            Return gender
        End Get
        Set(ByVal value As String)
            gender = value
        End Set
    End Property
    Property dob As Date
        Get
            Return birth
        End Get
        Set(ByVal value As Date)
            birth = value
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
    Property image As String
        Get
            Return picture
        End Get
        Set(ByVal value As String)
            picture = value
        End Set
    End Property
    Property telephone As String
        Get
            Return phone
        End Get
        Set(ByVal value As String)
            phone = value
        End Set
    End Property
    Property register_date As Date
        Get
            Return registration_date
        End Get
        Set(ByVal value As Date)
            registration_date = value
        End Set
    End Property


    Public Function get_patient(ByVal patient_id As String) As Boolean
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
        com.CommandText = "Select * from patient where patient_id= @patient_id"
        adapter.Fill(table)

        If table.Rows.Count > 0 Then
            patient_id = table.Rows(0)("PATIENT_ID").ToString
            first_name = table.Rows(0)("FIRST_NAME").ToString
            last_name = table.Rows(0)("LAST_NAME").ToString
            gen_der = table.Rows(0)("GENDER").ToString
            dob = table.Rows(0)("DOB").ToString
            address = table.Rows(0)("ADDRESS").ToString
            image = table.Rows(0)("IMAGE").ToString
            telephone = table.Rows(0)("TELEPHONE").ToString
            register_date = table.Rows(0)("REGISTER_DATE").ToString
            Return True

        Else
            Return False
        End If


        con.Close()
    End Function

    Public Function update_rec(ByVal patient_id As String) As Boolean
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
        com.Parameters.AddWithValue("@fn", first_name)
        com.Parameters.AddWithValue("@ln", last_name)
        com.Parameters.AddWithValue("@gn", gen_der)
        com.Parameters.AddWithValue("@tel", telephone)
        com.Parameters.AddWithValue("@add", address)
        com.Parameters.AddWithValue("@dob", dob)
        com.CommandText = "UPDATE PATIENT SET FIRST_NAME = @fn, LAST_NAME = @ln, GENDER = @gn, TELEPHONE = @tel, ADDRESS = @add, DOB = @dob WHERE PATIENT.PATIENT_ID = @patient_id"
        If com.ExecuteNonQuery() Then
            Return True

        Else
            Return False
        End If

        con.Close()
    End Function
End Class
