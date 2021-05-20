
const buttonDisappear = () => {
  const card = document.querySelector('.card-statut');
  console.log(card);
  if (card) {
  card.addEventListener('click', (event) => {
    event.preventDefault();
    card.style.display = none
  });

  }
};

export { buttonDisappear };
