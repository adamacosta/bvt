from subprocess import call


def test_all():
	for case in ['producer_consumer', 'dining_main', 'gtthread_main']:
		output = call('./' + case)
		assert output == 0