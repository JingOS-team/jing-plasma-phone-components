
var desktopsArray = desktopsForActivity(currentActivity());
for (var j = 0; j < desktopsArray.length; j++) {
    desktopsArray[j].wallpaperPlugin = "org.kde.image";
}
//desktopsArray[0].addWidget("org.kde.phone.krunner", 0, 0, screenGeometry(0).width, 20)
var panel = new Panel("org.kde.phone.panel");
panel.addWidget("org.kde.plasma.notifications");
panel.addWidget("org.kde.plasma.mediacontroller");
panel.height = 36;

//[liubangguo]for canceled taskpanel
//var bottomPanel = new Panel("org.kde.phone.taskpanel");
//bottomPanel.location = "bottom";

//if (screenGeometry(bottomPanel.screen).height > screenGeometry(bottomPanel.screen).width)
//    bottomPanel.height = 2 * gridUnit;
//else
//    bottomPanel.height = 1 * gridUnit;
