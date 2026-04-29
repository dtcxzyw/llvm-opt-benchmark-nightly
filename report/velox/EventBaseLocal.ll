inline.NumInlined: 1133
inline.NumDeleted: 586
begin_hunk_0_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmm:bb.a
  br i1 %conflict.rdx, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.i.preheader174, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, -4                         ; 5 uses
  %i.ap = mul i64 %n.vec, 24
  %i.aq = getelementptr i8, ptr %i.ah, i64 %i.ap
  %8 = mul i64 %n.vec, 24
  %i.ar = getelementptr i8, ptr %i.aj, i64 %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = mul i64 %index, 24                ; 4 uses
  %next.gep = getelementptr i8, ptr %i.ah, i64 %offset.idx ; 2 uses
  %i.as = getelementptr i8, ptr %i.ah, i64 %offset.idx
  %i.at = getelementptr i8, ptr %i.ah, i64 %offset.idx
  %i.au = getelementptr i8, ptr %i.ah, i64 %offset.idx
  %offset.idx161 = mul i64 %index, 24
  %next.gep162 = getelementptr i8, ptr %i.aj, i64 %offset.idx161 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep162) ]
  %wide.vec = load <12 x i64>, ptr %next.gep, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
end_hunk_0
begin_hunk_1_@_ZN5folly3f146detail21VectorContainerPolicyImSt10unique_ptrIvPFvPvEEvvvSt17integral_constantIbLb1EEE17afterFailedRehashEPSt4pairIKmS7_Em:bb.a
  br i1 %conflict.rdx, label %_ZSt10destroy_atISt4pairIKmSt10unique_ptrIvPFvPvEEEEvPT_.exit.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -4                         ; 5 uses
  %i.d = mul i64 %n.vec, 24
  %i.e = getelementptr i8, ptr %i.a, i64 %i.d
  %3 = mul i64 %n.vec, 24
  %i.f = getelementptr i8, ptr %1, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %offset.idx = mul i64 %index, 24                ; 4 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %offset.idx ; 2 uses
  %i.g = getelementptr i8, ptr %i.a, i64 %offset.idx
  %i.h = getelementptr i8, ptr %i.a, i64 %offset.idx
  %i.i = getelementptr i8, ptr %i.a, i64 %offset.idx
  %offset.idx16 = mul i64 %index, 24
  %next.gep17 = getelementptr i8, ptr %1, i64 %offset.idx16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep17) ]
  %wide.vec = load <12 x i64>, ptr %next.gep, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
end_hunk_1
