inline.NumInlined: 20973
inline.NumDeleted: 7847
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE28ReduceInputGraphSimd128SplatENS2_7OpIndexERKNS2_14Simd128SplatOpE:bb.a
_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_14Simd128SplatOpENSH_30ReduceSimd128SplatContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_14Simd128SplatOpEJNS2_14ShadowyOpIndexENSE_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i8 noundef zeroext %i.b)
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE34ReduceInputGraphSimd128ExtractLaneENS2_7OpIndexERKNS2_20Simd128ExtractLaneOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(6) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.c = load i8, ptr %i.b, align 1, !noalias !218
  %i.d = load i8, ptr %i.a, align 4, !noalias !218
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_20Simd128ExtractLaneOpENSH_36ReduceSimd128ExtractLaneContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.o = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.o, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.p, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_20Simd128ExtractLaneOpENSH_36ReduceSimd128ExtractLaneContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_20Simd128ExtractLaneOpENSH_36ReduceSimd128ExtractLaneContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.q = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_20Simd128ExtractLaneOpEJNS2_14ShadowyOpIndexENSE_4KindEhEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i8 noundef zeroext %i.d, i8 noundef zeroext %i.c)
  ret i32 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE34ReduceInputGraphSimd128ReplaceLaneENS2_7OpIndexERKNS2_20Simd128ReplaceLaneOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(6) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.c = load i8, ptr %i.b, align 1, !noalias !221
  %i.d = load i8, ptr %i.a, align 4, !noalias !221
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i3.i.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.sroa.0.0.copyload.i3.i.i.i.i, 4
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.k, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.o = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.o, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.p, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, %bb.a
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.q, align 4
  %i.r = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not.i.i6.i.i.i.i = icmp eq i32 %i.u, -1
  br i1 %.not.i.i6.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_20Simd128ReplaceLaneOpENSH_36ReduceSimd128ReplaceLaneContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i.i9.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i8.i.i.i.i, align 8
  %i.y = trunc nuw i8 %.sroa.2.0.copyload.i.i.i9.i.i.i.i to i1
  br i1 %i.y, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i.i11.i.i.i.i = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i11.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i12.i.i.i.i = load i32, ptr %i.z, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_20Simd128ReplaceLaneOpENSH_36ReduceSimd128ReplaceLaneContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_20Simd128ReplaceLaneOpENSH_36ReduceSimd128ReplaceLaneContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i
  %.sroa.014.0.i.i7.i.i.i.i = phi i32 [ %i.u, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i ], [ %.sroa.02.0.copyload.i10.i.i12.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i ]
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_20Simd128ReplaceLaneOpEJNS2_14ShadowyOpIndexESF_NSE_4KindEhEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i32 %.sroa.014.0.i.i7.i.i.i.i, i8 noundef zeroext %i.d, i8 noundef zeroext %i.c)
  ret i32 %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE36ReduceInputGraphSimd128LoadTransformENS2_7OpIndexERKNS2_22Simd128LoadTransformOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 4, !noalias !224
  %i.e = load i8, ptr %i.b, align 1, !noalias !224
  %i.f = load i8, ptr %i.a, align 4, !noalias !224
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i4.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = lshr i32 %.sroa.0.0.copyload.i4.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.q = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.q, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.r, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, %bb.a
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i3.i.i.i.i = load i32, ptr %i.s, align 4
  %i.t = lshr i32 %.sroa.0.0.copyload.i3.i.i.i.i, 4
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not.i.i7.i.i.i.i = icmp eq i32 %i.w, -1
  br i1 %.not.i.i7.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_22Simd128LoadTransformOpENSH_38ReduceSimd128LoadTransformContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.u ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.2.0.copyload.i.i.i10.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i9.i.i.i.i, align 8
  %i.aa = trunc nuw i8 %.sroa.2.0.copyload.i.i.i10.i.i.i.i to i1
  br i1 %i.aa, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11.i.i.i.i: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i.i12.i.i.i.i = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i12.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i13.i.i.i.i = load i32, ptr %i.ab, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_22Simd128LoadTransformOpENSH_38ReduceSimd128LoadTransformContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_22Simd128LoadTransformOpENSH_38ReduceSimd128LoadTransformContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11.i.i.i.i
  %.sroa.014.0.i.i8.i.i.i.i = phi i32 [ %i.w, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i ], [ %.sroa.02.0.copyload.i10.i.i13.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11.i.i.i.i ]
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_22Simd128LoadTransformOpEJNS2_14ShadowyOpIndexESF_NS2_6LoadOp4KindENSE_13TransformKindEiEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i32 %.sroa.014.0.i.i8.i.i.i.i, i8 %i.f, i8 noundef zeroext %i.e, i32 noundef %i.d)
  ret i32 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorES3_S6_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS2_7OpIndexERKNS2_16Simd128ShuffleOpE(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(21) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::array.907", align 8   ; 54 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %.not = icmp eq i8 %i.b, 3
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.c, align 4 ; 2 uses
  %.sink152.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 15
  %.sink152.sroa.gep181 = getelementptr inbounds nuw i8, ptr %3, i64 15
  %.sink152.sroa.gep182 = getelementptr inbounds nuw i8, ptr %3, i64 7
  %.sink152.sroa.gep184 = getelementptr inbounds nuw i8, ptr %3, i64 15
  %.sink152.sroa.gep185 = getelementptr inbounds nuw i8, ptr %3, i64 15
  %.sink152.sroa.gep186 = getelementptr inbounds nuw i8, ptr %3, i64 7
  %.sink157.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 14
  %.sink157.sroa.gep187 = getelementptr inbounds nuw i8, ptr %3, i64 14
  %.sink157.sroa.gep188 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.sink157.sroa.gep190 = getelementptr inbounds nuw i8, ptr %3, i64 14
  %.sink157.sroa.gep191 = getelementptr inbounds nuw i8, ptr %3, i64 14
  %.sink157.sroa.gep192 = getelementptr inbounds nuw i8, ptr %3, i64 6
  %.sink162.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 13
  %.sink162.sroa.gep193 = getelementptr inbounds nuw i8, ptr %3, i64 13
  %.sink162.sroa.gep194 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.sink162.sroa.gep196 = getelementptr inbounds nuw i8, ptr %3, i64 13
  %.sink162.sroa.gep197 = getelementptr inbounds nuw i8, ptr %3, i64 13
  %.sink162.sroa.gep198 = getelementptr inbounds nuw i8, ptr %3, i64 5
  %.sink167.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink167.sroa.gep199 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink167.sroa.gep200 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sink167.sroa.gep202 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink167.sroa.gep203 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sink167.sroa.gep204 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sink172.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 11
  %.sink172.sroa.gep205 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %.sink172.sroa.gep206 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.sink172.sroa.gep208 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %.sink172.sroa.gep209 = getelementptr inbounds nuw i8, ptr %3, i64 11
  %.sink172.sroa.gep210 = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.sink177.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink177.sroa.gep211 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink177.sroa.gep212 = getelementptr inbounds nuw i8, ptr %3, i64 2
  %.sink177.sroa.gep214 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink177.sroa.gep215 = getelementptr inbounds nuw i8, ptr %3, i64 10
  %.sink177.sroa.gep216 = getelementptr inbounds nuw i8, ptr %3, i64 2
  br i1 %.not, label %bb.g, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert129 = getelementptr inbounds nuw i8, ptr %0, i64 968
  %.pre = load ptr, ptr %.phi.trans.insert129, align 8
  %.pre130 = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %.pre131 = zext nneg i32 %.pre130 to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit
  %.pre-phi132 = phi i64 [ %.pre131, %._crit_edge ], [ %i.y, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit ] ; 2 uses
  %i.d = phi ptr [ %.pre, %._crit_edge ], [ %i.aa, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.pre-phi132
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.f, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.pre-phi132 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.j = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i.i to i1
  br i1 %i.j, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i.i = load i32, ptr %i.k, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i, %bb.b
  %.sroa.014.0.i.i.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %i.l, align 4
  %i.m = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %.not.i.i6.i.i.i.i.i = icmp eq i32 %i.p, -1
  br i1 %.not.i.i6.i.i.i.i.i, label %bb.e, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS2_7OpIndexERKNS2_16Simd128ShuffleOpE.exit

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.n ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i8.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload.i.i.i9.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i8.i.i.i.i.i, align 8
  %i.t = trunc nuw i8 %.sroa.2.0.copyload.i.i.i9.i.i.i.i.i to i1
  br i1 %i.t, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i.i: ; preds = %bb.e
  %.sroa.02.0.copyload.i.i.i11.i.i.i.i.i = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i11.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i12.i.i.i.i.i = load i32, ptr %i.u, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS2_7OpIndexERKNS2_16Simd128ShuffleOpE.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS2_7OpIndexERKNS2_16Simd128ShuffleOpE.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i.i
  %.sroa.014.0.i.i7.i.i.i.i.i = phi i32 [ %i.p, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i.i ], [ %.sroa.02.0.copyload.i10.i.i12.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i10.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_16Simd128ShuffleOpEJNS2_14ShadowyOpIndexESF_NSE_4KindEPKhEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.014.0.i.i.i.i.i.i.i, i32 %.sroa.014.0.i.i7.i.i.i.i.i, i8 noundef zeroext %i.b, ptr noundef nonnull %i.v)
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.x = lshr i32 %.sroa.0.0.copyload.i.i, 4
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.y
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %.not.i.i = icmp eq i32 %i.ac, -1
  br i1 %.not.i.i, label %bb.h, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.y ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ag = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.ag, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.h
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.ah, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit: ; preds = %bb.g, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.ac, %bb.g ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.0.0.copyload.i.i54 = load i32, ptr %i.ai, align 4
  %i.aj = lshr i32 %.sroa.0.0.copyload.i.i54, 4
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %.not.i.i55 = icmp eq i32 %i.am, -1
  br i1 %.not.i.i55, label %bb.j, label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit62

bb.j:                                             ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ak ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i58 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.2.0.copyload.i.i.i59 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i58, align 8
  %i.aq = trunc nuw i8 %.sroa.2.0.copyload.i.i.i59 to i1
  br i1 %i.aq, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i60, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i60: ; preds = %bb.j
  %.sroa.02.0.copyload.i.i.i57 = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i57, i64 16
  %.sroa.02.0.copyload.i10.i.i61 = load i32, ptr %i.ar, align 4
  br label %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit62

_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit62: ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i60
  %.sroa.014.0.i.i56 = phi i32 [ %i.am, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit ], [ %.sroa.02.0.copyload.i10.i.i61, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i60 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not16.not.i = icmp eq ptr %i.au, %i.aw
  br i1 %.not16.not.i, label %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer22DoesShuffleIntoLowHalfEPKNS2_16Simd128ShuffleOpE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit62, %.lr.ph.i
  %.01317.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.au, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit62 ] ; 2 uses
  %i.ax = load ptr, ptr %.01317.i, align 8
  %.not14.i = icmp eq ptr %i.ax, %2               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01317.i, i64 8 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ay, %i.aw
  %or.cond = select i1 %.not14.i, i1 true, i1 %.not.not.i
  br i1 %or.cond, label %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer22DoesShuffleIntoLowHalfEPKNS2_16Simd128ShuffleOpE.exit, label %.lr.ph.i

_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer22DoesShuffleIntoLowHalfEPKNS2_16Simd128ShuffleOpE.exit: ; preds = %.lr.ph.i, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit62
  %.not.lcssa.i = phi i1 [ false, %_ZN2v88internal8compiler10turboshaft12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS3_S4_S7_EEEEEEEEEEEEEE13MapToNewGraphILb0ENS2_12WordWithBitsILm128EEEEENS2_1VIT0_EESO_i.exit62 ], [ %.not14.i, %.lr.ph.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not16.not.i63 = icmp eq ptr %i.ba, %i.bc
  br i1 %.not16.not.i63, label %.thread, label %.lr.ph.i64

bb.l:                                             ; preds = %.lr.ph.i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.01317.i65, i64 8 ; 2 uses
  %.not.not.i67 = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.not.i67, label %.thread, label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer22DoesShuffleIntoLowHalfEPKNS2_16Simd128ShuffleOpE.exit, %bb.l
  %.01317.i65 = phi ptr [ %i.bd, %bb.l ], [ %i.ba, %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer22DoesShuffleIntoLowHalfEPKNS2_16Simd128ShuffleOpE.exit ] ; 2 uses
  %i.be = load ptr, ptr %.01317.i65, align 8
  %.not14.i66 = icmp eq ptr %i.be, %2
  br i1 %.not14.i66, label %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer23DoesShuffleIntoHighHalfEPKNS2_16Simd128ShuffleOpE.exit, label %bb.l

_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer23DoesShuffleIntoHighHalfEPKNS2_16Simd128ShuffleOpE.exit: ; preds = %.lr.ph.i64
  br i1 %.not.lcssa.i, label %.lr.ph.i69.preheader, label %.lr.ph.i74

.lr.ph.i69.preheader:                             ; preds = %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer23DoesShuffleIntoHighHalfEPKNS2_16Simd128ShuffleOpE.exit
  %4 = load <8 x i8>, ptr %3, align 8
  %5 = add <8 x i8> %4, splat (i8 -8)
  store <8 x i8> %5, ptr %3, align 8
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.079.i.ptr.8 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %7 = load i8, ptr %.079.i.ptr.8, align 8
  %8 = add i8 %7, -8
  store i8 %8, ptr %6, align 8
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 9
  %.079.i.ptr.9 = getelementptr inbounds nuw i8, ptr %3, i64 9
  %10 = load i8, ptr %.079.i.ptr.9, align 1
  %11 = add i8 %10, -8
  store i8 %11, ptr %9, align 1
  br label %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit.thread

.thread:                                          ; preds = %bb.l, %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer22DoesShuffleIntoLowHalfEPKNS2_16Simd128ShuffleOpE.exit
  br i1 %.not.lcssa.i, label %.lr.ph.i70.preheader, label %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit

.lr.ph.i70.preheader:                             ; preds = %.thread
  %i.bf = load i8, ptr %3, align 8
  %i.bg = add i8 %i.bf, -8
  store i8 %i.bg, ptr %3, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = add i8 %i.bi, -8
  store i8 %i.bj, ptr %i.bh, align 1
  br label %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit.thread

.lr.ph.i74:                                       ; preds = %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer23DoesShuffleIntoHighHalfEPKNS2_16Simd128ShuffleOpE.exit
  %.ptr121 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bk = load i8, ptr %.ptr121, align 8
  %i.bl = add i8 %i.bk, -8
  store i8 %i.bl, ptr %.ptr121, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 9
  %.079.i76.ptr.1 = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.bn = load i8, ptr %.079.i76.ptr.1, align 1
  %i.bo = add i8 %i.bn, -8
  store i8 %i.bo, ptr %i.bm, align 1
  br label %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit.thread

_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit.thread: ; preds = %.lr.ph.i74, %.lr.ph.i69.preheader, %.lr.ph.i70.preheader
  %.sink177.sroa.phi = phi ptr [ %.sink177.sroa.gep, %.lr.ph.i74 ], [ %.sink177.sroa.gep211, %.lr.ph.i69.preheader ], [ %.sink177.sroa.gep212, %.lr.ph.i70.preheader ]
  %.sink177.sroa.phi213 = phi ptr [ %.sink177.sroa.gep214, %.lr.ph.i74 ], [ %.sink177.sroa.gep215, %.lr.ph.i69.preheader ], [ %.sink177.sroa.gep216, %.lr.ph.i70.preheader ]
  %.sink172.sroa.phi = phi ptr [ %.sink172.sroa.gep, %.lr.ph.i74 ], [ %.sink172.sroa.gep205, %.lr.ph.i69.preheader ], [ %.sink172.sroa.gep206, %.lr.ph.i70.preheader ]
  %.sink172.sroa.phi207 = phi ptr [ %.sink172.sroa.gep208, %.lr.ph.i74 ], [ %.sink172.sroa.gep209, %.lr.ph.i69.preheader ], [ %.sink172.sroa.gep210, %.lr.ph.i70.preheader ]
  %.sink167.sroa.phi = phi ptr [ %.sink167.sroa.gep, %.lr.ph.i74 ], [ %.sink167.sroa.gep199, %.lr.ph.i69.preheader ], [ %.sink167.sroa.gep200, %.lr.ph.i70.preheader ]
  %.sink167.sroa.phi201 = phi ptr [ %.sink167.sroa.gep202, %.lr.ph.i74 ], [ %.sink167.sroa.gep203, %.lr.ph.i69.preheader ], [ %.sink167.sroa.gep204, %.lr.ph.i70.preheader ]
  %.sink162.sroa.phi = phi ptr [ %.sink162.sroa.gep, %.lr.ph.i74 ], [ %.sink162.sroa.gep193, %.lr.ph.i69.preheader ], [ %.sink162.sroa.gep194, %.lr.ph.i70.preheader ]
  %.sink162.sroa.phi195 = phi ptr [ %.sink162.sroa.gep196, %.lr.ph.i74 ], [ %.sink162.sroa.gep197, %.lr.ph.i69.preheader ], [ %.sink162.sroa.gep198, %.lr.ph.i70.preheader ]
  %.sink157.sroa.phi = phi ptr [ %.sink157.sroa.gep, %.lr.ph.i74 ], [ %.sink157.sroa.gep187, %.lr.ph.i69.preheader ], [ %.sink157.sroa.gep188, %.lr.ph.i70.preheader ]
  %.sink157.sroa.phi189 = phi ptr [ %.sink157.sroa.gep190, %.lr.ph.i74 ], [ %.sink157.sroa.gep191, %.lr.ph.i69.preheader ], [ %.sink157.sroa.gep192, %.lr.ph.i70.preheader ]
  %.sink152.sroa.phi = phi ptr [ %.sink152.sroa.gep, %.lr.ph.i74 ], [ %.sink152.sroa.gep181, %.lr.ph.i69.preheader ], [ %.sink152.sroa.gep182, %.lr.ph.i70.preheader ]
  %.sink152.sroa.phi183 = phi ptr [ %.sink152.sroa.gep184, %.lr.ph.i74 ], [ %.sink152.sroa.gep185, %.lr.ph.i69.preheader ], [ %.sink152.sroa.gep186, %.lr.ph.i70.preheader ]
  %i.bp = load i8, ptr %.sink177.sroa.phi, align 2
  %i.bq = add i8 %i.bp, -8
  store i8 %i.bq, ptr %.sink177.sroa.phi213, align 2
  %i.br = load i8, ptr %.sink172.sroa.phi, align 1
  %i.bs = add i8 %i.br, -8
  store i8 %i.bs, ptr %.sink172.sroa.phi207, align 1
  %i.bt = load i8, ptr %.sink167.sroa.phi, align 4
  %i.bu = add i8 %i.bt, -8
  store i8 %i.bu, ptr %.sink167.sroa.phi201, align 4
  %i.bv = load i8, ptr %.sink162.sroa.phi, align 1
  %i.bw = add i8 %i.bv, -8
  store i8 %i.bw, ptr %.sink162.sroa.phi195, align 1
  %i.bx = load i8, ptr %.sink157.sroa.phi, align 2
  %i.by = add i8 %i.bx, -8
  store i8 %i.by, ptr %.sink157.sroa.phi189, align 2
  %i.bz = load i8, ptr %.sink152.sroa.phi, align 1
  %i.ca = add i8 %i.bz, -8
  store i8 %i.ca, ptr %.sink152.sroa.phi183, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread.sink.split, !prof !5

_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit: ; preds = %.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8            ; 2 uses
  %.not20.i = icmp eq ptr %i.cf, %i.ch
  br i1 %.not20.i, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit, %.critedge.i
  %.021.i = phi ptr [ %i.cj, %.critedge.i ], [ %i.cf, %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit ] ; 3 uses
  %i.ci = load ptr, ptr %.021.i, align 8
  %.not14.i79 = icmp eq ptr %2, %i.ci
  br i1 %.not14.i79, label %_ZNRSt8optionalISt6bitsetILm16EEE5valueEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i78
  %i.cj = getelementptr inbounds nuw i8, ptr %.021.i, i64 16 ; 2 uses
  %.not.i80 = icmp eq ptr %i.cj, %i.ch
  br i1 %.not.i80, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit, label %.lr.ph.i78

_ZNRSt8optionalISt6bitsetILm16EEE5valueEv.exit:   ; preds = %.lr.ph.i78
  %i.ck = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not16.not.i81 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not16.not.i81, label %.loopexit, label %.lr.ph.i82

bb.m:                                             ; preds = %.lr.ph.i82
  %i.cq = getelementptr inbounds nuw i8, ptr %.01317.i83, i64 8 ; 2 uses
  %.not.not.i85 = icmp eq ptr %i.cq, %i.cp
  br i1 %.not.not.i85, label %.loopexit, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %_ZNRSt8optionalISt6bitsetILm16EEE5valueEv.exit, %bb.m
  %.01317.i83 = phi ptr [ %i.cq, %bb.m ], [ %i.cn, %_ZNRSt8optionalISt6bitsetILm16EEE5valueEv.exit ] ; 2 uses
  %i.cr = load ptr, ptr %.01317.i83, align 8
  %.not14.i84 = icmp eq ptr %i.cr, %2
  br i1 %.not14.i84, label %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer25ShouldRewriteShuffleToLowEPKNS2_16Simd128ShuffleOpE.exit, label %bb.m

_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer25ShouldRewriteShuffleToLowEPKNS2_16Simd128ShuffleOpE.exit: ; preds = %.lr.ph.i82
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %_ZNRSt8optionalISt6bitsetILm16EEE5valueEv.exit, %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer25ShouldRewriteShuffleToLowEPKNS2_16Simd128ShuffleOpE.exit
  %storemerge.in = phi ptr [ %i.cs, %_ZNK2v88internal8compiler10turboshaft19WasmShuffleAnalyzer25ShouldRewriteShuffleToLowEPKNS2_16Simd128ShuffleOpE.exit ], [ %i.as, %_ZNRSt8optionalISt6bitsetILm16EEE5valueEv.exit ], [ %i.as, %bb.m ]
  %storemerge = load i64, ptr %storemerge.in, align 4
  store i64 %storemerge, ptr %3, align 8
  switch i64 %i.cl, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit [
    i64 3, label %bb.n
    i64 15, label %bb.o
    i64 255, label %bb.p
  ]

bb.n:                                             ; preds = %.loopexit
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread.sink.split, !prof !5

bb.o:                                             ; preds = %.loopexit
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread.sink.split, !prof !5

bb.p:                                             ; preds = %.loopexit
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread.sink.split, !prof !5

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread.sink.split: ; preds = %bb.p, %bb.o, %bb.n, %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit.thread
  %.sink178 = phi i8 [ 1, %bb.o ], [ 3, %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit.thread ], [ 0, %bb.n ], [ 2, %bb.p ]
  %i.dc = call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_16Simd128ShuffleOpEJNS2_14ShadowyOpIndexESF_NSE_4KindEPKhEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %.sroa.014.0.i.i, i32 %.sroa.014.0.i.i56, i8 noundef zeroext %.sink178, ptr noundef nonnull %3)
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread: ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread.sink.split, %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit.thread, %bb.n, %bb.o, %bb.p
  %.sroa.050.3.ph = phi i32 [ -1, %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit.thread ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.n ], [ %i.dc, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.q

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit: ; preds = %.critedge.i, %.loopexit, %_ZSt9transformIPhS0_ZN2v88internal8compiler10turboshaft18WasmShuffleReducerINS4_21EmitProjectionReducerINS4_18GenericReducerBaseINS4_13TSReducerBaseINS4_11StackBottomINS1_4base3tmp5list1IJNS4_12GraphVisitorES5_S8_EEEEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS4_7OpIndexERKNS4_16Simd128ShuffleOpEEUlhE_ET0_T_SQ_SP_T1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.b

bb.q:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS2_7OpIndexERKNS2_16Simd128ShuffleOpE.exit
  %.sroa.050.4 = phi i32 [ %i.w, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE30ReduceInputGraphSimd128ShuffleENS2_7OpIndexERKNS2_16Simd128ShuffleOpE.exit ], [ %.sroa.050.3.ph, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerENS2_13TSReducerBaseEEEEEEE14Simd128ShuffleENS2_1VINS2_12WordWithBitsILm128EEEEESH_NS2_16Simd128ShuffleOp4KindEPKh.exit.thread ]
  ret i32 %.sroa.050.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE37ReduceInputGraphSimd256Extract128LaneENS2_7OpIndexERKNS2_23Simd256Extract128LaneOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 4, !noalias !227
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.c, align 4
  %i.d = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_23Simd256Extract128LaneOpENSH_39ReduceSimd256Extract128LaneContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.m = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.m, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.n, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_23Simd256Extract128LaneOpENSH_39ReduceSimd256Extract128LaneContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_23Simd256Extract128LaneOpENSH_39ReduceSimd256Extract128LaneContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_23Simd256Extract128LaneOpEJNS2_14ShadowyOpIndexEhEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i8 noundef zeroext %i.b)
  ret i32 %i.o
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE36ReduceInputGraphSimd256LoadTransformENS2_7OpIndexERKNS2_22Simd256LoadTransformOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 4, !noalias !230
  %i.e = load i8, ptr %i.b, align 1, !noalias !230
  %i.f = load i8, ptr %i.a, align 4, !noalias !230
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.copyload.i4.i.i.i.i = load i32, ptr %i.g, align 4
  %i.h = lshr i32 %.sroa.0.0.copyload.i4.i.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.m, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.q = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.q, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.r, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i: ; preds = %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, %bb.a
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.m, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i3.i.i.i.i = load i32, ptr %i.s, align 4
  %i.t = lshr i32 %.sroa.0.0.copyload.i3.i.i.i.i, 4
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %.not.i.i7.i.i.i.i = icmp eq i32 %i.w, -1
  br i1 %.not.i.i7.i.i.i.i, label %bb.d, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_22Simd256LoadTransformOpENSH_38ReduceSimd256LoadTransformContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.u ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i9.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.2.0.copyload.i.i.i10.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i9.i.i.i.i, align 8
  %i.aa = trunc nuw i8 %.sroa.2.0.copyload.i.i.i10.i.i.i.i to i1
  br i1 %i.aa, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11.i.i.i.i: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i.i12.i.i.i.i = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i12.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i13.i.i.i.i = load i32, ptr %i.ab, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_22Simd256LoadTransformOpENSH_38ReduceSimd256LoadTransformContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_22Simd256LoadTransformOpENSH_38ReduceSimd256LoadTransformContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11.i.i.i.i
  %.sroa.014.0.i.i8.i.i.i.i = phi i32 [ %i.w, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18WasmShuffleReducerINS2_21EmitProjectionReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S8_EEEEEEEEEEEEEEENS2_15VariableReducerISI_EEE3MapENS2_7OpIndexE.exit.i.i.i.i ], [ %.sroa.02.0.copyload.i10.i.i13.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11.i.i.i.i ]
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_22Simd256LoadTransformOpEJNS2_14ShadowyOpIndexESF_NS2_6LoadOp4KindENSE_13TransformKindEiEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i32 %.sroa.014.0.i.i8.i.i.i.i, i8 %i.f, i8 noundef zeroext %i.e, i32 noundef %i.d)
  ret i32 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE28ReduceInputGraphSimd256UnaryENS2_7OpIndexERKNS2_14Simd256UnaryOpE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(5) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 4, !noalias !233
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i32, ptr %i.c, align 4
  %i.d = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i, 4
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.e
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_14Simd256UnaryOpENSH_30ReduceSimd256UnaryContinuationEEEDaNS2_7OpIndexERKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %i.m = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i.i to i1
  br i1 %i.m, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #22
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i.i = load i32, ptr %i.n, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_14Simd256UnaryOpENSH_30ReduceSimd256UnaryContinuationEEEDaNS2_7OpIndexERKT_.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_21EmitProjectionReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES6_EEEEEEEEEE25ReduceInputGraphOperationINS2_14Simd256UnaryOpENSH_30ReduceSimd256UnaryContinuationEEEDaNS2_7OpIndexERKT_.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i.i ]
  %i.o = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18WasmShuffleReducerES3_EEEEEE4EmitINS2_14Simd256UnaryOpEJNS2_14ShadowyOpIndexENSE_4KindEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 %.sroa.014.0.i.i.i.i.i.i, i8 noundef zeroext %i.b)
  ret i32 %i.o
}

end_hunk_0
