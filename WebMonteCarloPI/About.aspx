﻿<%@ Page Title="Monte Carlo PI" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ZbieraczDanych.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>About</h1>
    <div class="container-fluid">
        The application implements the mechanism of calculating approximation of the PI number using the Monte Carlo method. 
        It’s a very simple way to approximate the PI number value. We draw a square and a circle inscribed in it. 
        Then we randomly draw points in our square. 
        The points in the circle to the total points ratio multiplied by 4 defines the PI number approximation.    
        <br /><br />
        So if we have <b>M</b> points in the circle and <b>N</b> total points, the formula would be:
        <br /><br/>
        <p class="text-center"><b>PI = 4 * M / N</b></p>
        <br/>
        The author lets the user to set key variables – the number of points to generate and the length of the square’s side. 
        Basing on that we can watch how 
        approximation gets less or more accurate, depending on the values we used. The program also implements graphic 
        representation of calculations, which helps to get more intuitive understanding of how the calculations depends 
        on the variables that are used and what do they actually represent. 
        <br/><br/>
        If you are interested in the code, take a look at my <a target="_blank" href="https://github.com/MaciejWanat/WebMonteCarloPI">GitHub repository</a>.
        <br /><br />
        Implemented using ASP.NET in C#.
        <br/><br/>
        <p class="text-right">Author: Maciej Wanat</p>
     </div>
</asp:Content>
