﻿<%@ codepage="65001" language="VBScript" %>
<% Option Explicit %>
<%
' CKFinder
' ========
' http://cksource.com/ckfinder
' Copyright (C) 2007-2013, CKSource - Frederico Knabben. All rights reserved.
'
' The software, this file and its contents are subject to the CKFinder
' License. Please read the license.txt file before using, installing, copying,
' modifying or distribute this file or part of its contents. The contents of
' this file is part of the Source Code of CKFinder.
%>
<% ' You must set "Enable Parent Paths" on your web site in order this relative include to work. %>
<!-- #INCLUDE file="../../ckfinder.asp" -->
<!-- #INCLUDE file="../../../fckeditor/fckeditor.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>CKFinder - Sample - FCKeditor Integration</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="robots" content="noindex, nofollow" />
	<link href="../sample.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<h1 class="samples">
		CKFinder - Sample - FCKeditor Integration
	</h1>
	<div class="description">
		CKFinder can be easily integrated with FCKeditor. Try it now, by clicking
		the "Image" or "Link" icons and then the "<strong>Browse Server</strong>" button.</div>
	<p>
<%

	Dim oFCKeditor
	Set oFCKeditor = New FCKeditor

	oFCKeditor.BasePath	= "../../../fckeditor/"
	oFCKeditor.Value	= "<p>Just click the <b>Image</b> or <b>Link</b> button, and then <b>&quot;Browse Server&quot;</b>.</p>"

	' Just call CKFinder_SetupFCKeditor before calling Create() or CreateHtml()
	' in FCKeditor. The second parameter (optional), is the path for the
	' CKFinder installation (default = "/ckfinder/").
	CKFinder_SetupFCKeditor oFCKeditor, "../../", empty, empty

	oFCKeditor.Create "FCKeditor1"

%>
	</p>
	<div id="footer">
		<hr />
		<p>
			CKFinder - Ajax File Manager - <a class="samples" href="http://cksource.com/ckfinder/">http://cksource.com/ckfinder</a>
		</p>
		<p id="copy">
			Copyright &copy; 2003-2013, <a class="samples" href="http://cksource.com/">CKSource</a> - Frederico Knabben. All rights reserved.
		</p>
	</div>
</body>
</html>
