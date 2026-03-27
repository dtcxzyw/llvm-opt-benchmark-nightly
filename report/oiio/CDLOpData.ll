begin_hunk_0
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11RangeOpDataEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11RangeOpDataEvEERKS_IT_E.exit: ; preds = %bb.t, %bb.u
  %i.ct = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 5 uses
  %i.cu = load ptr, ptr %i.bk, align 8, !tbaa !75
  %.not.i.i29 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i29, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_11RangeOpDataEvEERKS_IT_E.exit
  %10 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr null, ptr %10, align 8, !tbaa !54
  %i.cv = load <2 x ptr>, ptr %5, align 16, !tbaa !76
  store ptr null, ptr %i.co, align 8, !tbaa !54
  store <2 x ptr> %i.cv, ptr %i.ct, align 8, !tbaa !76
end_hunk_0
begin_hunk_1
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_12MatrixOpDataEvEERKS_IT_E.exit52

_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_12MatrixOpDataEvEERKS_IT_E.exit52: ; preds = %bb.as, %bb.at
  %i.ex = load ptr, ptr %i.bi, align 8, !tbaa !72 ; 5 uses
  %i.ey = load ptr, ptr %i.bk, align 8, !tbaa !75
  %.not.i.i53 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i.i53, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_56OpDataEEC2INS0_12MatrixOpDataEvEERKS_IT_E.exit52
  %11 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr null, ptr %11, align 8, !tbaa !54
  %i.ez = load <2 x ptr>, ptr %7, align 16, !tbaa !76
  store ptr null, ptr %i.es, align 8, !tbaa !54
  store <2 x ptr> %i.ez, ptr %i.ex, align 8, !tbaa !76
end_hunk_1
