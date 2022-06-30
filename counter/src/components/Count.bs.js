// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");
var Css = require("@emotion/css");

var countBox = Css.css({
      minWidth: "300px",
      padding: "25px",
      backgroundColor: "#dedede",
      display: "flex",
      justifyContent: "center",
      alignItems: "center",
      fontSize: "35px"
    });

function Count(Props) {
  var count = Props.count;
  return React.createElement("div", {
              className: countBox
            }, React.createElement("span", undefined, count));
}

var make = Count;

exports.countBox = countBox;
exports.make = make;
/* countBox Not a pure module */
