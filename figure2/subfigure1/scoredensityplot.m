function [Nt,Xt,Nr,Xr] = scoredensityplot( scores, range )
%SCOREDENSITYPLOT Summary of this function goes here
%  [Nt,Xt,Nr,Xr] = scoredensityplot( scores, range )
[Nt,Xt] = hist(scores(:,2), [range(1):range(2):range(3)]);
[Nr,Xr] = hist(scores(:,1), [range(1):range(2):range(3)]);
Nt = 1/range(2)*Nt/size(scores,1);
Nr = 1/range(2)*Nr/size(scores,1);

plot(Xt(2:end-1),Nt(2:end-1),Xr(2:end-1),Nr(2:end-1));
xlabel('Alignment score');
ylabel('Distribution density');
legend('True epigenome','Randomized epigenome');

Xt = Xt(2:end-1);
Nt = Nt(2:end-1);
Xr = Xr(2:end-1);
Nr = Nr(2:end-1);

end

