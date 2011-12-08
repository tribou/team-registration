
Partial Class Teams
    Inherits System.Web.UI.Page

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click

        lblMessage.Text = ""
        Dim myConnection As New SqlConnection(ConfigurationManager.ConnectionStrings("CIS407_AtribouConnectionString").ConnectionString)
        Dim sqlStatement As String

        Dim strData() As String = {txtName.Text, txtCapt.Text}

        'cleanup data
        For i = 0 To strData.Length - 1
            strData(i).Replace("'", "''")
        Next i

        'add contact person
        sqlStatement = "INSERT INTO Teams(teamName, teamCaptainName, teamNumPlayers, teamAdult, orgID) VALUES ('"
        sqlStatement &= txtName.Text & "', '" & txtCapt.Text & "', "
        sqlStatement &= ddlNum.SelectedValue & ", '" & rblAdult.SelectedValue & "', "
        sqlStatement &= Session("orgID").ToString
        sqlStatement &= ");"


        Dim myCommand As New SqlCommand(sqlStatement, myConnection)

        Try
            myConnection.Open()
            myCommand.ExecuteNonQuery()

        Catch ex As Exception
            lblMessage.Text = "Registration is currently down for maintenance. Please try again later.<br />" & ex.ToString
            If myConnection.State <> ConnectionState.Closed Then myConnection.Close()
            Exit Sub

        Finally
            If myConnection.State <> ConnectionState.Closed Then myConnection.Close()
        End Try

        Server.Transfer("~/Teams.aspx")

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Page.IsPostBack Then
            gvwTeams.DataBind()
        End If

    End Sub

    Protected Sub btnDone_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDone.Click

        Response.Redirect("~/Complete.aspx")

    End Sub
End Class
