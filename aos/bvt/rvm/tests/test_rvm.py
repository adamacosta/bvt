from subprocess import call


def test_rvm():
	msgs = ['tests for consistency across processes',
	        'tests that aborting a transaction undoes the changes',
	        'tests for consistency across processes w/ multiple segments',
	        'tests that aborting undoes changes in multiple segments',
	        'tests a commit, abort, commit sequence',
	        'tests that unlogged modification is lost on process termination',
	        'tests that a segment may only be involved in one transaction']
	for i in range(1, 8):
		print 'Test ' + str(i) + ': ' + msgs[i - 1]
		t = call('./rvm_test' + str(i))
		assert t == 0
		call(['rm', '-r', 'rvm_segments'])
		print 'Test ' + str(i) + ' complete'