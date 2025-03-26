const admin = require("firebase-admin/app");
admin.initializeApp();

const resetinweek = require("./resetinweek.js");
exports.resetinweek = resetinweek.resetinweek;
