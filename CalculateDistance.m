function D = CalculateDistance( fc,pr,flag )
%MODEL OKUMURA-HATA 
%areas urbanas, suburbanas y abiertas.

%fc-> frecuencia en (MHZ) de 150-1500 MHZ
%hb-> effective altitude of the transmission  antenna  30-200 m
hb=30;
%hm-> effective altitude of the reciever  antenna (m) de 1-10 m
hm=1.5;
%D-> distance between Tx y Rx en (Km) de 1-100 Km
%flag-> type  1. urban, 2. suburban, 3. opened
%pr-> recived power in dBm from base statoin
pt=33.01;
%factor de correccion altura de antena efectiva movil

% Lp : pathLoss.
Lp=pt-pr;



% urban (media) (dB)
logD_urban=(Lp-69.55-26.16*log10(fc)+13.82*log10(hb)+a(hm,fc))/(44.9-6.55*log10(hb));

% suburban(media) (dB)
logD_suburban=(Lp-69.55-26.16*log10(fc)+13.82*log10(hb)+a(hm,fc)+(2*(log10(fc/28))^2+5.4))/(44.9-6.55*log10(hb));

%opended (media) (dB)
logD_opended=(Lp-69.55-26.16*log10(fc)+13.82*log10(hb)+a(hm,fc)+(4.78*(log10(fc))^2+18.33*log10(fc)+40.98))/(44.9-6.55*log10(hb));

 switch flag
    case 1
        D=10^logD_urban;
    case 2
        D=10^logD_suburban;
    case 3
        D=10^logD_opended;
     otherwise
        disp('error')
 end
    
end

function Factor= a(hm,fc)


Factor=(1.1*log10(fc)-0.7)*hm-(1.56*log10(fc)-0.8);
end

