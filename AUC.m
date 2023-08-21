clc
TPR1=[0.1011;0;0.3378;0.6742;0.1824;0.1742;0.3708;0.4270;0;0;0;0.0169];
FPR1=[0;0.1517;0;0.1685;0.1419;0.0112;0.1854;0;0;0;0;0.0899];
labels = [true(numel(TPR1),1);false(numel(FPR1),1)]; scores = [TPR1;FPR1]; 
[X,Y,Th,AUC1] = perfcurve(labels,scores,true);
plot(X,Y,'LineWidth',1)
xlabel("FPR")
ylabel("TPR")
