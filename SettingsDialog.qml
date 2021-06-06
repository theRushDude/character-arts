import QtQuick 2.0
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.0
import QtQuick.Window 2.12

import com.text.generator 1.0

Window {
    id: options;
    title: "Options";
    flags: Qt.Dialog;

    width: 750;
    height: 380;
    // border.color: "white";
    // border.width: 3;
    color: "black";
    // radius: 5;

    // capture mouse from background
    MouseArea {
        anchors.fill: parent
    }

    RowLayout {
        x: 5; y: 5;
        // width: parent.width / 3;

        // Chances
        Rectangle {
            implicitWidth: 200;
            implicitHeight: options.height - 10;
            color: "#aaaacd";
            radius: 5;
            border.color: "black";
            border.width: 2;

            ColumnLayout {
                id: chances
                width: parent.width - 6;
                x: 3; y: 3;

                Text {
                    text: "## Chances";
                    textFormat: Text.MarkdownText;
                }

                TriangleSelector {}
            }

        }


        // Display Settings
        Rectangle {
            implicitWidth: 250;
            implicitHeight: options.height - 10;
            color: "#bbbbcd";
            radius: 5;
            border.color: "black";
            border.width: 2;

            ColumnLayout {
                id: display
                width: parent.width - 6;
                x: 3; y: 3;

                Text {
                    text: "## Display Settings";
                    textFormat: Text.MarkdownText;
                }

                // fps
                LabeledTextField {
                    text: "FPS:";
                    placeholderText: "fps, e.g. 60";
                    onInputChanged: {
                        TextGenerator.fps = input;
                    }
                }

                // cols
                LabeledTextField {
                    text: "Columns:"
                    placeholderText: "num cols, e.g. 420";
                    onInputChanged: {
                        TextGenerator.cols = input;
                    }
                }

                // rows
                LabeledTextField {
                    text: "Rows:"
                    placeholderText: "num row, e.g. 69";
                    onInputChanged: {
                        TextGenerator.rows = input;
                    }
                }

                // num resets
                LabeledTextField {
                    text: "Resets:"
                    placeholderText:  "resets per frame, e.g. 21";
                    onInputChanged: {
                        TextGenerator.resetChance = input;
                    }
                }

                // fontsize
                LabeledTextField {
                    text: "Font Size:"
                    placeholderText:  "font size in px, e.g. 12";
                    onInputChanged: {
                        TextGenerator.fontSize = input;
                    }
                }
            }
        }
    }
}
