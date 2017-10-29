package org.example.pomodoro

class TaskController {

    static scaffold = Task
    def index = {
        def tasks = Task.findAllByStatus("Open", [sort: "deadLine", order: "asc"])
        def tags = Tag.list(sort: "name", order: "asc")

        return [tasks: tasks, tags: tags]
    }

    @Override
    String toString() {
        return "Tasks"
    }
}
