# Magic Mirror Project
Over the summer I am going to make a magic mirror using the Pi zero. This repository is code that will do the visualization of the mirror

# My setup
### Monitor
The monitor that I am using is an old one that was lying around.
The important part is the screen size that is 1280px x 1024px

### Mirror
The mirror that I will be using will be a 2 way Acrylic mirror.
As of yet is still yet to be bought but it will most likely be bought from [Cut Plastic Sheeting](http://www.cutplasticsheeting.co.uk/mirrored-sheeting/two-way-acrylic-mirror).

### Frame
The frame has still yet to be decided... Well I can't decide right but it will probably be something from B&Q (pre finished) or a paint job done by myself.

## Peripherals
- [7 port USB Hub](https://www.amazon.co.uk/Mobilizers-Switches-Notebook-Computer-Tablets/dp/B008543CKI)

	Yes this is a bit of an overkill allowing so many ports when in reality I may only need 3 or 4
- [Tontec 150Mbps USB Wifi Dongle Adapter for Raspberry Pi](https://www.amazon.co.uk/Tontec-150Mbps-Adapter-Raspberry-Windows/dp/B010AKMF3Y/)

- Mouse and keyboard

	These will be plugged in when I need to. They are not essential when the mirror is working

# Modules
### Time And Date

## Calendar
I am using the google calendar APIs, on the first time viewing the page there is a prompt to authorise this app to access google.

### Weather
After a long time looking at APIs I ended up taking the short route and using [forecast.io](http://forecast.io/).
This means that I can not change most of the styles and so I'm using [Stylish](https://chrome.google.com/webstore/detail/stylish/fjnbnpbmkenffdnngjfgmeleoegfcffe?hl=en) to add my styles to it.
<br>The style Magic Mirror Weather needs to look like this:
```css
@import url(http://localhost:8000/assets/style/forecast.min.css);
```
Applies to
```
URLs starting with: http://forecast.io/embed/
```
