Простейший пример с аспектами.
Используется gradle plugin io.freefair.aspectj.post-compile-weaving  и post-compile weaving. 
В билде указывается
compileJava.ajc.options.compilerArgs = ["-sourceroots", sourceSets.main.java.sourceDirectories.getAsPath() ]