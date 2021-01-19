@IsTest
private class OASInlineObjectTest {
    @IsTest
    private static void equalsSameInstance() {
        OASInlineObject inlineObject1 = OASInlineObject.getExample();
        OASInlineObject inlineObject2 = inlineObject1;
        OASInlineObject inlineObject3 = new OASInlineObject();
        OASInlineObject inlineObject4 = inlineObject3;

        System.assert(inlineObject1.equals(inlineObject2));
        System.assert(inlineObject2.equals(inlineObject1));
        System.assert(inlineObject1.equals(inlineObject1));
        System.assert(inlineObject3.equals(inlineObject4));
        System.assert(inlineObject4.equals(inlineObject3));
        System.assert(inlineObject3.equals(inlineObject3));
    }

    @IsTest
    private static void equalsIdenticalInstance() {
        OASInlineObject inlineObject1 = OASInlineObject.getExample();
        OASInlineObject inlineObject2 = OASInlineObject.getExample();
        OASInlineObject inlineObject3 = new OASInlineObject();
        OASInlineObject inlineObject4 = new OASInlineObject();

        System.assert(inlineObject1.equals(inlineObject2));
        System.assert(inlineObject2.equals(inlineObject1));
        System.assert(inlineObject3.equals(inlineObject4));
        System.assert(inlineObject4.equals(inlineObject3));
    }

    @IsTest
    private static void notEqualsDifferentType() {
        OASInlineObject inlineObject1 = OASInlineObject.getExample();
        OASInlineObject inlineObject2 = new OASInlineObject();

        System.assertEquals(false, inlineObject1.equals('foo'));
        System.assertEquals(false, inlineObject2.equals('foo'));
    }

    @IsTest
    private static void notEqualsNull() {
        OASInlineObject inlineObject1 = OASInlineObject.getExample();
        OASInlineObject inlineObject2 = new OASInlineObject();
        OASInlineObject inlineObject3;

        System.assertEquals(false, inlineObject1.equals(inlineObject3));
        System.assertEquals(false, inlineObject2.equals(inlineObject3));
    }

    @IsTest
    private static void consistentHashCodeValue() {
        OASInlineObject inlineObject1 = OASInlineObject.getExample();
        OASInlineObject inlineObject2 = new OASInlineObject();

        System.assertEquals(inlineObject1.hashCode(), inlineObject1.hashCode());
        System.assertEquals(inlineObject2.hashCode(), inlineObject2.hashCode());
    }

    @IsTest
    private static void equalInstancesHaveSameHashCode() {
        OASInlineObject inlineObject1 = OASInlineObject.getExample();
        OASInlineObject inlineObject2 = OASInlineObject.getExample();
        OASInlineObject inlineObject3 = new OASInlineObject();
        OASInlineObject inlineObject4 = new OASInlineObject();

        System.assert(inlineObject1.equals(inlineObject2));
        System.assert(inlineObject3.equals(inlineObject4));
        System.assertEquals(inlineObject1.hashCode(), inlineObject2.hashCode());
        System.assertEquals(inlineObject3.hashCode(), inlineObject4.hashCode());
    }
}
