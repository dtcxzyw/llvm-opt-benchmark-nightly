inline.NumInlined: 2529
inline.NumDeleted: 1299
begin_hunk_0

$_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_ = comdat any

$_ZNSt4pairIKN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS1_12EnumTypeBaseIlS2_NS1_10ScalarTypeILNS1_8TypeKindE4EEEEEEED2Ev = comdat any

end_hunk_0
begin_hunk_1

$_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_ = comdat any

$_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_ = comdat any

$_ZNKSt14default_deleteIN5folly16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS3_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_NS3_10ScalarTypeILNS3_8TypeKindE7EEEEEENS4_4HashENS0_26HeterogeneousAccessEqualToIS4_vEEE4NodeEEclEPSN_ = comdat any

end_hunk_1
begin_hunk_2_@_ZN5folly3f146detail21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeEvNSI_9KeyHasherENSI_13KeyValueEqualEvSt17integral_constantIbLb0EEE17afterFailedRehashEPSK_m:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !171
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.b
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %i.p = load i64, ptr %i.a, align 8, !tbaa !171
  %i.q = and i64 %i.p, 255
  %i.r = shl nuw i64 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
end_hunk_3
begin_hunk_4_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !309
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = tail call noundef zeroext i1 @_ZNK8facebook5velox17LongEnumParametereqERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %i.ap, ptr noundef nonnull align 8 dereferenceable(88) %i.ar)
  br i1 %i.as, label %3, label %.critedge.i.i, !prof !94, !llvm.loop !353

bb.e:                                             ; preds = %.critedge.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 15
end_hunk_4
begin_hunk_5_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISK_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.c, !llvm.loop !354

3:                                                ; preds = %bb.d
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ai ; 2 uses
  %5 = load ptr, ptr %0, align 8, !tbaa !163      ; 3 uses
  %6 = load i32, ptr %4, align 4, !tbaa !3        ; 2 uses
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %4, i64 %i.ai, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %7 = zext i32 %6 to i64                         ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %7
  %9 = load i64, ptr %i.a, align 8, !tbaa !171
  %10 = lshr i64 %9, 8                            ; 5 uses
  %.not.i = icmp eq i64 %10, %7
  br i1 %.not.i, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %11

11:                                               ; preds = %3
  %12 = trunc i64 %10 to i32
  %13 = icmp ne i64 %10, 0
  tail call void @llvm.assume(i1 %13)
  %14 = load ptr, ptr %0, align 8, !tbaa !163
  %15 = and i64 %10, 4294967295
  %16 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !309
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %19 = tail call noundef i64 @_ZNK8facebook5velox17LongEnumParameter4HashclERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %18) ; 2 uses
  %20 = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %19) ; 2 uses
  %21 = lshr i64 %20, 24
  %22 = or i64 %21, 128                           ; 2 uses
  %23 = add i64 %20, %19
  %24 = shl nuw nsw i64 %22, 1
  %25 = or disjoint i64 %24, 1
  %26 = trunc nuw i64 %22 to i8
  %27 = insertelement <16 x i8> poison, i8 %26, i64 0
  %28 = shufflevector <16 x i8> %27, <16 x i8> poison, <16 x i32> zeroinitializer
  %29 = load i64, ptr %i.a, align 8, !tbaa !171
  %30 = and i64 %29, 255
  %31 = load ptr, ptr %i.s, align 8, !tbaa !166
  br label %32

32:                                               ; preds = %50, %11
  %.0.i.i4 = phi i64 [ %23, %11 ], [ %51, %50 ]   ; 2 uses
  %33 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i4, i64 range(i64 0, 256) %30)
  %34 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %33 ; 3 uses
  %35 = load <16 x i8>, ptr %34, align 16
  %36 = icmp eq <16 x i8> %35, %28
  %37 = bitcast <16 x i1> %36 to i16
  %38 = and i16 %37, 4095
  %39 = zext nneg i16 %38 to i32
  %40 = icmp ne ptr %34, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %41 = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  br label %.critedge.i.i6

.critedge.i.i6:                                   ; preds = %42, %32
  %.sroa.024.0.i = phi i32 [ %39, %32 ], [ %45, %42 ] ; 4 uses
  %.not44.i = icmp eq i32 %.sroa.024.0.i, 0
  br i1 %.not44.i, label %50, label %42

42:                                               ; preds = %.critedge.i.i6
  %43 = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i, i1 true)
  %44 = add nsw i32 %.sroa.024.0.i, -1
  %45 = and i32 %44, %.sroa.024.0.i
  %46 = zext nneg i32 %43 to i64                  ; 2 uses
  tail call void @llvm.assume(i1 %40)
  %47 = getelementptr inbounds nuw [4 x i8], ptr %41, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !3
  %49 = icmp eq i32 %48, %12
  br i1 %49, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit.i, label %.critedge.i.i6, !prof !94, !llvm.loop !401

50:                                               ; preds = %.critedge.i.i6
  %51 = add i64 %25, %.0.i.i4
  br label %32, !llvm.loop !402

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit.i: ; preds = %42
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %41, i64 %46
  store i32 %6, ptr %i.ay, align 4, !tbaa !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %52 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %10
  %53 = load i64, ptr %52, align 1
  store i64 %53, ptr %8, align 1
  br label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit

_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseIlS6_NS5_10ScalarTypeILNS5_8TypeKindE4EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSI_9KeyHasherENSI_13KeyValueEqualESaISK_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit: ; preds = %bb.e, %bb.f, %bb.a, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit.i, %3
  %.0 = phi i64 [ 1, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSR_8PrefetchE.exit.i ], [ 0, %bb.a ], [ 1, %3 ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %6 = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 2 uses
  %8 = load i8, ptr %7, align 2, !tbaa !356
  %.not = icmp ult i8 %8, 16
  br i1 %.not, label %21, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !163
  %11 = load i32, ptr %1, align 4, !tbaa !3
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !309
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = tail call noundef i64 @_ZNK8facebook5velox17LongEnumParameter4HashclERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %15) ; 2 uses
  %17 = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %16) ; 2 uses
  %18 = add i64 %17, %16
  %19 = lshr i64 %17, 23
  %20 = or i64 %19, 257
  br label %21

21:                                               ; preds = %9, %4
  %.sroa.5.0 = phi i64 [ 1, %4 ], [ %20, %9 ]
  %.sroa.04.0 = phi i64 [ 0, %4 ], [ %18, %9 ]    ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %23 = load i64, ptr %22, align 8, !tbaa !171    ; 2 uses
  %24 = and i64 %23, -256
  %25 = and i64 %23, 255
  %26 = add i64 %24, -256
  %27 = or disjoint i64 %26, %25
  store i64 %27, ptr %22, align 8, !tbaa !171
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 %2 ; 2 uses
  %29 = load i8, ptr %28, align 1, !tbaa !36
  %.not.i.i.i = icmp sgt i8 %29, -1
  br i1 %.not.i.i.i, label %30, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

30:                                               ; preds = %21
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #40
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %21
  store i8 0, ptr %28, align 1, !tbaa !36
  %31 = load i8, ptr %7, align 2, !tbaa !356
  %.not.i.i = icmp ult i8 %31, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %32

32:                                               ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !166    ; 4 uses
  %35 = load i64, ptr %22, align 8, !tbaa !171
  %36 = and i64 %35, 255                          ; 2 uses
  %37 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0, i64 range(i64 0, 256) %36) ; 3 uses
  %38 = getelementptr inbounds nuw [64 x i8], ptr %34, i64 %37
  %39 = icmp eq ptr %38, %6
  br i1 %39, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %51, %32
  %.011.lcssa.i.i = phi i8 [ 0, %32 ], [ -16, %51 ]
  %40 = phi i64 [ %37, %32 ], [ %53, %51 ]
  %41 = getelementptr inbounds nuw [64 x i8], ptr %34, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 14 ; 2 uses
  %43 = load i8, ptr %42, align 2, !tbaa !356
  %44 = add i8 %43, %.011.lcssa.i.i
  store i8 %44, ptr %42, align 2, !tbaa !356
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %32, %51
  %45 = phi i64 [ %53, %51 ], [ %37, %32 ]
  %.01026.i.i = phi i64 [ %52, %51 ], [ %.sroa.04.0, %32 ]
  %46 = getelementptr inbounds nuw [64 x i8], ptr %34, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 15 ; 2 uses
  %48 = load i8, ptr %47, align 1, !tbaa !312     ; 2 uses
  %.not.i17.i.i = icmp eq i8 %48, -2
  br i1 %.not.i17.i.i, label %51, label %49

49:                                               ; preds = %.lr.ph.i.i
  %50 = add i8 %48, -1
  store i8 %50, ptr %47, align 1, !tbaa !312
  br label %51

51:                                               ; preds = %49, %.lr.ph.i.i
  %52 = add i64 %.01026.i.i, %.sroa.5.0           ; 2 uses
  %53 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %52, i64 range(i64 0, 256) %36) ; 3 uses
  %54 = getelementptr inbounds nuw [64 x i8], ptr %34, i64 %53
  %55 = icmp eq ptr %54, %6
  br i1 %55, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox17LongEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseIlS7_NS6_10ScalarTypeILNS6_8TypeKindE4EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSJ_9KeyHasherENSJ_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

end_hunk_5
begin_hunk_6_@_ZN5folly3f146detail21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeEvNSO_9KeyHasherENSO_13KeyValueEqualEvSt17integral_constantIbLb0EEE17afterFailedRehashEPSQ_m:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !171
  %i.c = icmp ult i64 %i.b, 256
  br i1 %i.c, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.b
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %i.p = load i64, ptr %i.a, align 8, !tbaa !171
  %i.q = and i64 %i.p, 255
  %i.r = shl nuw i64 1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
end_hunk_7
begin_hunk_8_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.be = tail call noundef zeroext i1 @_ZNKSt8__detail9_EqualityINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EE8_M_equalERKSt10_HashtableIS6_S9_SA_SB_SD_SF_SG_SH_SI_SK_E(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(56) %i.bd)
  br i1 %i.be, label %3, label %.critedge.i.i.backedge, !prof !94

.critedge.i.i.backedge:                           ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i
  %.not = icmp eq i32 %i.ai, 0
end_hunk_8
begin_hunk_9_@_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE18eraseUnderlyingKeyISQ_RKNS_16variadic_noop_fnEEEmRKT_OT0_:bb.a
  %.not.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %bb.c, !llvm.loop !471

3:                                                ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i.i.i
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.aj ; 2 uses
  %5 = load ptr, ptr %0, align 8, !tbaa !219      ; 3 uses
  %6 = load i32, ptr %4, align 4, !tbaa !3        ; 2 uses
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %4, i64 %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %2)
  %7 = zext i32 %6 to i64                         ; 2 uses
  %8 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %7
  %9 = load i64, ptr %i.a, align 8, !tbaa !171
  %10 = lshr i64 %9, 8                            ; 5 uses
  %.not.i = icmp eq i64 %10, %7
  br i1 %.not.i, label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit, label %11

11:                                               ; preds = %3
  %12 = trunc i64 %10 to i32
  %13 = icmp ne i64 %10, 0
  tail call void @llvm.assume(i1 %13)
  %14 = load ptr, ptr %0, align 8, !tbaa !219
  %15 = and i64 %10, 4294967295
  %16 = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !433
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 16
  %19 = tail call noundef i64 @_ZNK8facebook5velox20VarcharEnumParameter4HashclERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(88) %18) ; 2 uses
  %20 = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %19) ; 2 uses
  %21 = lshr i64 %20, 24
  %22 = or i64 %21, 128                           ; 2 uses
  %23 = add i64 %20, %19
  %24 = shl nuw nsw i64 %22, 1
  %25 = or disjoint i64 %24, 1
  %26 = trunc nuw i64 %22 to i8
  %27 = insertelement <16 x i8> poison, i8 %26, i64 0
  %28 = shufflevector <16 x i8> %27, <16 x i8> poison, <16 x i32> zeroinitializer
  %29 = load i64, ptr %i.a, align 8, !tbaa !171
  %30 = and i64 %29, 255
  %31 = load ptr, ptr %i.s, align 8, !tbaa !222
  br label %32

32:                                               ; preds = %50, %11
  %.0.i.i4 = phi i64 [ %23, %11 ], [ %51, %50 ]   ; 2 uses
  %33 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.0.i.i4, i64 range(i64 0, 256) %30)
  %34 = getelementptr inbounds nuw [64 x i8], ptr %31, i64 %33 ; 3 uses
  %35 = load <16 x i8>, ptr %34, align 16
  %36 = icmp eq <16 x i8> %35, %28
  %37 = bitcast <16 x i1> %36 to i16
  %38 = and i16 %37, 4095
  %39 = zext nneg i16 %38 to i32
  %40 = icmp ne ptr %34, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %41 = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  br label %.critedge.i.i6

.critedge.i.i6:                                   ; preds = %42, %32
  %.sroa.024.0.i = phi i32 [ %39, %32 ], [ %45, %42 ] ; 4 uses
  %.not44.i = icmp eq i32 %.sroa.024.0.i, 0
  br i1 %.not44.i, label %50, label %42

42:                                               ; preds = %.critedge.i.i6
  %43 = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0.i, i1 true)
  %44 = add nsw i32 %.sroa.024.0.i, -1
  %45 = and i32 %44, %.sroa.024.0.i
  %46 = zext nneg i32 %43 to i64                  ; 2 uses
  tail call void @llvm.assume(i1 %40)
  %47 = getelementptr inbounds nuw [4 x i8], ptr %41, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !3
  %49 = icmp eq i32 %48, %12
  br i1 %49, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit.i, label %.critedge.i.i6, !prof !94, !llvm.loop !499

50:                                               ; preds = %.critedge.i.i6
  %51 = add i64 %25, %.0.i.i4
  br label %32, !llvm.loop !500

_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit.i: ; preds = %42
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %41, i64 %46
  store i32 %6, ptr %i.bj, align 4, !tbaa !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %5) ]
  %52 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %10
  %53 = load i64, ptr %52, align 1
  store i64 %53, ptr %8, align 1
  br label %_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit

_ZN5folly3f146detail16F14VectorSetImplIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS5_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS5_10ScalarTypeILNS5_8TypeKindE7EEEEEENS6_4HashENS_26HeterogeneousAccessEqualToIS6_vEEE4NodeENSO_9KeyHasherENSO_13KeyValueEqualESaISQ_ESt17integral_constantIbLb0EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_.exit: ; preds = %.critedge.i.i._crit_edge, %bb.f, %bb.a, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit.i, %3
  %.0 = phi i64 [ 1, %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE8findImplINS1_26VectorContainerIndexSearchEEENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmERKT_NSX_8PrefetchE.exit.i ], [ 0, %bb.a ], [ 1, %3 ], [ 0, %bb.f ], [ 0, %.critedge.i.i._crit_edge ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE13eraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %6 = getelementptr inbounds i8, ptr %5, i64 %.neg.i.i ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 14 ; 2 uses
  %8 = load i8, ptr %7, align 2, !tbaa !356
  %.not = icmp ult i8 %8, 16
  br i1 %.not, label %21, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !219
  %11 = load i32, ptr %1, align 4, !tbaa !3
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !433
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = tail call noundef i64 @_ZNK8facebook5velox20VarcharEnumParameter4HashclERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %15) ; 2 uses
  %17 = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %16) ; 2 uses
  %18 = add i64 %17, %16
  %19 = lshr i64 %17, 23
  %20 = or i64 %19, 257
  br label %21

21:                                               ; preds = %9, %4
  %.sroa.5.0 = phi i64 [ 1, %4 ], [ %20, %9 ]
  %.sroa.04.0 = phi i64 [ 0, %4 ], [ %18, %9 ]    ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %23 = load i64, ptr %22, align 8, !tbaa !171    ; 2 uses
  %24 = and i64 %23, -256
  %25 = and i64 %23, 255
  %26 = add i64 %24, -256
  %27 = or disjoint i64 %26, %25
  store i64 %27, ptr %22, align 8, !tbaa !171
  %28 = getelementptr inbounds nuw i8, ptr %6, i64 %2 ; 2 uses
  %29 = load i8, ptr %28, align 1, !tbaa !36
  %.not.i.i.i = icmp sgt i8 %29, -1
  br i1 %.not.i.i.i, label %30, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

30:                                               ; preds = %21
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.14) #40
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %21
  store i8 0, ptr %28, align 1, !tbaa !36
  %31 = load i8, ptr %7, align 2, !tbaa !356
  %.not.i.i = icmp ult i8 %31, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %32

32:                                               ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %34 = load ptr, ptr %33, align 8, !tbaa !222    ; 4 uses
  %35 = load i64, ptr %22, align 8, !tbaa !171
  %36 = and i64 %35, 255                          ; 2 uses
  %37 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0, i64 range(i64 0, 256) %36) ; 3 uses
  %38 = getelementptr inbounds nuw [64 x i8], ptr %34, i64 %37
  %39 = icmp eq ptr %38, %6
  br i1 %39, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %51, %32
  %.011.lcssa.i.i = phi i8 [ 0, %32 ], [ -16, %51 ]
  %40 = phi i64 [ %37, %32 ], [ %53, %51 ]
  %41 = getelementptr inbounds nuw [64 x i8], ptr %34, i64 %40
  %42 = getelementptr inbounds nuw i8, ptr %41, i64 14 ; 2 uses
  %43 = load i8, ptr %42, align 2, !tbaa !356
  %44 = add i8 %43, %.011.lcssa.i.i
  store i8 %44, ptr %42, align 2, !tbaa !356
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %32, %51
  %45 = phi i64 [ %53, %51 ], [ %37, %32 ]
  %.01026.i.i = phi i64 [ %52, %51 ], [ %.sroa.04.0, %32 ]
  %46 = getelementptr inbounds nuw [64 x i8], ptr %34, i64 %45
  %47 = getelementptr inbounds nuw i8, ptr %46, i64 15 ; 2 uses
  %48 = load i8, ptr %47, align 1, !tbaa !312     ; 2 uses
  %.not.i17.i.i = icmp eq i8 %48, -2
  br i1 %.not.i17.i.i, label %51, label %49

49:                                               ; preds = %.lr.ph.i.i
  %50 = add i8 %48, -1
  store i8 %50, ptr %47, align 1, !tbaa !312
  br label %51

51:                                               ; preds = %49, %.lr.ph.i.i
  %52 = add i64 %.01026.i.i, %.sroa.5.0           ; 2 uses
  %53 = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %52, i64 range(i64 0, 256) %36) ; 3 uses
  %54 = getelementptr inbounds nuw [64 x i8], ptr %34, i64 %53
  %55 = icmp eq ptr %54, %6
  br i1 %55, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIPNS_16EvictingCacheMapIN8facebook5velox20VarcharEnumParameterESt10shared_ptrIKNS6_12EnumTypeBaseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_NS6_10ScalarTypeILNS6_8TypeKindE7EEEEEENS7_4HashENS_26HeterogeneousAccessEqualToIS7_vEEE4NodeEvNSP_9KeyHasherENSP_13KeyValueEqualEvSt17integral_constantIbLb0EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

end_hunk_9
