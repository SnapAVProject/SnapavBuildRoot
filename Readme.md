# get source code

```
git clone --recursive http://10.10.1.33:3000/SnapAV-8D/Snapav.git
```

# build step
## 1 first build, only need to do once 
```
make toolchain
```



## 2 nomorl build
```
make boardtype={boardtype} appversion={appversion} dspversion=dspversion deletedatabase={true/false}`
```


boardtype:
1 snapav2d
2 snapav8d
3 snapav12d
4 snapav16d
5 snapav51

appversion:183

dspversion:109