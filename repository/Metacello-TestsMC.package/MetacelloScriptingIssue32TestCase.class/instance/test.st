tests
test
    Metacello new
        configuration: 'Issue32';
        version: '0.9';
        repository: 'dictionary://Metacello_Configuration_Test_Repository';
        silently;
        load.
    self assert: (Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result').
    self assert: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result').
    self
        validateExpectedConfigurationClassName: 'ConfigurationOfIssue32'
        expectedConfigurationVersion: '0.9'
        expectedConfigurationRepository: 'dictionary://Metacello_Configuration_Test_Repository'
        expectedBaselineClassName: 'BaselineOfIssue32'
        expectedBaselineVersion: 'baseline'
        expectedBaselineRepository: 'dictionary://Metacello_External_Test_Repository'