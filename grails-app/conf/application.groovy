// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.challenges.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.challenges.UserRole'
grails.plugin.springsecurity.authority.className = 'com.challenges.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
        [pattern: '/', access: ['IS_AUTHENTICATED_FULLY']],
        [pattern: '/error', access: ['permitAll']],
        [pattern: '/index', access: ['IS_AUTHENTICATED_FULLY']],
        [pattern: '/index.gsp', access: ['IS_AUTHENTICATED_FULLY']],
        [pattern: '/shutdown', access: ['permitAll']],
        [pattern: '/assets/**', access: ['permitAll']],
        [pattern: '/**/js/**', access: ['permitAll']],
        [pattern: '/**/css/**', access: ['permitAll']],
        [pattern: '/**/images/**', access: ['permitAll']],
        [pattern: '/**/favicon.ico', access: ['permitAll']],
        [pattern: '/api/**', access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
        [pattern: '/assets/**', filters: 'none'],
        [pattern: '/**/js/**', filters: 'none'],
        [pattern: '/**/css/**', filters: 'none'],
        [pattern: '/**/images/**', filters: 'none'],
        [pattern: '/**/favicon.ico', filters: 'none'],
        [pattern: '/api/**', filters: 'none'],
        [pattern: '/**', filters: 'JOINED_FILTERS']
]

api.temp.conversion.url = 'https://www.q88.com/WS/Q88WSInternal.asmx/ConvertTemperature?property={property}&val={value}'

environments {
    production {
        dataSource {
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            dialect = 'org.hibernate.dialect.PostgreSQLDialect'
            uri = new URI(System.env.DATABASE_URL ?: "postgres://test:test@localhost/test")
            url = "jdbc:postgresql://" + uri.host + ":" + uri.port + uri.path
            username = uri.userInfo.split(":")[0]
            password = uri.userInfo.split(":")[1]
        }
        hibernate {
            dialect = 'net.kaleidos.hibernate.PostgresqlExtensionsDialect'
        }
        grails.gorm.default.mapping = {
            id generator: 'org.hibernate.id.enhanced.SequenceStyleGenerator', params: [prefer_sequence_per_entity: true]
        }
    }
}