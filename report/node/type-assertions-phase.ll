Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/type-assertions-phase?download=true
inline.NumInlined: 47242
inline.NumDeleted: 15222
loop-unroll.NumCompletelyUnrolled: 202
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_17Word32PairBinopOpEJNS2_14ShadowyOpIndexESH_SH_SH_NSG_4KindEEEENS2_7OpIndexEDpT0_:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 200 ; 2 uses
  %i.ca = lshr i64 %i.bq, 1
  %i.cb = add nuw nsw i64 %i.bq, 32
  %i.cc = add nuw nsw i64 %i.cb, %i.ca
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load ptr, ptr %i.bt, align 8
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.cj)
  %.pre.i.i = load ptr, ptr %i.bt, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_17Word32PairBinopOpEEEvRKT_.exit, %bb.g
  %i.ck = phi ptr [ %.pre.i.i, %bb.g ], [ %i.bu, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_17Word32PairBinopOpEEEvRKT_.exit ]
  %i.cl = trunc i64 %i.i to i32
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.bq
  store i32 %.sroa.0.0.copyload.i, ptr %i.cm, align 4
  ret i32 %i.cl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE25ReduceInputGraphOperationINS2_22OverflowCheckedBinopOpENS2_21UniformReducerAdapterIS3_SG_E38ReduceOverflowCheckedBinopContinuationEEENS2_7OpIndexESN_RKT_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(6) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE39AssembleOutputGraphOverflowCheckedBinopERKNS2_22OverflowCheckedBinopOpE(ptr noundef nonnull align 8 dereferenceable(1656) %0, ptr noundef nonnull align 4 dereferenceable(6) %2) ; 4 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.e = lshr i32 %1, 4
  %i.f = zext nneg i32 %i.e to i64                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1752
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !noalias !1752 ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %.not.i.i.i = icmp ugt i64 %i.n, %i.f
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit, label %bb.d, !prof !42

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = lshr i64 %i.f, 1
  %i.q = add nuw nsw i64 %i.f, 32
  %i.r = add nuw nsw i64 %i.q, %i.p
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.r), !noalias !1752
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !1752
  %i.u = load ptr, ptr %i.i, align 8, !noalias !1752
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = sdiv exact i64 %i.x, 24
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 noundef %i.y), !noalias !1752
  %.pre.i.i.i = load ptr, ptr %i.i, align 8, !noalias !1752
  br label %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit: ; preds = %bb.c, %bb.d
  %i.z = phi ptr [ %.pre.i.i.i, %bb.d ], [ %i.j, %bb.c ]
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.ab = load i8, ptr %3, align 8
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7GetTypeENS2_7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %4, ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a)
  %i.ad = load i8, ptr %4, align 8
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.ai = load ptr, ptr %i.ah, align 8
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE19RefineOperationTypeEPNS2_5BlockENS2_7OpIndexERKNS2_4TypeEc(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.ai, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef signext 73)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.a, %bb.j
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE39AssembleOutputGraphOverflowCheckedBinopERKNS2_22OverflowCheckedBinopOpE(ptr noundef nonnull align 8 dereferenceable(1656) %0, ptr noundef nonnull align 4 dereferenceable(6) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.c = load i8, ptr %i.b, align 1, !noalias !1755
  %i.d = load i8, ptr %i.a, align 4, !noalias !1755
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i4 = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.sroa.0.0.copyload.i4, 4
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, -1
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.o = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.o, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i = load i32, ptr %i.p, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i
  %.sroa.014.0.i.i = phi i32 [ %i.k, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload.i3 = load i32, ptr %i.q, align 4
  %i.r = lshr i32 %.sroa.0.0.copyload.i3, 4
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not.i.i7 = icmp eq i32 %i.u, -1
  br i1 %.not.i.i7, label %bb.d, label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit14

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.s ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i.i.i10 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i9, align 8
  %i.y = trunc nuw i8 %.sroa.2.0.copyload.i.i.i10 to i1
  br i1 %i.y, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11: ; preds = %bb.d
  %.sroa.02.0.copyload.i.i.i12 = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i12, i64 16
  %.sroa.02.0.copyload.i10.i.i13 = load i32, ptr %i.z, align 4
  br label %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit14

_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit14: ; preds = %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11
  %.sroa.014.0.i.i8 = phi i32 [ %i.u, %_ZN2v88internal8compiler10turboshaft20OutputGraphAssemblerINS2_12GraphVisitorINS2_18AssertTypesReducerINS2_21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJS4_S5_S7_S8_SA_EEEEEEEEEEEEEEEEEEENS2_15VariableReducerISM_EEE3MapENS2_7OpIndexE.exit ], [ %.sroa.02.0.copyload.i10.i.i13, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i11 ]
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE26ReduceOverflowCheckedBinopIJNS2_7OpIndexESK_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEEEESK_DpT_(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %.sroa.014.0.i.i, i32 %.sroa.014.0.i.i8, i8 noundef zeroext %i.d, i8 %i.c) ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %0, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !40, !align !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = zext i32 %i.aa to i64
  %i.ah = add i64 %i.af, %i.ag
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = tail call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES4_S5_S7_EEEEEEEEEEEEEE19WrapInTupleIfNeededINS2_22OverflowCheckedBinopOpEEENS2_1VINS2_3AnyEEERKT_SP_(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 4 dereferenceable(6) %i.ai, i32 %i.aa)
  ret i32 %i.aj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES4_S5_S7_EEEEEEEEEEEEEE19WrapInTupleIfNeededINS2_22OverflowCheckedBinopOpEEENS2_1VINS2_3AnyEEERKT_SP_(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 4 dereferenceable(6) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.950", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1
  %4 = icmp eq i8 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.f, ptr %i.e, align 8
  %5 = select i1 %4, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit, !prof !39

bb.b:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.l, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE96ENS2_21UniformReducerAdapterIS3_SG_E27ReduceMakeTupleContinuationEJNS7_6VectorIKNS2_1VINS2_3AnyEEEEEEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr %i.m, i64 %i.p), !inline_history !32
  %i.r = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_11MakeTupleOpEEENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %i.q), !inline_history !32
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, %bb.b
  %.sroa.03.0.i.i = phi i32 [ %i.r, %bb.b ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.sroa.03.0.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit: ; preds = %bb.a
  %.sroa.01.0.copyload = load i8, ptr %5, align 1
  %i.s = call i32 @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEE16ReduceProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(2056) %i.h, i32 %2, i16 noundef zeroext 0, i8 %.sroa.01.0.copyload), !inline_history !33 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %.pre17 = load ptr, ptr %i.e, align 8
  %i.t = icmp eq ptr %.pre, %.pre17
  br i1 %i.t, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, !prof !50

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit, %bb.c
  %.sroa.05.0.i.i21 = phi i32 [ %i.s, %bb.c ], [ %i.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ -1, %bb.a ]
  %i.u = phi ptr [ %.pre.i.i, %bb.c ], [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i21, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1, label %bb.d, !prof !39

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.sroa.01.0.copyload.1 = load i8, ptr %6, align 1
  %i.y = call i32 @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEE16ReduceProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(2056) %i.h, i32 %2, i16 noundef zeroext 1, i8 %.sroa.01.0.copyload.1), !inline_history !33
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1: ; preds = %bb.d, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %.sroa.05.0.i.i.1 = phi i32 [ %i.y, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit ]
  %i.z = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, !prof !39

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i.1 = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  %i.ac = phi ptr [ %.pre.i.i.1, %bb.e ], [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ad, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i.1, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.b, !prof !39
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE26ReduceOverflowCheckedBinopIJNS2_7OpIndexESK_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEEEESK_DpT_(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE26ReduceOverflowCheckedBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEEEESO_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_22OverflowCheckedBinopOpEEENS2_7OpIndexESL_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !40, !align !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = zext i32 %i.b to i64
  %i.l = add i64 %i.j, %i.k
  %i.m = inttoptr i64 %i.l to ptr
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(1136) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.n = call noundef ptr @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_22OverflowCheckedBinopOpEEEPNSI_5EntryERKT_Pm(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 4 dereferenceable(6) %i.m, ptr noundef nonnull %i.a) ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.t, align 4
  %i.u = load i64, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.aa = load i32, ptr %i.z, align 4
  store i32 %i.b, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4
  store i64 %i.u, ptr %i.o, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.y, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i32 %i.aa, ptr %.sroa.7.0..sroa_idx.i, align 8
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  store ptr %i.n, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE10RemoveLastENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %i.b)
  %.sroa.015.0.copyload.i = load i32, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.015.0.i = phi i32 [ %i.b, %bb.c ], [ %.sroa.015.0.copyload.i, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_22OverflowCheckedBinopOpEEENS2_7OpIndexESL_.exit

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_22OverflowCheckedBinopOpEEENS2_7OpIndexESL_.exit: ; preds = %bb.e, %bb.a
  %.sroa.015.2.i = phi i32 [ %i.b, %bb.a ], [ %.sroa.015.0.i, %bb.e ]
  ret i32 %.sroa.015.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE26ReduceOverflowCheckedBinopENS2_1VINS2_13UntaggedUnionIJNS2_12WordWithBitsILm32EEENSK_ILm64EEEEEEEESO_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationE(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %7 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_22OverflowCheckedBinopOpEJNS2_14ShadowyOpIndexESH_NSG_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) ; 3 uses
  %i.b = icmp ne i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7GetTypeENS2_7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %6, ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7GetTypeENS2_7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %7, ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %2)
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.j = load ptr, ptr %i.i, align 8
  call void @_ZN2v88internal8compiler10turboshaft5Typer24TypeOverflowCheckedBinopERKNS2_4TypeES6_NS2_22OverflowCheckedBinopOp4KindENS2_18WordRepresentationEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext %3, i8 %4, ptr noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %5, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_22OverflowCheckedBinopOpEJNS2_14ShadowyOpIndexESH_NSG_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i32 %2, i8 noundef zeroext %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !40, !align !41 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = sub i64 %i.e, %i.h                       ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.e
  %i.n = icmp ult i64 %i.m, 9
  br i1 %i.n, label %bb.b, label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_22OverflowCheckedBinopOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, !prof !39

bb.b:                                             ; preds = %bb.a
  %i.o = sub i64 %i.l, %i.h
  %i.p = lshr exact i64 %i.o, 3
  %i.q = and i64 %i.p, 4294967295
  %i.r = add nuw nsw i64 %i.q, 2
  tail call void @_ZN2v88internal8compiler10turboshaft15OperationBuffer4GrowEm(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 noundef %i.r)
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8     ; 2 uses
  %.pre10.i.i.i.i = ptrtoint ptr %.pre.i.i.i.i to i64
  %.pre = load ptr, ptr %i.f, align 8
  %.pre13 = ptrtoint ptr %.pre to i64
  %.pre14 = sub i64 %.pre10.i.i.i.i, %.pre13
  br label %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_22OverflowCheckedBinopOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit

_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm2ENS2_22OverflowCheckedBinopOpEE3NewIJNS2_14ShadowyOpIndexES7_NS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit: ; preds = %bb.a, %bb.b
  %.pre-phi15 = phi i64 [ %i.i, %bb.a ], [ %.pre14, %bb.b ] ; 2 uses
  %i.s = phi ptr [ %i.d, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.c, align 8
  %i.u = trunc i64 %.pre-phi15 to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.pre-phi15, 4
  %i.y = and i64 %i.x, 268435455
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.y
  store i16 2, ptr %i.z, align 2
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = add i32 %i.u, 16
  %i.ac = lshr i32 %i.ab, 4
  %i.ad = add nsw i32 %i.ac, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ae
  store i16 2, ptr %i.af, align 2
  store i8 63, ptr %i.s, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  store i16 2, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %1, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  store i32 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i8 %3, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %4, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = zext i32 %1 to i64
  %i.ap = add i64 %i.an, %i.ao
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_11WordUnaryOpEJNS2_14ShadowyOpIndexENSG_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_:bb.a
  store i8 %2, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 5
  store i8 %3, ptr %i.ak, align 1
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = zext i32 %1 to i64
  %i.ao = add i64 %i.am, %i.an
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.ar, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11WordUnaryOpEEEvRKT_.exit, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11WordUnaryOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit
  %i.as = add nuw i8 %i.ar, 1
  store i8 %i.as, ptr %i.aq, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11WordUnaryOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11WordUnaryOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_11WordUnaryOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS2_18WordRepresentationEEEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2020
  %.sroa.0.0.copyload.i = load i32, ptr %i.at, align 4
  %i.au = load ptr, ptr %i.a, align 8, !nonnull !40, !align !41 ; 4 uses
  %i.av = lshr i64 %i.i, 4
  %i.aw = and i64 %i.av, 268435455                ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 208 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %.not.i.i8 = icmp ugt i64 %i.be, %i.aw
  br i1 %.not.i.i8, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11WordUnaryOpEEEvRKT_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 200 ; 2 uses
  %i.bg = lshr i64 %i.aw, 1
  %i.bh = add nuw nsw i64 %i.aw, 32
  %i.bi = add nuw nsw i64 %i.bh, %i.bg
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 224
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.az, align 8
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.bp)
  %.pre.i.i = load ptr, ptr %i.az, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11WordUnaryOpEEEvRKT_.exit, %bb.d
  %i.bq = phi ptr [ %.pre.i.i, %bb.d ], [ %i.ba, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_11WordUnaryOpEEEvRKT_.exit ]
  %i.br = trunc i64 %i.i to i32
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.aw
  store i32 %.sroa.0.0.copyload.i, ptr %i.bs, align 4
  ret i32 %i.br
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE25ReduceInputGraphOperationINS2_22OverflowCheckedUnaryOpENS2_21UniformReducerAdapterIS3_SG_E38ReduceOverflowCheckedUnaryContinuationEEENS2_7OpIndexESN_RKT_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(6) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.c = load i8, ptr %i.b, align 1, !noalias !1780
  %i.d = load i8, ptr %i.a, align 4, !noalias !1780
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i3.i.i.i = load i32, ptr %i.e, align 4
  %i.f = lshr i32 %.sroa.0.0.copyload.i3.i.i.i, 4
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.g
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.k, -1
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE38ReduceOverflowCheckedUnaryContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_22OverflowCheckedUnaryOpE.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.g ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.o = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i to i1
  br i1 %i.o, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i = load i32, ptr %i.p, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE38ReduceOverflowCheckedUnaryContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_22OverflowCheckedUnaryOpE.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE38ReduceOverflowCheckedUnaryContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_22OverflowCheckedUnaryOpE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i = phi i32 [ %i.k, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i ]
  %i.q = tail call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE65ENS2_21UniformReducerAdapterIS3_SG_E38ReduceOverflowCheckedUnaryContinuationEJNS2_7OpIndexENS2_22OverflowCheckedUnaryOp4KindENS2_18WordRepresentationEEEESN_DpT1_(ptr noundef nonnull align 8 dereferenceable(1656) %0, i32 %.sroa.014.0.i.i.i.i.i, i8 noundef zeroext %i.d, i8 %i.c)
  %i.r = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_22OverflowCheckedUnaryOpEEENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(1656) %0, i32 %i.q) ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %0, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !40, !align !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = zext i32 %i.r to i64
  %i.y = add i64 %i.w, %i.x
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = tail call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES4_S5_S7_EEEEEEEEEEEEEE19WrapInTupleIfNeededINS2_22OverflowCheckedUnaryOpEEENS2_1VINS2_3AnyEEERKT_SP_(ptr noundef nonnull align 8 dereferenceable(1656) %0, ptr noundef nonnull align 4 dereferenceable(6) %i.z, i32 %i.r) ; 4 uses
  %.not = icmp eq i32 %i.aa, -1
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE38ReduceOverflowCheckedUnaryContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_22OverflowCheckedUnaryOpE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ae = lshr i32 %1, 4
  %i.af = zext nneg i32 %i.ae to i64              ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !1781
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1781 ; 2 uses
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 24
  %.not.i.i.i = icmp ugt i64 %i.an, %i.af
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ap = lshr i64 %i.af, 1
  %i.aq = add nuw nsw i64 %i.af, 32
  %i.ar = add nuw nsw i64 %i.aq, %i.ap
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 noundef %i.ar), !noalias !1781
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !noalias !1781
  %i.au = load ptr, ptr %i.ai, align 8, !noalias !1781
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 24
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 noundef %i.ay), !noalias !1781
  %.pre.i.i.i = load ptr, ptr %i.ai, align 8, !noalias !1781
  br label %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit: ; preds = %bb.e, %bb.f
  %i.az = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.aj, %bb.e ]
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  %i.bb = load i8, ptr %3, align 8
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7GetTypeENS2_7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %4, ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.aa)
  %i.bd = load i8, ptr %4, align 8
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  br i1 %i.bf, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bg = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  br i1 %i.bg, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.bi = load ptr, ptr %i.bh, align 8
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE19RefineOperationTypeEPNS2_5BlockENS2_7OpIndexERKNS2_4TypeEc(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.bi, i32 %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef signext 73)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE38ReduceOverflowCheckedUnaryContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_22OverflowCheckedUnaryOpE.exit, %bb.l
  ret i32 %i.aa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES4_S5_S7_EEEEEEEEEEEEEE19WrapInTupleIfNeededINS2_22OverflowCheckedUnaryOpEEENS2_1VINS2_3AnyEEERKT_SP_(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 4 dereferenceable(6) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.950", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1
  %4 = icmp eq i8 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.f, ptr %i.e, align 8
  %5 = select i1 %4, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit, !prof !39

bb.b:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.l, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE96ENS2_21UniformReducerAdapterIS3_SG_E27ReduceMakeTupleContinuationEJNS7_6VectorIKNS2_1VINS2_3AnyEEEEEEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr %i.m, i64 %i.p), !inline_history !32
  %i.r = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_11MakeTupleOpEEENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %i.q), !inline_history !32
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, %bb.b
  %.sroa.03.0.i.i = phi i32 [ %i.r, %bb.b ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.sroa.03.0.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit: ; preds = %bb.a
  %.sroa.01.0.copyload = load i8, ptr %5, align 1
  %i.s = call i32 @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEE16ReduceProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(2056) %i.h, i32 %2, i16 noundef zeroext 0, i8 %.sroa.01.0.copyload), !inline_history !33 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %.pre17 = load ptr, ptr %i.e, align 8
  %i.t = icmp eq ptr %.pre, %.pre17
  br i1 %i.t, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, !prof !50

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit, %bb.c
  %.sroa.05.0.i.i21 = phi i32 [ %i.s, %bb.c ], [ %i.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ -1, %bb.a ]
  %i.u = phi ptr [ %.pre.i.i, %bb.c ], [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i21, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1, label %bb.d, !prof !39

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.sroa.01.0.copyload.1 = load i8, ptr %6, align 1
  %i.y = call i32 @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEE16ReduceProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(2056) %i.h, i32 %2, i16 noundef zeroext 1, i8 %.sroa.01.0.copyload.1), !inline_history !33
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1: ; preds = %bb.d, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %.sroa.05.0.i.i.1 = phi i32 [ %i.y, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit ]
  %i.z = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, !prof !39

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i.1 = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  %i.ac = phi ptr [ %.pre.i.i.1, %bb.e ], [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ad, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i.1, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.b, !prof !39
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_22OverflowCheckedUnaryOpEEENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !40, !align !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 3 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(1136) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.n = load i8, ptr %i.m, align 1, !noalias !1787 ; 2 uses
  %i.o = load i8, ptr %i.l, align 1, !noalias !1787 ; 2 uses
  %.0.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i.i, align 4 ; 2 uses
  %i.p = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.q = zext nneg i32 %i.p to i64
  %i.r = zext i8 %i.n to i64
  %i.s = mul nuw nsw i64 %i.r, 17
  %i.t = zext i8 %i.o to i64
  %i.u = add nuw nsw i64 %i.s, %i.t
  %reass.add.i.i.i = add nuw nsw i64 %i.u, %i.q
  %i.v = mul nuw nsw i64 %reass.add.i.i.i, 289
  %i.w = add nuw nsw i64 %i.v, -807902598658493487 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.w, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.z ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i
  %.pre.pre = phi i64 [ %i.be, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ae, %bb.b ]
  %i.ag = phi ptr [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ac, %bb.b ] ; 2 uses
  %.02632.i = phi i64 [ %i.bb, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.z, %bb.b ]
  %i.ah = icmp eq i64 %.pre.pre, %i.w
  br i1 %i.ah, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.ai = load ptr, ptr %i.d, align 8, !nonnull !40, !align !41
  %.sroa.0.0.copyload.i = load i32, ptr %i.ag, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = zext i32 %.sroa.0.0.copyload.i to i64
  %i.an = add i64 %i.al, %i.am
  %i.ao = inttoptr i64 %i.an to ptr               ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 4
  %i.aq = icmp eq i8 %i.ap, 65
  br i1 %i.aq, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i.i, align 4
  %i.as = icmp eq i32 %i.ar, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.as, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.i: ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 5
  %i.av = load i8, ptr %i.au, align 1, !noalias !1788
  %i.aw = load i8, ptr %i.at, align 4, !noalias !1788
  %i.ax = icmp eq i8 %i.aw, %i.o
  %i.ay = icmp eq i8 %i.av, %i.n
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_22OverflowCheckedUnaryOpEEEPNSI_5EntryERKT_Pm.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.i, %bb.d, %bb.c, %.lr.ph.i
  %i.ba = add i64 %.02632.i, 1
  %i.bb = and i64 %i.ba, %i.y                     ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.bb ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %.loopexit, label %.lr.ph.i, !llvm.loop !1786

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i, %bb.b
  %.ph = phi ptr [ %i.ac, %bb.b ], [ %i.bc, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.thread.i ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.bp = load i32, ptr %i.bo, align 4
  store i32 %1, ptr %.ph, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store i32 %.sroa.0.0.copyload.i16, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %i.w, ptr %i.bg, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  store ptr %i.bn, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 24
  store i32 %i.bp, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bq = load ptr, ptr %i.bk, align 8
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -8
  store ptr %.ph, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.bs, align 8
  br label %bb.e

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_22OverflowCheckedUnaryOpEEEPNSI_5EntryERKT_Pm.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_22OverflowCheckedUnaryOpEE12EqualsForGVNERKS5_.exit.i
  tail call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE10RemoveLastENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1)
  %.sroa.015.0.copyload = load i32, ptr %i.ag, align 8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_22OverflowCheckedUnaryOpEEEPNSI_5EntryERKT_Pm.exit, %bb.a
  %.sroa.015.2 = phi i32 [ %1, %bb.a ], [ %1, %.loopexit ], [ %.sroa.015.0.copyload, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_22OverflowCheckedUnaryOpEEEPNSI_5EntryERKT_Pm.exit ]
  ret i32 %.sroa.015.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE65ENS2_21UniformReducerAdapterIS3_SG_E38ReduceOverflowCheckedUnaryContinuationEJNS2_7OpIndexENS2_22OverflowCheckedUnaryOp4KindENS2_18WordRepresentationEEEESN_DpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, i8 noundef zeroext %2, i8 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_22OverflowCheckedUnaryOpEJNS2_14ShadowyOpIndexENSG_4KindENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 noundef zeroext %2, i8 %3) ; 4 uses
  %i.b = icmp ne i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %i.a to i64                     ; 2 uses
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, %i.l
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @_ZN2v88internal8compiler10turboshaft5Typer21TypeForRepresentationENS_4base6VectorIKNS2_22RegisterRepresentationEEEPNS0_4ZoneE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %4, ptr %i.x, i64 %i.y, ptr noundef %i.ab)
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7SetTypeENS2_7OpIndexERKNS2_4TypeEb(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret i32 %i.a
end_hunk_1
begin_hunk_2_@_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_8ChangeOpEJNS2_14ShadowyOpIndexENSG_4KindENSG_10AssumptionENS2_22RegisterRepresentationESK_EEENS2_7OpIndexEDpT0_:bb.a
  store i8 %5, ptr %i.am, align 1
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = zext i32 %1 to i64
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1             ; 2 uses
  %.not.i.i = icmp eq i8 %i.at, -1
  br i1 %.not.i.i, label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit, label %bb.c, !prof !39

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_22RegisterRepresentationESA_EEERS4_PNS2_5GraphEDpT_.exit
  %i.au = add nuw i8 %i.at, 1
  store i8 %i.au, ptr %i.as, align 1
  br label %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit

_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft20FixedArityOperationTILm1ENS2_8ChangeOpEE3NewIJNS2_14ShadowyOpIndexENS4_4KindENS4_10AssumptionENS2_22RegisterRepresentationESA_EEERS4_PNS2_5GraphEDpT_.exit, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2020
  %.sroa.0.0.copyload.i = load i32, ptr %i.av, align 4
  %i.aw = load ptr, ptr %i.a, align 8, !nonnull !40, !align !41 ; 4 uses
  %i.ax = lshr i64 %i.i, 4
  %i.ay = and i64 %i.ax, 268435455                ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 216
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 208 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.bd = ptrtoint ptr %i.ba to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2
  %.not.i.i11 = icmp ugt i64 %i.bg, %i.ay
  br i1 %.not.i.i11, label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit, label %bb.d, !prof !42

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 200 ; 2 uses
  %i.bi = lshr i64 %i.ay, 1
  %i.bj = add nuw nsw i64 %i.ay, 32
  %i.bk = add nuw nsw i64 %i.bj, %i.bi
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.bb, align 8
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 2
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft7OpIndexEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 noundef %i.br)
  %.pre.i.i = load ptr, ptr %i.bb, align 8
  br label %_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit

_ZN2v88internal8compiler10turboshaft23GrowingOpIndexSidetableINS2_7OpIndexEEixES4_.exit: ; preds = %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit, %bb.d
  %i.bs = phi ptr [ %.pre.i.i, %bb.d ], [ %i.bc, %_ZN2v88internal8compiler10turboshaft5Graph18IncrementInputUsesINS2_8ChangeOpEEEvRKT_.exit ]
  %i.bt = trunc i64 %i.i to i32
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ay
  store i32 %.sroa.0.0.copyload.i, ptr %i.bu, align 4
  ret i32 %i.bt
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE25ReduceInputGraphOperationINS2_11TryChangeOpENS2_21UniformReducerAdapterIS3_SG_E27ReduceTryChangeContinuationEEENS2_7OpIndexESN_RKT_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, ptr noundef nonnull align 4 dereferenceable(7) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 7 uses
  %4 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.d = load i8, ptr %i.c, align 2, !noalias !1831
  %i.e = load i8, ptr %i.b, align 1, !noalias !1831
  %i.f = load i8, ptr %i.a, align 4, !noalias !1831
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i3.i.i.i = load i32, ptr %i.g, align 4
  %i.h = lshr i32 %.sroa.0.0.copyload.i3.i.i.i, 4
  %i.i = zext nneg i32 %i.h to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.m, -1
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceTryChangeContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11TryChangeOpE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.i ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8
  %i.q = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i.i.i to i1
  br i1 %i.q, label %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt27__throw_bad_optional_accessv() #28
  unreachable

_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i: ; preds = %bb.b
  %.sroa.02.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload.i.i.i.i.i.i, i64 16
  %.sroa.02.0.copyload.i10.i.i.i.i.i = load i32, ptr %i.r, align 4
  br label %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceTryChangeContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11TryChangeOpE.exit

_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceTryChangeContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11TryChangeOpE.exit: ; preds = %bb.a, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i
  %.sroa.014.0.i.i.i.i.i = phi i32 [ %i.m, %bb.a ], [ %.sroa.02.0.copyload.i10.i.i.i.i.i, %_ZNRSt8optionalIN2v88internal8compiler10turboshaft16SnapshotTableKeyINS3_7OpIndexENS3_12VariableDataEEEE5valueEv.exit.i.i.i.i.i ]
  %i.s = tail call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE70ENS2_21UniformReducerAdapterIS3_SG_E27ReduceTryChangeContinuationEJNS2_7OpIndexENS2_11TryChangeOp4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEESN_DpT1_(ptr noundef nonnull align 8 dereferenceable(1656) %0, i32 %.sroa.014.0.i.i.i.i.i, i8 noundef zeroext %i.f, i8 %i.e, i8 %i.d)
  %i.t = tail call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_11TryChangeOpEEENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(1656) %0, i32 %i.s) ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %0, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !40, !align !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = zext i32 %i.t to i64
  %i.aa = add i64 %i.y, %i.z
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = tail call i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES4_S5_S7_EEEEEEEEEEEEEE19WrapInTupleIfNeededINS2_11TryChangeOpEEENS2_1VINS2_3AnyEEERKT_SP_(ptr noundef nonnull align 8 dereferenceable(1656) %0, ptr noundef nonnull align 4 dereferenceable(7) %i.ab, i32 %i.t) ; 4 uses
  %.not = icmp eq i32 %i.ac, -1
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceTryChangeContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11TryChangeOpE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ag = lshr i32 %1, 4
  %i.ah = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !1832
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !1832 ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = sdiv exact i64 %i.ao, 24
  %.not.i.i.i = icmp ugt i64 %i.ap, %i.ah
  br i1 %.not.i.i.i, label %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit, label %bb.f, !prof !42

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = lshr i64 %i.ah, 1
  %i.as = add nuw nsw i64 %i.ah, 32
  %i.at = add nuw nsw i64 %i.as, %i.ar
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.at), !noalias !1832
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !noalias !1832
  %i.aw = load ptr, ptr %i.ak, align 8, !noalias !1832
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = sdiv exact i64 %i.az, 24
  tail call void @_ZN2v88internal10ZoneVectorINS0_8compiler10turboshaft4TypeEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.ba), !noalias !1832
  %.pre.i.i.i = load ptr, ptr %i.ak, align 8, !noalias !1832
  br label %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit

_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit: ; preds = %bb.e, %bb.f
  %i.bb = phi ptr [ %.pre.i.i.i, %bb.f ], [ %i.al, %bb.e ]
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.bb, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 24, i1 false)
  %i.bd = load i8, ptr %3, align 8
  %i.be = icmp eq i8 %i.bd, 0
  br i1 %i.be, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE7GetTypeENS2_7OpIndexE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::compiler::turboshaft::Type") align 8 %4, ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %i.ac)
  %i.bf = load i8, ptr %4, align 8
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  br i1 %i.bh, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bi = call noundef zeroext i1 @_ZNK2v88internal8compiler10turboshaft4Type11IsSubtypeOfERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.bk = load ptr, ptr %i.bj, align 8
  call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE19RefineOperationTypeEPNS2_5BlockENS2_7OpIndexERKNS2_4TypeEc(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef %i.bk, i32 %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %3, i8 noundef signext 73)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE17GetInputGraphTypeENS2_7OpIndexE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_ZN2v88internal8compiler10turboshaft21UniformReducerAdapterINS2_20TypeInferenceReducerENS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES4_S6_EEEEEEEEEE27ReduceTryChangeContinuation16ReduceInputGraphENS2_7OpIndexERKNS2_11TryChangeOpE.exit, %bb.l
  ret i32 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21EmitProjectionReducerINS2_21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES4_S5_S7_EEEEEEEEEEEEEE19WrapInTupleIfNeededINS2_11TryChangeOpEEENS2_1VINS2_3AnyEEERKT_SP_(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr noundef nonnull align 4 dereferenceable(7) %1, i32 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::base::SmallVector.950", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.b = load i8, ptr %i.a, align 2
  %4 = icmp eq i8 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.f, ptr %i.e, align 8
  %5 = select i1 %4, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE0ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array, ptr @_ZZN2v88internal8compiler10turboshaft9RepVectorIJLNS2_22RegisterRepresentation4EnumE1ELS5_0EEEENS_4base6VectorIKS4_EEvE9rep_array ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2000 ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit, !prof !39

bb.b:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load ptr, ptr %3, align 8                ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.l, %i.n
  %i.p = ashr exact i64 %i.o, 2
  %i.q = call i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE96ENS2_21UniformReducerAdapterIS3_SG_E27ReduceMakeTupleContinuationEJNS7_6VectorIKNS2_1VINS2_3AnyEEEEEEEENS2_7OpIndexEDpT1_(ptr noundef nonnull align 8 dereferenceable(1136) %0, ptr %i.m, i64 %i.p), !inline_history !32
  %i.r = call i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_11MakeTupleOpEEENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %i.q), !inline_history !32
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit: ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, %bb.b
  %.sroa.03.0.i.i = phi i32 [ %i.r, %bb.b ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1 ]
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.sroa.03.0.i.i

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit: ; preds = %bb.a
  %.sroa.01.0.copyload = load i8, ptr %5, align 1
  %i.s = call i32 @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEE16ReduceProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(2056) %i.h, i32 %2, i16 noundef zeroext 0, i8 %.sroa.01.0.copyload), !inline_history !33 ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %.pre17 = load ptr, ptr %i.e, align 8
  %i.t = icmp eq ptr %.pre, %.pre17
  br i1 %i.t, label %bb.c, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit, !prof !50

bb.c:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit: ; preds = %bb.a, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit, %bb.c
  %.sroa.05.0.i.i21 = phi i32 [ %i.s, %bb.c ], [ %i.s, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ -1, %bb.a ]
  %i.u = phi ptr [ %.pre.i.i, %bb.c ], [ %.pre, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit ], [ %i.c, %bb.a ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store ptr %i.v, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i21, ptr %i.u, align 4
  %i.w = load ptr, ptr %i.g, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1, label %bb.d, !prof !39

bb.d:                                             ; preds = %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.sroa.01.0.copyload.1 = load i8, ptr %6, align 1
  %i.y = call i32 @_ZN2v88internal8compiler10turboshaft9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEE16ReduceProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE(ptr noundef nonnull align 8 dereferenceable(2056) %i.h, i32 %2, i16 noundef zeroext 1, i8 %.sroa.01.0.copyload.1), !inline_history !33
  br label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1

_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1: ; preds = %bb.d, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit
  %.sroa.05.0.i.i.1 = phi i32 [ %i.y, %bb.d ], [ -1, %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit ]
  %i.z = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.e, align 8
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1, !prof !39

bb.e:                                             ; preds = %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %.pre.i.i.1 = load ptr, ptr %i.d, align 8
  br label %_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1

_ZN2v84base11SmallVectorINS_8internal8compiler10turboshaft1VINS4_3AnyEEELm8ESaIS7_EE9push_backES7_.exit.1: ; preds = %bb.e, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1
  %i.ac = phi ptr [ %.pre.i.i.1, %bb.e ], [ %i.z, %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE10ProjectionENS2_1VINS2_3AnyEEEtNS2_22RegisterRepresentationE.exit.1 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store ptr %i.ad, ptr %i.d, align 8
  store i32 %.sroa.05.0.i.i.1, ptr %i.ac, align 4
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN2v88internal8compiler10turboshaft30TurboshaftAssemblerOpInterfaceINS2_9AssemblerINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerENS2_13TSReducerBaseEEEEEEE9MakeTupleENS5_6VectorIKNS2_1VINS2_3AnyEEEEE.exit, label %bb.b, !prof !39
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE9AddOrFindINS2_11TryChangeOpEEENS2_7OpIndexESL_(ptr noundef nonnull align 8 dereferenceable(1136) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !40, !align !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = zext i32 %1 to i64
  %i.j = add i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr                 ; 4 uses
  tail call void @_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE14RehashIfNeededEv(ptr noundef nonnull align 8 dereferenceable(1136) %0)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 6
  %i.o = load i8, ptr %i.n, align 1, !noalias !1838 ; 2 uses
  %i.p = load i8, ptr %i.m, align 1, !noalias !1838 ; 2 uses
  %i.q = load i8, ptr %i.l, align 1, !noalias !1838 ; 2 uses
  %.0.i.i.ptr.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i32, ptr %.0.i.i.ptr.i.i.i.i, align 4 ; 2 uses
  %i.r = lshr i32 %.sroa.0.0.copyload.i.i.i.i.i.i, 4
  %i.s = zext nneg i32 %i.r to i64
  %i.t = zext i8 %i.o to i64
  %i.u = mul nuw nsw i64 %i.t, 17
  %i.v = zext i8 %i.p to i64
  %i.w = add nuw nsw i64 %i.u, %i.v
  %i.x = mul nuw nsw i64 %i.w, 17
  %i.y = zext i8 %i.q to i64
  %i.z = add nuw nsw i64 %i.x, %i.y
  %reass.add.i.i.i = add nuw nsw i64 %i.z, %i.s
  %i.aa = mul nuw nsw i64 %reass.add.i.i.i, 289
  %i.ab = add nuw nsw i64 %i.aa, -807902598658493482 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ab, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.ae ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i
  %.pre.pre = phi i64 [ %i.bm, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.aj, %bb.b ]
  %i.al = phi ptr [ %i.bk, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ah, %bb.b ] ; 2 uses
  %.02632.i = phi i64 [ %i.bj, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i ], [ %i.ae, %bb.b ]
  %i.am = icmp eq i64 %.pre.pre, %i.ab
  br i1 %i.am, label %bb.c, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = load ptr, ptr %i.d, align 8, !nonnull !40, !align !41
  %.sroa.0.0.copyload.i = load i32, ptr %i.al, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = zext i32 %.sroa.0.0.copyload.i to i64
  %i.as = add i64 %i.aq, %i.ar
  %i.at = inttoptr i64 %i.as to ptr               ; 5 uses
  %i.au = load i8, ptr %i.at, align 4
  %i.av = icmp eq i8 %i.au, 70
  br i1 %i.av, label %bb.d, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.0810.i.i.i.i.i.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i32, ptr %.0810.i.i.i.i.i.i.i.ptr.i.i.i, align 4
  %i.ax = icmp eq i32 %i.aw, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.ax, label %bb.e, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.az = load i8, ptr %i.ay, align 4, !noalias !1839
  %i.ba = icmp eq i8 %i.az, %i.q
  br i1 %i.ba, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.i, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.i: ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !1839
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 6
  %i.be = load i8, ptr %i.bd, align 2, !noalias !1839
  %i.bf = icmp eq i8 %i.bc, %i.p
  %i.bg = icmp eq i8 %i.be, %i.o
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_11TryChangeOpEEEPNSI_5EntryERKT_Pm.exit, label %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i

_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.i, %bb.e, %bb.d, %bb.c, %.lr.ph.i
  %i.bi = add i64 %.02632.i, 1
  %i.bj = and i64 %i.bi, %i.ad                    ; 2 uses
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.bj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.loopexit, label %.lr.ph.i, !llvm.loop !1837

.loopexit:                                        ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i, %bb.b
  %.ph = phi ptr [ %i.ah, %bb.b ], [ %i.bk, %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.thread.i ] ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.ph, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 52
  %.sroa.0.0.copyload.i16 = load i32, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -8
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.bx = load i32, ptr %i.bw, align 4
  store i32 %1, ptr %.ph, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 4
  store i32 %.sroa.0.0.copyload.i16, ptr %.sroa.4.0..sroa_idx, align 4
  store i64 %i.ab, ptr %i.bo, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 16
  store ptr %i.bv, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ph, i64 24
  store i32 %i.bx, ptr %.sroa.7.0..sroa_idx, align 8
  %i.by = load ptr, ptr %i.bs, align 8
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8
  store ptr %.ph, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ca, align 8
  br label %bb.f

_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_11TryChangeOpEEEPNSI_5EntryERKT_Pm.exit: ; preds = %_ZNK2v88internal8compiler10turboshaft10OperationTINS2_11TryChangeOpEE12EqualsForGVNERKS5_.exit.i
  tail call void @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE10RemoveLastENS2_7OpIndexE(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1)
  %.sroa.015.0.copyload = load i32, ptr %i.al, align 8
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_11TryChangeOpEEEPNSI_5EntryERKT_Pm.exit, %bb.a
  %.sroa.015.2 = phi i32 [ %1, %bb.a ], [ %1, %.loopexit ], [ %.sroa.015.0.copyload, %_ZN2v88internal8compiler10turboshaft21ValueNumberingReducerINS2_20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerES3_S4_S6_EEEEEEEEEEEE4FindINS2_11TryChangeOpEEEPNSI_5EntryERKT_Pm.exit ]
  ret i32 %.sroa.015.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i32 @_ZN2v88internal8compiler10turboshaft20TypeInferenceReducerINS2_18GenericReducerBaseINS2_13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerES3_S5_EEEEEEEEEE15ReduceOperationILNS2_6OpcodeE70ENS2_21UniformReducerAdapterIS3_SG_E27ReduceTryChangeContinuationEJNS2_7OpIndexENS2_11TryChangeOp4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEESN_DpT1_(ptr noundef nonnull align 8 dereferenceable(992) %0, i32 %1, i8 noundef zeroext %2, i8 %3, i8 %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::compiler::turboshaft::Type", align 8 ; 4 uses
  %i.a = tail call i32 @_ZN2v88internal8compiler10turboshaft13TSReducerBaseINS2_11StackBottomINS_4base3tmp5list1IJNS2_12GraphVisitorENS2_18AssertTypesReducerENS2_21ValueNumberingReducerENS2_20TypeInferenceReducerES3_EEEEEE4EmitINS2_11TryChangeOpEJNS2_14ShadowyOpIndexENSG_4KindENS2_19FloatRepresentationENS2_18WordRepresentationEEEENS2_7OpIndexEDpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 %1, i8 noundef zeroext %2, i8 %3, i8 %4) ; 4 uses
  %i.b = icmp ne i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, 2
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = zext i32 %i.a to i64                     ; 2 uses
  %i.m = add i64 %i.k, %i.l
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.n)
  %i.p = extractvalue { ptr, i64 } %i.o, 1
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.q = load ptr, ptr %i.g, align 8, !nonnull !40, !align !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = add i64 %i.t, %i.l
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = tail call { ptr, i64 } @_ZNK2v88internal8compiler10turboshaft9Operation11outputs_repEv(ptr noundef nonnull align 4 dereferenceable(4) %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
end_hunk_2
