// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var React = require("react");

var initialValue_pallete = {
  primary: "#f3443a",
  secondary: "#eb847d",
  grey: "#e7e7e7"
};

function initialValue_spacing(x) {
  return String((x << 3)) + "px";
}

var initialValue_fontSize = {
  small: "0.875rem",
  medium: "1rem",
  large: "1.125rem"
};

var initialValue = {
  pallete: initialValue_pallete,
  spacing: initialValue_spacing,
  fontSize: initialValue_fontSize
};

var context = React.createContext(initialValue);

var provider = context.Provider;

function Theme$Provider(Props) {
  var value = Props.value;
  var children = Props.children;
  return React.createElement(provider, {
              value: value,
              children: children
            });
}

var Provider = {
  provider: provider,
  make: Theme$Provider
};

function useTheme(param) {
  return React.useContext(context);
}

exports.initialValue = initialValue;
exports.context = context;
exports.Provider = Provider;
exports.useTheme = useTheme;
/* context Not a pure module */
