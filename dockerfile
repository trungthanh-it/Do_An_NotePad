FROM ubuntu

WORKDIR /src

RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-tk

RUN apt-get install -y gnome gnome-session-flashback xorg dbus

COPY  test.py ./test.py

CMD ["python3", "test.py", "Notepad"]