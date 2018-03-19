	%--------------利用割线发迭代alpha value-------------------
	function alpha=linesearch_secant(x,d)
		%Line search using secant method
		epsilon=10^(-4); %line search tolerance
		max = 100; %maximum number of iterations
		alpha_curr=0;
		alpha=0.001;
		dphi_zero=grad(x)'*d;
		dphi_curr=dphi_zero;
		i=0;
		while abs(dphi_curr)>epsilon*abs(dphi_zero),
			alpha_old=alpha_curr;
			alpha_curr=alpha;
			dphi_old=dphi_curr;
			dphi_curr=grad(x+alpha_curr.*d')'*d;
			alpha=(dphi_curr*alpha_old-dphi_old*alpha_curr)/(dphi_curr-dphi_old);
			i=i+1;
			if (i >= max)&&(abs(dphi_curr)>epsilon*abs(dphi_zero)),
				disp('Line search terminating with number of iterations:');
				disp(i);
				break;
			end
		end %while
	end
