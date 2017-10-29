package org.example.pomodoro

class Task {
    String summary
    String details
    String status
    Date dateCreated
    Date deadLine
    Long timeSpent = 0L


    static hasMany = [tags:Tag]
    static constraints = {
        summary blank: false, unique: true
        details blank: false, maxSize: 1000
        deadLine nullable: true
        timeSpent min: 0L
        status inList: ["Open","Done"]
    }

    @Override
    String toString() {
        return summary
    }

}
