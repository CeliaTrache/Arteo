// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";

const updatePrice = (start_date, end_date) => {
  const priceDisp = document.querySelector('.price');
  if (start_date <= end_date) {
    let start_milli = start_date.getTime();
    let end_milli = end_date.getTime();
    let days = ((end_milli - start_milli)/3600000/24) + 1;
    const priceLoc = document.querySelector('.art-piece-pricing');
    let price = parseInt(priceLoc.dataset.price, 10) * days;
    priceDisp.innerText = `${price}€`;
  }
  else {
    priceDisp.innerText = "Check your dates !";
  }
}

const initFlatpickr = () => {
  let start_date;
  let end_date;
  const flat1 = flatpickr(".datepicker1", {
    onChange: function(selectedDates, dateStr, instance) {
      start_date = selectedDates[0]
      updatePrice(start_date, end_date)
    },
  });
  const flat2 = flatpickr(".datepicker2", {
    onChange: function(selectedDates, dateStr, instance) {
      end_date = selectedDates[0]
      updatePrice(start_date, end_date)
    },
  });
}

export { initFlatpickr };
