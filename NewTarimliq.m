function [ TarimliqValue ] = NewTarimliq( GraphDependency , ClusterIndexIn,ClusterIndexOut,Cluster_label)

[~ ,ArtifactNumber]=size(Cluster_label);
[~ ,ClusterNumber]=size(ClusterIndexIn);
Sin=SimilaritIn( GraphDependency,ClusterIndexIn );
Sout=SimilaritOut( GraphDependency,ClusterIndexIn,ClusterIndexOut);
TarimliqValue=Sin/(Sin+Sout)+(ClusterNumber-1)/ArtifactNumber;
if isnan(TarimliqValue)
    TarimliqValue=0;

end

