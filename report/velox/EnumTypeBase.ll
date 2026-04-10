inline.NumInlined: 2529
inline.NumDeleted: 1299
begin_hunk_0

$_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_ = comdat any

$_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_ = comdat any

$_ZNSt4pairIKN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS1_12EnumTypeBaseIlS2_NS1_10ScalarTypeILNS1_8TypeKindE4EEEEEEED2Ev = comdat any

end_hunk_0
begin_hunk_1

$_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_ = comdat any

$_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_ = comdat any

$_ZNKSt14default_deleteIN5folly16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS3_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_NS3_10ScalarTypeILNS3_8TypeKindE7EEEEEENS4_4HashENS0_26HeterogeneousAccessEqualToIS4_vEEE4NodeEEclEPSN_ = comdat any

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeEvNSI_9KeyHasherENSI_13KeyValueEqualEvSt17integral_constantIbLb0EEE17afterFailedRehashEPSK_m:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !171
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.b
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %i.p = load i64, ptr %i.a, align 8, !tbaa !171
  %i.q = and i64 %i.p, 255
  %i.r = shl nuw i64 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !309
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = tail call noundef zeroext i1 @_ZNK8facebook5velox17LongEnumParametereqERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull align 8 dereferenceable(88) %i.ar)
  br i1 %i.as, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit.i, label %.critedge.i.i, !prof !94, !llvm.loop !353

bb.e:                                             ; preds = %.critedge.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 15
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.c, !llvm.loop !354

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit.i: ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ai
  tail call void @_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.ay, i64 %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit

_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit: ; preds = %bb.e, %bb.f, %bb.a, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit.i
  %.0 = phi i64 [ 1, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit.i ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !163      ; 4 uses
  %6 = load i32, ptr %1, align 4, !tbaa !3        ; 3 uses
  %7 = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -4
  %8 = getelementptr inbounds i8, ptr %7, i64 %.neg.i.i.i ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 14 ; 2 uses
  %10 = load i8, ptr %9, align 2, !tbaa !356
  %.not.i20 = icmp ult i8 %10, 16
  br i1 %.not.i20, label %21, label %11

11:                                               ; preds = %4
  %12 = zext i32 %6 to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !309
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = tail call noundef i64 @_ZNK8facebook5velox17LongEnumParameter4HashclERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %15) ; 2 uses
  %17 = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %16) ; 2 uses
  %18 = add i64 %17, %16
  %19 = lshr i64 %17, 23
  %20 = or i64 %19, 257
  br label %21

21:                                               ; preds = %11, %4
  %.sroa.5.0.i = phi i64 [ 1, %4 ], [ %20, %11 ]
  %.sroa.04.0.i = phi i64 [ 0, %4 ], [ %18, %11 ] ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %23 = load i64, ptr %22, align 8, !tbaa !171
  %24 = add nuw nsw i64 %23, -256
  store i64 %24, ptr %22, align 8, !tbaa !171
  %25 = getelementptr inbounds nuw i8, ptr %8, i64 %2 ; 2 uses
  %26 = load i8, ptr %25, align 1, !tbaa !36
  %.not.i.i.i.i = icmp sgt i8 %26, -1
  br i1 %.not.i.i.i.i, label %27, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

27:                                               ; preds = %21
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #40
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %21
  store i8 0, ptr %25, align 1, !tbaa !36
  %28 = load i8, ptr %9, align 2, !tbaa !356
  %.not.i.i.i = icmp ult i8 %28, 16
  %.pre = load i64, ptr %22, align 8, !tbaa !171  ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %29

29:                                               ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !166    ; 4 uses
  %32 = and i64 %.pre, 255                        ; 2 uses
  %33 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %32) ; 3 uses
  %34 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %33
  %35 = icmp eq ptr %34, %8
  br i1 %35, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %47, %29
  %.011.lcssa.i.i.i = phi i8 [ 0, %29 ], [ -16, %47 ]
  %36 = phi i64 [ %33, %29 ], [ %49, %47 ]
  %37 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 14 ; 2 uses
  %39 = load i8, ptr %38, align 2, !tbaa !356
  %40 = add i8 %39, %.011.lcssa.i.i.i
  store i8 %40, ptr %38, align 2, !tbaa !356
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit

.lr.ph.i.i.i:                                     ; preds = %29, %47
  %41 = phi i64 [ %49, %47 ], [ %33, %29 ]
  %.01026.i.i.i = phi i64 [ %48, %47 ], [ %.sroa.04.0.i, %29 ]
  %42 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 15 ; 2 uses
  %44 = load i8, ptr %43, align 1, !tbaa !312     ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %44, -2
  br i1 %.not.i17.i.i.i, label %47, label %45

45:                                               ; preds = %.lr.ph.i.i.i
  %46 = add i8 %44, -1
  store i8 %46, ptr %43, align 1, !tbaa !312
  br label %47

47:                                               ; preds = %45, %.lr.ph.i.i.i
  %48 = add i64 %.01026.i.i.i, %.sroa.5.0.i       ; 2 uses
  %49 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %48, i64 range(i64 0, 256) %32) ; 3 uses
  %50 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %49
  %51 = icmp eq ptr %50, %8
  br i1 %51, label %.thread.i.i.i, label %.lr.ph.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i, %.thread.i.i.i
  %52 = zext i32 %6 to i64                        ; 2 uses
  %53 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %52
  %54 = lshr i64 %.pre, 8                         ; 5 uses
  %.not = icmp eq i64 %54, %52
  br i1 %.not, label %100, label %55

55:                                               ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit
  %56 = trunc i64 %54 to i32
  %57 = icmp ne i64 %54, 0
  tail call void @llvm.assume(i1 %57)
  %58 = load ptr, ptr %0, align 8, !tbaa !163
  %59 = and i64 %54, 4294967295
  %60 = getelementptr inbounds nuw [8 x i8], ptr %58, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !309
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %63 = tail call noundef i64 @_ZNK8facebook5velox17LongEnumParameter4HashclERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %62) ; 2 uses
  %64 = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %63) ; 2 uses
  %65 = lshr i64 %64, 24
  %66 = or i64 %65, 128                           ; 2 uses
  %67 = add i64 %64, %63
  %68 = shl nuw nsw i64 %66, 1
  %69 = or disjoint i64 %68, 1
  %70 = trunc nuw i64 %66 to i8
  %71 = insertelement <16 x i8> poison, i8 %70, i64 0
  %72 = shufflevector <16 x i8> %71, <16 x i8> poison, <16 x i32> zeroinitializer
  %73 = load i64, ptr %22, align 8, !tbaa !171
  %74 = and i64 %73, 255
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %76 = load ptr, ptr %75, align 8, !tbaa !166
  br label %77

77:                                               ; preds = %95, %55
  %.0.i = phi i64 [ %67, %55 ], [ %96, %95 ]      ; 2 uses
  %78 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %74)
  %79 = getelementptr inbounds nuw [64 x i8], ptr %76, i64 %78 ; 3 uses
  %80 = load <16 x i8>, ptr %79, align 16
  %81 = icmp eq <16 x i8> %80, %72
  %82 = bitcast <16 x i1> %81 to i16
  %83 = and i16 %82, 4095
  %84 = zext nneg i16 %83 to i32
  %85 = icmp ne ptr %79, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %87, %77
  %.sroa.025.0 = phi i32 [ %84, %77 ], [ %90, %87 ] ; 4 uses
  %.not45 = icmp eq i32 %.sroa.025.0, 0
  br i1 %.not45, label %95, label %87

87:                                               ; preds = %.critedge.i
  %88 = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0, i1 true)
  %89 = add nsw i32 %.sroa.025.0, -1
  %90 = and i32 %89, %.sroa.025.0
  %91 = zext nneg i32 %88 to i64                  ; 2 uses
  tail call void @llvm.assume(i1 %85)
  %92 = getelementptr inbounds nuw [4 x i8], ptr %86, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !3
  %94 = icmp eq i32 %93, %56
  br i1 %94, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit, label %.critedge.i, !prof !94, !llvm.loop !401

95:                                               ; preds = %.critedge.i
  %96 = add i64 %69, %.0.i
  br label %77, !llvm.loop !402

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit: ; preds = %87
  %97 = getelementptr inbounds nuw [4 x i8], ptr %86, i64 %91
  store i32 %6, ptr %97, align 4, !tbaa !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %98 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %54
  %99 = load i64, ptr %98, align 1
  store i64 %99, ptr %53, align 1
  br label %100

100:                                              ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit
  ret void
}

end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeEvNSO_9KeyHasherENSO_13KeyValueEqualEvSt17integral_constantIbLb0EEE17afterFailedRehashEPSQ_m:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !171
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.b
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %i.p = load i64, ptr %i.a, align 8, !tbaa !171
  %i.q = and i64 %i.p, 255
  %i.r = shl nuw i64 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.be = tail call noundef zeroext i1 @_ZNKSt8__detail9_EqualityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EE8_M_equalERKSt10_HashtableIS6_S9_SA_SB_SD_SF_SG_SH_SI_SK_E(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(56) %i.bd)
  br i1 %i.be, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit.i, label %.critedge.i.i.backedge, !prof !94

.critedge.i.i.backedge:                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i
  %.not = icmp eq i32 %i.ai, 0
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.c, !llvm.loop !471

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.aj
  tail call void @_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.bj, i64 %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %2)
  br label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit

_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit: ; preds = %.critedge.i.i._crit_edge, %bb.f, %bb.a, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit.i
  %.0 = phi i64 [ 1, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit.i ], [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %.critedge.i.i._crit_edge ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !219      ; 4 uses
  %6 = load i32, ptr %1, align 4, !tbaa !3        ; 3 uses
  %7 = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i.i = mul i64 %2, -4
  %8 = getelementptr inbounds i8, ptr %7, i64 %.neg.i.i.i ; 4 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 14 ; 2 uses
  %10 = load i8, ptr %9, align 2, !tbaa !356
  %.not.i20 = icmp ult i8 %10, 16
  br i1 %.not.i20, label %21, label %11

11:                                               ; preds = %4
  %12 = zext i32 %6 to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !433
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = tail call noundef i64 @_ZNK8facebook5velox20VarcharEnumParameter4HashclERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %15) ; 2 uses
  %17 = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %16) ; 2 uses
  %18 = add i64 %17, %16
  %19 = lshr i64 %17, 23
  %20 = or i64 %19, 257
  br label %21

21:                                               ; preds = %11, %4
  %.sroa.5.0.i = phi i64 [ 1, %4 ], [ %20, %11 ]
  %.sroa.04.0.i = phi i64 [ 0, %4 ], [ %18, %11 ] ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %23 = load i64, ptr %22, align 8, !tbaa !171
  %24 = add nuw nsw i64 %23, -256
  store i64 %24, ptr %22, align 8, !tbaa !171
  %25 = getelementptr inbounds nuw i8, ptr %8, i64 %2 ; 2 uses
  %26 = load i8, ptr %25, align 1, !tbaa !36
  %.not.i.i.i.i = icmp sgt i8 %26, -1
  br i1 %.not.i.i.i.i, label %27, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i

27:                                               ; preds = %21
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #40
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i: ; preds = %21
  store i8 0, ptr %25, align 1, !tbaa !36
  %28 = load i8, ptr %9, align 2, !tbaa !356
  %.not.i.i.i = icmp ult i8 %28, 16
  %.pre = load i64, ptr %22, align 8, !tbaa !171  ; 2 uses
  br i1 %.not.i.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %29

29:                                               ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !222    ; 4 uses
  %32 = and i64 %.pre, 255                        ; 2 uses
  %33 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0.i, i64 range(i64 0, 256) %32) ; 3 uses
  %34 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %33
  %35 = icmp eq ptr %34, %8
  br i1 %35, label %.thread.i.i.i, label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %47, %29
  %.011.lcssa.i.i.i = phi i8 [ 0, %29 ], [ -16, %47 ]
  %36 = phi i64 [ %33, %29 ], [ %49, %47 ]
  %37 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %36
  %38 = getelementptr inbounds nuw i8, ptr %37, i64 14 ; 2 uses
  %39 = load i8, ptr %38, align 2, !tbaa !356
  %40 = add i8 %39, %.011.lcssa.i.i.i
  store i8 %40, ptr %38, align 2, !tbaa !356
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit

.lr.ph.i.i.i:                                     ; preds = %29, %47
  %41 = phi i64 [ %49, %47 ], [ %33, %29 ]
  %.01026.i.i.i = phi i64 [ %48, %47 ], [ %.sroa.04.0.i, %29 ]
  %42 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %41
  %43 = getelementptr inbounds nuw i8, ptr %42, i64 15 ; 2 uses
  %44 = load i8, ptr %43, align 1, !tbaa !312     ; 2 uses
  %.not.i17.i.i.i = icmp eq i8 %44, -2
  br i1 %.not.i17.i.i.i, label %47, label %45

45:                                               ; preds = %.lr.ph.i.i.i
  %46 = add i8 %44, -1
  store i8 %46, ptr %43, align 1, !tbaa !312
  br label %47

47:                                               ; preds = %45, %.lr.ph.i.i.i
  %48 = add i64 %.01026.i.i.i, %.sroa.5.0.i       ; 2 uses
  %49 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %48, i64 range(i64 0, 256) %32) ; 3 uses
  %50 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %49
  %51 = icmp eq ptr %50, %8
  br i1 %51, label %.thread.i.i.i, label %.lr.ph.i.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i.i, %.thread.i.i.i
  %52 = zext i32 %6 to i64                        ; 2 uses
  %53 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %52
  %54 = lshr i64 %.pre, 8                         ; 5 uses
  %.not = icmp eq i64 %54, %52
  br i1 %.not, label %100, label %55

55:                                               ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit
  %56 = trunc i64 %54 to i32
  %57 = icmp ne i64 %54, 0
  tail call void @llvm.assume(i1 %57)
  %58 = load ptr, ptr %0, align 8, !tbaa !219
  %59 = and i64 %54, 4294967295
  %60 = getelementptr inbounds nuw [8 x i8], ptr %58, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !433
  %62 = getelementptr inbounds nuw i8, ptr %61, i64 16
  %63 = tail call noundef i64 @_ZNK8facebook5velox20VarcharEnumParameter4HashclERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %62) ; 2 uses
  %64 = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %63) ; 2 uses
  %65 = lshr i64 %64, 24
  %66 = or i64 %65, 128                           ; 2 uses
  %67 = add i64 %64, %63
  %68 = shl nuw nsw i64 %66, 1
  %69 = or disjoint i64 %68, 1
  %70 = trunc nuw i64 %66 to i8
  %71 = insertelement <16 x i8> poison, i8 %70, i64 0
  %72 = shufflevector <16 x i8> %71, <16 x i8> poison, <16 x i32> zeroinitializer
  %73 = load i64, ptr %22, align 8, !tbaa !171
  %74 = and i64 %73, 255
  %75 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %76 = load ptr, ptr %75, align 8, !tbaa !222
  br label %77

77:                                               ; preds = %95, %55
  %.0.i = phi i64 [ %67, %55 ], [ %96, %95 ]      ; 2 uses
  %78 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i, i64 range(i64 0, 256) %74)
  %79 = getelementptr inbounds nuw [64 x i8], ptr %76, i64 %78 ; 3 uses
  %80 = load <16 x i8>, ptr %79, align 16
  %81 = icmp eq <16 x i8> %80, %72
  %82 = bitcast <16 x i1> %81 to i16
  %83 = and i16 %82, 4095
  %84 = zext nneg i16 %83 to i32
  %85 = icmp ne ptr %79, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %86 = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %87, %77
  %.sroa.025.0 = phi i32 [ %84, %77 ], [ %90, %87 ] ; 4 uses
  %.not45 = icmp eq i32 %.sroa.025.0, 0
  br i1 %.not45, label %95, label %87

87:                                               ; preds = %.critedge.i
  %88 = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.025.0, i1 true)
  %89 = add nsw i32 %.sroa.025.0, -1
  %90 = and i32 %89, %.sroa.025.0
  %91 = zext nneg i32 %88 to i64                  ; 2 uses
  tail call void @llvm.assume(i1 %85)
  %92 = getelementptr inbounds nuw [4 x i8], ptr %86, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !3
  %94 = icmp eq i32 %93, %56
  br i1 %94, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit, label %.critedge.i, !prof !94, !llvm.loop !499

95:                                               ; preds = %.critedge.i
  %96 = add i64 %69, %.0.i
  br label %77, !llvm.loop !500

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit: ; preds = %87
  %97 = getelementptr inbounds nuw [4 x i8], ptr %86, i64 %91
  store i32 %6, ptr %97, align 4, !tbaa !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %98 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %54
  %99 = load i64, ptr %98, align 1
  store i64 %99, ptr %53, align 1
  br label %100

100:                                              ; preds = %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit
  ret void
}

end_hunk_9
