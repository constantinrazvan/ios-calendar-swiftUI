//
//  WeekDay.swift
//  Calendar-App
//
//  Created by Constantin Razvan on 22.09.2021.
//

import SwiftUI
import FSCalendar

struct WeekDay: UIViewRepresentable {
    
    typealias UIViewType = FSCalendar
    
    @Binding var selectedDate: Date
    
    var WeekDay = FSCalendar()
    
    func updateUIView(_ uiView: FSCalendar, context: Context) { }
    
    func makeUIView(context: Context) -> FSCalendar {
        WeekDay.delegate = context.coordinator
        WeekDay.dataSource = context.coordinator
        
        WeekDay.allowsMultipleSelection = true
        WeekDay.scrollDirection = .vertical
        
        WeekDay.appearance.headerTitleFont = .boldSystemFont(ofSize: 25)
        WeekDay.appearance.caseOptions = [.headerUsesUpperCase, .weekdayUsesUpperCase]
        
        WeekDay.appearance.headerTitleColor = .black
        
        return WeekDay
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, FSCalendarDelegate, FSCalendarDataSource {
        var parent: CalendarView
        
        init(_ parent: CalendarView) {
            self.parent = parent
        }

        func calendar(_ calendar: FSCalendar, numberOfEventsFor date: Date) -> Int {
            return 0
        }
    }
}
