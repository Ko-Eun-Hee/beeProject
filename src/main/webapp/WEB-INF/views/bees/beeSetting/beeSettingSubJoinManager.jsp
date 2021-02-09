<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.fourmeeting.bee.beesuser.model.vo.BeesUserList"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!--구글 노토 산스 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<style>
/* 기본 */
#content.midContent {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    width: 100%;
}
#content {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
}
li{
   list-style: none;
}
figcaption, figure, main {
    display: block;
}
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
}
main {
    display: block;
}
body {
    background: #F7F7F7;
    line-height: 1.43;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    width: 100%;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 1rem;
    font-weight: 400;
    color: #6D6042;
}
html {
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
}
/* sSettingBand gContentCardShadow */
.sSettingBand {
    position: relative;
}
.gContentCardShadow {
    background-color: #fff;
    -webkit-box-shadow: 0 1.4px 1.3px 0 rgb(62 73 89 / 10%);
    box-shadow: 0 1.4px 1.3px 0 rgb(62 73 89 / 10%);
}
/* uHeaderWrap */
.uHeaderWrap {
    position: relative;
    padding: 0 22px;
    border-bottom: 1px solid #f0f2f4;
}
div {
    display: block;
}
/* header */
.uHeaderWrap .header {
    position: relative;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    height: 61px;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between;
    word-break: break-word;
}
article, aside, footer, header, nav, section {
    display: block;
}
.uHeaderWrap .header .title {
    font-size: 18px;
    font-weight: 600;
    color: #50401B;
}
h1 {
    font-size: 2em;
    margin: .67em 0;
}
h1 {
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.uHeaderWrap .header .count {
    margin-left: 5px;
    font-size: 18px;
    font-weight: 500;
}
em {
    font-style: normal;
}
.uHeaderWrap .header .btnsWrap {
    -webkit-box-flex: 0;
    -ms-flex: 0 0 auto;
    flex: 0 0 auto;
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
div {
    display: block;
}
[type=reset], [type=submit], button, html [type=button] {
    -webkit-appearance: button;
}
.uButton {
    position: relative;
    min-width: 90px;
    height: 34px;
    padding: 0 15px;
    background: #474e60;
    border-radius: 1px;
    font-size: 13px;  
    font-weight: 500;
    vertical-align: top;
    white-space: nowrap;
    cursor: pointer;
}
button.uButton {
    line-height: 1;
}
.uButton[class*=sf_] {
    background: #fff;
    border: 1px solid transparent;
}
.sf_tBorderOpacity {
    border-color: #50401B!important;
}
.sf_color {
    color: #50401B!important;
}
/* cMemberList gMal22 gMar22 */
.gMal22 {
    margin-left: 22px!important;
}

.gMar22 {
    margin-right: 22px!important;
}
ol, ul {
    list-style: none;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
.cMemberList .uFlexItem:first-child {
    border-top-width: 0;
}

.cMemberList .uFlexItem {
    min-height: 88px;
    border-top: 1px solid #f5f5f5;
    padding: 15px 0;
}
.uFlexItem {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}
/* uProfile -size50 _btnProfileImage */
.uFlexItem .uProfile {
    display: block;
    margin-right: 12px;
}

[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
.uProfile {
    display: inline-block;
    position: relative;
    vertical-align: top;
    font-size: 0;
}
a {
    color: #222;
    text-decoration: none;
}
a {
    background-color: transparent;
    -webkit-text-decoration-skip: objects;
}
.uProfile.-size50 .profileInner {
    width: 50px;
    height: 50px;
}
.uProfile .profileInner {
    display: block;
    overflow: hidden;
    position: relative;
    background-color: #ebebeb;
    border-radius: 50%;
    font-size: 0;
}
.uProfile.-size50 .profileInner:before {
    width: 25px;
    height: 25px;
    overflow: hidden;
    display: block;
    background-repeat: no-repeat;
    content: '';
    background-image: url(https://ssl.pstatic.net/cmstatic/webclient/dres/20210105172030/images/spr_icons.png);
    background-position: -205px -490px;
    margin: -12px 0 0 -12px;
}
.uProfile .profileInner:before {
    position: absolute;
    left: 50%;
    top: 50%;
}
.uProfile .profileInner img {
    position: relative;
    width: 100%;
    height: 100%;
    border-radius: 50%;
    vertical-align: top;
}
img {
    border-style: none;
}
img[Attributes Style] {
    width: 50px;
    aspect-ratio: auto 50 / 50;
    height: 50px;
}
.uFlexItem .body {
    -webkit-box-flex: 1;
    -ms-flex: 1;
    flex: 1 1;
    min-width: 0;
    line-height: 1.4;
    display: block;
}
.cMemberList .body .-flex:first-child {
    margin-top: 0;
}

.sSettingBand .uFlexItem .body .text {
    font-weight: 600;
}
.cMemberList .body .-flex {
    display: -webkit-inline-box;
    display: -ms-inline-flexbox;
    display: inline-flex;
    margin-top: 7px;
    max-width: 100%;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}
.uFlexItem .body .text {
    font-size: 14px;
    font-weight: 700;
    color: #50401B;
    margin-top: 3px;
}
.uFlexItem .body .coLeader, .uFlexItem .body .coleader, .uFlexItem .body .leader {
    display: block;
    padding: 0 6px;
    height: 17px;
    line-height: 17px;
    background: #999;
    border-radius: 17px;
    vertical-align: top;
    white-space: nowrap;
    margin-left: 5px;
    font-size: 10px;
    font-weight: 400;
    color: #fff;
}
.gMal0 {
    margin-left: 0!important;
}
em {
    font-style: normal;
}
.uFlexItem .body .leader {
    background: #F7D078;
    width: 40px;
    color: #50401B; 
}
/* text -ellipsis gMat6 */
.sSettingBand .uFlexItem .body .text {
    font-weight: 600;
}
.uFlexItem .body .-ellipsis, .uFlexItem .body .ellipsis {
    display: block;
    overflow: hidden;
    max-width: 100%;
    white-space: nowrap;
    word-break: normal;
    word-wrap: normal;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
}
.uFlexItem .body .text {
    font-size: 14px;
    font-weight: 700;
    color: #50401B;
    margin-top: 3px;
}
.gMat6 {
    margin-top: 6px!important;
}
/* sSettingBand */
.sSettingBand {
    position: relative;
}
.sSettingBand .linkMemeberPrower {
    margin-top: 10px;
    padding: 25px 20px;
    text-align: center;
    border-bottom: 1px solid #f0f2f4;
}
.sSettingBand .linkMemeberPrower .text {
    font-size: 13px;
    font-weight: 400;
    color: #50401B;
}
.sSettingBand .linkMemeberPrower .moreLink {
    font-size: 13px;
    font-weight: 400;
    color: #50401B;
    display: inline-block;
    margin-top: 15px;
    text-decoration: underline;
    vertical-align: top;
}
/* 버튼 */
/* introOption */
.sSettingBand .cBandIntro .introOption {
    margin-top: 15px;
}

.cBandIntro .introOption {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-top: 14px;
}
.cIntroEditor .introOption {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin-top: 15px;
}
/* introOptionBox gTaC gPat15 gPab17 */
.cBandIntro .introOption .introOptionBox {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    font-size: 14px;
    font-weight: 400;
    color: #50401B;
}

.cIntroEditor .introOption .introOptionBox {
    -webkit-box-flex: 1;
    -ms-flex: 1 1 auto;
    flex: 1 1 auto;
    overflow: hidden;
    font-size: 13px;
    font-weight: 400;
    color: #50401B;
}
.gPab17 {
    padding-bottom: 17px!important;
}
.gPat15 {
    padding-top: 15px!important;
}
.gTaC {
    text-align: center!important;
}
/* 버튼 */
.uButton.-confirm {
    background: #50401B;  
	min-width: 100px;
    height: 35px;
    padding: 0 10px;
    font-size: 0.8rem;
    border-radius: 25px;
}

button.uButton {
    line-height: 1;
}
[type=reset], [type=submit], button, html [type=button] {
    -webkit-appearance: button;
}
.uButton {
    position: relative;
    min-width: 90px;
    height: 34px;
    padding: 0 15px;
    background: #474e60;
    border-radius: 1px;
    font-size: 13px;
    color: #fff;
    font-weight: 500;
    vertical-align: top;
    white-space: nowrap;
    cursor: pointer;
}
[tabindex], a[role=button], button, input, textarea {
    outline: 0;
}
button, dd, dl, dt, fieldset, ol, p, ul {
    margin: 0;
    padding: 0;
}
button, select {
    text-transform: none;
}
button, input {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    margin: 0;
}
button {
    appearance: auto;
    -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark(black, white);
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    background-color: -internal-light-dark(rgb(239, 239, 239), rgb(59, 59, 59));
    box-sizing: border-box;
    margin: 0em;
    font: 400 13.3333px Arial;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: -internal-light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
}
button {
    border: 0;
    background-color: transparent;
    border-radius: 0;
    cursor: pointer;
}
.header.beeHeaderColor{
   background-color: white;
}
.navi_menu_item>a {
    text-decoration: none;
    line-height: 34px;
    display: block;
    width: 100%;
    height: 100%;
    color: #50401B;
}
#beeNaviStyleOnly>a{
	text-decoration: none;
}
.uButton.-sizeS {
    background: #50401B;
}
</style>
<body>
<%
	ArrayList<BeesUserList> list = (ArrayList<BeesUserList>)request.getAttribute("list");
	/* Member sessionMember = (Member)session.getAttribute("member"); */
%>
<main id="content" role="main" class="midContent" data-uiselector="contentRegion"><div data-viewname="DGroupBandManageCoLeaderView" class="sSettingBand gContentCardShadow">
<div class="uHeaderWrap">
    <header class="header beeHeaderColor">
        <h1 class="title">매니저 추가</h1>
        <div class="btnsWrap" id="boxJoinManager" data-toggle="modal" data-target="#myModalJoinManager">
			  <path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/>
			  <path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/>
		
		<button type="button" class="btn uButton sf_tBorderOpacity sf_color _btnAddCoLeader">매니저 추가</button> 
        
        </div>
        <jsp:include page="modalJoinManager.jsp"/>    
        <!-- <div class="btnsWrap">
            <button type="button" class="btn uButton sf_tBorderOpacity sf_color _btnAddCoLeader">매니저 추가</button>
        </div> -->
    </header>
</div>
<%for(BeesUserList bu : list){%>
<ul class="cMemberList gMal22 gMar22">
<li data-viewname="DBandCoLeaderItemView" class="uFlexItem"><a href="#" role="button" class="uProfile -size50 _btnProfileImage">
    <span class="profileInner ">
        <img src="<%=bu.getProfileImg() %>" width="50" height="50" 
         onError="javascript:this.src='https://ssl.pstatic.net/cmstatic/webclient/dres/20210105172030/images/template/profile_120x120.png'">
    </span>
</a>

<span class="body">   
    <span class="text -flex"><em class="leader gMal0">매니저</em></span>
    <span class="text -ellipsis gMat6"><%=bu.getUserName() %></span>
</span>

<span class="etc">
    <button type="button" class="uButton -sizeS -confirm2 _btnRemoveCoLeader">취소</button>
</span>
</li></ul>
<%} %> 
<div class="sSettingBand">
    <div class="linkMemeberPrower">
        <p class="text">매니저는 무엇을 할 수 있나요?<br>설정 메뉴에서 매니저의 권한을 설정할 수 있습니다.</p>
        <a href="/beeSettingSubMemberPermission.do" class="moreLink">멤버들의 권한 설정 바로가기</a>
    </div>
</div>
		<div class="introOption">
        <div class="introOptionBox gTaC gPat15 gPab17">
            <button type="button" class="uButton -confirm _btnSaveIntroDescription">완료</button>
        </div>
</div></main>
<script>
	$(function(){
		$("#boxJoinManager").click(function(){
			$("#myModalJoinManager").modal();
		});
	});
</script>
</body>
</html>