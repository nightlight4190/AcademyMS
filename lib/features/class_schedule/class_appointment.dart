import 'dart:math';
import 'package:flutter/material.dart';
import 'package:ams/features/class_schedule/meeting.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ClassSchedule extends StatefulWidget {
  ClassSchedule({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ClassScheduleState createState() => _ClassScheduleState();
}

class _ClassScheduleState extends State<ClassSchedule> {
  late MeetingDataSource _events;
  late List<Appointment> _shiftCollection;

  late List<CalendarResource> _employeeCalendarResource;
  late List<TimeRegion> _specialTimeRegions;

  @override
  void initState() {
    addResourceDetails();
    addAppointments();
    addSpecialRegions();
    _events = MeetingDataSource(_shiftCollection, _employeeCalendarResource);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SfCalendar(
          view: CalendarView.timelineWorkWeek,
          firstDayOfWeek: 1,
          timeSlotViewSettings:
              const TimeSlotViewSettings(startHour: 10, endHour: 17),
          dataSource: _events,
          specialRegions: _specialTimeRegions),
    )));
  }

  void addAppointments() {
    var subjectCollection = [
      'MOBILE APP DEVELOPMENT',
      'WEB TECHNOLOGY',
      'GRAPHICS DESIGNING',
      'VIDEO EDITING',
      'PHP LARAVEL',
      'DIGITAL MARKETING',
      'PYTHON',
      'ANIMATION AND VFX'
    ];

    var colorCollection = [
      const Color(0xFF0F8644),
      const Color(0xFF8B1FA9),
      const Color(0xFFD20100),
      const Color(0xFFFC571D),
      const Color(0xFF85461E),
      const Color(0xFF36B37B),
      const Color(0xFF3D4FB5),
      const Color(0xFFE47C73),
    ];

    _shiftCollection = <Appointment>[];
    for (var calendarResource in _employeeCalendarResource) {
      var employeeIds = [calendarResource.id];

      for (int j = 0; j < 365; j++) {
        for (int k = 0; k < 2; k++) {
          final DateTime date = DateTime.now().add(Duration(days: j + k));
          int startHour = 9 + Random().nextInt(6);
          startHour =
              startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
          final DateTime _shiftStartTime =
              DateTime(date.year, date.month, date.day, startHour, 0, 0);
          _shiftCollection.add(Appointment(
              startTime: _shiftStartTime,
              endTime: _shiftStartTime.add(const Duration(hours: 1)),
              subject: subjectCollection[Random().nextInt(8)],
              color: colorCollection[Random().nextInt(8)],
              startTimeZone: '',
              endTimeZone: '',
              resourceIds: employeeIds));
        }
      }
    }
  }

  void addResourceDetails() {
    var nameCollection = [
      'Kalyan',
      'Amrit',
      'Aashish',
      'Prashant',
      'Bikal',
      'Sabin',
      'Subham',
      'Yeanish',
    ];

    var userImages = [
      'assets/images/1.png',
      'assets/images/1.png',
      'assets/images/1.png',
      'assets/images/1.png',
      'assets/images/1.png',
      'assets/images/1.png',
      'assets/images/1.png',
      'assets/images/1.png',
    ];

    _employeeCalendarResource = <CalendarResource>[];
    for (var i = 0; i < nameCollection.length; i++) {
      _employeeCalendarResource.add(CalendarResource(
          id: '000' + i.toString(),
          displayName: nameCollection[i],
          color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
              Random().nextInt(255), 1),
          image:
              i < userImages.length ? ExactAssetImage(userImages[i]) : null));
    }
  }

  void addSpecialRegions() {
    final DateTime date = DateTime.now();
    _specialTimeRegions = [
      TimeRegion(
          startTime: DateTime(date.year, date.month, date.day, 13, 0, 0),
          endTime: DateTime(date.year, date.month, date.day, 14, 0, 0),
          text: 'Break',
          resourceIds: _employeeCalendarResource.map((e) => e.id).toList(),
          recurrenceRule: 'FREQ=DAILY;INTERVAL=1',
          enablePointerInteraction: false),
    ];
  }
}
