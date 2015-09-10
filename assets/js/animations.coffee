class Animations

  els =
    socialNavIcons: document.querySelectorAll 'nav .auto-width-xs > a' 
    hubTitle:       document.querySelector '.text-overlay > h5'
    homeHeader:     document.querySelectorAll '.heroimage, .hero-title, .author-nameplate'
    homeHero:       document.querySelector '.heroimage'
    sectionTitle:   document.querySelector '.section-title h3'
    homeFeedItems:  document.querySelectorAll '.recent .feed-item'

  if els.socialNavIcons
    Velocity els.socialNavIcons, 'transition.expandIn',
      drag:     true
      stagger:  200

  if els.homeHero
    els.homeHero.addEventListener 'load', ->
      Velocity els.homeHeader, 'transition.slideUpIn',
        drag:     true
        stagger:  250
        display:  ''

  if els.homeFeedItems
    for el in els.homeFeedItems
      el.querySelector('img').addEventListener 'load', (e) ->
        Velocity e.target.parentNode.parentNode, 'transition.slideUpIn',
          display: ''

  if els.hubTitle
    Velocity els.hubTitle, 'callout.tada',
      delay:    3000
      display:  ''

  if els.sectionTitle
    Velocity els.sectionTitle, 'transition.slideDownIn'
