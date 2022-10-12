const express = require("express");
const app = express();
const path = require("path");

app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "/public/html/pages/home.html"));
});

app.use(express.static("public"));

app.listen(3000, () => {
  console.log("Listen on the port 3000...");
});
