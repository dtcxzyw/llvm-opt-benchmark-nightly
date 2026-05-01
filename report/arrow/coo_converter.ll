inline.NumInlined: 3398
inline.NumDeleted: 948
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIjjEEvRKNS_6TensorEPT_PT0_l:bb.a
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.k ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %i.k ; 2 uses
  %i.gh = add nuw nsw i64 %.0123.us124, 4         ; 2 uses
  %niter239.next.3 = add nuw i64 %niter239, 4     ; 2 uses
  %niter239.ncmp.3 = icmp eq i64 %niter239.next.3, %unroll_iter238
  br i1 %niter239.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZSt6copy_nIPKjiPjET1_T_T0_S3_.exit.us127, !llvm.loop !298

end_hunk_0
