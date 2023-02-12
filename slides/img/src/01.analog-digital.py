#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import math
import numpy
import matplotlib.pyplot as plt


def x1f(x):
    return x

def x2f(x):
    return x ** 2

def x4f(x):
    return x ** 4

def mf(x):
    return (math.sin(x) + math.cos(2*x) + 2) / 2

def ma(x):
    return mf(x) * math.sin(10 * x)

def mph(x):
    return math.sin(10 * x + 5 * mf(x))

def mfr(x):
    return math.sin(5 * (math.sin (2 * x) / 2 - math.cos(x) + 2 * x ) / 2 + 5 * x)


def plot_x1x2x4():
    xs = numpy.r_[0.0 : 2.0 : 1/10.0]

    x1, = plt.plot(xs, list(map(x1f, xs)))
    x2, = plt.plot(xs, list(map(x2f, xs)))
    x4, = plt.plot(xs, list(map(x4f, xs)))

    plt.xlabel('x')
    plt.legend([x1, x2, x4], ['x', 'x^2', 'x^4'])

    plt.savefig("../01.non-linear.svg")


def plot_mf():
    xs = numpy.r_[0.0 : 10.0 : 1/20.0]
    f, = plt.plot(xs, list(map(mf, xs)))
    plt.savefig("../01.mod-fun.svg")


def plot_ma():
    xs = numpy.r_[0.0 : 10.0 : 1/20.0]
    f, = plt.plot(xs, list(map(mf, xs)))
    a, = plt.plot(xs, list(map(ma, xs)))
    plt.savefig("../01.mod-amp.svg")

def plot_mph():
    xs = numpy.r_[0.0 : 10.0 : 1/20.0]
    f, = plt.plot(xs, list(map(mf, xs)))
    a, = plt.plot(xs, list(map(mph, xs)))
    plt.savefig("../01.mod-pha.svg")

def plot_mfr():
    xs = numpy.r_[0.0 : 10.0 : 1/20.0]
    f, = plt.plot(xs, list(map(mf, xs)))
    a, = plt.plot(xs, list(map(mfr, xs)))
    plt.savefig("../01.mod-fre.svg")

if __name__ == '__main__':
    plt.switch_backend('agg')  # to run headless

    plot_x1x2x4()
    plt.clf()

    plot_mf()
    plt.clf()

    plot_ma()
    plt.clf()

    plot_mph()
    plt.clf()

    plot_mfr()
    plt.clf()
