close all;
clear;
clc;

	
	
	

figure;

% Data for CIAN
FPPI=0.0697561;
MR=0.14064;
plot(FPPI,MR,'+b ','MarkerSize',5)


set(gca,'YColor',[0.5 0.5 0.5],'ytick',[0.05 0.1 0.15 0.2 0.25 0.3])
set(gca,'XColor',[0.5 0.5 0.5],'xtick',[0 0.05 0.1 0.15 0.2 0.25 0.3])
title('Performance');
xlabel('Latency(s)','Color',[0 0 0]);
ylabel('log-average miss rate','Color',[0 0 0]);
axis([0,0.3,0.05,0.3])
grid on;
hold on;

% Data for MSDS RCNN
FPPI=0.209756;
MR=0.112204;
plot(FPPI,MR,'.b ','MarkerSize',15)

% Data for AR-CNN
FPPI=0.124878;
MR=0.0932464;
plot(FPPI,MR,'b^','MarkerSize',5)

% Data for MBNet
FPPI=0.0702439;
MR=0.0796209;
plot(FPPI,MR,'bs ','MarkerSize',5)
	

% Data for MLPD(ours)
FPPI=0.0121951;
MR=	0.0754739;
plot(FPPI,MR,'*r','MarkerSize',7)

legend('0.05% CIAN(1080 Ti)','0.22% MSDS RCNN(TITAN X)','0.15% AR-CNN(1080 Ti)','0.06% MBNet(1080 Ti)',...
        '0.022% MLPD(RTX 3060)',...
        'Location','NorthEast')