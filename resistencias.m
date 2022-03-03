function res=resistencias(r,c)
if c=="m"
    res=r*1000;
else if c=="M"
    res=r*0.001;
else 
    res=0;
end
end
    
