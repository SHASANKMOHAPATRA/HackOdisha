const mongoose = require("mongoose");
const express = require("express");

const jwt=require("jsonwebtoken");
const user = require("./user");

const app=express();
app.use(express.json());
const User=require("./user.js");
//app.use(body_parser.json());

mongoose.connect("mongodb://127.0.0.1:27017/App", { useNewUrlParser: true, useUnifiedTopology: true }).then(()=>
console.log("Connection Sucessfull!")).catch((err)=>console.log("Error occured!"));
const PORT=process.env.PORT || 8000;



app.post("/register",async (req,res)=>{
    
       
        
    const euser=  await User.findOne({email:req.body.email});
    if(euser){
        res.json({status:false,msg:"USER ALREADY EXISTS"});
    }else{
                const newuser=new User(req.body);
                const token= await newuser.generateAuthToken();
                await newuser.save().then(()=>{
                    res.json({status:true,msg:"Account created sucessfully",token:token});
                }).catch(()=>{
                    res.json({status:false,msg:"Error in Signing Up"});
                    console.log("ERROR");
                });};
            })
                
                
            
       

    

app.post("/login",async (req,res)=>{
    
        const email=req.body.email;
        const password=req.body.password;
        
        const loginuser=  await User.findOne({email:email});
        if(!loginuser){
            res.json({status:false,msg:"USER DOES NOT EXISTS"});
        }
       
        
        else if(loginuser.password==password){
            const token= await loginuser.generateAuthToken();
           
           
            
            res.json({status:true,msg:"Logged in",token:token});
        }
        else{
            res.json({status:false,msg:"Invalid password"});
        }

    
})

app.listen(PORT,()=>{
    console.log("LISTENING ON PORT "+PORT);
})