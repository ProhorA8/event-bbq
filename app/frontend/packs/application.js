require('@rails/ujs').start()
require('bootstrap');

import Rails from '@rails/ujs'
import 'bootstrap/dist/js/bootstrap'

import '../stylesheets/application.scss'

const images = require.context('../images', true)

import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()
