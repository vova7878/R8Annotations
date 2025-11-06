plugins {
    alias(libs.plugins.android.library)
    alias(libs.plugins.maven.publish)
}

java {
    toolchain.languageVersion = JavaLanguageVersion.of(17)
}

android {
    namespace = "com.v7878.r8.annotations"
    compileSdk = 36

    defaultConfig {
        minSdk = 26

        consumerProguardFiles("consumer-rules.pro")
    }

    publishing {
        multipleVariants {
            allVariants()
            withSourcesJar()
        }
    }
}

dependencies {
}

mavenPublishing {
    publishToMavenCentral(automaticRelease = false)
    signAllPublications()

    coordinates(
        groupId = "io.github.vova7878",
        artifactId = "R8Annotations",
        version = project.version.toString()
    )

    pom {
        name.set("R8Annotations")
        description.set("Annotations to specify information for R8 in the code instead of proguard-rules.pro")
        inceptionYear.set("2025")
        url.set("https://github.com/vova7878/R8Annotations")

        licenses {
            license {
                name.set("MIT")
                url.set("https://opensource.org/license/mit")
                distribution.set("repository")
            }
        }

        developers {
            developer {
                id.set("vova7878")
                name.set("Vladimir Kozelkov")
                url.set("https://github.com/vova7878")
            }
        }

        scm {
            url.set("https://github.com/vova7878/R8Annotations")
            connection.set("scm:git:git://github.com/vova7878/R8Annotations.git")
            developerConnection.set("scm:git:ssh://git@github.com/vova7878/R8Annotations.git")
        }
    }
}
