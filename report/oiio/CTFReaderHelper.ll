begin_hunk_0

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IS1_vEERKS_IT_E.exit: ; preds = %bb.n, %bb.p, %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 288 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !240 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 296
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !243
  %.not.i.i110 = icmp eq ptr %i.cj, %i.cl
  br i1 %.not.i.i110, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56OpDataEEC2IS1_vEERKS_IT_E.exit
  %21 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr null, ptr %21, align 8, !tbaa !34
  %i.cm = load <2 x ptr>, ptr %7, align 16, !tbaa !75
  store ptr null, ptr %i.bz, align 8, !tbaa !34
  store <2 x ptr> %i.cm, ptr %i.cj, align 8, !tbaa !75
end_hunk_0
