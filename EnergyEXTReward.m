function R = EnergyEXTReward(cur_E, min_E, hop_C, max_E)
  p=0.5; % Energy's Probabilistic parameter 
  q1=1-p; % Hop count probabilistic parameter

  R = (p*(cur_E - min_E)/(max_E-min_E)+(q1/hop_C)); %Original Function
  %R = (p*(cur_E + min_E)^2/(max_E - min_E) +(q1/(hop_C + q1)));
  %R = (p*(cur_E - min_E)/(max_E-min_E)+(hop_C/q1)^2);
  %R = (((p*(cur_E - max_E)) / min_E) + (hop_C*q1));
  %R = ((p*(cur_E - min_E)/(max_E-min_E))^2+(q1 *((hop_C/100 * abs(log(1/hop_C^2))))))
end