LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
USE IEEE.STD_LOGIC_unsigned.ALL;
ENTITY shumaguan4 is 
	PORT  (
	segcs  : out STD_LOGIC_vector (3 DOWNTO 0);		--四个数码管的片选信号，如果为0就打开
	Q		 : BUFFER INTEGER RANGE 0 TO 9999;   		--显示的数字
	seg 	 : out STD_LOGIC_vector (7 DOWNTO 0);		--具体某个数码管要显示的数字
	key	 : in STD_LOGIC;									--按键
	clk	 : in STD_LOGIC);						 			--25Mhz,用于提供数码管刷新频率
							 
END;

ARCHITECTURE	FH1	OF		shumaguan4 	IS
		
	SIGNAL num :  INTEGER RANGE 0 TO 9;
	SIGNAL cnt_200Hz:  INTEGER RANGE 0 TO 249999;
	SIGNAL T:  INTEGER RANGE 0 TO 24999999;
	SIGNAL segcs_SIFNAL  :  STD_LOGIC_vector (3 DOWNTO 0);
	signal FLOG :	INTEGER RANGE 0 TO 24999999;
	signal clk2 : 	STD_LOGIC;		--1khz   0.001s
	
	
	BEGIN
	-------------------------------------------分频出100hz,流动数值，这样的话，就是每1s后，数字会增加100
		PROCESS(clk)
		BEGIN
					IF clk'EVENT AND clk = '1' THEN
						 IF T<250000 THEN  T<=T+1 ;
						 ELSE T<=0;
								Q<= Q + 1;
						 END IF;				 
					END IF;
					
					IF Q=10000 THEN Q<=0;
					END IF;
		END PROCESS;
		-------------------------------------------数码管刷新率，相当于分频器，使4个片选信号切换
	FF:	PROCESS(clk)
		BEGIN	
					IF clk'EVENT AND clk = '1' THEN
						 IF cnt_200Hz<100000 THEN  cnt_200Hz<=cnt_200Hz+1 ;
						 ELSE cnt_200Hz<=0;
						 END IF;
						 
						 IF		(cnt_200Hz< 25000)									THEN	segcs_SIFNAL <= "1110";
						 ELSIF 	((25000<cnt_200Hz)AND(cnt_200Hz<=50000))		THEN	segcs_SIFNAL <= "1101";
						 ELSIF	((50000<cnt_200Hz)AND(cnt_200Hz<=75000))		THEN	segcs_SIFNAL <= "1011";
						 ELSE 																		segcs_SIFNAL <= "0111";
						 END IF;
						 
					END IF;
					
		END PROCESS	FF;
		
		
	-------------------------------------------显示

					
		num	<=	Q REM 10		 		WHEN segcs_SIFNAL = "1110"	ELSE	--计算出每个数码管(每一个位)应该显示的数字
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

