require('@rails/ujs').start()
require('./bootstrap');
require('./gallery_lightbox');
require('./lightbox.min');
require('./maps');

import 'bootstrap/dist/js/bootstrap'
import '../stylesheets/application.scss'
import '@fortawesome/fontawesome-free/js/all'

const images = require.context('../images', true)
