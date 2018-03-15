%table 1a: summary statistics for the BM ratio
mean (booktomarket,2);
X = ans;
mean = mean(X);
std = std(X);
skewness = skewness(X);
kurtosis = kurtosis(X);
min = min(X);
percentiles = quantile(X,[0.05 0.25 0.50 0.75 0.95]);
median = median(X);
max = max(X);
n = size(X);
%end

%table 1b: summary statistics for the ln BM ratio
Y = log(X);
Z = real(Y);
meanln = mean(Z);
stdln = std(Z);
skewnessln = skewness(Z);
kurtosisln = kurtosis(Z);
minln = min(Z);
percentilesln = quantile(Z,[0.05 0.25 0.50 0.75 0.95]);
medianln = median(Z);
maxln = max(Z);
nln = size(Z);
%end
%unfortunately it did not worked. I was notified that "Subscript indices must either be real positive integers or logicals".

%table 2: correlations, Pearson product–moment and Spearman rank correlations
pearson = corr(X,Z);
spearman = corr(X,Z,'type', 'Spearman');

%table 3: BM decile breakpoints
sort = sort(X);
deciles = quantile(X,[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);

%lnBM decile breakpoints
sort = sort(Z);
decilesln = quantile(Z,[0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);

