//
//  Calendar.swift
//  Calendar-App
//
//  Created by Constantin Razvan on 22.09.2021.
//

import SwiftUI
import FSCalendar

let calendarNav = UINavigationBarAppearance()

struct Calendar: View {
    
    @State var selectedDate: Date = Date()
    
    init() {
        calendarNav.configureWithOpaqueBackground()
        calendarNav.backgroundColor = .systemOrange
        calendarNav.titleTextAttributes = [.foregroundColor: UIColor.white]
        calendarNav.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
               
        UINavigationBar.appearance().standardAppearance = calendarNav
        UINavigationBar.appearance().scrollEdgeAppearance = calendarNav
    }
    
    var body: some View {
        NavigationView {
            CalendarView(selectedDate: $selectedDate)
                .background(
                    RoundedRectangle(cornerRadius: 25.0))
                    .foregroundColor(.white)
                .padding(.top, -330)
                .frame(height: 5)
            .navigationBarTitle("Home")
                .toolbar(content: {
                    Button(action: {
                        //function
                    }) {
                        Text("Toogle")
                            .foregroundColor(.white)
                    }
                })
        }
    }
}

struct CalendarView: UIViewRepresentable {
    
    typealias UIViewType = FSCalendar
    
    @Binding var selectedDate: Date
    
    var calendar = FSCalendar()
    
    func updateUIView(_ uiView: FSCalendar, context: Context) { }
    
    func makeUIView(context: Context) -> FSCalendar {
        calendar.delegate = context.coordinator
        calendar.dataSource = context.coordinator
        
        calendar.allowsMultipleSelection = true
        calendar.scrollDirection = .vertical
        
        calendar.appearance.headerTitleFont = .boldSystemFont(ofSize: 25)
        calendar.appearance.caseOptions = [.headerUsesUpperCase, .weekdayUsesUpperCase]
        
        calendar.appearance.headerTitleColor = .black
        
        return calendar
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
    
    func toogleOn() {
        calendar.scope = .week
    }
    func toogleOff() {
        calendar.scope = .month
    }
}

struct Calendar_Previews: PreviewProvider {
    static var previews: some View {
        Calendar()
    }
}
