
class MyBody extends CGFobject {
    constructor(scene) {
        super(scene);
        this.sphere = new MySphere(scene, 16, 8);

        this.zeppelinMaterial = new CGFappearance(scene);
        this.zeppelinMaterial.setAmbient(1, 1, 1, 1);
        this.zeppelinMaterial.setDiffuse(0.5, 0.5, 0.5, 1);
        this.zeppelinMaterial.setSpecular(0.5, 0.5, 0.5, 1);
        this.zeppelinMaterial.setShininess(5.0);
        this.zeppelinMaterial.setTextureWrap('REPEAT', 'REPEAT');
    }
    updateTextures(texture) {
        this.body = texture;
    }
    display() {
        this.zeppelinMaterial.setTexture(this.body);
        this.zeppelinMaterial.apply();
        this.scene.pushMatrix();
        this.scene.scale(0.5, 0.5, 1);
        this.sphere.display();
        this.scene.popMatrix();
    }
}