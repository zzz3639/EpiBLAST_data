function [ leaforder, scoreout ] = motifcalling( EpiBLASTscores )
% Usage: [leaforder] = motifcalling( EpiBLASTscores )

N=size(EpiBLASTscores,1);
scoretemp=EpiBLASTscores-diag(diag(EpiBLASTscores));

normdiv = max(max(scoretemp));
scoretemp=scoretemp/normdiv/1.1;

dist = (1-scoretemp);
dist = dist - diag(diag(dist));

Y=squareform(dist);
Z=linkage(Y,'average');
leaforder = optimalleaforder(Z,Y);

scoreout=scoretemp;
imshow(scoreout(leaforder,leaforder));

end

