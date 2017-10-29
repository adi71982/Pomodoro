package pomodoro

import org.example.pomodoro.Tag
import org.example.pomodoro.Task

class BootStrap {

    def init = { servletContext ->
        def workTag = new Tag(name: "Work").save()
        def homeTag = new Tag(name: "Home").save()

        def task = new Task(
                summary: "Do 2nd intro screencast",
                details: "Create the second intro screencast for Grails",
                status: "Open",
                deadLine: new Date())
        //task.addToTags(workTag)
        //task.addToTags(homeTag)
        task.save()

        task = new Task(
                summary: "Shopping",
                details: "Do the grocery shopping - and don't forget the tomatoes!",
                status: "Open",
                deadLine: new Date() + 15)
        //task.addToTags(homeTag)
        task.save()

    }
    def destroy = {
    }
}
