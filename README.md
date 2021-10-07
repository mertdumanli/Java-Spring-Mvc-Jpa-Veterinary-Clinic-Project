# Java Spring Mvc Jpa Veterinary Clinic Project

* Veteriner projesi olan bu projede, veteriner kliniklerinin genel ihtiyaçlarını karşılamaya yönelik, hızlı ve pratik bir şekilde işlemlerin gerçekleştirilmesi amacıyla bu proje tasarlanmıştır. Bu proje Spring-Boot framework kullanılarak MVC tasarım desenine uyularak tasarlanmıştır. Tasarlanma aşamasında veri tabanı olarak MySql kullanılmıştır. Veri tabanını yönetmek için ORM araçlarından JPA kullanılmıştır. Ara yüz geliştirilirken HTML, CSS, BootStrap5 ve JavaScript kullanılmıştır.  Back-end kısmında Java, JavaScript dilleri kullanılmıştır. JavaScript tarafında JQuery kullanılmıştır.  (jQuery’de Ajax yöntemleri)

* In this project, which is a veterinary project, this project has been designed in order to meet the general needs of veterinary clinics and to carry out the procedures in a fast and practical way. This project was designed using the Spring-Boot framework, following the MVC design pattern. MySql was used as the database during the design phase. JPA, one of the ORM tools, was used to manage the database. While developing the interface, HTML, CSS, BootStrap5 and JavaScript were used. Java and JavaScript languages are used in the back-end part. JQuery is used on the JavaScript side. (Ajax methods in jQuery)

## Used Technologies
| Languages & Abilities |
|-----------------------|
|        Java           |
|     Spring-Boot       |
|   Spring Security     |
|      Spring-MVC       |
|    Spring-RestApi     |
|      Spring-JPA       |
|      JPA-Auditing     |
|   Spring-Validation   |
|        Regex          |
|        Log4j          |
|      Thymeleaf        |
|      JavaScript       |
|        jQuery         |
|         HTML          |
|         CSS           |
|       Bootstrap 5     |
|         MySql         |

### Thymeleaf

* Arayüz geliştirilirken Thymeleaf tema motoru kullanılmıştır. Thymeleaf’te master-page yöntemi kullanılarak hiyerarşik tarzda düzen oluşturulmuştur böylece hem kod tekrarından kurtarılarak clean code amaçlanmış hem de ara yüz tasarımının kontrolü kolaylaştırılmıştır.

* Thymeleaf theme engine was used while developing the interface. In Thymeleaf, a hierarchical layout was created by using the master page method, so that clean code is aimed by avoiding code repetition and the control of the interface design is facilitated.

### Spring Security

* Projemizde sayfalara erişim, yetkisiz işlem yapma gibi olumsuz durumları engellemek için güvenlik tarafında Spring Security kullanılmıştır. Kullanıcılara roller verilerek, belli sayfalara erişim hakkı tanımlanmış belli sayfalara da erişimi engellenmiştir. Dışarıdan gelebilecek saldırılara karşı programımız daha güvenli hale getirilmesi amaçlanmıştır.

* In our project, Spring Security is used on the security side to prevent negative situations such as accessing pages and making unauthorized transactions. By assigning roles to users, access to certain pages with the right to access certain pages is also blocked. It is aimed to make our program more secure against external attacks.

### Log4j

* Projemizde sorun olması durumunda sorunun daha kolay bulunabilmesi için günlüğe hata mesajları kayıt edilmektedir. Log4j uygulama deploy edildikten sonra arka planda uygulamanın konsol kısmında hata mesajlarını yazmayarak programın gereksiz yere işlem yapmasını önler.

* In case of a problem in our project, error messages are recorded in the log so that the problem can be found more easily. After the application is deployed, Log4j does not write error messages in the console part of the application in the background, preventing the program from taking unnecessary action.

### Validation

* Kullanıcıdan veri girişi olacağı vakit gelen bilgilerin kontrolü için doğrulama «validation» kullanılmıştır. Kullanıcı veri girişi yaparken HTML kısmında zorunlu kılınan alanlarda değişiklik yapabilir bu sorunun önüne geçebilmek için Spring Validation kullanılmıştır. Kullanıcının eksik veya yanlış bilgi girmesi durumunda Java tarafında kontrol edilmekte ve kullanıcının girmesi gereken formatta değişiklik yapması engellenmektedir.

* Validation is used to control the information received from the user when data is entered. Spring Validation has been used to prevent this problem. In case the user enters incomplete or incorrect information, it is controlled by Java and the user is prevented from making changes in the required format.


## Available Demo Accounts
| :closed_lock_with_key: Username | :old_key: Password |
|----------|----------|
| **``mert@mail.com``**| **12345**|
| **``selen@mail.com``**| **1234**|
| **``aydın@mail.com``**| **12345**|

## Application Images
<p>
<a href="https://drive.google.com/file/d/1wq79LHHGr7vhjfnNXXYzGz9ZAwDXN1VL/view?usp=sharing" target="_blank">
<img src="https://drive.google.com/file/d/1wq79LHHGr7vhjfnNXXYzGz9ZAwDXN1VL/view?usp=sharing" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/2.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/2.jpg" width="240" style="max-width:100%;"></a>
    
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/3.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/3.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/4.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/4.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/5.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/5.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/6.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/6.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/7.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/7.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/8.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/8.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/9.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/9.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/10.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/10.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/11.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/11.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/12.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/12.jpg" width="240" style="max-width:100%;"></a>
  
<a href="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/13.jpg" target="_blank">
<img src="https://github.com/mertdumanlicse/Java-Hibernate-Servlet-JavaScript-jQuery-Warehouse-Tracking-Project/blob/main/images/13.jpg" width="240" style="max-width:100%;"></a>

  </p>
    
### Contact Me For More Information  

<a href="https://www.linkedin.com/in/mertdumanli" target="_blank">LinkedIn</a>
<a href="mailto:mertdumanli.cse@gmail.com" target="_blank">Gmail</a>
