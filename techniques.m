classdef techniques
   methods
       function root = bisection(obj, xl, xu, es, imax, equ)
           syms x
           %convert symbolic eqn to matlab function because it's faster in
           %substitutions
           equFH = matlabFunction(equ);
           fxl = equFH(xl); %substitution
           fxu = equFH(xu);
           if (fxl * fxu > 0 ) %if guesses do not bracket, terminate
               root = -1;
               return
           end
           arr = [];
           xo = xl; %xold
           for i =1:1:imax
               xr= (xu+xl)/2; % compute the midpoint xr
               ea = abs((xr-xo)/xo); % relative approximate error
               test = equFH(xl)*equFH(xr); % compute f(xl)* f(xr)
               arr = [arr ; i-1 xr ea];
               if(test < 0)
                   xu=xr;
               else
                   xl= xr;
               end
               if (test == 0)
                   ea=0;
               end
               if(ea < es )
                   break ;
               end
               xo = xr;
           end
           root = arr;
       end
       function root = false_position(obj,xl, xu, es, maxit,equ)
           syms x
           equFH = matlabFunction(equ);
           gFH = matlabFunction(equ);
           fxl = gFH(xl);
           fxu = gFH(xu);
           if (fxl * fxu > 0 ) % if guesses do not bracket, exit
               root = -1;
               return
           end
           arr = [];
           xo = xl;
           %gFH = matlabFunction(equ);
           for i =1:1:maxit
               fxl = equFH(xl);
               fxu = equFH(xu);
               xr = (xl*fxu - xu*fxl)/(fxu-fxl); % compute the midpoint xr
               fxr = gFH(xr);
               ea = abs((xr-xo)/xo); % relative approxate error
               test= fxl*fxr; % compute f(xl)* xr
               arr = [arr ; i-1 xr ea];
               if(test < 0)
                   xu=xr;
               else
                   xl= xr;
               end
               if (test == 0)
                   ea=0;
               end
               if(ea < es )
                   break ;
               end
               xo = xr;
           end
           root = arr;
       end
       function root = newton(obj,xi, es, maxit,equ)
           syms x
           equFH = matlabFunction(equ);
           df = diff(equ,x);
           dfFH = matlabFunction(df);
           arr = [];
           xo = xi;
           for i =1:1:maxit
               f = equFH(xo);
               fdash = dfFH(xo);
               xr = xo - (f/fdash);
               ea = abs((xr-xo)/xo); % relative approximaate error
               arr = [arr ; i xr ea];
               if(ea < es )
                   break ;
               end
               xo = xr;
           end
           root = arr;
       end
       function root = fixed_point(obj,xi, es, maxit,equ)
           syms x
           equFH = matlabFunction(equ);
           df = diff(equ,x);
           dfFH = matlabFunction(df);
           fdash = dfFH(xi);
           if (abs(fdash) > 1) %diverges
               root = -1;
               return
           end
           
           arr = [];
           xo = xi;
           for i =1:1:maxit
               xr = equFH(xo);
               ea = abs((xr-xo)/xo); % relative approxate error
               arr = [arr ; i xr ea];
               if(ea < es )
                   break ;
               end
               xo = xr;
           end
           root = arr;
       end
       function root = secant(obj,xj,xi, es, maxit,equ)
           syms x
           equFH = matlabFunction(equ); %makes syms subs faster (matlab function)
           arr = [];
           for i =1:1:maxit
               fxi = equFH(xi);
               fxj = equFH(xj);
               xr = xi - fxi*(xj-xi)/(fxj-fxi);
               ea = abs((xr-xi)/xi); % relative approxate error
               arr = [arr ; i xr ea];
               if(ea < es )
                   break ;
               end
               xj = xi;
               xi = xr;
           end
           root = arr;
       end

   end
end