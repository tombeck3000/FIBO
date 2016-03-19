function CreateNewUserJavaScript() {
    debugger;
    var loginName = $('#MainContent_txtLoginName').val();
    var firstName = $('#MainContent_txtFirstName').val();
    var lastName = $('#MainContent_txtLastName').val();
    var password = $('#MainContent_txtPassword').val();

    var data = {
        loginName: loginName,
        firstName: firstName,
        lastName: lastName,
        password: password
    }

    $.ajax({
        type: "POST",
        url: "CreateNewUserPage.aspx/CreateNewUserWebMethod",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: alert("User successfully created!"),
        failure: function (response) {
            alert(response.d);
        }
    });
}