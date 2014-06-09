% © Stéphane Adjemian, 2005, 2014

addpath ../matlab2tikz/src

gausdens = inline('exp(-.5*((x-mu)/sigma).^2)/sqrt(2*pi)/sigma','x','mu','sigma');
abscissa = -6:0.01:6;

f1  = gausdens(abscissa,0.0,1.0);
f2  = gausdens(abscissa,2.0,1.5);
ff1 = gausdens(-1.0,0.0,1.0);
ff2 = gausdens(-1.0,2.0,1.5);

max1 = max(f1);
max2 = max(f2);
maxy = max([max1;max2]);

figure(1)
plot(abscissa,f1,'-k','linewidth',2)
hold on
plot(abscissa,f2,'-r','linewidth',2)
plot([-1.0 -1.0],[0 maxy],'--g','linewidth',1)
plot(-1.0,ff1,'ok','MarkerEdgeColor','k','MarkerFaceColor','k')
plot(-1.0,ff2,'ok','MarkerEdgeColor','r','MarkerFaceColor','r')
legend('model A','model B')
set(gca,'XTick',[])
set(gca,'YTick',[])
axis tight
box on
text('Interpreter','latex','String','$$ Y_T  $$',...
       'Position',[-1.0 -0.02],'FontSize',12)
text('Interpreter','latex','String','$$ p(Y_T| \mathcal B) $$',...
       'Position',[-7.6 ff2],'FontSize',12)
text('Interpreter','latex','String','$$ p(Y_T| \mathcal A) $$',...
       'Position',[-7.6 ff1],'FontSize',12)
hold off




abscissa = -3.5:0.01:3.5;
f   = gausdens(abscissa,0.0,1.0);
ff1 = gausdens(-1.0,0.0,1.0);
ff2 = gausdens(-0.0,0.0,1.0);
ff3 = gausdens(1.50,0.0,1.0);
maxy = max(f);

figure(2)
plot(abscissa,f,'-k','linewidth',2)
hold on
plot([-1.0 -1.0],[0 ff1],'--b','linewidth',1)
plot([-3.5,-1.0],[ff1,ff1],'--b','linewidth',1)
plot(-1.0,ff1,'ok','MarkerEdgeColor','b','MarkerFaceColor','b')
legend('posterior kernel')
set(gca,'XTick',[])
set(gca,'YTick',[])
axis tight
box on
axis([-3.5 3.5 0 0.45]);
text('Interpreter','latex',...
       'String','$$ \theta^o  $$',...
       'Position',[-1.0 -0.02],...
       'FontSize',12)
text('Interpreter','latex',...
       'String','$$ \mathcal K \left(\theta^o\right)  $$',...
       'Position',[-4.2 ff1],...
       'FontSize',12)
hold off
matlab2tikz('mhplot-a.tex');

figure(3)
plot(abscissa,f,'-k','linewidth',2)
hold on
plot([-1.0 -1.0],[0 ff1],'--b','linewidth',1)
plot([-0.0 -0.0],[0 ff2],'--r','linewidth',1)
plot([-3.5,-1.0],[ff1,ff1],'--b','linewidth',1)
plot([-2.7,-0.0],[ff2,ff2],'--r','linewidth',1)
plot(-1.0,ff1,'ok','MarkerEdgeColor','b','MarkerFaceColor','b')
plot(-0.0,ff2,'or','MarkerEdgeColor','r','MarkerFaceColor','r')
legend('posterior kernel')
set(gca,'XTick',[])
set(gca,'YTick',[])
axis tight
box on
axis([-3.5 3.5 0 0.45]);
text('Interpreter','latex',...
       'String','$$ \theta^o  $$',...
       'Position',[-1.0 -0.02],...
       'FontSize',12)
text('Interpreter','latex',...
       'String','$$ \mathcal K \left(\theta^o\right)  $$',...
       'Position',[-4.2 ff1],...
       'FontSize',12)
text('Interpreter','latex',...
       'String','$$\theta^{1} =  \theta^* $$',...
       'Position',[-0.25 -0.02],...
       'FontSize',12)
text('Interpreter','latex',...
       'String','$$ \mathcal K \left(\theta^1 \right) = \mathcal K \left(\theta^* \right) $$',...
       'Position',[-4.5 ff2],...
       'FontSize',12)
hold off
matlab2tikz('mhplot-b.tex');

figure(4)
plot(abscissa,f,'-k','linewidth',2)
hold on
plot([-1.0 -1.0],[0 ff1],'--b','linewidth',1)
plot([-0.0 -0.0],[0 ff2],'--r','linewidth',1)
plot([1.50 1.50],[0 ff3],'--g','linewidth',1)
plot([-3.5,-1.0],[ff1,ff1],'--b','linewidth',1)
plot([-3.5,-0.0],[ff2,ff2],'--r','linewidth',1)
plot([-3.5,1.50],[ff3,ff3],'--g','linewidth',1)
plot(-1.0,ff1,'ok','MarkerEdgeColor','b','MarkerFaceColor','b')
plot(-0.0,ff2,'or','MarkerEdgeColor','r','MarkerFaceColor','r')
plot(1.50,ff3,'og','MarkerEdgeColor','g','MarkerFaceColor','g')
legend('posterior kernel')
set(gca,'XTick',[])
set(gca,'YTick',[])
axis tight
box on
axis([-3.5 3.5 0 0.45]);
text('Interpreter','latex',...
       'String','$$ \theta^o  $$',...
       'Position',[-1.0 -0.02],...
       'FontSize',12)
text('Interpreter','latex',...
       'String','$$ \mathcal K \left(\theta^o\right)  $$',...
       'Position',[-4.2 ff1],...
       'FontSize',12)
text('Interpreter','latex',...
       'String','$$\theta^{1}$$',...
       'Position',[-0.0 -0.02],...
       'FontSize',12)
text('Interpreter','latex',...
       'String','$$ \mathcal K \left(\theta^1 \right) $$',...
       'Position',[-4.2 ff2],...
       'FontSize',12)
text('Interpreter','latex',...
       'String','$$ \theta^* $$',...
       'Position',[1.5 -0.02],...
      'FontSize',12)
text('Interpreter','latex',...
       'String','$$ \mathcal K(\theta^*) $$',...
       'Position',[-4.2 ff3],...
      'FontSize',12)
text('Interpreter','latex',...
       'String','$$ \mathbf{??} $$',...
       'Position',[1.55 ff3*1.03],...
      'FontSize',12)
hold off
matlab2tikz('mhplot-c.tex');