%%
d=CalculateDistance( 1000,-55,1);
p=OkumuraHata(1000,30,1.5,d,1);


LatA=33.552830;
LonA=36.309719;
DistA=CalculateDistance( 900,-51,1 );
LatB=33.552830;
LonB=36.317764;
DistB=CalculateDistance( 900,-65,1 );
LatC=33.552830;
LonC=36.310413;
DistC=CalculateDistance( 900,-61,1 );


[lat, lon] = trilateration( LatA, LonA, DistA, LatB, LonB, DistB, LatC, LonC, DistC );

%%

LatA=33.5090160;
LonA=36.2869800;
DistA=CalculateDistance( 942.2,-85,1 );
LatB=33.5091170;
LonB=36.2867990;
DistB=CalculateDistance( 1958.2,-91,1 );
LatC=33.5075840;
LonC=36.2868050;
DistC=CalculateDistance( 944,-91,1 );


[lat, lon] = trilateration( LatA, LonA, DistA, LatB, LonB, DistB, LatC, LonC, DistC );

%%

% browser lounch
% dos('explorer http://www.yahoo.com'); 