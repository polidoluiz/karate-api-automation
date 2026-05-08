function fn() {

  var env = karate.env || 'dev';
  var baseUrl;

  if (env === 'dev') {
    baseUrl = 'http://serverest:3000';

  } else if (env === 'prd') {
    baseUrl = 'https://serverest.dev';
  }

  var config = {
    baseUrl: baseUrl
  };

  karate.configure('connectTimeout', 5000);
  karate.configure('readTimeout', 5000);

  return config;
}