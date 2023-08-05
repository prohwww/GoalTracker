<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ page import="java.io.PrintWriter" %>
        <!DOCTYPE html>
        <html>
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width" , initial-scale="1">
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/custom.css">
            <!-- fullcalender -->
            <!-- 경로문제만 해결되면 할텐데;; 모르겠네ㅠ~ 일단 라이브러리 넣었어! -->
            <!-- <link href='fullcalendar-5.11.5/lib/main.css' rel='stylesheet' />
            <script src='fullcalendar-5.11.5/lib/main.js'></script> -->
            <!-- https://fullcalendar.io/docs/initialize-globals 경로 참고해서 기능 넣으면 될듯! 일단,, 기본 form만.. -->
            <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/core@6.1.8/index.global.min.js'></script>
            <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@6.1.8/index.global.min.js'></script>
            <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/interaction@6.1.8/index.global.min.js'></script>
            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    var calendarEl = document.getElementById('calendar');
                    const calendar = new FullCalendar.Calendar(calendarEl, {
                        initialView: 'dayGridWeek',
                        selectable: true,   // 사용자가 클릭하고 드래그하여 여러 날짜 또는 시간 슬롯을 강조 표시할 수 있습니다.
                        headerToolbar: {
                            left: 'prev,next today',
                            center: 'title',
                            right: 'dayGridWeek,dayGridDay'
                        },
                        navLinks: true,     // 주 의 날짜를 클릭하면 일별 일정으로 이동
                        editable: true,     // 일정의 이벤트를 수정할 수 있는지 여부를 결정 (마우스로 끌어서 일정 변경 가능)
                        droppable: true,    // this allows things to be dropped onto the calendar
                        // 빈공간 클릭 시 일정 등록
                        dateClick: function (info) {
                            var schedule = prompt('일정을 입력해주세요.');
                            if (schedule) {
                                calendar.addEvent({
                                    schedule: schedule,
                                    date: arg.start,
                                    // end: arg.end
                                })
                            }
                            calendar.unselect()
                        }
                        // 이미 등록된 일정 삭제
                        // eventClick: function (info) {
                        //     if(confirm("'"+ info.event.schedule +"' 일정을 삭제하시겠습니까 ?")){
                        //         // 확인 클릭 시
                        //         info.event.remove();
                        //     }
                        //     if (schedule) {
                        //         calendar.addEvent({
                        //             schedule: schedule,
                        //             date: arg.start,
                        //             // end: arg.end
                        //         })
                        //     }
                        //     calendar.unselect()
                        // }
                    });
                    calendar.render();
                });
            </script>
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
                    <div id='calendar'></div>
                </div>
            </div>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
        </body>
        </html>