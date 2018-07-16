npar=52;%nbre de ville
xy=load('berlin52.tsp');
x=xy(:,2);
y=xy(:,3);
pop=xy(:,1)'; 
popopt=load('TSP0.txt');
popopt=popopt;
sol_approchee=load('TSP.txt')
pop=sol_approchee+1;

figure(1);
plot( x([popopt(1,:) popopt(1,1)]), y([popopt(1,:) popopt(1,1)]),'g.-','LineWidth',4,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);hold;
plot( x([pop(1,:) pop(1,1)]), y([pop(1,:) pop(1,1)]),'r.--','LineWidth',3,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',10);

text(xy(:,2)+0.1, xy(:,3)+0.9, num2str((1:npar)'));
set(gcf,'Color',[1,1,1]);
axis square
legend('chemin optimal','solution trouvée')