// IMPORTS FROM PACKAGES
const express = require("express");
const mongoose = require("mongoose");
// IMPORTS FROM OTHER FILES
const authRouter = require("./routes/auth");
const PORT=3000;



// INIT
const app = express();
const DB =
"mongodb+srv://bereket:12345678abc@cluster0.t4nbt.mongodb.net/amazon_db?retryWrites=true&w=majority&appName=Cluster0";

// middleware
app.use(express.json());
app.use(authRouter);


// Connections
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
