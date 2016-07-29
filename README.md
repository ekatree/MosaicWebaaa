
1. Spring Starter Project 생성

	- Name : MosaicWeb
	- Type : Gradle(Buildship)
	- Packageing : war
	- Group : com.hybrid
	- Artifact : MosaicWeb
	- Package : com.hybrid
	
	- Dependencies 선택 : WEB
	
	
2. 형상관리 생성 
	- Remote Repository 생성(github)
	- Local Repository 생성
		- >> git status
		- >> git log
		- >> dir /a > .gitignore
		- >> notepad .gitignore 편집
		- >> git init
		- >> git add *
		- >> git commit -m "First commit"
	
	- Local ==> Remote push(최초 동기화)
		- >> git remote -v
		- >> git remote remove origin  // 제거 
		- >> git remote add origin https://github.com/ekatree/MosaicWeb.git
		- >> git push -u origin master
		
	- 개발자2가 clone 수행
		- >> git clone https://github.com/ekatree/MosaicWeb.git
		- >> git clone https://github.com/ekatree/MosaicWeb.git MosaicWebDev //폴더 생성시
		- >> Eclipse Gradle Import
		
3. HTML 설정
	- 설정 불필요
	- mkdir src/main/webapp 폴더 생성
	- notepad src/main/webapp/Hello.html
	- gradle bootRun
	- Firefox ==> http://localhost:8080/Hello.html
	
4. JSP 설정 
	- mvnrepository.com search : tomcat jasper
	- build.gradle dependency : compile group: 'org.apache.tomcat.embed', name: 'tomcat-embed-jasper', version: '8.5.4'
	
	- Eclipse -> gradle refresh
	- notepad src/main/webapp/Hello.jsp
	- gradle bootRun
	- Firefox ==> http://localhost:8080/Hello.jsp	
	
5. Servlet 설정	
	-Project facets 추가
		- >>Dynamic Web Module 3.1
		- >>Java 1.8
		- >>Javascript 1.0
	- MosaicWebApplication.java << @ServletComponentScan 추가
	- com.hybrid.servlet.HelloServlet.java 생성
	- Firefox ==> http://localhost:8080/HelloServlet
	
6. SpringLoaded 설정(리로드 기능)
	- mvnrepository.com >> search : springloaded
	- build.gradle에 설정(두 곳)
		compile group: 'org.springframework', name: 'springloaded', version: '1.2.6.RELEASE'
		classpath("org.springframework:springloaded:1.2.6.RELEASE")
	- Eclipse Output Directory 변경
		bin ==> build/classes/main
	
7. Mybatis 설정
	- mvnrepository.com >> search : spring boot mybatis
	- build.gradle에 Dependency 설정
		compile group: 'org.mybatis.spring.boot', name: 'mybatis-spring-boot-starter', version: '1.1.1'
		compile files('src/main/webapp/WEB-INF/lib/ojdbc7.jar');
	- application.properties
		- >>spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
		- >>spring.datasource.url=jdbc:oracle:thin:@52.78.73.24:1521:orcl
		- >>spring.datasource.username=scott
		- >>spring.datasource.password=tiger
	- Eclipse Gradle Refresh
	- gradle bootRun
	- notepad src/main/java/com/hybrid/mapper/DeptMapper.java 인터페이스 생성
	- notepad src/main/java/com/hybird/domain/Dept.java
	- notepad src/test/java/com/hybrid/mapper/DeptMapperTest.java
	- notepad src/main/webapp/dept.jsp

