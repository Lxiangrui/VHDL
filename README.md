## 矩阵键盘与数码管动态显示

矩阵键盘，我记得有两种方法，一个扫描法，一个反转法

数码管，动态显示，就是多个数码管，设置不同的频率，每个周期内只点亮一个数码管，且输入特定的信号，多个数码管快速切换，利用人眼的暂留效应，看起来就是一起亮了。。



创新设计，可以加分

### 显示1234

```vhdl
LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
USE IEEE.STD_LOGIC_unsigned.ALL;--因为使用到了从Integer类型转换到STD_LOGIC_VECTER
ENTITY shumaguan4 is 
	PORT  (
	segcs  : out STD_LOGIC_vector (3 DOWNTO 0);		--四个数码管的片选信号，如果为0就打开
	Q		 : BUFFER INTEGER RANGE 0 TO 9999;   		--显示的数字
	seg 	 : out STD_LOGIC_vector (7 DOWNTO 0);		--具体某个数码管要显示的数字
	key	 : in STD_LOGIC;									--按键
	clk	 : in STD_LOGIC);							 		--25Mhz,用于提供数码管刷新频率
	
END;

ARCHITECTURE	FH1	OF		shumaguan4 	IS
		
	SIGNAL num :  INTEGER RANGE 0 TO 9;
	SIGNAL cnt_200Hz:  INTEGER RANGE 0 TO 249999;
	SIGNAL segcs_SIFNAL  :  STD_LOGIC_vector (3 DOWNTO 0);	
	BEGIN
	-------------------------------------------按键计数
	CNT:	PROCESS(key)
		BEGIN
						  Q<=1234;
		END PROCESS	CNT;
		
		-------------------------------------------数码管刷新率，相当于分频器，使4个片选信号切换
	FF:	PROCESS(clk)
		BEGIN
					IF clk'EVENT AND clk = '1' THEN
						 IF cnt_200Hz<100000 THEN  cnt_200Hz<=cnt_200Hz+1 ;
						 ELSE cnt_200Hz<=0;
						 END IF;
						 
						 IF		(cnt_200Hz< 25000)				THEN	segcs_SIFNAL <= "1110";
						 ELSIF 	((25000<cnt_200Hz)AND(cnt_200Hz<=50000))		THEN	segcs_SIFNAL <= "1101";
						 ELSIF	((50000<cnt_200Hz)AND(cnt_200Hz<=75000))		THEN	segcs_SIFNAL <= "1011";
						 ELSE 																		segcs_SIFNAL <= "0111";
						 END IF;
						 
					END IF;
					
		END PROCESS	FF;
		
		
	-------------------------------------------显示

					
		num	<=		Q REM 10		 	WHEN segcs_SIFNAL = "1110"	ELSE	--计算出每个数码管(每一个位)应该显示的数字
					Q/10 REM 10			WHEN segcs_SIFNAL = "1101"	ELSE
					Q/100 REM 10 		WHEN segcs_SIFNAL = "1011"	ELSE
					Q/1000;
					--WHEN ELSE 语句时并行语句，不需要放到进程中，只有if和case等顺序执行的才放到process中
		seg <=  x"3f" WHEN num = 0 ELSE--0
				  x"06" WHEN num = 1 ELSE
				  x"5b" WHEN num = 2 ELSE
				  x"4f" WHEN num = 3 ELSE
				  x"66" WHEN num = 4 ELSE
				  x"6D" WHEN num = 5 ELSE
				  x"7D" WHEN num = 6 ELSE
				  x"07" WHEN num = 7 ELSE
				  x"7F" WHEN num = 8 ELSE
				  x"6F" ;					 --9
		
	
		segcs <= segcs_SIFNAL;
			  

END;



```





```vhdl
LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
ENTITY juzhen IS 
	PORT  (
	kin	 : in STD_LOGIC_vector (3 DOWNTO 0);
	kout	 : buffer	STD_LOGIC_vector (3 DOWNTO 0);
	led	 :	out STD_LOGIC_vector (7 DOWNTO 0);
	clk   :in std_logic);
END;

ARCHITECTURE	FH1	OF	juzhen IS
	SIGNAL cnt_200Hz:  INTEGER RANGE 0 TO 249999;
	
	BEGIN
	

	process(kin)
	
	begin
	
	
		IF clk'EVENT AND clk = '1' THEN
						 IF cnt_200Hz<100000 THEN  cnt_200Hz<=cnt_200Hz+1 ;
						 ELSE cnt_200Hz<=0;
						 END IF;
						 
						 
						 if      (cnt_200Hz<= 25000)                          then  kout<="1110";
						 elsif  ((25000<cnt_200Hz)AND(cnt_200Hz<=50000))		THEN	kout <= "1101";
						 ELSIF	((50000<cnt_200Hz)AND(cnt_200Hz<=75000))		THEN	kout <= "1011";
						 else    		kout <= "0111";
						 end if;
						 
						 
						 
						 if kout="1110" then
								IF	     (kin = "0111")		THEN	led <= x"04";
									ELSIF(kin = "1011")		THEN	led <= x"03";
									ELSIF(kin = "1101")		THEN	led <= x"02";
									ELSIF(kin = "1110")		THEN	led <= x"01";
									else 	led <= "11111111";
								END IF;
						 elsif kout="1101" then
								IF	    (kin = "0111")		THEN	led <= x"08";
									ELSIF(kin = "1011")		THEN	led <= x"07";
									ELSIF(kin = "1101")		THEN	led <= x"06";
									ELSIF(kin = "1110")		THEN	led <= x"05";
									else 	led <= "11111111";
								END IF;
								
							elsif kout="1011" then
								IF	     (kin = "0111")		THEN	led <= x"0C";
									ELSIF(kin = "1011")		THEN	led <= x"0B";
									ELSIF(kin = "1101")		THEN	led <= x"0A";
									ELSIF(kin = "1110")		THEN	led <= x"09";
									else 	led <= "11111111";
								END IF;
								
							elsif kout="0111" then
								IF	     (kin = "0111")		THEN	led <= x"10";
									ELSIF(kin = "1011")		THEN	led <= x"0F";
									ELSIF(kin = "1101")		THEN	led <= x"0E";
									ELSIF(kin = "1110")		THEN	led <= x"0D";
									else 	led <= "11111111";
								END IF;
						
						 end if;
						 
						 
						 
						 
	   end if;
	
	
	
	
	
--	IF			(cnt_200Hz< 25000)							THEN	
--
--
--		kout <= "1110";
--		IF	(kin = "0111")		THEN	led <= x"04";
--		ELSIF(kin = "1011")		THEN	led <= x"03";
--		ELSIF(kin = "1101")		THEN	led <= x"02";
--		ELSIF(kin = "1110")		THEN	led <= x"01";
--		else 	led <= "11111111";
--		END IF;
--
--		
--	ELSIF		((25000<cnt_200Hz)AND(cnt_200Hz<=50000))			THEN	
--	
--		kout <= "1101";
--		IF	(kin = "0111")			THEN	led <= x"08";
--		ELSIF(kin = "1011")		THEN	led <= x"07";
--		ELSIF(kin = "1101")		THEN	led <= x"06";
--		ELSIF(kin = "1110")		THEN	led <= x"05";
--		else 	led <= "11111111";
--		END IF;
--	
	
--	ELSIF	((50000<cnt_200Hz)AND(cnt_200Hz<=75000))		THEN	
--	
--		kout <= "1011";
--		IF	(kin = "1110")			THEN	led <= x"09";
--		ELSIF(kin <= "1101")		THEN	led <= x"0a";
--		ELSIF(kin <= "1011")		THEN	led <= x"0b";
--		ELSIF(kin <= "0111")		THEN	led <= x"0c";
--		else 	led <= "11111111";
--		END IF;
--	

--	ELSIF		(cnt_200Hz> 75000)									THEN	
--	
--		kout <= "0111";
--		IF	(kin <= "0111")		THEN	led <= x"10";
--		ELSIF(kin <= "1011")		THEN	led <= x"0f";
--		ELSIF(kin <= "1101")		THEN	led <= x"0e";
--		ELSIF(kin <= "1110")		THEN	led <= x"0d";
--		else 	led <= "11111111";
--		END IF;
--END IF;	
	END PROCESS;
	
END;

```







## 老师讲解

如果用文本计数可能回造成竞争和冒险，会产生毛刺，也会消耗大量资源，最好使用原理图里面的altpll锁相环，来产生的



LPM_counter进行降频率

![image-20220330164903273](第一堂课.assets/image-20220330164903273.png)

![image-20220330164954834](第一堂课.assets/image-20220330164954834.png)

​	

![image-20220330165123975](第一堂课.assets/image-20220330165123975.png)

## 超声波测距

### 1、回响信号测量模块

能够输出高电平时间，单位为uS，然后每次下降沿的时候，刷新高电平持续时间。

![image-20220331104558166](第一堂课.assets/image-20220331104558166.png)

```vhdl
LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_unsigned.ALL;										--因为使用到了从Integer类型转换到STD_LOGIC_VECTER
ENTITY Echo is 
	PORT  (
	Echo_snl	: in STD_LOGIC;
--	AA		 	: 	BUFFER INTEGER RANGE 0 TO 1023;
	Dout		: out STD_LOGIC_VECTOR(9 DOWNTO 0);
	clk_time	: in STD_LOGIC);											--输入的高频信号，用于计数,经过计算可以设置为1us
END;

ARCHITECTURE	FH1	OF		Echo 	IS
	SIGNAL BB:  INTEGER RANGE 0 TO 1023;
	SIGNAL QQ:  INTEGER RANGE 0 TO 1023;  				--显示的数字
	BEGIN
	process(Echo_snl,clk_time)
	BEGIN
	if(Echo_snl = '1')		then 											--在回响信号高电平时，计数
				IF 	clk_time'EVENT AND clk_time = '1' THEN	
				BB <= BB+1;															
				END IF;
	elsif(Echo_snl = '0')	then BB<=0;
	END IF;
	
	if  Echo_snl'EVENT AND Echo_snl = '0' THEN 					--在回响信号下降沿时，停止计数，并且将计数值赋给QQ，后BB<=0
						QQ <= BB;
						
					
	END IF;
	end process;
	
	Dout <= CONV_STD_LOGIC_VECTOR(QQ,10);
	
	
	END;

```

### 2、触发信号发生模块

这里直接使用一个pll和couter来组成一个周期的，触发信号发生电路。
