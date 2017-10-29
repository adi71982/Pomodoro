<div class="task">
    <h4><g:link controller="task" action="show" id="${task.id}">
        ${task.summary}
    </g:link></h4>
    <div>${ task.details }</div>
    <div class="due">Due: <g:formatDate date="${ task.deadLine }" format="dd MMM yyyy"/></div>
    <div class="created">Created: <g:formatDate date="${ task.dateCreated }" format="dd MMM yyyy"/></div>
</div>