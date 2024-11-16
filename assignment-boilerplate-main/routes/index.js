const express = require("express");
const version = require("../package.json").version;
const router = express.Router();

router.get("/version", (req, res, next) => {
  res.status(200);
  res.send(version);
});

// Default Route Added /
router.get("/", (req, res) => {
  res.status(200).send("Welcome to the Home!");
});


module.exports = router;