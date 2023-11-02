import MuseScore 3.0
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.3
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.1

MuseScore {
    version: "1.0.0"
    title: "Hello"
    description: "Hello MuseScore 4 Plug-in"
    categoryCode: "composing-arranging-tools"
    thumbnailName: "hello.png"

    MessageDialog {
        id: helloDlg
        title: "Hello~"
        text: ""
        onAccepted: {
            quit()
        }
        visible: false
    }

    onRun: {
        helloDlg.text = "Hello MuseScore 4 Plug-in"
        helloDlg.open()
        quit()
    }
}
