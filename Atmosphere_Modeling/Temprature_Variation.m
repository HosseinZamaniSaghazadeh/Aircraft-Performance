%% Atmosphere Modeling and Temperature Differential Variation
%% Variables
P_SI=1.01325*10^5;%pressure in SI 
RO_SI=1.225;%density in SI
T_SI=288.16;%temperature in SI
g_SI=9.81;%garvity const in SI
R_SI=287;
a1=-6.5*10^(-3);%slope in Troposphere
a2=3*10^(-3);%slope in Stratosphere
a3=-4.5*10^(-3);%slope in Mesosphere
a4=4*10^(-3);%slope in Thermosphere
y=1.4;
%% Functions In SI Units
h=input('PLEASE Enter The Altitude');
    T_SIplus=T_SI+20;
    T_SIminus=T_SI-20;
    P_SIplus=P_SI*(T_SIplus/T_SI)^(-g_SI/(R_SI*a1));
    P_SIminus=P_SI*(T_SIminus/T_SI)^(-g_SI/(R_SI*a1));
    RO_SIplus=RO_SI*(T_SIplus/T_SI)^(-g_SI/(a1*R_SI)-1);
    RO_SIminus=RO_SI*(T_SIminus/T_SI)^(-g_SI/(a1*R_SI)-1);
    T2=T_SI+a1*(11000-0);
    T2plus=T_SIplus+a1*(11000-0);
    T2minus=T_SIminus+a1*(11000-0);
    P2=P_SI*(T2/T_SI)^(-g_SI/(R_SI*a1));
    P2plus=P_SIplus*(T2plus/T_SIplus)^(-g_SI/(R_SI*a1));
    P2minus=P_SIminus*(T2minus/T_SIminus)^(-g_SI/(R_SI*a1));
    RO2=RO_SI*(T2/T_SI)^(-g_SI/(a1*R_SI)-1);
    RO2plus=RO_SIplus*(T2plus/T_SIplus)^(-g_SI/(a1*R_SI)-1);
    RO2minus=RO_SIminus*(T2minus/T_SIminus)^(-g_SI/(a1*R_SI)-1);
    T3=T2;
    T3plus=T2plus;
    T3minus=T2minus;
    T5=T3;
    T5plus=T3plus;
    T5minus=T3minus;
    P5=P2*exp(((-g_SI)/(R_SI*T3))*(25000-11000));
    P5plus=P2plus*exp(((-g_SI)/(R_SI*T3plus))*(25000-11000));
    P5minus=P2minus*exp(((-g_SI)/(R_SI*T3minus))*(25000-11000));
    RO5=RO2*exp(((-g_SI)/(R_SI*T3))*(25000-11000));
    RO5plus=RO2plus*exp(((-g_SI)/(R_SI*T3plus))*(25000-11000));
    RO5minus=RO2minus*exp(((-g_SI)/(R_SI*T3minus))*(25000-11000));
    T8=T5+a2*(47000-25000);
    T8plus=T5plus+a2*(47000-25000);
    T8minus=T5minus+a2*(47000-25000);
    P8=P5*(T8/T5).^(-g_SI/(R_SI*a2));
    P8plus=P5plus*(T8plus/T5plus).^(-g_SI/(R_SI*a2));
    P8minus=P5minus*(T8minus/T5minus).^(-g_SI/(R_SI*a2));
    T9=T8;
    T9plus=T8plus;
    T9minus=T8minus;
    RO8=RO5*(T8/T5).^(-g_SI/(a2*R_SI)-1);
    RO8plus=RO5plus*(T8plus/T5plus).^(-g_SI/(a2*R_SI)-1);
    RO8minus=RO5minus*(T8minus/T5minus).^(-g_SI/(a2*R_SI)-1);
    T11=T9;
    T11plus=T9plus;
    T11minus=T9minus;
    P11=P8*exp(((-g_SI)/(R_SI*T11))*(53000-47000));
    P11plus=P8plus*exp(((-g_SI)/(R_SI*T11plus))*(53000-47000));
    P11minus=P8minus*exp(((-g_SI)/(R_SI*T11minus))*(53000-47000));
    RO11=RO8*exp(((-g_SI)/(R_SI*T11))*(53000-47000));
    RO11plus=RO8plus*exp(((-g_SI)/(R_SI*T11plus))*(53000-47000));
    RO11minus=RO8minus*exp(((-g_SI)/(R_SI*T11minus))*(53000-47000));
    T14=T11+a3*(79000-53000);
    T14plus=T11plus+a3*(79000-53000);
    T14minus=T11minus+a3*(79000-53000);
    T15=T14;
    T15plus=T14plus;
    T15minus=T14minus;
    P14=P11*(T14/T11).^(-g_SI/(R_SI*a3));
    P14plus=P11plus*(T14plus/T11plus).^(-g_SI/(R_SI*a3));
    P14minus=P11minus*(T14minus/T11minus).^(-g_SI/(R_SI*a3));
    RO14=RO11*(T14/T11).^(-g_SI/(a3*R_SI)-1);
    RO14plus=RO11plus*(T14plus/T11plus).^(-g_SI/(a3*R_SI)-1);
    RO14minus=RO11minus*(T14minus/T11minus).^(-g_SI/(a3*R_SI)-1);
    T17=T15;
    T17plus=T15plus;
    T17minus=T15minus;
    P17=P14*exp(((-g_SI)/(R_SI*T15))*(96000-79000));
    P17plus=P14plus*exp(((-g_SI)/(R_SI*T15plus))*(96000-79000));
    P17minus=P14minus*exp(((-g_SI)/(R_SI*T15minus))*(96000-79000));
    RO17=RO14*exp(((-g_SI)/(R_SI*T15))*(96000-79000));
    RO17plus=RO14plus*exp(((-g_SI)/(R_SI*T15plus))*(96000-79000));
    RO17minus=RO14minus*exp(((-g_SI)/(R_SI*T15minus))*(96000-79000));
     if h>=0 && h<=11000
        T=T_SI+a1*(h-0);
        P=P_SI*(T/T_SI)^(-g_SI/(R_SI*a1));
        RO=RO_SI*(T/T_SI)^(-g_SI/(a1*R_SI)-1);
        A=sqrt(y*R_SI*T);
        Tplus=T_SIplus+a1*(h-0);
        Tminus=T_SIminus+a1*(h-0);
        Pplus=P_SIplus*(Tplus/T_SIplus)^(-g_SI/(R_SI*a1));
        Pminus=P_SIminus*(Tminus/T_SIplus)^(-g_SI/(R_SI*a1));
        ROplus=RO_SIplus*(Tplus/T_SIplus)^(-g_SI/(a1*R_SI)-1);
        ROminus=RO_SIminus*(Tminus/T_SIminus)^(-g_SI/(a1*R_SI)-1);
        Aplus=sqrt(y*R_SI*Tplus);
        Aminus=sqrt(y*R_SI*Tminus);
        display(T)
        display(Tplus)
        display(Tminus)
        display(P)
        display(Pplus)
        display(Pminus)
        display(ROplus)
        display(ROminus)
        display(A)
        display(Aplus)
        display(Aminus)
        
    end
    if h>11000 && h<=25000 
        P3=P2*exp(((-g_SI)/(R_SI*T3))*(h-11000));
        P3plus=P2plus*exp(((-g_SI)/(R_SI*T3plus))*(h-11000));
        P3minus=P2minus*exp(((-g_SI)/(R_SI*T3minus))*(h-11000));
        RO3=RO2*exp(((-g_SI)/(R_SI*T3))*(h-11000));
        RO3plus=RO2plus*exp(((-g_SI)/(R_SI*T3plus))*(h-11000));
        RO3minus=RO2minus*exp(((-g_SI)/(R_SI*T3minus))*(h-11000));
        A3=sqrt(y*R_SI*T3);
        A3plus=sqrt(y*R_SI*T3plus);
        A3minus=sqrt(y*R_SI*T3minus);
        display(T3)
        display(T3plus)
        display(T3minus)
        display(P3)
        display(P3plus)
        display(P3minus)
        display(RO3)
        display(RO3plus)
        display(RO3minus)
        display(A3)
        display(A3plus)
        display(A3minus)
    end
    if h>25000 && h<=47000
        T6=T5+a2*(h-25000);
        T6plus=T5plus+a2*(h-25000);
        T6minus=T5minus+a2*(h-25000);
        P6=P5*(T6/T5).^(-g_SI/(R_SI*a2));
        P6plus=P5plus*(T6plus/T5plus).^(-g_SI/(R_SI*a2));
        P6minus=P5minus*(T6minus/T5minus).^(-g_SI/(R_SI*a2));
        RO6plus=RO5plus*(T6plus/T5plus).^(-g_SI/(a2*R_SI)-1);
        RO6minus=RO5*(T6minus/T5minus).^(-g_SI/(a2*R_SI)-1);
        A6=sqrt(y*R_SI*T6);
        A6plus=sqrt(y*R_SI*T6plus);
        A6minus=sqrt(y*R_SI*T6minus);
        display(T6)
        display(T6plus)
        display(T6minus)
        display(P6)
        display(P6plus)
        display(P6minus)
        display(RO6)
        display(RO6plus)
        display(RO6minus)
        display(A6)
        display(A6plus)
        display(A6minus)
    end
    if h>47000 && h<=53000
        
        P9=P8*exp(((-g_SI)/(R_SI*T9))*(h-47000));
        P9plus=P8plus*exp(((-g_SI)/(R_SI*T9plus))*(h-47000));
        P9minus=P8minus*exp(((-g_SI)/(R_SI*T9minus))*(h-47000));
        RO9=RO8*exp(((-g_SI)/(R_SI*T9))*(h-47000));
        RO9plus=RO8plus*exp(((-g_SI)/(R_SI*T9plus))*(h-47000));
        RO9minus=RO8minus*exp(((-g_SI)/(R_SI*T9minus))*(h-47000));
        A9=sqrt(y*R_SI*T9);
        A9plus=sqrt(y*R_SI*T9plus);
        A9minus=sqrt(y*R_SI*T9minus);
        display(T9)
        display(T9plus)
        display(T9minus)
        display(P9)
        display(P9plus)
        display(P9minus)
        display(RO9)
        display(RO9plus)
        display(RO9minus)
        display(A9)
        display(A9plus)
        display(A9minus)
    end
    if h>53000 && h<=79000
        T12=T11+a3*(h-53000);
        T12plus=T11plus+a3*(h-53000);
        T12minus=T11minus+a3*(h-53000);
        P12=P11*(T12/T11).^(-g_SI/(R_SI*a3));
        P12plus=P11plus*(T12plus/T11plus).^(-g_SI/(R_SI*a3));
        P12minus=P11minus*(T12minus/T11minus).^(-g_SI/(R_SI*a3));
        RO12=RO11*(T12/T11).^(-g_SI/(a3*R_SI)-1);
        RO12plus=RO11plus*(T12plus/T11plus).^(-g_SI/(a3*R_SI)-1);
        RO12minus=RO11minus*(T12minus/T11minus).^(-g_SI/(a3*R_SI)-1);
        A12=sqrt(y*R_SI*T12);
        A12plus=sqrt(y*R_SI*T12plus);
        A12minus=sqrt(y*R_SI*T12minus);
        display(T12)
        display(T12plus)
        display(T12minus)
        display(P12)
        display(P12plus)
        display(P12minus)
        display(RO12)
        display(RO12plus)
        display(RO12minus)
        display(A12)
        display(A12plus)
        display(A12minus)
    end
    if h>79000 && h<=96000
        
        P15=P14*exp(((-g_SI)/(R_SI*T15))*(h-79000));
        P15plus=P14plus*exp(((-g_SI)/(R_SI*T15plus))*(h-79000));
        P15minus=P14minus*exp(((-g_SI)/(R_SI*T15minus))*(h-79000));
        RO15=RO14*exp(((-g_SI)/(R_SI*T15))*(h-79000));
        RO15plus=RO14plus*exp(((-g_SI)/(R_SI*T15plus))*(h-79000));
        RO15minus=RO14minus*exp(((-g_SI)/(R_SI*T15minus))*(h-79000));
        A15=sqrt(y*R_SI*T15);
        A15plus=sqrt(y*R_SI*T15plus);
        A15minus=sqrt(y*R_SI*T15minus);
        display(T15)
        display(T15plus)
        display(T15minus)
        display(P15)
        display(P15plus)
        display(P15minus)
        display(RO15)
        display(RO15plus)
        display(RO15minus)
        display(A15)
        display(A15plus)
        display(A15minus)
    end
    if h>96000 && h<=100000
        T18=T17+a4*(h-96000);
        T18plus=T17plus+a4*(h-96000);
        T18minus=T17minus+a4*(h-96000);
        P18=P17*(T18/T17).^(-g_SI/(R_SI*a4));
        P18plus=P17plus*(T18plus/T17plus).^(-g_SI/(R_SI*a4));
        P18minus=P17minus*(T18minus/T17minus).^(-g_SI/(R_SI*a4));
        RO18=RO17*(T18/T17).^(-g_SI/(a4*R_SI)-1);
        RO18plus=RO17plus*(T18plus/T17plus).^(-g_SI/(a4*R_SI)-1);
        RO18minus=RO17minus*(T18minus/T17minus).^(-g_SI/(a4*R_SI)-1);
        A18=sqrt(y*R_SI*T18);
        A18plus=sqrt(y*R_SI*T18plus);
        A18minus=sqrt(y*R_SI*T18minus);
        display(T18)
        display(T18plus)
        display(T18minus)
        display(P18)
        display(P18plus)
        display(P18minus)
        display(RO18)
        display(RO18plus)
        display(RO18minus)
        display(A18)
        display(A18plus)
        display(A18minus)
    end
    %% plot
        H=(0:100:11000);
        H1=(11000:100:25000);
        H2=(25000:100:47000);
        H3=(47000:100:53000);
        H4=(53000:100:79000);
        H5=(79000:100:96000);
        H6=(96000:100:100000);
        
        T1=T_SI+a1*(H-0);
        P1=P_SI*(T1/T_SI).^(-g_SI/(R_SI*a1));
        RO1=RO_SI*(T1/T_SI).^(-g_SI/(a1*R_SI)-1);
        A1=sqrt(y*R_SI*T1);
        T1plus=T_SIplus+a1*(H-0);
        T1minus=T_SIminus+a1*(H-0);
        P1plus=P_SIplus*(T1plus/T_SIplus).^(-g_SI/(R_SI*a1));
        P1minus=P_SIminus*(T1minus/T_SIminus).^(-g_SI/(R_SI*a1));
        RO1plus=RO_SIplus*(T1plus/T_SIplus).^(-g_SI/(a1*R_SI)-1);
        RO1minus=RO_SIminus*(T1minus/T_SIminus).^(-g_SI/(a1*R_SI)-1);
        A1plus=sqrt(y*R_SI*T1plus);
        A1minus=sqrt(y*R_SI*T1minus);
        
        T4=T2+H1*0;
        T4plus=T2plus+H1*0;
        T4minus=T2minus+H1*0;
        P4=P2*exp(((-g_SI)/(R_SI*T2))*(H1-11000));
        P4plus=P2plus*exp(((-g_SI)/(R_SI*T2plus))*(H1-11000));
        P4minus=P2minus*exp(((-g_SI)/(R_SI*T2minus))*(H1-11000));
        RO4=RO2*exp(((-g_SI)/(R_SI*T2))*(H1-11000));
        RO4plus=RO2plus*exp(((-g_SI)/(R_SI*T2plus))*(H1-11000));
        RO4minus=RO2minus*exp(((-g_SI)/(R_SI*T2minus))*(H1-11000));
        A4=sqrt(y*R_SI*T4);
        A4plus=sqrt(y*R_SI*T4plus);
        A4minus=sqrt(y*R_SI*T4minus);
        
        T7=T5+a2*(H2-25000);
        T7plus=T5plus+a2*(H2-25000);
        T7minus=T5minus+a2*(H2-25000);
        P7=P5*(T7/T5).^(-g_SI/(R_SI*a2));
        P7plus=P5plus*(T7plus/T5plus).^(-g_SI/(R_SI*a2));
        P7minus=P5minus*(T7minus/T5minus).^(-g_SI/(R_SI*a2));
        RO7=RO5*(T7/T5).^(-g_SI/(a2*R_SI)-1);
        RO7plus=RO5plus*(T7plus/T5plus).^(-g_SI/(a2*R_SI)-1);
        RO7minus=RO5minus*(T7minus/T5minus).^(-g_SI/(a2*R_SI)-1);
        A7=sqrt(y*R_SI*T7);
        A7plus=sqrt(y*R_SI*T7plus);
        A7minus=sqrt(y*R_SI*T7minus);
        
        T10=T8+H3*0;
        T10plus=T8plus+H3*0;
        T10minus=T8minus+H3*0;
        P10=P8*exp(((-g_SI)/(R_SI*T8))*(H3-47000));
        P10plus=P8plus*exp(((-g_SI)/(R_SI*T8plus))*(H3-47000));
        P10minus=P8minus*exp(((-g_SI)/(R_SI*T8minus))*(H3-47000));
        RO10=RO8*exp(((-g_SI)/(R_SI*T8))*(H3-47000));
        RO10plus=RO8plus*exp(((-g_SI)/(R_SI*T8plus))*(H3-47000));
        RO10minus=RO8minus*exp(((-g_SI)/(R_SI*T8minus))*(H3-47000));
        A10=sqrt(y*R_SI*T10);
        A10plus=sqrt(y*R_SI*T10plus);
        A10minus=sqrt(y*R_SI*T10minus);
        
        T13=T11+a3*(H4-53000);
        T13plus=T11plus+a3*(H4-53000);
        T13minus=T11minus+a3*(H4-53000);
        P13=P11*(T13/T11).^(-g_SI/(R_SI*a3));
        P13plus=P11plus*(T13plus/T11plus).^(-g_SI/(R_SI*a3));
        P13minus=P11minus*(T13minus/T11minus).^(-g_SI/(R_SI*a3));
        RO13=RO11*(T13/T11).^(-g_SI/(a3*R_SI)-1);
        RO13plus=RO11plus*(T13plus/T11plus).^(-g_SI/(a3*R_SI)-1);
        RO13minus=RO11minus*(T13minus/T11minus).^(-g_SI/(a3*R_SI)-1);
        A13=sqrt(y*R_SI*T13);
        A13plus=sqrt(y*R_SI*T13plus);
        A13minus=sqrt(y*R_SI*T13minus);
        
        T16=T14+H5*0;
        T16plus=T14plus+H5*0;
        T16minus=T14minus+H5*0;
        P16=P14*exp(((-g_SI)/(R_SI*T15))*(H5-79000));
        P16plus=P14plus*exp(((-g_SI)/(R_SI*T15plus))*(H5-79000));
        P16minus=P14minus*exp(((-g_SI)/(R_SI*T15minus))*(H5-79000));
        RO16=RO14*exp(((-g_SI)/(R_SI*T15))*(H5-79000));
        RO16plus=RO14plus*exp(((-g_SI)/(R_SI*T15plus))*(H5-79000));
        RO16minus=RO14minus*exp(((-g_SI)/(R_SI*T15minus))*(H5-79000));
        A16=sqrt(y*R_SI*T16);
        A16plus=sqrt(y*R_SI*T16plus);
        A16minus=sqrt(y*R_SI*T16minus);
        
        T19=T17+a4*(H6-96000);
        T19plus=T17plus+a4*(H6-96000);
        T19minus=T17minus+a4*(H6-96000);
        P19=P17*(T19/T17).^(-g_SI/(R_SI*a4));
        P19plus=P17plus*(T19plus/T17plus).^(-g_SI/(R_SI*a4));
        P19minus=P17minus*(T19minus/T17minus).^(-g_SI/(R_SI*a4));
        RO19=RO17*(T19/T17).^(-g_SI/(a4*R_SI)-1);
        RO19plus=RO17plus*(T19plus/T17plus).^(-g_SI/(a4*R_SI)-1);
        RO19minus=RO17minus*(T19minus/T17minus).^(-g_SI/(a4*R_SI)-1);
        A19=sqrt(y*R_SI*T19);
        A19plus=sqrt(y*R_SI*T19plus);
        A19minus=sqrt(y*R_SI*T19minus);
        
        figure,plot(H,T1);
        hold on;
        plot(H,T1plus,'-.g');
        plot(H,T1minus,'--r');
        plot(H1,T4,'b');
        plot(H1,T4plus,'-.g');
        plot(H1,T4minus,'--r');
        plot(H2,T7,'b');
        plot(H2,T7plus,'-.g');
        plot(H2,T7minus,'--r');
        plot(H3,T10,'b');
        plot(H3,T10plus,'-.g');
        plot(H3,T10minus,'--r');
        plot(H4,T13,'b');
        plot(H4,T13plus,'-.g');
        plot(H4,T13minus,'--r');
        plot(H5,T16,'b');
        plot(H5,T16plus,'-.g');
        plot(H5,T16minus,'--r');
        plot(H6,T19,'b');
        plot(H6,T19plus,'-.g');
        plot(H6,T19minus,'--r');
        hold off;
        title('Tempreature');
        xlabel('Altitude');
        ylabel('Temprature');
        legend('T1','T1plus','T1minus','Location','northeast')
        
        figure,plot(H,P1);
        hold on;
        plot(H,P1plus,'-.g');
        plot(H,P1minus,'--r');
        plot(H1,P4,'b');
        plot(H1,P4plus,'-.g');
        plot(H1,P4minus,'--r');
        plot(H2,P7,'b');
        plot(H2,P7plus,'-.g');
        plot(H2,P7minus,'--r');
        plot(H3,P10,'b');
        plot(H3,P10plus,'-.g');
        plot(H3,P10minus,'--r');
        plot(H4,P13,'b');
        plot(H4,P13plus,'-.g');
        plot(H4,P13minus,'--r');
        plot(H5,P16,'b');
        plot(H5,P16plus,'-.g');
        plot(H5,P16minus,'--r');
        plot(H6,P19,'b');
        plot(H6,P19plus,'-.g');
        plot(H6,P19minus,'--r');
        hold off;
        title('Pressure');
        xlabel('Altitude');
        ylabel('Pressure');
        legend('P1','P1plus','P1minus','Location','northeast')
        
        figure,plot(H,RO1);
        hold on;
        plot(H,RO1plus,'-.g');
        plot(H,RO1minus,'--r');
        plot(H1,RO4,'b');
        plot(H1,RO4plus,'-.g');
        plot(H1,RO4minus,'--r');
        plot(H2,RO7,'b');
        plot(H2,RO7plus,'-.g');
        plot(H2,RO7minus,'--r');
        plot(H3,RO10,'b');
        plot(H3,RO10plus,'-.g');
        plot(H3,RO10minus,'--r');
        plot(H4,RO13,'b');
        plot(H4,RO13plus,'-.g');
        plot(H4,RO13minus,'--r');
        plot(H5,RO16,'b');
        plot(H5,RO16plus,'-.g');
        plot(H5,RO16minus,'--r');
        plot(H6,RO19,'b');
        plot(H6,RO19plus,'-.g');
        plot(H6,RO19minus,'--r');
        hold off;
        title('Density');
        xlabel('Altitude');
        ylabel('Density');
        legend('RO1','RO1plus','RO1minus','Location','northeast')
        
        figure,plot(H,A1);
        hold on;
        plot(H,A1plus,'-.g');
        plot(H,A1minus,'--r');
        plot(H1,A4,'b');
        plot(H1,A4plus,'-.g');
        plot(H1,A4minus,'--r');
        plot(H2,A7,'b');
        plot(H2,A7plus,'-.g');
        plot(H2,A7minus,'--r');
        plot(H3,A10,'b');
        plot(H3,A10plus,'-.g');
        plot(H3,A10minus,'--r');
        plot(H4,A13,'b');
        plot(H4,A13plus,'-.g');
        plot(H4,A13minus,'--r');
        plot(H5,A16,'b');
        plot(H5,A16plus,'-.g');
        plot(H5,A16minus,'--r');
        plot(H6,A19,'b');
        plot(H6,A19plus,'-.g');
        plot(H6,A19minus,'--r');
        hold off;
        title('Speed Of Sound');
        xlabel('Altitude');
        ylabel('Speed Of Sound');
        legend('RO1','RO1plus','RO1minus','Location','northeast')
    