import QtQuick 2.12
import QtQuick.Controls 2.12
import SddmComponents 2.0

Rectangle {
    width: Screen.width
    height: Screen.height

    // Full background
    color: "#121212"

    // Login window panel
    Rectangle {
        id: loginBox
        width: 600
        height: 700
        radius: 12
        color: "#1e1e1e"
        border.width: 2
        border.color: "#333333"

        anchors.centerIn: parent

        Column {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            spacing: 24

            // Title text
            Text {
                text: "blackspot Login"
                color: "#e0e0e0"
                font.pixelSize: 32
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
                width: 300
            }

            // Username
            TextField {
                id: user
                width: 300
                placeholderText: "Username"
                text: sddm.user
                font.pixelSize: 20
            }

            // Password (masked TextField)
            TextField {
                id: password
                width: 300
                placeholderText: "Password"
                echoMode: TextInput.Password
                inputMethodHints: Qt.ImhNoPredictiveText | Qt.ImhNoAutoUppercase
                font.pixelSize: 20
                onAccepted: sddm.login(user.text, text, 0)
            }

            // Login button
            Button {
                width: 300
                text: "Login"
                font.pixelSize: 20
                onClicked: sddm.login(user.text, password.text, 0)
            }
        }
    }
}
