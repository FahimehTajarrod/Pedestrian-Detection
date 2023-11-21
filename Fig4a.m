close all;
clear;
clc;


load('ResultNew4a.mat');
Data  = ResultNew.data;


figure;

% Data for CIAN
FPPI=Data(:,9);
MR=Data(:,10);
loglog(FPPI,MR,'-b','LineWidth',2)


set(gca,'YColor',[0.5 0.5 0.5],'ytick',[0.01 0.05 0.1 0.2 0.3 0.4 0.5 0.64 0.80 1]);
set(gca,'XColor',[0.5 0.5 0.5],'xtick',[10^(-3) 10^(-2) 10^(-1) 10^(0) 10^(1)])
title('Performance');
xlabel('False Positives Per Image(FPPI)','Color',[0 0 0]);
ylabel('miss rate','Color',[0 0 0]);
grid on;
hold on;

% Data for MSDS-RCNN
FPPI=Data(:,7);
MR=Data(:,8);
loglog(FPPI,MR,'-m','LineWidth',2)

% Data for AR-CNN
FPPI=Data(:,5);
MR=Data(:,6);
loglog(FPPI,MR,'-c','LineWidth',2)

% Data for MBNet
FPPI=Data(:,3);
MR=Data(:,4);
loglog(FPPI,MR,'-g','LineWidth',2)

% Data for MLPD(ours)
FPPI=Data(:,1);
MR=Data(:,2);
loglog(FPPI,MR,'-y ','LineWidth',2)

FPPI=0.019751;
MR=0.0303492;
plot(FPPI,MR,'.k ','MarkerSize',15)

legend('14.02% CIAN','11.65% MSDS-RCNN','9.30% AR-CNN','7.13% MBNet',...
        '7.55% MLPD(ours)','3.19% HUMAN(Li et al 2018)',...
        'Location','NorthEast')