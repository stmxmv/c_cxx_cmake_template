/*!
* Created by Molybdenum on 8/15/21.
*
*/
#include "gtest/gtest.h"
class WNTemplateTest : public ::testing::Test {
protected:
    virtual void SetUp() override {

    }

    virtual void TearDown() override {

    }


};


TEST_F(WNTemplateTest, aTest){ // 1/1/1 -> 1/3/1

    EXPECT_EQ(1,1);

}
