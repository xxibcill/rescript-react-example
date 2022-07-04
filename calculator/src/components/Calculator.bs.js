// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Utils = require("./Utils.bs.js");
var React = require("react");
var ButtonPanel = require("./ButtonPanel.bs.js");
var Css = require("@emotion/css");
var DisplayPanel = require("./DisplayPanel.bs.js");

function Calculator(Props) {
  var container = Css.css({
        width: "30vh",
        height: "60vh",
        minWidth: "300px",
        minHeight: "640px",
        border: "solid 1px #dedede",
        borderRadius: "4px"
      });
  var match = React.useState(function () {
        return "gg";
      });
  return React.createElement(Utils.Provider.make, {
              value: [
                match[0],
                match[1]
              ],
              children: React.createElement("div", {
                    className: container
                  }, React.createElement(DisplayPanel.make, {}), React.createElement(ButtonPanel.make, {}))
            });
}

var make = Calculator;

exports.make = make;
/* Utils Not a pure module */
