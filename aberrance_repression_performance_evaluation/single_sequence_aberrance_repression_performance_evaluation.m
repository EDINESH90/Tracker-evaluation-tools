% This is a script to evaluate the aberrance repression performances.
% 
% ***
% Prerequisite is to have response maps stored in result as in the name of
% 'map_diff'
% ***

clear
% Configuration

% path configuration
name_comparision = 'example_compared_tracker';
path_comparasion_result = '.\example\comparison\result\path\';
name_ours = 'example_our_tracker';
path_ours_result = '.\example\ours\result\path\';

% sequence configuration
name_sequence = 'example_sequence_name';

% drawing configuration
range_of_the_frame = [1 140];
position_of_window = [200, 200];    % [position_x, position_y]
size_of_window = [600, 250];        % [size_x, size_y]
line_width = 1.2;
%% Running

% display of name sequence
index_name_sequence_display = 1;
for ii = 1:length(name_sequence)
    if name_sequence(ii) == '_'
        name_sequence_display(index_name_sequence_display) = '\';
        index_name_sequence_display = index_name_sequence_display + 1;
    end
    name_sequence_display(index_name_sequence_display) = name_sequence(ii);
    index_name_sequence_display = index_name_sequence_display + 1;
end

% length of the configuration
length_of_configuration = range_of_the_frame(2) - range_of_the_frame(1) + 1;

% loading the path
load([path_comparasion_result, name_sequence, '_', name_comparison ,'.mat']);
results_BACF = results;
load([path_ours_result, name_sequence, '_',name_ours, '.mat']);
results_ARCF = results;

[temp,length] = size(results_BACF{1}.map_diff);

if length == length_of_configuration
    x = 1:length;
else
    x = range_of_the_frame(1):range_of_the_frame(2);
end
figure;
set(gcf, 'position', [position_of_window(1) position_of_window(2)...
                        size_of_window(1) size_of_window(2)]);        
                    % [position_x, position_y, size_x, size_y]
set(gca, 'Fontname', 'Times New Roman');
plot(x,results_BACF{1}.map_diff(x), 'LineWidth',line_width);
hold on
plot(x,results_ARCF{1}.map_diff(x), 'LineWidth',line_width);
legend(name_comparision, ['{\bf', name_ours, '}']);
xlabel('Frame Number', 'Fontname', 'Times New Roman');
ylabel('Response map differences', 'Fontname', 'Times New Roman');
title(['Aberrance repression evaluation on {\it', name_sequence_display, '}'], 'Fontname', 'Times New Roman');