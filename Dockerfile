
FROM fabric8/fabric8-ui:SNAPSHOT.vc1e96572

USER root

RUN chgrp -R 0 /var/lib/nginx
RUN chmod -R g+rw /var/lib/nginx
RUN find /var/lib/nginx -type d -exec chmod g+x {} +

COPY nginx.conf /etc/nginx
RUN chmod -R 777 /etc/nginx
RUN chown -R fabric8 /etc/nginx
RUN chgrp -R fabric8 /etc/nginx

USER fabric8
