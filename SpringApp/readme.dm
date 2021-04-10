you should remove the maven-jar-plugin

modify spring-boot-maven-plugin to:

 <plugin>
     <groupId>org.springframework.boot</groupId>
     <artifactId>spring-boot-maven-plugin</artifactId>
     <version>2.0.3.RELEASE</version>
     <configuration>
         <mainClass>com.game.Main</mainClass> 
     </configuration>
 </plugin>

you can execute mvn package spring-boot:repackage to generate the executable jar