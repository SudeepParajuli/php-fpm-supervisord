FROM alpine:latest
MAINTAINER sudeep sudeep.parajuli254@gmail.com                                                               
RUN apk --update add \                                                           
  php-fpm \                                                                      
  php-pdo \                                                                      
  php-json \                                                                     
  php-openssl \                                                                  
  php-mysql \                                                                    
  php-pdo_mysql \                                                                
  php-mcrypt \                                                                   
  php-sqlite3 \                                                                  
  php-pdo_sqlite \                                                               
  php-ctype \                                                                    
  php-zlib \                                                                     
  supervisor           
RUN mkdir -p /var/run/php-fpm                                                     
RUN mkdir -p /var/log/supervisor                                                  
ADD php-supervisor.ini /etc/supervisor.d/php-supervisor.ini                   
EXPOSE  9000
CMD ["/usr/bin/supervisord"]  

