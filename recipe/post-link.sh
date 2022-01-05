# FSL 6.0.5 and older
if [ -e ${FSLDIR}/etc/fslconf/requestFSLpythonLink.sh ]; then
  $FSLDIR/etc/fslconf/requestFSLpythonLink.sh \
    fmrib_unpack                              \
    fmrib_unpack_demo
# FSL 6.0.6 and newer
elif  [ -e ${FSLDIR}/share/fsl/sbin/createFSLWrapper ]; then
  $FSLDIR/share/fsl/sbin/createFSLWrapper \
    fmrib_unpack                          \
    fmrib_unpack_demo                     \
    fmrib_unpack=funpack                  \
    fmrib_unpack_demo=funpack_demo
fi
