
Partial Class Master_Main
    Inherits System.Web.UI.MasterPage

    Protected Sub btnHome_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnHome.Click

        Response.Redirect("~/Default.aspx")

    End Sub

    Protected Sub btnReport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReport.Click

        Response.Redirect("~/Admin/Reports.aspx")

    End Sub
End Class

