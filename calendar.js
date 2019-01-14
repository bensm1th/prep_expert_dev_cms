const inputObj = {
    weekDuration: 3, //number
    daysOfWeek: [
        { day: 1, start: 3, end: 6 }, 
        { day: 2, start: 3, end: 6 }, 
        { day: 3, message: 'Done at home before 11pm'  }, 
        { day: 4, start: 3, end: 6 },
        { day: 5, start: 3, end: 6 },
        { day: 7, message: 'Done at home before 11pm'  }, 
    ], // M=1, T=2, W=3, T=4, F=5, S=6, S=7
    startDate: '1/14/2019', //string
}

const createCalendar = (dayObj) => {
    let calendar = [],
    classNumber = 1,
    testNumber = 1
    firstDay = dayObj.daysOfWeek[0].day;
    for (let i = 0; i < dayObj.weekDuration; i+=1) {
        dayObj.daysOfWeek.forEach((classRow) => {
            const { start, end, message, day } = classRow;
            let classType = '',
            classTimes = '',
            addDays = 0;

            if (message) {
                classType += 'Test ' + testNumber;
                testNumber += 1;
                classTimes += message;
                addDays = (day<firstDay) ? day - firstDay + 7 + i*7 : day - firstDay + i*7;
            } else {
                classType += 'Class ' + classNumber;
                classNumber += 1;
                classTimes += start + '-' + end;
                addDays = day - firstDay + i*7;//currenday minus initial day;
            }

            let classDateObj = new Date(dayObj.startDate);
            classDateObj.setDate(classDateObj.getDate() + addDays);    
            
            let dd = classDateObj.getDate();
            let mm = classDateObj.getMonth() + 1;
            let y = classDateObj.getFullYear();

            let classDate = mm + '/'+ dd + '/'+ y;
            calendar.push({
                classDate,
                classType, 
                classTimes
            });
        });
    }
    return calendar;
}

const bensCal = createCalendar(inputObj);
console.log(bensCal);



