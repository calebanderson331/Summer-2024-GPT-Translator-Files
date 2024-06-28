package CameraSystem {
    part def Camera {
        import PictureTaking::*;

        perform action takePicture[*] :> PictureTaking::takePicture;

        part focusingSubsystem {
            perform takePicture.focus;
        }

        part imagingSubsystem {
            perform takePicture.shoot;
        }

    }
    package PictureTaking {
        part def Exposure;

        action def Focus { out xrsl: Exposure; }
        action def Shoot { in xsf: Exposure; }	

        action takePicture {		
            action focus: Focus[1];
            flow focus.xrsl to shoot.xsf;
            action shoot: Shoot[1];
        }
    }
}

%viz --view=Tree CameraSystem


