<%@ page import="com.koreait.board.BoardVO" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<% List<BoardVO> list = (List<BoardVO>) request.getAttribute("data"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리스트</title>
    <style>
        input {
            margin-bottom: 10px;
        }
        table, th, td {
            border-collapse: collapse;
            border: 1px solid #000;
            padding: 5px;
        }
    </style>
</head>
<!--
    div 태그는 대표적인 Block 태그, 화면을 다 차지 한다. h 태그
    span 태그는 대표적인 Inline 태그, a 태그 , image 태그
    <% %> 자바 언어 사용할 수 있는 태그
    = 표현식, 마크업 언어와 같은 것
-->
<body>
    <div>
        <a href="/write"><input type="button" value="글쓰기"></a>
    </div>
    <table>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>글쓴이</th>
            <th>작성일시</th>
        </tr>

        <% for(BoardVO vo : list){ %>
            <tr>
                <td><%= vo.getIboard()%></td>
                <td><a href="/detail?iboard=<%= vo.getIboard()%>"><%= vo.getTitle()%></a></td>
                <td><%= vo.getWriter()%></td>
                <td><%= vo.getRdt()%></td>
            </tr>
        <% } %>
    </table>
</body>
</html>