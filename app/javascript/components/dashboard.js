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
  console.log('Hello');
  const messages = document.querySelectorAll('.message');
  console.log(messages);
  messages.forEach((message) => {
    if (message.innerText == "") {
      message.classList.add('inactive');
    }
  })
}

export { initUpdateDashboardOnClick, displayMessageIfDashboardIsEmpty };
