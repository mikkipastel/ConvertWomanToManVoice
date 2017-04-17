function build811(n,fs)
plot(n);
Ln=length(n)
m=1:2:Ln;
y=n(m);
%sound(y,fs)
Ly=length(y)
%y=round(n);
y=round(n*256);
y=y/256;
plot(y);
fs=22050;
f=7000;
n=0:436191;
x=sin(2*pi*f*n/fs);
sound(y,fs)
x=x';
wavwrite(y,fs,'outwave111.wav');
