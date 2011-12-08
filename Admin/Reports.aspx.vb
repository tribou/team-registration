
Partial Class Admin_Register
    Inherits System.Web.UI.Page

    Protected Sub btnReturn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReturn.Click

        Response.Redirect("~/Default.aspx")

    End Sub
End Class
