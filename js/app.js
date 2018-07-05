/* Theme Name: Rictor - One Page Template
   Author: Themesdesign
   Version: 1.0.0
   Created: July 2017
   File Description: Main JS file of the template
*/


/**
 * Our application module - manages all the elements in all pages
 */
var RictorApp = (function() {
    var windowRef = $(window);
    var htmlRef = $('html');
    var bodyRef = $('html, body');
    var docRef = $(document);

    var stickyEls = $(".sticky");
    var counterEls = $('.counter');
    var owlCarouselDemo = $("#owl-demo");
    var navbarMenuItems = $('.navbar-nav a');
    var magnifyImgs = $('.mfp-image');
    var magnifyVideo = $('.popup-video');
    var portfolioContainer = $(".projects-wrapper");
    var portfolioFilter = $('#filter');
    var masonryEls = $(".masonry");


    //magnify popup
    var initMagnificPopoup = function() {
        //init images
        magnifyImgs.magnificPopup({
            type: 'image',
            closeOnContentClick: true,
            mainClass: 'mfp-fade',
            gallery: {
            enabled: true,
            navigateByImgClick: true,
            preload: [0,1] // Will preload 0 - before current, and 1 after the current image 
            }
        });

        //init videos
        magnifyVideo.magnificPopup({
            disableOn: 700,
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            preloader: false,
            fixedContentPos: false
        });
    };

    var initMasonnry = function() {
          // Initialize isotope 
          portfolioContainer.isotope({
            filter: '*',
            layoutMode: 'masonry',
            animationOptions: {
              duration: 750,
              easing: 'linear'
            }
          });

        //Masonry
        masonryEls.imagesLoaded(function(){
            masonryEls.masonry();
        });

          // Filter items when filter link is clicked
          portfolioFilter.find('a').click(function (e) {
            e.preventDefault();

            var selector = $(this).attr('data-filter');
            portfolioFilter.find('a').removeClass('current');
            $(this).addClass('current');
            portfolioContainer.isotope({
              filter: selector,
              animationOptions: {
                animationDuration: 750,
                easing: 'linear',
                queue: false,
              }
            });

            return false;
          });
      };  

    //on window load call back function
    var onWinLoad = function(e) {
        //init - all sticky elements
        stickyEls.sticky({
            topSpacing: 0
        });
    };

    //on document ready callback function
    var onDocReady = function(e) {
        //menu items
        navbarMenuItems.on('click', function(event) {
            var $anchor = $(this);
            bodyRef.stop().animate({
                scrollTop: $($anchor.attr('href')).offset().top - 0
            }, 1500, 'easeInOutExpo');
            event.preventDefault();
        });

        //init counters
        counterEls.counterUp({
            delay: 100,
            time: 3000
        });

        //owlCarousel
        owlCarouselDemo.owlCarousel({
            navigation : false, 
            slideSpeed : 300,
            paginationSpeed : 400,
            singleItem:true
        });

        //maginify
        initMagnificPopoup();
        initMasonnry();

    };

    //binding events
    var bindEvents = function() {
        docRef.on('ready', onDocReady);
        windowRef.on('load', onWinLoad);
    };

    // init - initilizes various widgets, elements, events, etc
    var init = function() {
        bindEvents();
    };

    return {
        init: init
    };
}());

//init app
RictorApp.init();