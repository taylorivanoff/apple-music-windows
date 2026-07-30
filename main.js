const path = require('path');
require('icloud-windows-base').run({
  appName: 'Apple Music',
  protocol: 'apple-music',
  icloudUrl: 'https://music.apple.com',
  splashPath: path.join(__dirname, 'splash.html'),
  iconPath: path.join(__dirname, 'icon.png')
});
