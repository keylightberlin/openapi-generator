@IsTest
private class OASCategoryTest {
    @IsTest
    private static void equalsSameInstance() {
        OASCategory category1 = OASCategory.getExample();
        OASCategory category2 = category1;
        OASCategory category3 = new OASCategory();
        OASCategory category4 = category3;

        System.assert(category1.equals(category2));
        System.assert(category2.equals(category1));
        System.assert(category1.equals(category1));
        System.assert(category3.equals(category4));
        System.assert(category4.equals(category3));
        System.assert(category3.equals(category3));
    }

    @IsTest
    private static void equalsIdenticalInstance() {
        OASCategory category1 = OASCategory.getExample();
        OASCategory category2 = OASCategory.getExample();
        OASCategory category3 = new OASCategory();
        OASCategory category4 = new OASCategory();

        System.assert(category1.equals(category2));
        System.assert(category2.equals(category1));
        System.assert(category3.equals(category4));
        System.assert(category4.equals(category3));
    }

    @IsTest
    private static void notEqualsDifferentType() {
        OASCategory category1 = OASCategory.getExample();
        OASCategory category2 = new OASCategory();

        System.assertEquals(false, category1.equals('foo'));
        System.assertEquals(false, category2.equals('foo'));
    }

    @IsTest
    private static void notEqualsNull() {
        OASCategory category1 = OASCategory.getExample();
        OASCategory category2 = new OASCategory();
        OASCategory category3;

        System.assertEquals(false, category1.equals(category3));
        System.assertEquals(false, category2.equals(category3));
    }

    @IsTest
    private static void consistentHashCodeValue() {
        OASCategory category1 = OASCategory.getExample();
        OASCategory category2 = new OASCategory();

        System.assertEquals(category1.hashCode(), category1.hashCode());
        System.assertEquals(category2.hashCode(), category2.hashCode());
    }

    @IsTest
    private static void equalInstancesHaveSameHashCode() {
        OASCategory category1 = OASCategory.getExample();
        OASCategory category2 = OASCategory.getExample();
        OASCategory category3 = new OASCategory();
        OASCategory category4 = new OASCategory();

        System.assert(category1.equals(category2));
        System.assert(category3.equals(category4));
        System.assertEquals(category1.hashCode(), category2.hashCode());
        System.assertEquals(category3.hashCode(), category4.hashCode());
    }
}
