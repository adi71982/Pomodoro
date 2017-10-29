<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Pomodoro Task Manager</title>
    <asset:stylesheet src="application.css"/>
    <style>
    #para{
        text-align:right;
    }
    </style>
</head>

<body style="background-image:url('${resource(dir: "images/", file: "Background.jpg")}') ">
<div class="container">
    <div class="container-fluid pl">
        <h1 class="row col-lg-8" style="margin: 0px;padding: 0px">Pomodoro Task Manager</h1>
    </div>

    <div class="row col-lg-8">
        <div class="row col-lg-4">
            <h2>Open Tasks</h2>
        </div>
        <div>
            <ul class="actions" class="list-inline">
                <li id="para" ><g:link  action="create" controller="task" class="btn btn-info">Create New Task</g:link></li>
            </ul>
        </div>
    </div>
    <div class="row col-lg-8">
        <g:render template="taskCard" collection="${tasks}" var="task"/>
    </div>
    <div class="row col-lg-4">
        <dl class="sidebar">
            <dt>Show</dt>
            <dd>
                <ul class="pad">
                    <li>Open</li>
                    <li>Done</li>
                    <li>All</li>
                </ul>
            </dd>
            <dt>Tags</dt>
            <dd>
                <ul class="pad">
                    <g:each in="${ tags }" var="tag">
                        <li>
                            <g:link controller="tag" action="show" id="${tag.id}">
                                ${tag.name}
                            </g:link>
                        </li>
                    </g:each>
                </ul>
            </dd>
        </dl>
    </div>
</div>
</body>
</html>