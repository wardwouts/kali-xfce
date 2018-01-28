# kali-xfce
Docker files for kali container with XFCE and full or top10 tools

Creates a Kali Linux container with an XFCE desktop in a browser.

## Usage

Build the container using:

```
docker build -t kali-xfce .
```

or

```
docker build -t kali-xfce github.com/wardwouts/kali-xfce-top10
```

This may take a while, image size is ~10GB.

Optionally use the `TOP` build argument to include only the top 10 Kali tools (image size ~5GB):

```
docker build --build-arg TOP=true -t kali-xfce github.com/wardwouts/kali-xfce-top10
```

Then start the container using:

```
docker run -t -i kali-xfce
```

Now in a browser go to the container IP address on port 6080. Eg. http://172.17.0.2:6080
The password is `toor`.

For working on a specific project you may want to use:

```
docker run -t -i -v /home/USER/project:/root/project kali-xfce
```

instead, to store everything saved in /root/project in /home/USER/project on the host system.
