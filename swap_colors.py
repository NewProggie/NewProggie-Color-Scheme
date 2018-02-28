#!/usr/bin/env python

from sys import argv, exit
from math import sqrt
from pathlib import Path as path
import re

newproggie_colors = [( 22,  22,  22), ( 60,  60,  60), (169,  71,  68), (224, 150, 144),
                     ( 96, 139,  78), (143, 191, 127), (214, 152,  49), (248, 188,  65),
                     ( 86, 156, 214), (156, 220, 254), (176,  99, 134), (210, 135, 155),
                     ( 33, 134, 147), (119, 223, 216), (176, 176, 176), (247, 247, 247)] # yapf: disable


def color_dist(c1, c2):
    rmean = (c1[0] + c2[0]) / 2
    r = c1[0] - c2[0]
    g = c1[1] - c2[1]
    b = c1[2] - c2[2]
    return sqrt(int((512 + rmean) * r**2) >> 8) + 4 * g**2 + (int(
        (767 - rmean) * b**2) >> 8)


def to_hex(rgb_color):
    return '%02x%02x%02x' % rgb_color


def to_rgb(hex_color):
    return tuple(int(hex_color.lstrip('#')[i:i + 2], 16) for i in (0, 2, 4))


def fit_color(rgb_color):
    color_dists = [color_dist(c, rgb_color) for c in newproggie_colors]
    return newproggie_colors[color_dists.index(min(color_dists))]


def main(args):
    pattern = re.compile("[a-fA-F0-9]{6}")
    output = "NewProggie" + path(args[0]).suffix
    with open(args[0], 'r') as infile, open(output, 'w') as outfile:
        for curr_line in infile.readlines():
            if re.search(pattern, curr_line):  # found hex color value
                match = re.search(pattern, curr_line).group(0)
                c2 = fit_color(to_rgb(match))
                curr_line = re.sub(match, to_hex(c2), curr_line)
            outfile.write(curr_line)


if __name__ == "__main__":
    if len(argv) < 2:
        print("Usage: %s <color_scheme>" % argv[0])
        exit(-1)
    main(argv[1:])
