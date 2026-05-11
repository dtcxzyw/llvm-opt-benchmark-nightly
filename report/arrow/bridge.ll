inline.NumInlined: 8879
inline.NumDeleted: 3388
begin_hunk_0_@_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyclEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1008 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !1014 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i = load ptr, ptr %i.d, align 8, !tbaa !163 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %.val3.i, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow12_GLOBAL__N_113AsyncProducerC2ERKS1_.exit, label %bb.b

end_hunk_0
begin_hunk_1_@_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyclEv:bb.a
          to label %bb.h unwind label %bb.j, !noalias !3565

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %4, align 8, !tbaa !961, !noalias !3565 ; 4 uses
  store ptr null, ptr %4, align 8, !tbaa !961, !noalias !3565
  store ptr %i.n, ptr %0, align 8, !tbaa !961, !alias.scope !3565
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !163, !noalias !3565 ; 6 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !163, !alias.scope !3565
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !961, !noalias !3565 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !3565
end_hunk_1
begin_hunk_2_@_ZZN5arrow19VisitAsyncGeneratorISt10shared_ptrINS_11RecordBatchEENS_12_GLOBAL__N_113AsyncProducerEEENS_6FutureINS_8internal5EmptyEEESt8functionIFNS6_IT_EEvEET0_EN8LoopBodyclEv:bb.a
_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEE4MakeEv.exit.i: ; preds = %_ZNKSt14default_deleteIN5arrow10FutureImplEEclEPS1_.exit.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32, !noalias !3565
  store ptr %i.b, ptr %6, align 8, !tbaa !1008, !noalias !3559
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %.val.i, ptr %i.aa, align 8, !tbaa !1014, !noalias !3559
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.val3.i, ptr %i.ab, align 8, !tbaa !163, !noalias !3559
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.ac, align 8, !tbaa !965, !noalias !3559
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr %i.q, ptr %i.ad, align 8, !tbaa !163, !noalias !3559
  %.not.i.i.i.i.i8 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i8, label %_ZN5arrow6FutureISt8optionalINS_8internal5EmptyEEEC2ERKS5_.exit.i, label %bb.k

end_hunk_2
