function [a,b] = LG_ro2ab(rho)
    b = asin(rho(3));
    
    x = rho(1);
    y = rho(2);
    
    if(x>0.001)
        if(y>0)%��һ���� + +
            a = atan((rho(2))/rho(1));
        else%�������� + -
            a = atan((rho(2))/rho(1));
        end
    elseif(x<-0.001)
        if(y>0)%�ڶ����� -, +
            a = pi - atan(abs(rho(2)/rho(1)));
        else%�������� - -
            a = pi + atan(abs(rho(2)/rho(1)));
        end
    else
        a = pi/2;
    end
end