project('dwm', 'c',
        default_options: ['c_std=c11'])

add_global_arguments('-DVERSION="1.0.0"', language: 'c')

cc = meson.get_compiler('c')
math = cc.find_library('m', required: false)
ft2 = dependency('freetype2')
X11 = dependency('X11')
xft = dependency('xft')
fontconfig = dependency('fontconfig')
webkit = dependency('webkit2gtk-4.0')

src = [
    'drw.c',
    'dwm.c',
    'util.c'
]

install_data('dwm.desktop', install_dir: '/usr/shrare/xsessions')

executable('dwm',
    src,
    dependencies: [
        X11,
        xft,
        math,
        ft2,
        fontconfig,
        webkit,
    ],
    install: true,
    install_dir: '/usr/bin'
)
