function lift = my_pid(h_desired, h_curr, h_last, dt)
	persistent in;
	if isempty(in)
		in = 0;
	end
	in = in + (h_desired - h_curr) * dt;
	Kp = 10;	
	Kd = 5000;
	Ki = 5;
	K = 0.5;
	lift = ((h_desired - h_curr) * Kp - (h_curr - h_last) * dt * Kd + Ki * in) *(1 + rand(1) * 0.3 ) ; 
    a = in;
    %+ m * g * (1 - 0.5 * rand(1)) + 
end
