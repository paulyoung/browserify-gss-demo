module.exports = ->

  @loadNpmTasks 'grunt-browserify'


  @initConfig
    browserify:
      dist:
        files:
          'dist/gss.js': ['src/GSS.coffee']
        options:
          transform: ['coffeeify']
          browserifyOptions:
            extensions: ['.coffee']
            fullPaths: false
            standalone: 'GSS'


  @registerTask 'build', ['browserify']
