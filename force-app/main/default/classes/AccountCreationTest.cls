@isTest
public with sharing class AccountCreationTest {

    @isTest
    static void testAccountCreation() {
        // Arrange
        Account acc = new Account(Name='Test Account');
        Test.startTest();
        // Act
        insert acc;

        AccountCreation accountCreation = new AccountCreation();

        Test.stopTest();

        // Assert
        Account insertedAccount = [SELECT Id, Name FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Test Account', insertedAccount.Name);
    }
}