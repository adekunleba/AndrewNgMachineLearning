function plotSin(f1)
%Takes in an argument f1 and plot from it
x = linspace(0,2*pi,f1*16+1);
figure
if nargin ==1
	plot(x, sin(f1*x), '--s')
else if nargin ==2
	disp('Two arguments were given')
	end
end