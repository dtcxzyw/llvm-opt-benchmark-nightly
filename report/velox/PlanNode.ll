begin_hunk_0
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr null, ptr %6, align 8, !tbaa !375
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !377
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store i64 0, ptr %i.b, align 8, !tbaa !215
  %i.c = icmp eq ptr %.8.val, %.16.val
  br i1 %i.c, label %._crit_edge, label %.lr.ph
end_hunk_0
begin_hunk_1
  %i.o = lshr i64 %i.n, 12
  %i.p = add nuw nsw i64 %i.o, 1
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi i64 [ %i.x, %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ 0, %bb.b ] ; 2 uses
end_hunk_1
begin_hunk_2

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i: ; preds = %_ZSt10destroy_atINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !215
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i: ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i, %bb.b
  %9 = phi i64 [ %.pre.i, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.loopexit.i ], [ %i.i, %bb.b ] ; 3 uses
  %10 = icmp ult i64 %9, 256
  br i1 %10, label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.a, label %11

11:                                               ; preds = %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %12 = and i64 %9, 255                           ; 2 uses
  store i64 %12, ptr %i.b, align 8, !tbaa !215
  br label %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.a

_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i.a: ; preds = %11, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i
  %i.y = phi i64 [ %12, %11 ], [ %9, %_ZN5folly3f146detail21VectorContainerPolicyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.i ] ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !377  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.0.copyload.i.i = load i16, ptr %i.aa, align 1
  %i.ab = zext i16 %.0.copyload.i.i to i64
  %i.ac = icmp eq i64 %i.y, 0
  %i.ad = shl nuw nsw i64 %i.ab, 2
  %.neg17.i = sub nuw nsw i64 -16, %i.ad
  %.neg18.i = shl i64 -64, %i.y
  %.0.i.neg.i = select i1 %i.ac, i64 %.neg17.i, i64 %.neg18.i
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !377
  store i64 0, ptr %i.b, align 8, !tbaa !215
  %i.ae = and i64 %.0.i.neg.i, -8
  %i.af = shl nuw nsw i64 %i.m, 5
  %i.ag = mul i64 %i.af, %i.p
end_hunk_2
