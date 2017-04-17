# ConvertWomanToManVoice
change woman to man voice by MATLAB for signal &amp; system subject
You can see output video is https://youtu.be/sjiH_YTXOiM

การทำงาน

เรียกไฟล์ build811.m
จากนั้น จะมีค่า Ln และ Ly ขึ้นมา พร้อมแสดงกราฟของเสียงที่เราแปลงเสร็จแล้วพร้อมเสียง
มาดูการทางานดีกว่า ว่าในฟังก์ชั่น build811 ทำงานอย่างไร

ค่า n ในที่นี้ คือ data plot graph n แล้วให้พิมพ์ความยาวของ n ออกมา โดยให้เท่ากับ Ln
plot(n)
Ln=length(n)

ให้ตัวแปร m มีค่าตั้งแต่ 1 ถึง Ln โดยห่างกันช่วงละ 2
m=1:2:Ln;

ให้ y = n(m) และให้พิมพ์ความยาวของ y โดยให้เท่ากับ Ly
y=n(m)
Ly=length(y)

จากตัวอย่างไฟล์เสียงที่ใช้ เป็นสัญญาณ stereo 2 channel(s) และแทนด้วยจานวน 16 บิท ในที่นี้ลดจานวนบิทที่ใช้ จาก 16 บิท เป็น 8 บิท
y=round(x*256);
y=y/256;

แล้ว plot graph สัญญาณ y ที่เปลี่ยนไป
plot(y)

สร้างสัญญาณแบบไม่ต่อเนื่องรูป sine
fs=22050;
f=7000;
n=0:436191;
x=sin(2*pi*f*n/fs);

ฟังเสียงสุดท้ายที่ได้
sound(y,fs)

ทำการบันทึกสัญญาณเสียงที่สร้างขึ้น เป็น outwave111.wav
x=x';
wavwrite(x,fs,'outwave111.wav');

จบการทำงาน
