<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
/* 기본 */
*, :after, :before {
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
    font-family: 'Noto Sans KR', sans-serif;
}
body, h1, h2, h3, h4, h5, h6 {
    margin: 0;
    font-size: 1rem;
    font-weight: 400;
    color: #6D6042;
}
body {
    background: #F7F7F7;
    line-height: 1.43;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    width: 100%;
}
html {
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%;
}
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

figcaption, figure, main {
	display: block;
}

main {
	display: block;
}
/* sSettingBand gContentCardShadow */
section {
	display: block;
}

.sSettingBand {
	position: relative;
}

.gContentCardShadow {
	background-color: #fff;
	-webkit-box-shadow: 0 1.4px 1.3px 0 rgba(62, 73, 89, .1);
	box-shadow: 0 1.4px 1.3px 0 rgba(62, 73, 89, .1);
}
html {
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%;
}

.uHeaderWrap {
	position: relative;
	padding: 0 22px;
	border-bottom: 1px solid #f0f2f4;
}

.-h50 {
	height: 50px !important;
}

div {
	display: block;
}
/* header */
.uHeaderWrap.-h50 .header {
	height: 50px;
}

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

.uHeaderWrap.-h50 .header .title {
	font-size: 16px;
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
/* sSettingList -tbSpace */
.sSettingBand .sSettingList.-tbSpace {
	padding-top: 7px;
	padding-bottom: 7px;
}

.sSettingBand .sSettingList {
	padding: 0 22px;
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
/* sSettingItem _openTypeWrapper */
.sSettingBand .sSettingItem.-tLineNone, .sSettingBand .sSettingItem:first-child
	{
	border-top-width: 0;
}

.sSettingBand .sSettingItem {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	position: relative;
	width: 100%;
	min-height: 75px;
	border-top: 1px solid #f0f2f4;
	text-align: left;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
}

li {
	display: list-item;
	text-align: -webkit-match-parent;
}

.sSettingBand .sSettingItem:before {
	content: '';
	min-height: inherit;
	font-size: 0;
	display: block;
}

.sSettingBand .sSettingItem .-flexible {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	width: 100%;
}
/* itemContent */
.sSettingBand .sSettingItem .itemContent {
	-webkit-box-flex: 1;
	-ms-flex: 1 1 0px;
	flex: 1 1;
	line-height: 1.3;
}
/* label _openTypeLabel  -point */
.sSettingBand .sSettingItem .label {
	display: block;
	word-wrap: break-word;
	word-break: break-all;
	font-size: 14px;
	font-weight: bold;
	color: #50401B;
}
label {
	cursor: default;
}
.sSettingBand .sSettingItem .subTxt {
	display: block;
	margin-top: 6px;
	font-size: 12px;
	font-weight: 400;
	color: #50401B;
}

.sSettingBand .sSettingItem .itemSide {
	position: relative;
	-webkit-box-flex: 0;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	width: 92px;
	text-align: right;
	line-height: 1.3;
}

.sSettingBand .sSettingItem {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	position: relative;
	width: 100%;
	min-height: 75px;
	border-top: 1px solid #f0f2f4;
	text-align: left;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
}
/* uCheck -checkbox */
.uCheck {
	position: relative;
	display: inline-block;
	vertical-align: top;
}

.uCheck .checkInput {
	z-index: 10;
	position: absolute;
	left: 0;
	top: 0;
	width: 20px;
	height: 20px;
	opacity: 0;
	cursor: pointer;
}

[type=checkbox], [type=radio] {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	padding: 0;
}

input, textarea {
	color: #50401B;
	border-radius: 0;
}

[tabindex], a[role=button], button, input, textarea {
	outline: 0;
}

button, input, select, textarea {
	font-family: -apple-system, BlinkMacSystemFont, "Helvetica Neue",
		Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji",
		NotoColorEmoji, "Segoe UI Symbol", "Android Emoji", EmojiSymbols;
}

button, input {
	overflow: visible;
}

button, input, optgroup, select, textarea {
	margin: 0;
}

input[type="radio" i] {
	background-color: initial;
	cursor: default;
	appearance: radio;
	box-sizing: border-box;
	margin: 3px 3px 0px 5px;
	padding: initial;
	border: initial;
}

input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: -internal-light-dark(black, white);
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	appearance: textfield;
	background-color: -internal-light-dark(rgb(255, 255, 255),
		rgb(59, 59, 59));
	-webkit-rtl-ordering: logical;
	cursor: text;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 2px;
	border-width: 2px;
	border-style: inset;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
}

.uCheck.-checkbox .checkLabel {
	min-width: 20px;
	min-height: 20px;
}

.uCheck .checkLabel {
	position: relative;
	display: block;
	padding-left: 20px;
	cursor: pointer;
}

.uCheck.-checkbox .checkLabel .shape {
	width: 20px;
	height: 20px;
	margin-top: -10px;
}

.uCheck .checkLabel .shape {
	position: absolute;
	display: inline-block;
	left: 0;
	top: 50%;
}

.uCheck.-checkbox .checkLabel .shape:after, .uCheck.-checkbox .checkLabel .shape:before
	{
	width: 20px;
	height: 20px;
	overflow: hidden;
	display: inline-block;
	background-repeat: no-repeat;
	content: '';
	background-image:
		url(https://ssl.pstatic.net/cmstatic/webclient/dres/20210105172030/images/spr_icons_f.png);
	background-position: -280px -137px;
}

.uCheck .checkLabel .shape:before {
	width: 100%;
	height: 100%;
}

.uCheck.-checkbox .checkLabel .shape:after, .uCheck.-checkbox .checkLabel .shape:before
	{
	width: 20px;
	height: 20px;
	overflow: hidden;
	display: inline-block;
	background-repeat: no-repeat;
	content: '';
	background-image:
		url(https://ssl.pstatic.net/cmstatic/webclient/dres/20210105172030/images/spr_icons_f.png);
	background-position: -280px -137px;
}

.uCheck .checkLabel .shape:after, .uCheck .checkLabel .shape:before {
	display: block;
	-webkit-transition: all .2s ease;
	-o-transition: all .2s ease;
	transition: all .2s ease;
	content: '';
}

.uCheck.-checkbox .checkInput:checked+.checkLabel .shape:after {
	opacity: 1;
}

.uCheck.-checkbox .checkLabel .shape:after {
	left: 0;
	top: 0;
	opacity: 0;
	background-position: -280px -159px;
}

.uCheck .checkLabel .shape:after {
	position: absolute;
	border-radius: 50%;
	background-color: #F7D078;
}

.sSettingBand .sSettingItem {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	position: relative;
	width: 100%;
	min-height: 75px;
	border-top: 1px solid #f0f2f4;
	text-align: left;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
}

.uCheck.-checkbox .checkLabel {
	min-width: 20px;
	min-height: 20px;
}

.uCheck .checkLabel {
	position: relative;
	display: block;
	padding-left: 20px;
	cursor: pointer;
}
/* 저장 버튼 */
.sSettingBand .btnFooter {
	padding: 30px 0;
	border-top: 1px solid #f0f2f4;
	text-align: center;
}

.uButton.-confirm {
    background: #50401B;
    border: 0px;
}

.uButton.-sizeL {
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

button {
	border: 0;
	background-color: transparent;
	border-radius: 0;
	cursor: pointer;
}

button, input, select, textarea {
	font-family: -apple-system, BlinkMacSystemFont, "Helvetica Neue",
		Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji",
		NotoColorEmoji, "Segoe UI Symbol", "Android Emoji", EmojiSymbols;
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
	background-color: -internal-light-dark(rgb(239, 239, 239),
		rgb(59, 59, 59));
	box-sizing: border-box;
	margin: 0em;
	font: 400 13.3333px Arial;
	padding: 1px 6px;
	border-width: 2px;
	border-style: outset;
	border-color: -internal-light-dark(rgb(118, 118, 118),
		rgb(133, 133, 133));
	border-image: initial;
}
/* .header.beeHeaderColor{
   background-color: white;
} */
li{
   list-style: none;
}
</style>
<body>
	<main id="content" role="main" class="midContent"
		data-uiselector="contentRegion">
	<div data-viewname="DBandTypeConditionView">
		<section class="sSettingBand gContentCardShadow">
		<div class="uHeaderWrap -h50">
			<header class="header beeHeaderColor">
			<h1 class="title">비즈 공개</h1>
			</header>
		</div>
		<ul class="sSettingList -tbSpace">

			<li class="sSettingItem _openTypeWrapper">
				<div class="itemContent">
					<label for="check1" class="label _openTypeLabel -point">비공개
						비즈</label> <span class="subTxt">비즈와 게시글이 공개되지 않습니다. 초대를 통해서만 가입할 수
						있습니다.</span>
				</div>
				<div class="itemSide">
					<label class="uCheck -checkbox"> <input type="radio"
						id="check1" class="checkInput _radioOpenType" name="type_check"
						value="secret" checked=""> <span class="checkLabel">
							<span class="shape"></span>
					</span>
					</label>
				</div>
			</li>

			<li class="sSettingItem _openTypeWrapper">
				<div class="-flexible">
					<div class="itemContent">
						<label for="check3" class="label _openTypeLabel ">공개 비즈</label> <span
							class="subTxt">누구나 비즈를 검색해 찾을 수 있고, 비즈 소개와 게시글을 볼 수 있습니다.</span>
					</div>
					<div class="itemSide">
						<label class="uCheck -checkbox"> <input type="radio"
							id="check3" class="checkInput _radioOpenType" name="type_check"
							value="public"> <span class="checkLabel"> <span
								class="shape"></span>
						</span>
						</label>
					</div>
				</div>
			</li>
		</ul>
		<div class="btnFooter">
			<button type="button" class="uButton -sizeL -confirm _btnConfirm">완료</button>
		</div>
		</section>
	</div>
	</main>
</body>
</html>