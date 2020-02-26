def midir(x, n=2):
    return [i for i in dir(x) if not i.startswith('_' * n)]
