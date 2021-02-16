//
//  Timer.swift
//  PomoPet
//
//  Created by Alexis Orellano on 2/15/21.
//

import UIKit

protocol TimerDelegate {
    func timerStarted(_ timer: Timer)
    func timerPaused(_ timer: Timer)
    func timerFinished(_ timer: Timer)
    func shortBreakStarted(_ timer: Timer)
    func shortBreakFinished(_ timer: Timer)
    func longBreakStarted(_ timer: Timer)
    func longBreakFinished(_ timer: Timer)
}

extension TimerDelegate {
    func timerStarted(timer: Timer) {
        //start timer at the time specified by the task.interval.length
    }
    
    func timerPaused(timer: Timer) {
        //pauses the current timer
    }
    
    func timerFinished(timer: Timer) {
        //task.interval.completed is true (one interval of a task has been
        //completed start short break
        // if task.interval[*] == task.interval.count/2
        //start long break else start short break
        //if task.intervals loop ended task is completed
    }
    
    func shortBreakStarted(timer: Timer) {
        //start short break timer at time specified by task.interval.short
    }
    
    func shortBreakFinishd(timer: Timer) {
        //short break ended call timer started and start new interval
    }
    
    func longBreakStarted(timer: Timer) {
        //long break started at time specified by task.interval.short
    }
    
    func longBreakFinished(timer: Timer) {
        //long break ended start new interval and call timeStarted
    }
}
