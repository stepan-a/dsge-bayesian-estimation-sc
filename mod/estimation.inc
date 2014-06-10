varobs Output;

estimated_params;
  stderr EfficiencyInnovation, uniform_pdf, , , 0, 1;
  rho, beta_pdf, .9, .05;
  alpha, beta_pdf, .4, .1;
  psi, beta_pdf, -.5, .05, -1, .5;
end;

estimation(datafile='rbcdataset', first_obs=1001, nobs=200, mode_check);


