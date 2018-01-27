ESC=importdata('ESCenrichgene');
Brain=importdata('Brainenrichgene');
Heart=importdata('Heartenrichgene');

bar([ESC;Heart;Brain]);
set(gca,'XTick',1:16);
set(gca,'XTickLabel',{'ESC','ESC','ESC','ESC','ESC','Heart','Heart','Heart','Heart','Brain','Brain','Brain','Brain','Brain','Brain','Brain'});
legend('EpiBLAST naive','EpiBLAST unpredictability','Naive Comparison');
set(gca,'YLim',[0 5000]);
title('Gene Enrichment Comparison of Top500 segments');