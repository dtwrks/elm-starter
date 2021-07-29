import "./custom-elements/_custom-elements.js";

if (import.meta.env.MODE === "docs") {
  import("./entrypoints/docs.js");
} else {
  import("./entrypoints/app.js");
}
