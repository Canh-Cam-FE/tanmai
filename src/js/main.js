/*==================== SHOW SCROLL TOP ====================*/
const scrollTop = () => {
	$(".back-to-top").on("click", function (e) {
		e.preventDefault();
		$("html,body").animate({
			scrollTop: 0,
		});
	});
};

/*==================== MAIN MENU MOBILE ====================*/
const mainMenu = () => {
	$("header .navbar")
		.find(".btn-toggle")
		.on("click", function () {
			$(this).toggleClass("active");
			$("#overlay").toggleClass("active");
			$(this)
				.siblings(".navbar-main")
				.find(".navbar-nav")
				.toggleClass("active");
		});
	$("#overlay").on("click", function () {
		let $this = $(this);
		$this.removeClass("active");
		$(".btn-toggle").removeClass("active");
		$("header").find(".navbar-main .navbar-nav").removeClass("active");
	});
	$("header .navbar .navbar-main .navbar-top .wrapper-search")
		.find(".search-icon")
		.on("click", function () {
			$(this).siblings(".form-group").toggleClass("active");
		});
};

/*==========LISTBANNER SLIDER==========*/
const swiperInit = () => {
	let myswiper = new Swiper(".home-banner .swiper-container", {
		loop: false,
		speed: 2000,
		effect: "fade",
		autoplay: {
			delay: 3000,
			disableOnInteraction: false,
		},
		fadeEffect: {
			crossFade: true,
		},
		navigation: {
			nextEl: ".home-banner .swiper-button-next",
			prevEl: ".home-banner .swiper-button-prev",
		},
	});
	let fieldSlide = new Swiper(".wrapper-slide .swiper-container", {
		speed: 300,
		loop: true,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".wrapper-slide .swiper-button-next",
			prevEl: ".wrapper-slide .swiper-button-prev",
		},
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
			375: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			768: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			1280: {
				spaceBetween: 60,
				slidesPerView: 3,
			},
		},
	});
	let galleryThumbs = new Swiper('.block-slide .gallery-thumbs', {
		spaceBetween: 10,
		slidesPerView: 8,
		freeMode: true,
		loopedSlides: 8,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		breakpoints: {
			320: {
				slidesPerView: 4,
			},
			375: {
				slidesPerView: 5,
			},
			575: {
				slidesPerView: 5,
			},
			768: {
				slidesPerView: 5,
			},
			1280: {
				slidesPerView: 8,
			},
		},
	});
	let galleryTop = new Swiper('.block-slide .gallery-top', {
		spaceBetween: 10,
		loopedSlides: 8,
		navigation: {
			nextEl: '.block-slide .swiper-button-next',
			prevEl: '.block-slide .swiper-button-prev',
		},
		thumbs: {
			swiper: galleryThumbs,
		},
	});
	let gallerySlide = new Swiper('.gallery-slide .swiper-container', {
		spaceBetween: 30,
		centeredSlides: true,
		roundLengths: true,
		loop: true,
		navigation: {
			nextEl: '.gallery-slide .swiper-button-next',
			prevEl: '.gallery-slide .swiper-button-prev',
		},
	});
	let galleryThumbsVideo = new Swiper('.video-slide .gallery-thumbs', {
		spaceBetween: 30,
		slidesPerView: 5,
		freeMode: true,
		loopedSlides: 5,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		breakpoints: {
			320: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			375: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			575: {
				slidesPerView: 4,
			},
			768: {
				slidesPerView: 5,
			},
			1280: {
				slidesPerView: 5,
			},
		},
	});
	let galleryTopVideo = new Swiper('.video-slide .gallery-top', {

		spaceBetween: 10,
		loopedSlides: 5,
		navigation: {
			nextEl: '.video-slide .swiper-button-next',
			prevEl: '.video-slide .swiper-button-prev',
		},
		thumbs: {
			swiper: galleryThumbsVideo,
		},
	});
	let galleryThumbsDetailProject = new Swiper('.slide-detail .gallery-thumbs', {
		direction: 'vertical',
		spaceBetween: 30,
		slidesPerView: 4,
		loopedSlides: 4,
		loop: true,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		breakpoints: {
			320: {
				direction: 'horizontal',
				slidesPerView: 2,
				spaceBetween: 10
			},
			376: {
				direction: 'horizontal',
				slidesPerView: 3,
				spaceBetween: 10
			},
			576: {
				direction: 'horizontal',
				slidesPerView: 3,
				spaceBetween: 10
			},
			768: {
				direction: 'horizontal',
				slidesPerView: 4,
				spaceBetween: 10
			},
			1025: {
				slidesPerView: 4,
			},
			1200: {
				slidesPerView: 4,
			},
		},
	});
	let galleryTopDetailProject = new Swiper('.slide-detail .gallery-top', {
		spaceBetween: 30,
		observer: true,
		observeParents: true,
		loop: true,
		navigation: {
			nextEl: '.gallery-thumbs .swiper-button-next',
			prevEl: '.gallery-thumbs .swiper-button-prev',
		},
		pagination: {
			el: '.gallery-thumbs .swiper-pagination',
			clickable: true,
		},
		thumbs: {
			swiper: galleryThumbsDetailProject,
		},
	});
	let projectOther = new Swiper(".slide-other .swiper-container", {
		speed: 300,
		loop: true,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".slide-other .swiper-button-next",
			prevEl: ".slide-other .swiper-button-prev",
		},
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
			375: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			768: {
				slidesPerView: 3,
				spaceBetween: 20,
			},
			1280: {
				spaceBetween: 30,
				slidesPerView: 3,
			},
		},
	});
};

// ===========================CHECK BANNER========================= //
const checkLayoutBanner = () => {
	let pagesBanner = $("#pagebanner");
	let heightHeader = $("header").outerHeight();
	let mainBanner = $("#section-banner");
	if (mainBanner.length >= 1) {
		$("main").css("padding-top", 0);
	} else if (pagesBanner.length >= 1) {
		$("main").css("padding-top", heightHeader);
	} else {
		$("main").css("padding-top", heightHeader);
	}
};

/*=================== MAPPING =========================*/
const initMapping = () => {
	$(".navbar .navbar-main .navbar-top .wrapper-list ul li").mapping({
		mobileWrapper: ".navbar .navbar-main .navbar-nav",
		mobileMethod: "appendTo",
		desktopWrapper: ".navbar .navbar-main .navbar-top .wrapper-list ul",
		desktopMethod: "appento",
		breakpoint: 575.98,
	});
};

/*===================SCROLL DOWN==========================*/
const scrollDown = () => {
	$(".slide-button").on("click", function (e) {
		e.preventDefault();
		$("html, body").animate({
				scrollTop: $($(this).attr("href")).offset().top
			},
			500,
			"linear"
		);
	});
};
/*===================BACKGROUNDELEMENT===========*/
const setBackgroundElement = () => {
	$("[setBackground]").each(function () {
		var background = $(this).attr("setBackground");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-size": "cover",
			"background-position": "center center",
		});
	});
	$("[setBackgroundRepeat]").each(function () {
		var background = $(this).attr("setBackgroundRepeat");
		$(this).css({
			"background-image": "url(" + background + ")",
			"background-repeat": "repeat",
		});
	});
};

/*==================HEADER WHEN SCROLL============*/
const activeHeaderWhenScroll = () => {
	window.addEventListener("scroll", function () {
		if (window.pageYOffset > 0 && $(window).width() >= 992) {
			document.querySelector("header").classList.add("header-croll-down");
			$("header").addClass("active");
		} else {
			document
				.querySelector("header")
				.classList.remove("header-croll-down");
			$("header").removeClass("active");
		}
	});
};
/*====================POPUP HOME==============================*/
const homePopup = () => {
	$(document).ready(function () {
		$("#popup").fancybox().trigger("click");
	});
}

/*=====================ACTIVE CATE=========================*/
const activeCatelog = () => {
	if ($('#tool-item').length >= 1 && $(window).width() < 992) {
		$('#tool-item').on('click', function () {
			$('section').find('.catelogry').toggleClass('active')
		})
	}
	if ($(window).width() < 1200) {
		$('#tool-item').on('click', function () {
			$(this).next().toggleClass('active')
		});

	}
}

/*======================== TOGGLE POPUP IMAGE MAP =============*/
const togglePopup = () => {
	$('.image-map-wrapper').find('map area').on('click', function () {
		$('.corevalues').find('#image-map-popup').fancybox().trigger("click");
	});
	$('.shareholder .wrapper-content .col-right .list-item').find('.item .content').on('click', function () {
		$('#popup-event').fancybox().trigger("click");
	})
}


/*==================== LOAD FUNCTION ====================*/
$(document).ready(function () {
	scrollTop();
	mainMenu();
	swiperInit();
	initMapping();
	scrollDown();
	setBackgroundElement();
	activeHeaderWhenScroll();
	homePopup();
	checkLayoutBanner();
	activeCatelog();
	togglePopup();
	$(".image-map-wrapper img[usemap]").maphilight({
		fillColor: '3b5a56',
		fillOpacity: 0,
		stroke: false,
		strokeColor: false,
		strokeCopacity: 1,
		strokeWidth: 2,
		fade: true,
		alwaysOn: false,
		neverOn: false,
		groupBy: false,
		wrapClass: true,
	});
	$(".image-map-wrapper img[usemap]").rwdImageMaps();
	/*==================== LIST TAB =========================*/
	var theTabs = $(".nav-tabs li");
	var i;

	function theTabClicks(tabClickEvent) {
		var clickedTab = tabClickEvent.currentTarget;
		var tabParent = tabClickEvent.currentTarget.parentNode.parentNode.parentNode;
		var theTabs = tabParent.querySelectorAll(".nav-tabs li");
		for (var i = 0; i < theTabs.length; i++) {
			theTabs[i].classList.remove("active");
		}

		clickedTab.classList.add("active");
		tabClickEvent.preventDefault();
		var contentPanes = tabParent.querySelectorAll(".tab-pane");
		for (i = 0; i < contentPanes.length; i++) {
			contentPanes[i].classList.remove("active");
		}
		var anchorReference = tabClickEvent.target;
		var activePaneId = anchorReference.getAttribute("href");
		var activePane = tabParent.querySelector(activePaneId);
		activePane.classList.add("active");
	}
	for (i = 0; i < theTabs.length; i++) {
		theTabs[i].addEventListener("click", theTabClicks)
	}
});
