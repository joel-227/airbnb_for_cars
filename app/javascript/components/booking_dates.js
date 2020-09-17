const getAvailableDates = () => {
  const startDateInput = document.getElementById('booking_start_time');
  const endDateInput = document.getElementById('booking_end_time');
  
  // Check that the query selector id matches the one you put around your form.
  if (startDateInput) {
  const unavailableDates = JSON.parse(document.querySelector('#car-booking-dates').dataset.unavailable)
  endDateInput.disabled = true
  
  flatpickr(startDateInput, {
    minDate: "today",
    disable: unavailableDates,
    dateFormat: "Y-m-d",
  });
  
  console.log('im in the file')
  
  startDateInput.addEventListener("change", (e) => {
    if (startDateInput != "") {
      endDateInput.disabled = false
    }
    flatpickr(endDateInput, {
      minDate: e.target.value,
      disable: unavailableDates,
      dateFormat: "Y-m-d"
      });
    })
  };
}

export default getAvailableDates