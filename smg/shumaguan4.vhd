LIBRARY IEEE ;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_1164.ALL ;
USE IEEE.STD_LOGIC_unsigned.ALL;--因为使用到了从Integer类型转换到STD_LOGIC_VECTER
ENTITY shumaguan4 is 
	PORT  (
--	Din			 : in  STD_LOGIC_vector (9 DOWNTO 0);
	segcs  		 : out STD_LOGIC_vector (3 DOWNTO 0);		--四个数码管的片选信号，如果为0就打开
	seg 			 : out STD_LOGIC_vector (7 DOWNTO 0);		--具体某个数码管要显示的数字
	key	 		 : in STD_LOGIC;									--按键
	clk250hz	 	 : in STD_LOGIC);							 		--250hz,用于提供数码管刷新频率

END;

ARCHITECTURE	FH1	OF		shumaguan4 	IS
	SIGNAL Q :    INTEGER RANGE 0 TO 1024;	
	SIGNAL num :  INTEGER RANGE 0 TO 9;
	SIGNAL flag:  INTEGER RANGE 0 TO 3;
	SIGNAL segcs_SIFNAL  :  STD_LOGIC_vector (3 DOWNTO 0);	
	BEGIN
	-------------------------------------------按键计数
--	CNT:	PROCESS(key)
--		BEGIN
--						  Q<=1234;
--		END PROCESS	CNT;
--		
		-------------------------------------------数码管刷新率，相当于分频器，使4个片选信号切换
	FF:	PROCESS(clk250hz)
		BEGIN
					IF clk250hz'EVENT AND clk250hz = '1' THEN	
						 IF flag<4 THEN  flag<=flag+1;
						 ELSE flag<=0;
						 END IF;
						 
						 IF		(flag= 0)		THEN	segcs_SIFNAL <= "1110";
						 ELSIF 	(flag= 1)		THEN	segcs_SIFNAL <= "1101";
						 ELSIF	(flag= 2)		THEN	segcs_SIFNAL <= "1011";
						 ELSE 								segcs_SIFNAL <= "0111";
						 END IF;
						 
					END IF;
					
		END PROCESS	FF;
		--CONV_STD_LOGIC_VECTOR;
		Q <= 0123;
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