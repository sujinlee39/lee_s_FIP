// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch

    let burger = document.querySelector('#burger'),
	    burgerContent = document.querySelector('#mainNav'),
	    navFiller = document.querySelector('#mobileNavCon'),
	    homeButton = document.querySelector('#home-nav'),
	    aboutButton = document.querySelector('#about-nav'),
	    workButton = document.querySelector('#work-nav'),
	    contactButton = document.querySelector('#contact-nav'),
        userButtons = document.querySelectorAll('.w-link'),
        lightBox = document.querySelector('.lightbox'),
        scrollPosition = window.pageYOffset,
        video = document.querySelector("#video"),
        playPause = document.querySelector(".play-pause"),
        playPauseIcon = document.querySelector("#plause"),
        mute = document.querySelector(".mute"),
        volIcon = document.querySelector("#volume"),
        fullScreen = document.querySelector(".full"),
        progressBar = document.querySelector("#progress-bar"),
        volBar = document.querySelector("#vol");



        window.onscroll = function (){
            scrollPosition = window.scrollY;
            console.log(scrollPosition);
    
            if (scrollPosition <= 680) {
                homeButton.classList.add("onPage");
                aboutButton.classList.remove("onPage");
                workButton.classList.remove("onPage");
                contactButton.classList.remove("onPage");
            };
            if (scrollPosition >= 735) {
                homeButton.classList.remove("onPage");
                aboutButton.classList.add("onPage");
                workButton.classList.remove("onPage");
                contactButton.classList.remove("onPage");
            };
            if (scrollPosition >= 1725) {
                aboutButton.classList.remove("onPage");
                workButton.classList.add("onPage");
                contactButton.classList.remove("onPage");
            };
            if (scrollPosition >= 3900) {
                workButton.classList.remove("onPage");
                contactButton.classList.add("onPage");
            };
    };
        

    
    function renderTools(media) {
        return `<ul class="w-tools">
                    ${media.map(item => `<li>${item}</li>`).join("")}
                </ul>`
    }
    
    function parseUserData(info) {
        let targetDiv = lightBox.querySelector('.lb-content'),
            targetImg = lightBox.querySelector('img');

        let infoContent = `
            <p>Title: ${info.name}</p>
            <p>Created: ${info.year}</p>
            <p>Tools:</p>
            ${renderTools(info.tools)}
            <p>Description: ${info.description}</p>
        `;

        targetDiv.innerHTML = infoContent;
        targetImg.src = info.currentSrc;

        lightBox.classList.add('show-lb');
    };

    function getUserData(event) {
        event.preventDefault();
        //debugger;
        // 1, 2, or 3 depending on which anchor tag you click
        let url = `/info/${this.getAttribute('href')}`,
            currentImg = this.firstElementChild.getAttribute('src');


        // this goes and fetxhes the datbase content (or and API endpoint)
        // that's why it's called a fetch!
        fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);
                data.currentSrc = currentImg;
                parseUserData(data);
            })
            .catch((err) => console.log(err));
    }

    function plause() {
        if (video.paused) {
            video.play();
            playPauseIcon.src = ("images/pause.png");;
        } else {
            video.pause();
            playPauseIcon.src = ("images/play.png");
        };
    };

    function sound() {
        if (video.muted == false) {
            video.muted = true;
            volIcon.src = ("images/mute.png");
        } else {
            video.muted = false;
            volIcon.src = ("images/volume.png");
        };
    };

    function volumeCont() {
        video.volume = (volBar.value/10);
    };

    function expand() {
        if (video.requestFullscreen) {
            video.requestFullscreen();
        } else if (video.mozRequestFullScreen) {
            video.mozRequestFullScreen();
        } else if (video.webkitRequestFullscreen) {
            video.webkitRequestFullscreen();
        };
    };

    function updateProgress() {
    let progress = (100/video.duration) * video.currentTime;
    progressBar.value = progress;
    }

    function skip() {
    let time = video.duration * (progressBar.value/100);
    video.currentTime = time;
    };

    userButtons.forEach(button => button.addEventListener("click", getUserData))

    // wire up the lightbox close button
    lightBox.querySelector('.close').addEventListener("click", function(){
        lightBox.classList.remove('show-lb');
    });


    function burgerMenu() {
		burgerContent.classList.toggle("slideToggle");
		navFiller.classList.toggle("blank");
	};

//Burger Menu Event
	burger.addEventListener("click", burgerMenu, false);

    playPause.addEventListener('click', plause);
    mute.addEventListener('click', sound);
    volBar.addEventListener('change', volumeCont);
    fullScreen.addEventListener('click', expand);
    video.addEventListener('timeupdate', updateProgress);
    progressBar.addEventListener('change', skip);
    video.addEventListener('click', plause);

})();