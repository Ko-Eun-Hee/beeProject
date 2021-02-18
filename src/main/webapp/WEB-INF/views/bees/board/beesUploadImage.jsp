<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
    <%@page import="com.fourmeeting.bee.image.model.vo.AttachFileDTO" %>
    <%@page import="com.fourmeeting.bee.member.model.vo.Member" %>
      <%@ include file="/include/headerBee.jsp"  %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.uploadResult {
width: 100%;
margin-top:70px;
background-color: white;
height:70%;
 overflow:scroll;
}

.uploadResult ul {
display: flex;
flex-flow: row;
justify-content: center;
align-items: center;
padding:0;
}

.uploadResult ul li {
list-style: none;
padding: 10px;

}

.uploadResult img {
width: 80%;
white-space:pre;
}
.bigPictureWrapper {
  position: absolute;
  display: none;
  justify-content: center;
  align-items: center;
  top:5%;
  bottom:5%;
  width:100%;
  height:100%;
  min-height:500px;
  background-color: white; 
  z-index: 100;
}

.bigPicture {
  position: relative;
  display:flex;
  justify-content: center;
  align-items: center;
}

.uploadResult div{
 display:flex;
 width:500px;
 height:150px;
width:33%;
min-width:190px;
 white-space:pre;
}
.modal-content{
height:500px;
}
#Btn{
float:right;
background-image:url('/resources/image/header/plus.png'); 
background-repeat: no-repeat;
        border: none;
        width: 32px;
        height: 32px;
        cursor: pointer;
}
.img_body{
height:500px;

}
</style>
</head>
<body>


<!--구글 노토 산스 -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

<!--부트 스트랩-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

<!--폰트어썸 CDN-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">


<%@ include file="/common/cdnLib.jsp"%>
	<!--비즈 전체페이지 + 사이드 프로필 + 메인 컨텐츠 크기-->
	<link rel="stylesheet" type="text/css" href="/resources/css/beesForm.css">
	<script type="text/javascript" src="/resources/js/beesForm.js"></script>
   <link rel="stylesheet" type="text/css" href="/resources/css/beesUploadImage.css">


<div class="container pt-3">
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3 p-0">
				<div id="bees-side" class="container m-0 p-2">
					<div id="bees-side-profile">
						<table>
            <tr>
                <td id="bees-cover" colspan="2" style="background-image:url('/resources/image/image.jpg')"></td>
            </tr>
            <tr>
                <td id="bees-name" colspan="2">비즈이름</td>
            </tr>
            <tr id="bees-mid"><td id="bees-member-count">멤버<b> 6 </b></td>
                <td id="bees-invite">
                    <a href=""><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 19">
                <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
                <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
              </svg>초대</a>
            </td>
        </tr>
          <!--   <tr><td id="bees-note" colspan="2"><a href="">비즈 소개 설정 </a></td> --></tr>
            <tr><td id="bees-public" colspan="2">비즈와 게시글이 공개되지 않습니다. <br>초대를 통해서만 가입할 수 있습니다.</td></tr>
            <tr><td class="innerline" colspan="2"><hr></td></tr>
            <tr><td id="bees-setting" colspan="2">
                <a href="">
                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
                <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
                <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
              </svg>&nbsp;비즈설정</a></td></tr>
            <tr><td id="join-box" colspan="2">
                <button id="join-btn">비즈 가입하기</button>
            </td>
        </tr>
        </table>
		</div>
		<div id="bees-side-chatting">
        <table>
            <tr><td id="chatting-header">채팅</td>
                <td id="new-chat"><a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()">새 채팅</a></td></tr>
            <tr><td class="innerline" colspan="2"><hr></td></tr>
            <tr><td class="chat-list" colspan="2">
                <div class="chat-profile"></div>
                <a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()" style="color:dimgray" >사용자 이름</a></td></tr>
                <tr><td colspan="2" style="padding: 10px 5px 0 5px; line-height: 10px;">
                    <div class="chat-profile"></div>
                <a class="chat-open-btn" href="#none" target="_blank" onclick="openPopup()" style="color:dimgray">'비즈' 전체 채팅</a></td></tr>
        </table>
    </div>
				</div>
			</div>
			<div class="col-7 p-0">
				<div id="bees-contents" class="container m-0 p-2">
			
				<div id="main_content" style="background-color: white; width:100%; min-height:600px;">
            <div class="img_content" style="min-height:600px;">
               <div class="img_head">
                  <H3>사진첩</H3>
   <%
	ArrayList<AttachFileDTO> list=(ArrayList<AttachFileDTO>)request.getAttribute("list");

                  Member member = (Member)session.getAttribute("member");
              	System.out.println(member.getMemberNo());	
              	
%>
	

<%
		
		if (member != null) {
	%>

                           
                  
               </div>
            <!--      <input type="file" id="upImgFiles" onChange="uploadImgs();" name='uploadFile' accept="image/*" multiple >  <!-- name="subImg" -->
               <div class="img_body">
                  <span>전체사진</span> 
                                                                                  
              
               <div class='bigPictureWrapper'>
				  <div class='bigPicture'>
				  </div>
			</div> 
              
                         
                      
                         <div class='uploadDiv'>    
                         <input type='file' name='uploadFile' multiple id="btn-upload">
						</div>
                   			 
                     
                     <div class='uploadResult'>  <!--  업로드 된 파일 목록으로 보여주기-->
					<ul > 
					    <%for(AttachFileDTO af : list){%>
						<%System.out.println("/resources/file/"+af.getChangeFileName());%>
						<div ><img src="<%="/resources/file/"+af.getChangeFileName()%>" width='150px' height='150px'>
						<span data-file=\'"+fileCallPath+"\' data-type='image' data-name=\'"+fileName+"\'><img src='/resources/image/admin/error.png' style='width:20px; height:20px;'></span></div>
						<%} %>
			
								
					</ul>
				</div>
                     
                        <div class="row" id="spaceImage">
                              <div class="col-md-12"> 
                              <div id="imageviews"></div>
                              </div>
                          </div>
            
               </div> <!-- img_body -->
            <!-- 여기부터 실험 -->
            
            
            
          
           

		  <div class='uploadBtn'>
				 <button type="button" id='uploadBtn' class="btn btn-modifys" style="margin:0 auto;width:80px; background-color:#FFF3D8;color:#50401B;border:none;border-radius:10px;">업로드</button>
			</div>





   
            
            <!-- 여기까지 실험 -->
            </div> <!-- img_content -->
            </div> <!-- main_content -->

   </div>   <!-- bees-contents -->
				
			</div>
			<div class="col-1"></div>
		</div>
	</div>
	
	

	
	
	<%} %>		  
	
     
      
      
       
     
	
	
	<jsp:include page="/common/footer.jsp" flush="true"/>
	
	<script>

	function showImage(fileCallPath){
	  
	  //alert(fileCallPath);
	
	  $(".bigPictureWrapper").css("display","flex").show();
	  
	  $(".bigPicture")
	  .html("<img src='/display.do?fileName="+fileCallPath+"'>")
	  .animate({width:'100%', height: '100%'}, 1000);

	}
	
	$(".bigPictureWrapper").on("click", function(e){
	  $(".bigPicture").animate({width:'0%', height: '0%'}, 1000);
	  setTimeout(() => {
		    $(this).hide();
		  }, 1000);
	});
	


	
	$(".uploadResult").on("click","span", function(e){
	   
	  var targetFile = $(this).data("file");
	  var type = $(this).data("type");
 	  var name = $(this).data("name");	
	  var targetLi = $(this).closest("div");
	  
	  $.ajax({
	    url: '/deleteFile.do',
	    data: {filePath: targetFile, type:type, name:name},
	    dataType:'text',
	    type: 'POST',
	      success: function(result){
	         alert(result);
	         targetLi.remove();
	       }
	  }); //$.ajax
	  
	});

            
  </script>          
            
 <script>

 $(document).ready(function(){
	 
      
	 $('#uploadBtn').click(function(e){
		 e.preventDefault();
	 $.ajax({
		 url: '/selectAllImage.do',
		 processData: false,
		 contentType: false,
		 type: 'POST',
		 dataType:'json',
		 success: function(result){
			 console.log("re"+result);
			 
			 var str="";
			 $(result).each(function(i, attachFileDTO){
			 var fileCallPath = encodeURIComponent( attachFileDTO.uploadPath);
				
			 str += "<li><div>";
			 str += "<li><a href=\"javascript:showImage(\'"+originPath+"\')\">"+
		        "<img src='/display.do?fileName="+fileCallPath+"'></a>"+
		        "<span data-file=\'"+fileCallPath+"\' data-type='image' data-name=\'"+fileName+"\'><img src='/resources/image/admin/error.png' style='width:20px; height:20px;'></span></li>";
			 str += "</div>";
			 str +"</li>";
			 });
			 $(".uploadResult ul").append(str);
		
		 }
		 });   //$.ajax
	 });
	 
	/*업로드*/	
	 
	 var cloneObj = $(".uploadDiv").clone();
	 $('#uploadBtn').on("click", function(e){
		 
		 var regex = new RegExp("(.*?)\.(jpe?g|png|gif)$");
			var maxSize = 5242880; //5MB

			function checkExtension(fileName, fileSize) {

				if (fileSize >= maxSize) {
					alert("파일 사이즈 초과(파일은 최대 5MB까지만 가능합니다.)");
					return false;
				}

				if (!regex.test(fileName)) {
					alert("이미지 파일만 업로드 가능합니다.(가능한 확장자명:jpeg/jpg/png/gif)");
					return false;
				}
				return true;
			}
		 var formData = new FormData();
			
		 var inputFile = $("input[name='uploadFile']");
		
		 var files = inputFile[0].files;
 		
 		console.log(files);
 		
 		for(var i = 0; i < files.length; i++){
 			if (!checkExtension(files[i].name, files[i].size)) {
				return false;
			}

 			 formData.append("uploadFile", files[i]);
 			
 		}
			
 		
 		 $.ajax({
 			 url: '/uploadAjaxAction.do',
 			 processData: false,
 			 contentType: false,
 			 data: formData,
 			 type: 'POST',
 			 dataType:'json',
 			 success: function(result){
 			 alert("파일등록 성공!");
 			 console.log(result);
 			 showUploadedFile(result);
 			$(".uploadDiv").html(cloneObj.html());
 			 }
 			 }); //$.ajax
 			
 			 
	 });
	 var uploadResult = $(".uploadResult ul");
	 
	 function showUploadedFile(uploadResultArr){
		    
		    var str = "";
		    
		    $(uploadResultArr).each(function(i, obj){
		      
		      
		        
		        var fileCallPath =  encodeURIComponent( obj.thumbnailFileName);
		        var originPath = obj.uploadPath;
		        var fileName = obj.uuid +"_"+obj.fileName;
		        
		        originPath = originPath.replace(new RegExp(/\\/g),"/");
		        str += "<div><a href=\"javascript:showImage(\'"+originPath+"\')\">"+
		        "<img src='/display.do?fileName="+fileCallPath+"'></a>"+
		        "<span data-file=\'"+fileCallPath+"\' data-type='image' data-name=\'"+fileName+"\'><img src='/resources/image/admin/error.png' style='width:20px; height:20px;'></span></div>";
		        
		        
		      
		    });
		    
		    uploadResult.append(str);
		  }
 });
 
 /*     $(document).ready(function(){
                                 $('#uploadBtn').click(function(e){
                                    e.preventDefault();
                                    $('#upImgFiles').click();
                                 });
                                 
                                 
                              });
                              
                            function uploadImgs() {
                                  // @breif 업로드 파일 읽기
                                  var fileList = document.getElementById( "upImgFiles" ).files;
                                       
                                 // @breif 업로드 파일 읽기
                                 function readAndPreview( fileList ) {
                                    // @breif 이미지 확장자 검사
                                    if ( /\.(jpe?g|png|gif)$/i.test( fileList.name ) ) {
                                       var reader = new FileReader();
                                       reader.addEventListener( "load", function() {
                                          var image = new Image();
                                          image.width = "170";
                                          image.height = "170";
                                          image.title = fileList.name;
                                          image.src = this.result;

                                          // @details 이미지 확장자 검사
                                          document.getElementById( "imageviews" ).appendChild( image );
                                       }, false );

                                       // @details readAsDataURL( )을 통해 파일의 URL을 읽어온다.

                                       if( fileList ) {
                                          reader.readAsDataURL( fileList );
                                       }
                                    }
                                 }

                               if( fileList ) {
                            // @details readAndPreview() 함수를 forEach문을통한 반복 수행
                                   [].forEach.call( fileList, readAndPreview );
                                }
                               }  
                           */
                             
                             </script>
</body>
</html>
