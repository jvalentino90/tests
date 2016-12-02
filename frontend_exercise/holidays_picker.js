  var currentYear = 2016
  var calendarURL = 'http://nolaborables.com.ar/API/v1/actual'
  $.get({
    'url': calendarURL,
    'dataType': 'json',
    'success': function (data) {
      $(function () {
        $('#calendar').datepicker({
          beforeShowDay: dateFormatter(formatHolidayDates(data))
        })
      })
    }
  })

  function obtainDate (day, month, year) {
    return new Date(currentYear, month - 1, day)
  }

  function formatHolidayDates (data) {
    var holidaysHash = {}
    data.forEach(function (value) {
      var date = obtainDate(value.dia, value.mes, currentYear)
      holidaysHash[date] = value.motivo + '-' + value.tipo.toUpperCase()
    })
    return holidaysHash
  }

  function dateFormatter (holidays) {
    return markupDate

    function markupDate (date) {
      var markup = holidays[date]
      return markup ? [true, 'event', markup] : [true, '', '']
    }
  }

