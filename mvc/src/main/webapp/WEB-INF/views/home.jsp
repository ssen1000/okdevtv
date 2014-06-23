<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" pageEncoding="utf-8"%>
<!doctype html>
<html ng-app>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.0-beta.13/angular.min.js"></script>
<script src="/todo.js"></script>
<link rel="stylesheet" href="/todo.css">
</head>
<body>
	<h2>Todo</h2>
	<div ng-controller="TodoCtrl">
		<span>{{remaining()}} of {{todos.length}} remaining</span> [ <a
			href="" ng-click="archive()">archive</a> ]
		<ul class="unstyled">
			<li ng-repeat="todo in todos"><input type="checkbox"
				ng-model="todo.done"> <span class="done-{{todo.done}}">{{todo.text}}</span>
			</li>
		</ul>
		<form ng-submit="addTodo()">
			<input type="text" ng-model="todoText" size="30"
				placeholder="add new todo here"> <input class="btn-primary"
				type="submit" value="add">
		</form>
	</div>
	<P>The time on the server is ${serverTime}.</P>
</body>
</html>