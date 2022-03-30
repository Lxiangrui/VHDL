LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.ALL ;
ENTITY juzhen IS 
	PORT  (
	kin	 : in STD_LOGIC_vector (3 DOWNTO 0);
	kout	 : buffer	STD_LOGIC_vector (3 DOWNTO 0);
	led	 :	out STD_LOGIC_vector (7 DOWNTO 0);
	clk   :in std_logic;
	
	segcs  : out STD_LOGIC_vector (3 DOWNTO 0);
	seg 	 : out STD_LOGIC_vector (7 DOWNTO 0));
	
END;

ARCHITECTURE	FH1	OF	juzhen IS
	SIGNAL cnt_200Hz:  INTEGER RANGE 0 TO 249999;
	SIGNAL num :  INTEGER RANGE 0 TO 9;
	SIGNAL segcs_SIFNAL :STD_LOGIC_vector (3 DOWNTO 0);--最后给segcs
	
BEGIN
	

	
	PROCESS(clk)
		BEGIN	
					IF clk'EVENT AND clk = '1' THEN
						 segcs<= "0111";
					END IF;
		END PROCESS;
		
			
LED_UI:	process(clk)
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
								--led <= x"04";
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
							END IF;
						 END IF;
END PROCESS LED_UI;	
				

				 
						 
END;
