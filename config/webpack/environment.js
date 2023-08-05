const { environment } = require('@rails/webpacker')

module.exports = environment

environment.plugins.prepend(
  'Provide',
  new webpack.ProvidePlugin({
    jQuery: 'jquery',
  })
)

module.exports = environment