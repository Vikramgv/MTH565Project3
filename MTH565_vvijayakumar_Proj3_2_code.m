%Vikram Vijayakumar (02068559)
%MTH 565 Project 3_2


v = [300, 500, 1000];  %Number of vertices
e = 10;  %Assume it as expected degree of a vertex

for i = v
    p = e/(i-1);
    A = rand(i) < p;  %Generate random adjacency matrix
    A = triu(A, 1);   %Ensures that the matrix is symmetric by rating the upper traingular part
    A = A + A';       %Symmetric adjacency matrix
    
    G = graph(A);     %Creating a graph from the adjacency matrix
    figure;
    plot(G, 'Layout', 'force');
    title(['Random Graph with n=', num2str(i), ' and p=', num2str(p)]);

    degrees = degree(G);
    figure;
    histogram(degrees, 'BinWidth', 1, 'BinLimits', [0.5, max(degrees)], 'Normalization', 'probability');
    xlabel('Vertex Degree');
    ylabel('Probability');
    title(['Histogram for Random Graph with n=', num2str(i), ' and p=', num2str(p)]);

end