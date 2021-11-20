import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import jingos.display 1.0

ApplicationWindow {
    visible: true
    width: JDisplay.dp(640)
    height: JDisplay.dp(480)
    title: i18nd("plasma-phone-components", "Hello World")

    property real startX
    property real startY

    function format(text, mouse) {
        return text + " " + Math.round(mouse.x*100)/100 + " " + Math.round(mouse.y*100)/100 +"\nInitial: " + Math.round(startX*100)/100 +" "+Math.round(startY*100)/100
    }

    MouseArea {
        anchors.fill: parent
        onPressed: {
            startX = mouse.x;
            startY = mouse.y;
            label.text = format("MOUSE PRESS", mouse);
        }
        onPositionChanged: label.text = format("MOUSE Position change", mouse)
        onReleased: label.text = label.text = format("MOUSE Release", mouse)
        onCanceled: label.text = label.text = format("MOUSE Cancel", mouse)
        Label {
            id: label
            anchors.fill:parent
            font.pointSize: JDisplay.sp(20)
            verticalAlignment: Text.AlignHCenter
            horizontalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
        }
    }
}
