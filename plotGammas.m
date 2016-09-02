clear all
close all
clc

cd('C:/Users/bllguo/Dropbox/penn_spring_15-16/STAT476/PROJECT1')
params = csvread('params.csv');
figure
hold on
[m,n]=size(params);
set(gca, 'LineStyleOrder', {'-', '--', '*', '+', 'x', '>', '<', 's', 'd', '^', 'v', 'p', 'h'});
for i=1:m
    set(gca,'LineStyleOrderIndex',i)
    x = gaminv((0.005:0.01:0.995),params(i,1),params(i,2));
    y = gampdf(x,params(i,1),params(i,2));
    plot(x,y, 'MarkerSize', 5)
end
axis([0,4,0,2])
legend('January','February','March','April','May','June', ...
'July','August','September','October','November','December')
xlabel('\lambda')
ylabel('g(\lambda)')