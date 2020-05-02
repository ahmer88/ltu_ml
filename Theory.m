%Date:2020-05-01
%Author: Muhammad Ahmer
%Course: Advanced Deep Learning (D7047E)
%@Luleå University of Technology
%Calculting theory part for the exercise 2
%Written in MATLAB R2019a in Windows 10 (SKF)
%%
%Vectors
g = [0 1 0];
y = [0.25 0.6 0.15];

%% 
% Cross-Entropy Loss (Logistic Loss)
H = 0;  %Loss
for i = 1:length(y)
    H = H + g(i)*y(i);
end
H = -H;
%Solution: H = -0.6

%%
% Mean Squared Error-Loss
MSE = 0;    %Loss
for i = 1:length(y)
    MSE = MSE + (y(i) - g(i))^2;
end
MSE = MSE / i;
%Solution: MSE = 0.0817

%%
% Hinge Loss (or SVM Loss)
SVM = 0;    %Loss
j = 2;      %index of correct lable
for i = 1:length(y)
    if i ~= j
        SVM = SVM + max(0,y(i)-y(j)+1);
    end
end
%Solution: SVM = 1.2
