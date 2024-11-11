const express =require("express");
const User = require("../models/user");
const authRouter = express.Router();

authRouter.post('/api/signup',async(req,res)=>{
    const {username,email,password} = req.body;
    const existingUser= await User.findOne({email});
    if(existingUser) {
        return res.status(400).json({msg: "Email already in use"});
        }
        let user = new User({username,email,password});
        user= await user.save();
        res.status.json({user,msg: "User created successfully"});

}); 

module.exports=authRouter;