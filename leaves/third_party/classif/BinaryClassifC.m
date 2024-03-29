function yhat = BinaryClassifC(X,model)
 yhat = zeros(size(X,2),1);
 for d=1:size(X,1)
   yhat = X(d,:)*log(model.p(d)/model.q(d))+...
	      (1-X(d,:)*log((1-model.p(d))/(1-model.q(d))));
 end;
%end function
