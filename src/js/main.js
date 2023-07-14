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
			delay: 5000,
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
		autoplay: {
			delay: 5000,
			disableOnInteraction: false,
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
	let gallerySlide = new Swiper(".gallery-slide .swiper-container", {
		spaceBetween: 30,
		centeredSlides: true,
		roundLengths: true,
		loop: true,
		navigation: {
			nextEl: ".gallery-slide .swiper-button-next",
			prevEl: ".gallery-slide .swiper-button-prev",
		},
	});
	let galleryThumbsHistory = new Swiper(".block-slide .gallery-thumbs", {
		spaceBetween: 10,
		slidesPerView: 8,
		freeMode: true,
		loopedSlides: 8,
		watchSlidesVisibility: true,
		watchSlidesProgress: true,
		initialSlide: 8,
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
	let galleryTopHistory = new Swiper(".block-slide .gallery-top", {
		spaceBetween: 10,
		loopedSlides: 8,
		initialSlide: 8,
		navigation: {
			nextEl: ".block-slide .swiper-button-next",
			prevEl: ".block-slide .swiper-button-prev",
		},
		thumbs: {
			swiper: galleryThumbsHistory,
		},
	});
	let galleryThumbsVideo = new Swiper(".video-slide .gallery-thumbs", {
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
	let galleryTopVideo = new Swiper(".video-slide .gallery-top", {
		spaceBetween: 10,
		loopedSlides: 5,
		navigation: {
			nextEl: ".video-slide .swiper-button-next",
			prevEl: ".video-slide .swiper-button-prev",
		},
		thumbs: {
			swiper: galleryThumbsVideo,
		},
	});
	let galleryThumbsDetailProject = new Swiper(
		".slide-detail .gallery-thumbs",
		{
			direction: "vertical",
			spaceBetween: 30,
			slidesPerView: 4,
			loopedSlides: 4,
			loop: true,
			watchSlidesVisibility: true,
			watchSlidesProgress: true,
			breakpoints: {
				320: {
					direction: "horizontal",
					slidesPerView: 2,
					spaceBetween: 10,
				},
				376: {
					direction: "horizontal",
					slidesPerView: 3,
					spaceBetween: 10,
				},
				576: {
					direction: "horizontal",
					slidesPerView: 3,
					spaceBetween: 10,
				},
				768: {
					direction: "horizontal",
					slidesPerView: 4,
					spaceBetween: 10,
				},
				1025: {
					slidesPerView: 4,
				},
				1200: {
					slidesPerView: 4,
				},
			},
		}
	);
	let galleryTopDetailProject = new Swiper(".slide-detail .gallery-top", {
		spaceBetween: 30,
		observer: true,
		observeParents: true,
		loop: true,
		navigation: {
			nextEl: ".gallery-thumbs .swiper-button-next",
			prevEl: ".gallery-thumbs .swiper-button-prev",
		},
		pagination: {
			el: ".gallery-thumbs .swiper-pagination",
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
	const sildeTabs = new Swiper(".silde-wrapper .swiper-container.tabs", {
		speed: 300,
		// loop: false,
		initialSlide: 5,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".silde-wrapper .swiper-button-next",
			prevEl: ".silde-wrapper .swiper-button-prev",
		},
		breakpoints: {
			320: {
				slidesPerView: 3,
				spaceBetween: 10,
			},
			375: {
				slidesPerView: 3,
				spaceBetween: 10,
			},
			575: {
				slidesPerView: 4,
				spaceBetween: 10,
			},
			768: {
				slidesPerView: 6,
				spaceBetween: 20,
			},
			1280: {
				spaceBetween: 30,
				slidesPerView: 8,
			},
		},
		on: {
			afterInit: function () {
				console.log("init");
			},
		},
	});

	let newsOther = new Swiper(".slide-other-news .swiper-container", {
		speed: 300,
		loop: true,
		observer: true,
		observeParents: true,
		navigation: {
			nextEl: ".slide-other-news .swiper-button-next",
			prevEl: ".slide-other-news .swiper-button-prev",
		},
		breakpoints: {
			320: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 10,
			},
			768: {
				slidesPerView: 2,
				spaceBetween: 20,
			},
			1280: {
				spaceBetween: 30,
				slidesPerView: 2,
			},
		},
	});
	let slideColumn = new Swiper(".wrapper-column .column", {
		speed: 800,
		spaceBetween: 10,
		slidesPerView: 3,
		slidesPerColumn: 3,
		slidesPerColumnFill: "row",
		slidesPerGroup: 1,
		observer: true,
		observeParents: true,
		pagination: {
			el: ".wrapper-column .swiper-pagination",
			clickable: true,
			renderBullet: function (index, className) {
				return (
					'<span class="' + className + '">' + (index + 1) + "</span>"
				);
			},
		},
		breakpoints: {
			1200: {
				slidesPerView: 3,
				spaceBetween: 10,
			},
			991: {
				slidesPerView: 3,
				spaceBetween: 30,
			},
			575: {
				slidesPerView: 2,
				spaceBetween: 15,
			},
			375: {
				slidesPerView: 1,
				spaceBetween: 10,
				slidesPerColumn: 1,
				slidesPerGroup: 1,
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
	var path = window.location.href;
	let Ketqua = "#" + path.substr(path.indexOf("#") + 1);
	console.log(Ketqua);

	console.log($.attr("href") == Ketqua);
	if (path.indexOf("#") != -1) {
		$("html, body").animate(
			{
				scrollTop:
					$(Ketqua).offset().top -
					heightHeader -
					$(".catelogry").outerHeight(),
			},
			1000
		);
	}
	$(".section.field-list .col-item").each(function () {
		$(this).find(".content a").attr("href") == Ketqua
			? $(this).find(".content").addClass("active")
			: false;
	});

	$(".section.field-list .content a").on("click", function (e) {
		$(".section.field-list .content").removeClass("active");
		$(this).parents(".content").addClass("active");
		var hash = this.hash;
		var header = $("header").outerHeight();
		if (this.hash !== "") {
			event.preventDefault();
			var hash = this.hash;
			$("html, body").animate(
				{
					scrollTop: $(hash).offset().top - header,
				},
				"fast",
				function () {
					window.location.hash = hash;
				}
			);
		} // End if
	});
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
		$("html, body").animate(
			{
				scrollTop: $($(this).attr("href")).offset().top,
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
		$("#popup_1").fancybox().trigger("click");
	});
};

/*======================SLIDE TABS=================================*/
const slideTab = () => {
	$(".tabs .swiper-slide").last().children().addClass("active");
	$(".report-page .panel").last().addClass("active");
	$(".report-page .panel").last().show();
	$(".tabs")
		.find(".swiper-inner")
		.on("click", function () {
			let $panel = $(this).closest(".tab-panel");
			$panel.find(".swiper-inner").removeClass("active");
			$(this).addClass("active");
			let panelToShow = $(this).attr("data-href");
			$panel.find(`.panel`).hide();
			$panel.find(`.panel`).removeClass("active");
			$panel.find(`.panel[id="${panelToShow}"]`).fadeIn(300, function () {
				$panel.find(`.panel[id="${panelToShow}"]`).addClass("active");
			});
		});
	$(".recruit-list")
		.find("#select-box")
		.on("change", function () {
			let panelToShow = $("option:selected", this).attr("mytag");
			let $panel = $(this).closest(".tab-container");
			$panel.find(".tab-content.active").fadeOut(300, showNextPanel);
			$panel.find(".tab-content.active").removeClass("active");

			function showNextPanel() {
				$("#" + panelToShow).fadeIn(300, function () {
					$(this).addClass("active").fadeIn(300);
				});
			}
		});
};
/*======================CHANGEPLACEHOLDER=================================*/
const changePlaceholder = () => {
	if ($("html").attr("lang") === "en") {
		$(".subscribe .subscribefrm")
			.find("input.subscribeemail")
			.attr("placeholder", "Email...");
		$(".subscribe .subscribefrm")
			.find("button.subscribebutton")
			.text("Send");

		$(".contact-page .frm-btn").addClass("en");
	} else {
		$(".subscribe .subscribefrm")
			.find("input.subscribeemail")
			.attr("placeholder", "Địa chỉ email...");
		$(".subscribe .subscribefrm")
			.find("button.subscribebutton")
			.text("Gửi");
	}
};
// Gửi thông tin trang contact
$(".contact-page .frm-btn input[type='submit']").on("click", function () {
	setTimeout(() => {
		changePlaceholder();
	}, 100);
});

/*======================PHAN TRANG=================================*/
const phantrang = () => {
	$(".modulepager")
		.find(".pagination")
		.find("li>a.NextPage, li>a.LastPage, li>a.BackPage, li>a.FirstPage")
		.parent()
		.hide();
};

/*======================TOGGLE NAV=================================*/
const toggleNav = () => {
	$(".report-page .navbar")
		.find(".dropdown .caption em")
		.on("click", function () {
			$(".report-page .navbar").find(".dropdown-menu").slideToggle();
		});
	if ($(window).width() < 575.98) {
		$(".recruit-list .wrapper-top .wrapper-filter .dropdown .title")
			.find("em")
			.on("click", function () {
				$(".recruit-list .wrapper-top .wrapper-filter .dropdown")
					.find(".dropdown-menu")
					.slideToggle();
			});
	}
};

/*==================== SCROLL SECTION ===================*/
const crollToDiv = () => {
	if ($(window).width() >= 992) {
		$(" #catelogry li a").on("click", function (event) {
			$(this).parent("li").addClass("active");
			event.preventDefault();
			var $section = $($(this).attr("href"));
			$("html, body").animate({
				scrollTop:
					$section.offset().top -
					$(".catelogry").outerHeight() -
					$("header").outerHeight(),
			});

			// window.addEventListener("scroll", function () {
			// 	let bannerheight = $("#pagebanner").outerHeight();
			// 	let headerHeight = $("header").outerHeight();

			// 	if (window.pageYOffset > bannerheight) {
			// 		$(".catelogry").addClass("scolled");
			// 		$(".catelogry").css("top", headerHeight);
			// 	} else {
			// 		$(".catelogry").removeClass("scolled");
			// 		$(".catelogry").css("top", 0);
			// 	}
			// });
		});
		$(" .footer-card li a").on("click", function (event) {
			event.preventDefault();
			var $section = $(this).attr("href");
			$section = $section.split("#");
			$section = $section[$section.length - 1];
			var hashTag = "#" + $section;
			$("html, body").animate({
				scrollTop:
					$(hashTag).offset().top -
					$(".catelogry").outerHeight() -
					$("header").outerHeight(),
			});
		});
	}
	$("[data-scroll]").on("click", function () {
		$("[data-scroll]").not(this).parent("li").removeClass("active");
	});
	if ($("#catelogry").length >= 1 && $(window).width() >= 992) {
		window.addEventListener("scroll", function () {
			var bannerheight = $("#pagebanner").outerHeight();
			var heightHeader = $("header").outerHeight();
			if (window.pageYOffset > bannerheight) {
				$(".catelogry").addClass("scolled");
				$(".scolled").css("top", heightHeader);
			} else {
				$(".catelogry").removeClass("scolled");
				$(".catelogry").css("top", 0);
			}
		});
		$(window).scroll(function () {
			var scrollDistance = $(this).scrollTop();
			$("#about-page section").each(function (i) {
				if (
					$(this).offset().top -
						$(".catelogry").outerHeight() -
						$("header").outerHeight() -
						1 <=
					scrollDistance
				) {
					$(".catelogry #catelogry li").removeClass("active");
					$(".catelogry #catelogry li").eq(i).addClass("active");
				}
			});
		});
	}
	if ($(window).width() < 992) {
		$(" #catelogry li a").on("click", function (event) {
			$(this).parent("li").addClass("active");
			event.preventDefault();
			var $section = $($(this).attr("href"));
			$("html, body").animate({
				scrollTop: $section.offset().top - $("header").outerHeight(),
			});
			if ($(window).width() >= 992) {
				window.addEventListener("scroll", function () {
					let bannerheight = $("#pagebanner").outerHeight();
					let headerHeight = $("header").outerHeight();

					if (window.pageYOffset > bannerheight) {
						$(".catelogry").addClass("scolled");
						$(".catelogry").css("top", headerHeight);
					} else {
						$(".catelogry").removeClass("scolled");
						$(".catelogry").css("top", 0);
					}
				});
			}
		});
		window.addEventListener("scroll", function () {
			let bannerheight = $("#pagebanner").outerHeight();
			let headerHeight = $("header").outerHeight();

			if (
				window.pageYOffset > bannerheight &&
				$("#about-page").length >= 1
			) {
				$(".catelogry").css({
					top: headerHeight,
					position: "fixed",
				});
				$("#tool-item").css({
					top: headerHeight,
					position: "fixed",
				});
			} else {
				$(".catelogry").css({
					top: 0,
					position: "absolute",
				});
				$("#tool-item").css({
					top: 0,
					position: "absolute",
				});
			}
		});
		$("#tool-item").on("click", function () {
			$("#about-page .catelogry").find("#catelogry").slideToggle();
		});
		$("#tool-item").on("click", function () {
			$(this).next().toggleClass("active");
		});
	}
};
const showHideTabel = () => {
	$(".load-more").on("click", function () {
		$("#table").toggleClass("active");
	});
};

const changeImageOnHover = () => {
	var item = $("#about-8 .content ul li");
	var img = $("#about-8 .box-img .img");
	item.each(function (e, id) {
		$(this).attr("data-img", e);
	});
	img.each(function (e) {
		$(this).attr("data-img", e);
	});
	$("#about-8 .box-img .img").eq(0).css("display", "block");
	item.on("mouseenter", function () {
		var id = $(this).attr("data-img");
		console.log(id);
		$("#about-8 .box-img .img").css("display", "none");
		$("#about-8 .box-img .img").eq(id).css("display", "block");
	});
};

function NguoiTanMailoop() {
	var loop = $(".category-section .row .col-lg-3.col-md-6.col-sm-6");
	if ($(".category-section").length >= 1) {
		loop.each(function (e) {
			$(this)
				.find(".img a")
				.attr("data-fancybox", "idLoop-" + e);
		});
	}
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
	checkLayoutBanner();
	slideTab();
	changePlaceholder();
	phantrang();
	toggleNav();
	crollToDiv();
	showHideTabel();
	changeImageOnHover();
	NguoiTanMailoop();
	$(".image-map-wrapper img[usemap]").maphilight({
		fillColor: "3b5a56",
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
		var tabParent =
			tabClickEvent.currentTarget.parentNode.parentNode.parentNode;
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
		theTabs[i].addEventListener("click", theTabClicks);
	}
});
