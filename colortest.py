
if __name__ == "__main__":
    BLOCK="\033\xE2\x96\x88"
    for idx in range(1,257):
        # '\033' espace sequence code
        # '[38'  xterm-256 extended foreground color ('[48' for background)
        # '5'    format color indication ('5' 8-bit, '2' 24-bit)
        # '%dm'  sets the actual color
        print "\033[38;5;%dm %3d: #000000 %s \033[0m" % (idx, idx, BLOCK),
        if idx % 8 == 0: print

