run("Set Scale...", " distance=1 known=1 pixel=1 unit=um ");
run("Set Measurements...", " area feret fit perimeter centroid ");
run("Analyze Particles...", "size=1-200 circularity=0-1 show=Outlines display exclude clear ");
run("RGB Color");
for(i=0; i<nResults; i++) {
      x=getResult('X',i);
      y=getResult('Y',i);
      toUnscaled(x,y);
      d=getResult('Major',i);
      a = getResult('Angle',i)*PI/180;
      setColor("blue");
      drawLine(x+(d/2)*cos(a),y-(d/2)*sin(a),x-(d/2)*cos(a),y+(d/2)*sin(a));
      d=getResult('Minor',i);
      a=a+PI/2;
      setColor("red");
      drawLine(x+(d/2)*cos(a),y-(d/2)*sin(a),x-(d/2)*cos(a),y+(d/2)*sin(a));
  }