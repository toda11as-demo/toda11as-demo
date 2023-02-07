const express = require("express");
const app = express();

const port = 3000;

app.engine("html", require("ejs").renderFile);
app.set("view engine", "ejs");

/**
 * 메인화면
 */
app.get("/", (req, res) => {
  res.render("index.html");
});

app.get("/mypage", (req, res) => {
  var email = "";

  email = req.query.email;

  res.render("mypage.html", { name: email });
});

app.listen(port, () => {
  console.log(`Example App port ${port}`);
});
