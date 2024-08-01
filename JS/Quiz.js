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
    const quizButton = navButtons[navButtons.length - 4];

    quizButton.addEventListener('click', () => {
        window.location.href = 'index.html';
    });
});
document.addEventListener('DOMContentLoaded', () => {
    const navButtons = document.querySelectorAll('.nav-btn');
    const quizButton = navButtons[navButtons.length - 2];

    quizButton.addEventListener('click', () => {
        window.location.href = 'more_info.html';
    });
});