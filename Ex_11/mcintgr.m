% vom Aufgabeblatt kopiert
% "usage" wurde durch "print_usage" ersetzt

function I = mcintgr(fun, a, b, mcloops)
  # Check input args 
  if ( nargin != 4 | nargout> 1 ) 
    usage("mcintgr is called with 4 inputs and 1 output"); 
  endif 
  
  # Check if user supplied function exists
  if !exist(fun) 
    usage("mcintgr: Sure about the function name?");
  elseif ( length(feval(fun,a)) != 1 ) 
    usage("Function passed to mcintgr must be a scalar function");
  endif
  
  # Find maximum value of f
  x = linspace(a,b); 
  y = feval(fun,x);
  
  # Check if f is positive
  if ( min(y) < 0 ) 
    usage("mcintgr: the function must be positive in the interval");
  endif 
  
  # Set max of m 
  maxy = max(y); 
  
  # Calculate the interval 
  l = b - a; 

  # Initialize the counters 
  counter = 0; 
  nloops = 0; 

  # Main mc loop
  while ( nloops<= mcloops )
    r1 = a + l*rand; 
    r2 = maxy*rand; 
  
    fr1 = feval(fun,r1);
    if ( r2<fr1 ) 
      counter++; 
    endif 
  
    nloops++; 
  endwhile 

  # The integral
  I = counter/mcloops*maxy*l;
endfunction