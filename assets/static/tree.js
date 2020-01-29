"use strict";

var ctx;
var color;
var colorList = [63,1,21,112,176,240,277,323];

function $(id){
    return document.querySelector(id);
}

function rand(min,max){
    return Math.random()*(max-min)+min;
}

function drawBranch(startX,startY,len,angle,branchWidth,hsl){
    ctx.beginPath();
    ctx.save();

    ctx.strokeStyle = "hsl("+color+",100%,"+hsl+"%)";
    ctx.lineWidth = branchWidth;
    ctx.translate(startX,startY);
    ctx.rotate(angle* Math.PI/180);
    ctx.moveTo(0,0);
    ctx.lineTo(0,-len);
    ctx.stroke();

    if(len < 5){
        ctx.restore();
        return;
    }

    var factor = rand(0.6,0.9);
    //var factor = 0.7;
    var angle = rand(-30,0);
    //var angle = -90;
    drawBranch(0, -len, len*factor, angle,branchWidth*factor,hsl*1.2);
    factor = rand(0.6,0.9);
    //factor = 0.7;
    angle = rand(0,30);
    //angle = 90;
    drawBranch(0, -len, len*factor, angle,branchWidth*factor,hsl*1.2);

    ctx.restore();
}

function main(){
    var canvas = $("#canvas");
    ctx = canvas.getContext("2d");
    var width = canvas.width;
    var height = canvas.height;
    color = colorList[Math.floor(rand(0,colorList.length))];
    //$(".text").style.backgroundColor = "hsl("+color+",100%,90%)";
    //$(".text").style.borderColor = "hsl("+color+",100%,20%)";
    drawBranch(width/2,height,150,0,10,10);
}

window.addEventListener("load",main);
