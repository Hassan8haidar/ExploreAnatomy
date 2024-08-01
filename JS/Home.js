let play = document.getElementById('playButton');
play.addEventListener('click', playVideo);

function playVideo() {
    var video = document.getElementsByClassName('intro_video')[0];
    document.getElementById("playContainer").style.display = 'none';
    document.getElementById("playContainer").style.opacity = '0';

    video.muted = false;
    video.play();

    video.addEventListener('ended', showImages);
}

const video = document.querySelector('.intro_video');
const imageContainer = document.getElementById('imageContainer');

video.addEventListener('ended', () => {
  imageContainer.classList.remove('hidden');
  imageContainer.classList.add('fade-in');
});  

    
function showImages() {
    document.getElementById("imageContainer").style.display = 'inline';

    // Wait for a moment before showing the navbar (optional)
    setTimeout(() => {
        document.querySelector('.navbar').classList.add('show');
    }, 500); 

    document.getElementById("imageContainer").style.display = 'inline-block';

}

video.addEventListener('ended', () => {
    document.querySelector('.video-background').classList.remove('hidden');
    imageContainer.classList.remove('hidden');
    imageContainer.classList.add('fade-in');
});

let skipButton = document.getElementById('skipButton');
skipButton.addEventListener('click', () => {
    var video = document.getElementsByClassName('intro_video')[0];
    video.currentTime = video.duration; // Set the video to the end
    skipButton.style.opacity = "0";

    playVideo();
});

document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 1]; 

    quizButton.addEventListener('click', () => {
        window.location.href = 'Signup.php'; 
    });
});

document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 3]; 

    quizButton.addEventListener('click', () => {
        window.location.href = 'contact.html'; 
    });
});
document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 2];

    quizButton.addEventListener('click', () => {
        window.location.href = 'more_info.html';
    });
});






/* document.getElementById("playButton").addEventListener("click", function() {
    var video = document.querySelector(".intro_video");
    video.muted = false;
    video.play();
    document.getElementById("playContainer").style.display = 'none';
    document.getElementById("playContainer").style.opacity = '0';
}); */

