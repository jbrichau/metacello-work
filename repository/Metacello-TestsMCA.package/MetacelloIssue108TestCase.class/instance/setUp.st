running
setUp
  | repo |
  super setUp.
  repo := MetacelloIssue108Resource current monticelloRepository.
  self tempRepositories add: repo.
  Smalltalk at: self repositoryName put: repo.
  initialWorkingCopyList := MCWorkingCopy allManagers
    collect: [ :each | each packageName ]