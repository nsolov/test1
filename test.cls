Class PyTest.CFG
{

ClassMethod ReadData() As %String [ Language = python ]
{
    import configparser

    config = configparser.ConfigParser()
    config.readfp(open(r'/irisdev/app/setup.cfg'))
    name = config.get('metadata', 'name')

    return name
}
}
