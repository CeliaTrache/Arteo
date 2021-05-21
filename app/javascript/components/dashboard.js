const initUpdateDashboardOnClick = () => {
  const tabs = document.querySelectorAll('.tab-underlined');
  const contents = document.querySelectorAll('.content');
  if (tabs) {
    tabs.forEach((tab) => {
      tab.addEventListener('click', (event) => {
        event.preventDefault();
        if (tab == tabs[0]) {
          const tabInactive = tabs[1];
          tabInactive.classList.remove('active');
          const contentActive = contents[tab.dataset.order];
          const contentInactive = contents[tabInactive.dataset.order];
          contentInactive.classList.add('inactive');
          tab.classList.add('active');
          contentActive.classList.remove('inactive');
          // console.log(tab);
          // console.log(tabInactive);
          // console.log(contentActive);
          // console.log(contentInactive);
        }
        else {
          const tabInactive = tabs[0];
          tabInactive.classList.remove('active');
          const contentActive = contents[tab.dataset.order];
          const contentInactive = contents[tabInactive.dataset.order];
          contentInactive.classList.add('inactive');
          tab.classList.add('active');
          contentActive.classList.remove('inactive');
          // console.log(tab);
          // console.log(tabInactive);
          // console.log(contentActive);
          // console.log(contentInactive);
        }
      });
    })
  }
}

const displayMessageIfDashboardIsEmpty = () => {
  // console.log('Hello');
  const messages = document.querySelectorAll('.message');
  // console.log(messages);
  if (messages) {
    messages.forEach((message) => {
      if (message.innerText.replace(/^\s+|\s+$/g, '') === "") {
        message.classList.add('inactive');
      }
    });
    // console.log(message.innerText);
  }
}

const preventDefaultOnClick = () => {
  const buttons = document.querySelectorAll('.accept-decline');
  const cardStatus = document.querySelector('.card-statut');
  const accept = "<div class=\"btn btn-outline - success accept - decline\"><p> Booking accepté</p></div >";
  const decline = "<div class=\"btn btn-outline - danger accept - decline\"<p> Booking refusé</p></div >";
  // console.log(buttons);
  if (buttons) {
    buttons.forEach((button) => {
      button.addEventListener('click', (event) => {
        // console.log(event);
        // event.preventDefault();
        if (button.dataset.status == "accept") {
          cardStatus.innerHTML = accept;
        }
        else if (button.dataset.status == "decline") {
          cardStatus.innerHTML = decline;
        }
      })
    });
  }
}

export { initUpdateDashboardOnClick, displayMessageIfDashboardIsEmpty, preventDefaultOnClick };
