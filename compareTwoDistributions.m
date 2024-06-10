function compareTwoDistributions(first_dist, second_dist)
    % Create a figure
    fig = figure;
    
    % Plot the first set of bars
    h1 = bar(first_dist(:,1), first_dist(:,2), 'b', 'DisplayName', inputname(1)); % 'b' for blue bars
    hold on; % Retain the current plot when adding new plots
    
    % Plot the second set of bars
    h2 = bar(second_dist(:,1), second_dist(:,2), 'r', 'DisplayName', inputname(2)); % 'r' for red bars
    
    % Add labels and title (customize as needed)
    xlabel('dB'); % Label for the x-axis
    ylabel('Probability'); % Label for the y-axis
    title('Comparison of Two Distributions'); % Combined title for the plot
    
    % Add a legend to distinguish the two bar sets
    legend show;
    
    % Create UI controls for toggling visibility
    uicontrol('Style', 'checkbox', 'String', 'First Distribution', ...
        'Value', 1, 'Position', [20, 20, 150, 20], ...
        'Callback', @(src, event) toggleVisibility(src, h1));
    
    uicontrol('Style', 'checkbox', 'String', 'Second Distribution', ...
        'Value', 1, 'Position', [20, 50, 150, 20], ...
        'Callback', @(src, event) toggleVisibility(src, h2));
    
    hold off;

    function toggleVisibility(src, h)
        if src.Value
            h.Visible = 'on';
        else
            h.Visible = 'off';
        end
    end
end