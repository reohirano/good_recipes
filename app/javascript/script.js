const timer = document.getElementById('timer');
const startButton = document.getElementById('startButton');
const stopButton = document.getElementById('stopButton');

let interval;
let time = 0;

function updateTimer() {
  time++;
  const minutes = Math.floor(time / 60);
  const seconds = time % 60;
  timer.textContent = `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
}

startButton.addEventListener('click', () => {
  if (!interval) {
    interval = setInterval(updateTimer, 1000);
  }
});

stopButton.addEventListener('click', () => {
  clearInterval(interval);
  interval = null;
});