hold on
number_of_walks = 100;
number_of_steps = 100;
walk = zeros(number_of_walks,number_of_steps);
for j = 1:number_of_walks
    for i = 1:number_of_steps
        x = rand();            % probability half
        if x >= 0.5
            x = 1;
        else
            x = -1;
        end
        if i>1
            walk(j,i) = walk(j,i-1) + x;
        end
    end
    plot(walk(j,:),LineWidth=2);
end

ms = mean(rand_walk);
mo = mean(ms);
fprintf('The mean accross all walks is: %i \n', mo);
fprintf('Therefore not a stationary process as no specific pattern or repetition');
n = 1;
covar = zeros(1,number_of_steps);
k = 5;
for i = 1:number_of_steps
    covar = walk(:,mod(i-k,number_of_steps) + 1) .* walk(:,i);
end









