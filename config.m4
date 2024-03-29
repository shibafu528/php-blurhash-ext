dnl config.m4 for extension blurhash

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(blurhash, for blurhash support,
dnl Make sure that the comment is aligned:
dnl [  --with-blurhash             Include blurhash support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(blurhash, whether to enable blurhash support,
Make sure that the comment is aligned:
[  --enable-blurhash          Enable blurhash support], no)

if test "$PHP_BLURHASH" != "no"; then
  dnl Write more examples of tests here...

  dnl # get library FOO build options from pkg-config output
  dnl AC_PATH_PROG(PKG_CONFIG, pkg-config, no)
  dnl AC_MSG_CHECKING(for libfoo)
  dnl if test -x "$PKG_CONFIG" && $PKG_CONFIG --exists foo; then
  dnl   if $PKG_CONFIG foo --atleast-version 1.2.3; then
  dnl     LIBFOO_CFLAGS=\`$PKG_CONFIG foo --cflags\`
  dnl     LIBFOO_LIBDIR=\`$PKG_CONFIG foo --libs\`
  dnl     LIBFOO_VERSON=\`$PKG_CONFIG foo --modversion\`
  dnl     AC_MSG_RESULT(from pkgconfig: version $LIBFOO_VERSON)
  dnl   else
  dnl     AC_MSG_ERROR(system libfoo is too old: version 1.2.3 required)
  dnl   fi
  dnl else
  dnl   AC_MSG_ERROR(pkg-config not found)
  dnl fi
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBDIR, BLURHASH_SHARED_LIBADD)
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)

  dnl # --with-blurhash -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/blurhash.h"  # you most likely want to change this
  dnl if test -r $PHP_BLURHASH/$SEARCH_FOR; then # path given as parameter
  dnl   BLURHASH_DIR=$PHP_BLURHASH
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for blurhash files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       BLURHASH_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$BLURHASH_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the blurhash distribution])
  dnl fi

  dnl # --with-blurhash -> add include path
  dnl PHP_ADD_INCLUDE($BLURHASH_DIR/include)

  dnl # --with-blurhash -> check for lib and symbol presence
  dnl LIBNAME=BLURHASH # you may want to change this
  dnl LIBSYMBOL=BLURHASH # you most likely want to change this

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $BLURHASH_DIR/$PHP_LIBDIR, BLURHASH_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_BLURHASHLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong blurhash lib version or lib not found])
  dnl ],[
  dnl   -L$BLURHASH_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(BLURHASH_SHARED_LIBADD)

  dnl # In case of no dependencies
  AC_DEFINE(HAVE_BLURHASH, 1, [ Have blurhash support ])

  PHP_NEW_EXTENSION(blurhash, blurhash.c encode.c, $ext_shared)
fi
