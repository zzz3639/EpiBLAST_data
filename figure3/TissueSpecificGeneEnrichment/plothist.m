ESC=importdata('ESCenrichtsgene');
Brain=importdata('Brainenrichtsgene');
Heart=importdata('Heartenrichtsgene');

bar([ESC;Heart;Brain]);
set(gca,'XTick',1:16);
set(gca,'XTickLabel',{'ESC','ESC','ESC','ESC','ESC','Heart','Heart','Heart','Heart','Brain','Brain','Brain','Brain','Brain','Brain','Brain'});
legend('EpiBLAST naive','EpiBLAST unpredictability','Naive Comparison');
title('Tissue Specific Gene Enrichment Comparison of Top500 segments');