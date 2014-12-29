module.exports = ->

  @loadNpmTasks 'grunt-browserify'


  @initConfig
    browserify:
      dist:
        files:
          'dist/gss.js': ['src/dist.coffee']
        options:
          transform: ['coffeeify']


  @registerTask 'build', ['browserify']
