partial package EJERCICIO
  partial connector PIN
    Modelica.SIunits.Voltage v "Electric Potential";
    flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Icon(graphics = {Ellipse(origin = {3, -1}, extent = {{-75, 79}, {75, -79}}, endAngle = 360)}));
  end PIN;

  connector PINPOSITIVO
  Modelica.SIunits.Voltage v "Electric Potential";
        flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Icon(graphics = {Ellipse(origin = {-59, -1}, extent = {{-39, 35}, {39, -35}}, endAngle = 360)}));
  end PINPOSITIVO;

  connector PINNEGATIVO
  Modelica.SIunits.Voltage v "Electric Potential";
        flow Modelica.SIunits.Current i "Current Flow";
    annotation(
      Icon(graphics = {Ellipse(origin = {69, 11}, extent = {{29, 29}, {-29, -29}}, endAngle = 360)}));
  end PINNEGATIVO;

  partial model TWOPIN
  Modelica.SIunits.Voltage v;
  Modelica.SIunits.Current i;
    PINNEGATIVO pinnegativo1 annotation(
      Placement(visible = true, transformation(origin = {-106, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-106, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    PINPOSITIVO pinpositivo1 annotation(
      Placement(visible = true, transformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {104, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      equation
  v = p.v - n.v;
  0 = p.i + n.i;
  i = p.i;
  annotation(
      Icon(graphics = {Rectangle(origin = {0, -1}, extent = {{-96, 23}, {94, -23}})}));
  end TWOPIN;

  partial model FUENTEDETENSION
    replaceable EJERCICIO.PIN pin1 annotation(
      Placement(visible = true, transformation(origin = {-50, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-4, 2}, extent = {{-72, -72}, {72, 72}}, rotation = 0)));
  PINNEGATIVO pinnegativo1 annotation(
      Placement(visible = true, transformation(origin = {-68, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-68, -2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  PINPOSITIVO pinpositivo1 annotation(
      Placement(visible = true, transformation(origin = {64, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {64, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    annotation(
      Icon(graphics = {Line(origin = {-2, 0}, points = {{-54, 0}, {54, 0}})}));
  end FUENTEDETENSION;
end EJERCICIO;
