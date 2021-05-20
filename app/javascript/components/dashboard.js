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
          contentInactive.classList.remove('active');
          tab.classList.add('active');
          contentActive.classList.add('active');
          console.log(tab);
          console.log(tabInactive);
          console.log(contentActive);
          console.log(contentInactive);
        }
        else {
          const tabInactive = tabs[0];
          tabInactive.classList.remove('active');
          const contentActive = contents[tab.dataset.order];
          const contentInactive = contents[tabInactive.dataset.order];
          contentInactive.classList.remove('active');
          tab.classList.add('active');
          contentActive.classList.add('active');
          console.log(tab);
          console.log(tabInactive);
          console.log(contentActive);
          console.log(contentInactive);
        }
      });
    })
  }
}

export { initUpdateDashboardOnClick };
