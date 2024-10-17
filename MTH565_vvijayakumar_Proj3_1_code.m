%Vikram Vijayakumar (02068559)
%MTH 565 Project 3_1

v = 100;  %Number of vertices
p = 0.1;  %edge probability

for i = 1:3
    A = rand(v) < p;  %Generate random adjacency matrix
    A = triu(A, 1);   %Ensures that the matrix is symmetric by rating the upper traingular part
    A = A + A';       %Symmetric adjacency matrix
    
    G = graph(A);     %Creating a graph from the adjacency matrix
    figure;
    plot(G, 'Layout', 'force');
    title(['Random Graph ', num2str(i), ' with n=', num2str(v), ' and p=', num2str(p)]);

    degrees = degree(G);
    figure;
    histogram(degrees, 'BinWidth', 1, 'BinLimits', [0.5, max(degrees)], 'Normalization', 'probability');
    xlabel('Vertex Degree');
    ylabel('Probability');
    title(['Histogram for Random Graph ', num2str(i), ' with n=', num2str(v), ' and p=', num2str(p)]);

end
