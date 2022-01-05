if [ -e ${FSLDIR}/etc/fslconf/requestFSLpythonUnlink.sh ]; then
  $FSLDIR/etc/fslconf/requestFSLpythonUnlink.sh \
    fmrib_unpack                                \
    fmrib_unpack_demo
# FSL 6.0.6 and newer
elif  [ -e ${FSLDIR}/share/fsl/sbin/removeFSLWrapper ]; then
  $FSLDIR/share/fsl/sbin/removeFSLWrapper \
    fmrib_unpack                          \
    fmrib_unpack_demo                     \
    fmrib_unpack=funpack                  \
    fmrib_unpack_demo=funpack_demo
fi
