clear all
close all
clc

k =menu('select your Distance:',' 1-Taxicab ellipse','2-Taxicab hyperbola','3-Maximum metric ellipse','4-Maximum metric hyperbola');
switch k
    
   case 1
       
     d = input('Enter your distance number: ');
     a = input('Enter foci(x1): ');
     b = input('Enter foci(y1): ');
     g = input('Enter foci(x2): ');
     h = input('Enter foci(y2): ');

     for i=1:60
         
         x(i) = input('Enter point(x) number: ');
         y(i) = input('Enter point(y) number: ');
         
         distance(i) = (abs(x(i) - a) + abs(y(i) - b)) + (abs(x(i) - g) + abs(y(i) - h))
         
         if d~=distance(i)
             x(i)=nan();
             y(i)=nan();
             
         end
         
         plot(a,b,g,h, x, y,'O','MarkerSize',7,'MarkerFaceColor','g')
         
     end 
     
    case 2
        
        d2 = input('Enter your distance number: ');
        a2 = input('Enter foci(x1): ');
        b2 = input('Enter foci(y1): ');
        g2 = input('Enter foci(x2): ');
        h2 = input('Enter foci(y2): ');
        
        for i=1:60
            
            x2(i) = input('Enter point(x) number: ');
            y2(i) = input('Enter point(y) number: ');
            
            distance2(i) = (abs(x2(i) - a2) + abs(y2(i) - b2)) - (abs(x2(i) - g2) + abs(y2(i) - h2))
            
            if d2~=distance2(i)
                x2(i) = nan();
                y2(i) = nan();
            end
            
            plot(a2,b2,g2,h2, x2, y2,'O','MarkerSize',7,'MarkerFaceColor','g')
            
        end
        
    case 3
        
        d = input('Enter your distance number: ');
        a = input('Enter foci(x1): ');
        b = input('Enter foci(y1): ');
        g = input('Enter foci(x2): ');
        h = input('Enter foci(y2): ');
        
        for i=1:60
            
            x(i) = input('Enter point(x) number: ');
            y(i) = input('Enter point(y) number: ');
            
            distance(i) = max(abs(a - x(i)),abs(b - y(i)))+ max(abs(g - x(i)),abs(h - y(i)))
            
            if d~=distance(i)
                x(i) = nan();
                y(i) = nan();
            end
            
            plot(a,b,g,h,x,y,'O','MarkerSize',7,'MarkerFaceColor','g')
            
        end
        
    case 4
        
        d2 = input('Enter your distance number: ');
        a2 = input('Enter foci(x1): ');
        b2 = input('Enter foci(y1): ');
        g2 = input('Enter foci(x2): ');
        h2 = input('Enter foci(y2): ');
        
        for i=1:60
            
            x2(i) = input('Enter point(x) number: ');
            y2(i) = input('Enter point(y) number: ');
            
            distance2(i) = max(abs(a2 - x2(i)),abs(b2 - y2(i)))- max(abs(g2 - x2(i)),abs(h2 - y2(i)))
            
            if d2~=distance2(i)
                x2(i) = nan();
                y2(i) = nan();
            end
            
            plot(a2,b2,g2,h2,x2,y2,'O','MarkerSize',7,'MarkerFaceColor','g')
            
        end
end