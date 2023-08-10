const timerElement = document.getElementById('timer');
const startButton = document.getElementById('startButton');
const stopButton = document.getElementById('stopButton');
const resetButton = document.getElementById('resetButton');

let timerInterval;
let seconds = 0;

function updateTimerDisplay() {
  const minutes = Math.floor(seconds / 60);
  const secondsToShow = seconds % 60;
  timerElement.textContent = `${minutes}:${secondsToShow.toString().padStart(2, '0')}`;
}

startButton.addEventListener('click', () => {
  if (!timerInterval) {
    timerInterval = setInterval(() => {
      seconds++;
      updateTimerDisplay();
    }, 1000);
  }
});

stopButton.addEventListener('click', () => {
  if (timerInterval) {
    clearInterval(timerInterval);
    timerInterval = null;
  }
});

resetButton.addEventListener('click', () => {
  clearInterval(timerInterval);
  timerInterval = null;
  seconds = 0;
  updateTimerDisplay();
});