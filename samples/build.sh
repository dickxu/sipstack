gcc -O2 -I/usr/local/include -L/usr/local/lib sip_testing.c \
          -o sip_testing \
          -leXosip2 -losip2 -losipparser2 -lpthread
