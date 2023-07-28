<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.io.PrintWriter" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width" , initial-scale="1">
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/custom.css">
            <title>GoalTracker main page</title>
        </head>

        <body>
            <nav class="navbar navbar-default">
                <div style="padding:40px; margin: 0 auto; width:300px;">
                    <button type=" button" class="navbar-toggle collapsed" data-toggle="collapse"data-target="#bs-example-navbar-collapse-1" aria-expanded="false"></button>
                    <a class="navbar-brand" href="main">
                        <br>
                        <p style="font-weight: bold; font-size: 40px;">GOAL&nbsp;TRCKER</p>
                    </a>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false">로그인<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="login">로그인</a></li> <!-- 추후 게시판명 적용 예정 -->
                            <li><a href="join">회원가입</a></li> <!-- 추후 게시판명 적용 예정 -->
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="col-md-2">
                <div class="sidebar-1">
                    <s_sidebar>
                        <s_sidebar_element>
                            <!-- 프로필 -->
                            <div style="text-align:center;">
                                <br><br><br>
                                <div style="padding-bottom:10%">
                                    <a href="https://ibb.co/3M0Zsrd"><img src="https://i.ibb.co/2sj46nh/Kakao-Talk-20230625-223729907.jpg" alt="Kakao-Talk-20230625-223729907" border="0" width="60%" style="border-radius:50%;" /></a>
                                </div>
                                <h2 style="font-size: 14px;">♥사용자아이디♥</h2><br>
                                <!-- 사이드 바 메뉴-->
                                <div class="panel panel-info" style="border-width: 0;">
                                    <!-- 사이드바 메뉴목록1 -->
                                    <ul class="list-group">
                                        <li class="list-group-item" style="border-width: 0;"><a href="bucketList" style="color: black;">버킷 리스트</a></li>
                                        <li class="list-group-item" style="border-width: 0;"><a href="monthly" style="color: black;">월간 계획</a></li>
                                        <li class="list-group-item" style="border-width: 0;"><a href="main" style="color: black;">주/일간 계획</a></li>
                                    </ul>
                                </div>
                            </div>
                        </s_sidebar_element>
                    </s_sidebar>
                </div>
            </div>
            <div class="container">
                <div class="container" style="text-align : center;">
                    <br><br><br><br><br>
                    <!-- <h1>BUCKET LIST</h1> -->
                    <div style="text-align : center;">
                        <table border = '1' style="width:80%; height: 150px; margin: auto; text-align: center;">
                            <tr>
                                <th scope="col" width="90%" style="text-align : center;">2023 Goal List</td>
                                <th scope="col" style="text-align : center;">check</td>
                            </tr>
                            <tr>
                                <td>1. 프로젝트 완성하기</td>
                                <td>v</td>
                            </tr>
                            <tr>
                                <td>2. 책 10권 읽기</td>
                                <td>v</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
        </body>

        </html>