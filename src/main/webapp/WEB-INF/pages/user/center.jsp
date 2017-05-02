<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心</title>
    <link rel="stylesheet" href="${path}/resources/css/bootstrap.min.css" />
    <link href="${path}/resources/css/cropper.min.css" rel="stylesheet">
    <link href="${path}/resources/css/main.css" rel="stylesheet">
    <link rel="shortcut icon"  href="${path}/resources/img/icon.jpg">
    <link rel="stylesheet" href="${path}/resources/css/center.css" />
    <style type="text/css">
    	.exit{
            background: url(${path}/resources/fonts/tuichu.svg) no-repeat 4px 5px;
            background-size: 19px 24px;
            width: 35px;
        }
        .inform{
            background: url(${path}/resources/fonts/inform.svg) no-repeat 4px 5px;
            background-size: 19px 24px;
            width: 35px;
        }
        .user{
            background: url(${path}/resources/fonts/user.svg) no-repeat 4px 5px;
            background-size: 19px 24px;
            width: 35px;
        }
        .setting1{
            background: url(${path}/resources/fonts/setting1.svg) no-repeat 4px 5px;
            background-size: 19px 24px;
            width: 35px;
        }
         .like{
            background: url(${path}/resources/fonts/xihuan.svg) no-repeat 1px 3px;
            background-size:  16px 16px;
            width: 35px;
            display: inline-block;
            border: none;
            background-color: rgba(224, 224, 224, 0.84);
            float: right;
            cursor: pointer;
        }
        .collect{
           background: url(${path}/resources/fonts/shoucang.svg) no-repeat 0px -1px;
            background-size: 18px 26px;
            width: 35px;
            display: inline-block;
            border: none;
            background-color: rgba(224, 224, 224, 0.84);
            float: right;
            cursor: pointer;
        }
        .comment{
            background: url(${path}/resources/fonts/pinglun.svg) no-repeat -1px 1px;
            background-size: 19px 24px;
            width: 35px;
            display: inline-block;
            border: none;
            background-color: rgba(224, 224, 224, 0.84);
            float: right;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="top_content">
    <header>
        <div>
             <ul>
            <li>
                <a href="index.html"><img src="${path}/resources/img/logo.png" class="logo"></a>
            </li>
            <li>
                <a href="" >首页</a>
            </li>
            <li>
                <a href="">外拍</a>
            </li>
            <li>
                <a href="">论坛</a>
            </li>
            <li>
                <a href="">干货</a>
            </li>
            <li class="userCenter">
                <img src="${path}/resources/img/user.jpg" class="userImg userImgCenter">
                    <ul class="centerList hidden">
                        <li>
                            <a href class="user">个人中心</a>
                        </li>
                        <li>
                            <a href class="inform">重要通知</a>
                        </li>
                        <li>
                            <a href class="setting1">账号设置</a>
                        </li>
                        <li>
                            <a href class="exit">退出账号</a>
                        </li>
                    </ul>
            </li>
        </ul>
        </div>
       
    </header>
</div>
<div class="container">
	<div class="detail_block">
		<div>
			<img src="${path}/resources/img/user.jpg">
			<div>
				<div>
					<ul class="imgBelow">
						<li>
							<span class="fansnum">12</span><p>粉丝</p>
						</li>
						<li>
							<span class="concernnum">13</span><p>关注</p>
						</li>
					</ul>
				</div>
			</div>
			<div>
				<h4 class="username">用户名称</h4>
				<button>账号设置</button>
			</div>
		</div>
	</div>
	<div class="user_detail_block">
			<ul  class="user_detail_list">
				<li id="picnum" class="grey"><span class="picnum">13</span>图库</li>
				<li id="collnum"><span class="collectnum">14</span>收藏库</li>
				<li id="likenum"><span class="likenum">14</span>喜欢</li>
			</ul>
		</div>
	<!--图库中心-->
	<div class="pic_waterfall  "> 
	 	<ul>
	 		<li>
	 			  <div class="container" id="crop-avatar">
                        <!-- 生成模态窗口的按钮-->
                        <div class="button_blo">
                        	<button class="upload_btn avatar-view" data-toggle="modal" data-target="#myModal"></button> 
                        	<div class="hori_line"></div>
                    		<div class="stra_line"></div>
                        </div>
                        <!-- 模态窗口 -->
                        <div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <form class="avatar-form" action="crop.php" enctype="multipart/form-data" method="post">
                                        <div class="modal-header">
                                            <button class="close" data-dismiss="modal" type="button">&times;</button>
                                            <h4 class="modal-title" id="avatar-modal-label">上传照片</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="avatar-body">

                                                <!-- 上传图片 -->
                                                <div class="avatar-upload">
                  									<input class="avatar-src" name="avatar_src" type="hidden">
                  									<input class="avatar-data" name="avatar_data" type="hidden">
                  									<label for="avatarInput">选择照片上传</label>
                  									<input class="avatar-input" id="avatarInput" name="avatar_file" type="file">
                                                </div>
                                                <!-- 图片的剪裁预览窗口 -->
                                                <div class="row">
                  									<div class="col-md-9">
                    									<div class="avatar-wrapper"></div>
                  									</div>
                  									<div class="col-md-3">
                    									<div class="avatar-preview preview-lg"></div>
                  									</div>
                                                </div>
                                                <!--图片相关信息输入-->
                                                <div class="pic_detail_input">
                    								<hr>
                    								<div class="form-group">
                    									<label for="picNameInput">图片名称</label>
                    									<input class="avatar-input" id="picNameInput" name="name" type="text" placeholder="给你的作品取个名字吧(七个字以内)">
                    								</div>
                    								<hr>
                    								<div class="form-group">
                    									<label for="picDescriptionInput">图片故是</label>
                    									<textarea class="avatar-input" id="picDescriptionInput" name="desct" type="text" placeholder="因故而是，向大家说说照片背后的故事吧" rows="3" cols="20"></textarea>
                    								</div>
                    								<hr>
                                                </div>
                                                <!--控制图片的旋转-->
                                                <div class="row avatar-btns">
                    								<button class="btn  btn-block avatar-save" type="submit">上传照片</button>
                    								<button class="btn  btn-block avatar-save" type="submit">生成日志</button>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- <div class="modal-footer">
                                        <button class="btn btn-default" data-dismiss="modal" type="button">Close</button>
                                        </div> -->
                                    </form>
                                </div>
                            </div>
                        </div><!-- /.modal -->

                    </div>
	 		</li>
	 		<li>
                <img src="${path}/resources/img/test.jpg">
                <div class="pic_detail">
                    <h4 class="picname">图片名称孩图片名称孩</h4>
                    <p class="picdesc">图片描述图片描述</p>
                    <ul>
                        <li class="like "><span class="piclike">12</span></li>
                        <li class="collect"><span class="piccollect">12</span></li>
                        <li class="comment"> <span class="piccollect">12</span></li>
                    </ul>
                </div>
                <div class="owner_detail">
                    <p class="time">2017-04-30</p>
                </div>
            </li>
            <li>
                <img src="${path}/resources/img/test.jpg">
                <div class="pic_detail">
                    <h4 class="picname">图片名称孩图片名称孩</h4>
                    <p class="picdesc">图片描述图片描述</p>
                    <ul>
                        <li class="like "><span class="piclike">12</span></li>
                        <li class="collect"><span class="piccollect">12</span></li>
                        <li class="comment"> <span class="piccollect">12</span></li>
                    </ul>
                </div>
                <div class="owner_detail">
                    <p class="time">2017-04-30</p>
                </div>
            </li>
             <li>
                <img src="${path}/resources/img/test.jpg">
                <div class="pic_detail">
                    <h4 class="picname">图片名称孩图片名称孩</h4>
                    <p class="picdesc">图片描述图片描述</p>
                    <ul>
                        <li class="like "><span class="piclike">12</span></li>
                        <li class="collect"><span class="piccollect">12</span></li>
                        <li class="comment"> <span class="piccollect">12</span></li>
                    </ul>
                </div>
                <div class="owner_detail">
                    <p class="time">2017-04-30</p>
                </div>
            </li>
	 	</ul>
	</div>
	<div class="like_waterfall hidden">
		<ul>
			<li>
				<img src="${path}/resources/img/test.jpg">
                <div class="pic_detail">
                    <h4 class="picname">图片名称孩图片名称孩</h4>
                    <p class="picdesc">图片描述图片描述</p>
                </div>
                 <div class="owner_detail">
                        <img src="${path}/resources/img/user.jpg" class="ownerImg">
                        <div>
                            <span class="ownername">XXX</span>
                            <span class="ownergrade">LV0</span>
                            <p>发表图片<p>
                        </div>
                        <p class="time">2017-04-30</p>
                </div>
			</li>
		</ul>
	</div>
	<div class="coll_waterfall hidden">
		<ul>
			<li>
	 			  <div class="container" id="crop-avatar">
                        <!-- 生成模态窗口的按钮-->
                        <div class="button_blo">
                        	<button class="upload_btn creat_view" data-toggle="modal" data-target="#collModal"></button> 
                        	<div class="hori_line"></div>
                    		<div class="stra_line"></div>
                        </div>
                        
                         <!-- 模态窗口 -->
                        <div class="modal fade" id="collModal" tabindex="-1" role="dialog" aria-labelledby="collModalLabel" aria-hidden="true">
    						<div class="modal-dialog">
        						<div class="modal-content">
            						<div class="modal-header">
                						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                						<h4 class="modal-title" id="myModalLabel">创建收藏库</h4>
            						</div>
            						<div class="modal-body">
            							<form>
            								<hr>
            								<div class="form_group">
            									<label for="picNameInput">收藏库名称</label>
                    							<input class="avatar-input" id="picNameInput" name="name" type="text" placeholder="给你的收藏夹取个名字吧">
            								</div>
            								<hr>
            								<div class="form_group">
            									<label for="picNameInput">收藏库描述</label>
                    							<textarea class="avatar-input" id="picDescriptionInput" name="desct" type="text" placeholder="描述一下你的收藏库，或许会有人感兴趣哦" rows="3" cols="20"></textarea>
                    								
            								</div>
            								<hr>
            							</form>
            						</div>
            						<div class="modal-footer">
                						<button type="button" class="btn " data-dismiss="modal">关闭</button>
                						<button type="button" class="btn ">创建</button>
            						</div>
        						</div><!-- /.modal-content -->
    						</div><!-- /.modal -->
						</div>
                   </div>
	 		</li>
	 		<li>
	 			<h4 class="coll_name">北角建筑</h4>
	 			<p><span class="coll_num">23</span>张</p>
	 			<div class="coll_box">
	 				<div class="img_top">
	 					<img src="${path}/resources/img/test3.jpg" >
	 				</div>
	 				<div class="img_bottom">
	 					<div>
	 						<img src="${path}/resources/img/calendar.jpg">
	 					</div>
	 					<div>
	 						<img src="${path}/resources/img/test.jpg">	 						
	 					</div>
	 				</div>
	 			</div>
	 			<button class="edit_coll">编辑</button>
	 		</li>
	 		
		</ul>
	</div>
</div>
<footer>
</footer>
<script src="${path}/resources/js/jquery-2.2.3.min.js"></script>
<script src="${path}/resources/js/bootstrap.min.js"></script>
<script src="${path}/resources/js/jquery.form.js"></script>
<script src="${path}/resources/js/center.js"></script>
<script src="${path}/resources/js/cropper.min.js"></script>
<script src="${path}/resources/js/main.js"></script>
</body>
</html>