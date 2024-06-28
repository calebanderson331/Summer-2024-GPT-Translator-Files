package AxlePackage {
    part def Axle{
        attribute mass:>ISQ::mass;
    }
    part def FrontAxle:>Axle{
        attribute steeringAngle:>ISQ::planeAngle;
    }
}

%viz --view=Tree AxlePackage


