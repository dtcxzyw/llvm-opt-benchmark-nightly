inline.NumInlined: 119
inline.NumDeleted: 80
begin_hunk_0_@main:bb.a
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit36

_ZN4llvh11raw_ostreamlsEPKc.exit36:               ; preds = %bb.k, %bb.l
  %.0.i.i35 = phi ptr [ %i.bg, %bb.k ], [ %.0.i.i31, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i35) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bj = load i8, ptr %i.w, align 8
  %i.bk = trunc i8 %i.bj to i1
end_hunk_0
begin_hunk_1_@main:bb.a
  br label %_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit

_ZNK4llvh7ErrorOrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8getErrorEv.exit: ; preds = %bb.m, %bb.n
  %.sroa.31.0.i = phi ptr [ %.sroa.31.0.copyload.i, %bb.m ], [ %i.bl, %bb.n ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %bb.m ], [ 0, %bb.n ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31.0.i) ]
  %i.bm = load ptr, ptr %.sroa.31.0.i, align 8, !tbaa !17, !noalias !19
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !19
end_hunk_1
begin_hunk_2_@main:bb.a
._crit_edge:                                      ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit
  %.sroa.16.0.lcssa = phi ptr [ %i.ck, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.16.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.9.0.lcssa = phi ptr [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.sroa.9.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ]
  %.sroa.061.0.lcssa = phi ptr [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ], [ %.0.lcssa.i.i.i.i.i.i.pn, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.cl, ptr %4, align 8, !tbaa !29
end_hunk_2
begin_hunk_3_@main:bb.a

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ], [ 0, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 2 uses
  %.sroa.061.095 = phi ptr [ %.0.lcssa.i.i.i.i.i.i.pn, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ], [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 5 uses
  %.sroa.9.094 = phi ptr [ %.sroa.9.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ], [ %i.cj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 7 uses
  %.sroa.16.093 = phi ptr [ %.sroa.16.2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit ], [ %i.ck, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE7reserveEm.exit ] ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.02188123, i64 %indvars.iv
end_hunk_3
begin_hunk_4_@main:bb.a

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.t, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.sroa.16.2 = phi ptr [ %i.dp, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.16.093, %bb.t ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %i.dl, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.061.095, %bb.t ] ; 2 uses
  %.sroa.061.2 = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.9.094, %bb.t ] ; 2 uses
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.sroa.061.2, i64 16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.061.2) ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ch
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !43
end_hunk_4
begin_hunk_5_@llvm.assume
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

attributes #0 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_5
