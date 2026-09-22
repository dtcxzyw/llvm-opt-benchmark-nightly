Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/sentencepiece_processor?download=true
inline.NumInlined: 6483
inline.NumDeleted: 2307
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm:bb.a
  %i.bm = trunc i128 %i.bl to i64
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2026052613hash_internal21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i, %bb.g, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.ad, %_ZN4absl12lts_2026052613hash_internal26CombineSmallContiguousImplEmPKhm.exit.i ], [ %i.aq, %bb.g ], [ %i.bm, %bb.i ], [ %i.bn, %bb.j ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2026052613hash_internal43CombineLargeContiguousImplOn64BitLengthGt32EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #26

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE19EmplaceDecomposableclIS7_JRKS7_EEESt4pairINS9_8iteratorEbERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.285") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !1344, !nonnull !123, !align !128 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1345)
  %i.b = load i64, ptr %i.a, align 8, !noalias !1345 ; 3 uses
  %i.c = and i64 %i.b, 254
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1347)
  %.not.i.i.i.i = icmp ult i64 %i.b, 131072
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE17should_sample_sooEv.exit.i.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE17should_sample_sooEv.exit.i.i.i: ; preds = %bb.b
  %i.e = or i64 %i.b, 131328
  store i64 %i.e, ptr %i.a, align 8, !noalias !1348
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_smallIS7_EESt4pairINS9_8iteratorEbERKT_.exit.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !117, !noalias !1348 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !112, !noalias !1348
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %2, align 8, !tbaa !117, !noalias !1348
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !112, !noalias !1348
  %i.h = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_smallIS7_EESt4pairINS9_8iteratorEbERKT_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i), !noalias !1348
  %i.j = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_smallIS7_EESt4pairINS9_8iteratorEbERKT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !1348
  store ptr %i.a, ptr %4, align 8, !tbaa !1349, !noalias !1348
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !191, !noalias !1348
  %i.l = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !1348 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !1348
  %.sroa.0.0.copyload.i.i.i.i6.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !47, !noalias !1348, !nonnull !123, !noundef !123
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6.i.i.i, i64 %i.l
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !47, !noalias !1348
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i, i64 %i.l
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_smallIS7_EESt4pairINS9_8iteratorEbERKT_.exit.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_smallIS7_EESt4pairINS9_8iteratorEbERKT_.exit.i: ; preds = %bb.e, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.d, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE17should_sample_sooEv.exit.i.i.i
  %.sink19.i.i.i = phi ptr [ %i.m, %bb.e ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE17should_sample_sooEv.exit.i.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.d ]
  %.sink18.i.i.i = phi ptr [ %i.n, %bb.e ], [ %i.f, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE17should_sample_sooEv.exit.i.i.i ], [ %i.g, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.g, %bb.d ]
  %.sink.i.i.i = phi i8 [ 1, %bb.e ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE17should_sample_sooEv.exit.i.i.i ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  store ptr %.sink19.i.i.i, ptr %0, align 8, !alias.scope !1348
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink18.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1348
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.i.i, ptr %i.o, align 8, !tbaa !371, !alias.scope !1348
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE22find_or_prepare_insertIS7_EESt4pairINS9_8iteratorEbERKT_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINS9_8iteratorEbERKT_(ptr dead_on_unwind writable sret(%"struct.std::pair.285") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !371, !range !122
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE22find_or_prepare_insertIS7_EESt4pairINS9_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE22find_or_prepare_insertIS7_EESt4pairINS9_8iteratorEbERKT_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_smallIS7_EESt4pairINS9_8iteratorEbERKT_.exit.i, %bb.f
  %i.p = phi i8 [ %.sink.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_smallIS7_EESt4pairINS9_8iteratorEbERKT_.exit.i ], [ %.pre, %bb.f ]
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE22find_or_prepare_insertIS7_EESt4pairINS9_8iteratorEbERKT_.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !226
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE22find_or_prepare_insertIS7_EESt4pairINS9_8iteratorEbERKT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINS9_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.285") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !47
  %i.b = load i64, ptr %1, align 8
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.c = lshr i64 %i.b, 8
  %i.d = and i64 %i.c, 255
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !117
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !112
  %i.e = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.d, ptr noundef %.sroa.2.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i) ; 3 uses
  %i.f = load i64, ptr %1, align 8, !noalias !1352
  %i.g = and i64 %i.f, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.g
  %i.h = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.i = lshr i64 %i.e, 57
  %i.j = trunc nuw nsw i64 %i.i to i8
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !47 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i3 = load ptr, ptr %i.k, align 8, !tbaa !47 ; 4 uses
  %i.l = insertelement <16 x i8> poison, i8 %i.j, i64 0
  %i.m = shufflevector <16 x i8> %i.l, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.pn = phi i64 [ %i.e, %bb.a ], [ %i.ak, %bb.f ]
  %.sroa.14.0 = phi i64 [ 0, %bb.a ], [ %i.aj, %bb.f ] ; 2 uses
  %.sroa.640.0 = and i64 %.pn, %i.h               ; 5 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %.sroa.640.0
  tail call void @llvm.prefetch.p0(ptr %i.n, i32 0, i32 3, i32 1)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.640.0
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !47 ; 2 uses
  %i.q = icmp eq <16 x i8> %i.m, %i.p
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = zext i16 %i.r to i32
  %i.t = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.s) #41, !srcloc !367 ; 2 uses
  %.not69 = icmp eq i32 %i.t, 0
  br i1 %.not69, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSG_DpOSH_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i5 = load i64, ptr %2, align 8, !tbaa !117 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !112
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i5, 0
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge.i
  %.sroa.025.070 = phi i32 [ %i.t, %.lr.ph ], [ %i.ad, %.critedge.i ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.025.070, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.sroa.640.0, %i.w
  %i.y = and i64 %i.x, %i.h                       ; 3 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i3, i64 %i.y ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %i.z, align 8, !tbaa !117
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !112
  %i.aa = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i5
  br i1 %i.aa, label %bb.d, label %.critedge.i, !prof !372

bb.d:                                             ; preds = %bb.c
  br i1 %i.u, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINS9_8iteratorEbERKT_ENKUlvE_clEv.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i5)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINS9_8iteratorEbERKT_ENKUlvE_clEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.ac = add i32 %.sroa.025.070, -1
  %i.ad = and i32 %i.ac, %.sroa.025.070           ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSG_DpOSH_.exit, label %bb.c

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSG_DpOSH_.exit: ; preds = %.critedge.i, %bb.b
  %i.ae = icmp eq <16 x i8> %i.p, splat (i8 -128)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %i.ag = zext i16 %i.af to i32
  %i.ah = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ag) #41, !srcloc !367 ; 2 uses
  %.not63 = icmp eq i32 %i.ah, 0
  br i1 %.not63, label %bb.f, label %bb.e, !prof !49

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSG_DpOSH_.exit
  %i.ai = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i32 %i.ah, i64 %.sroa.640.0, i64 %.sroa.14.0)
  %.sroa.0.0.copyload.i.i.i.i8.pre = load ptr, ptr %i.a, align 8, !tbaa !47
  %.sroa.0.0.copyload.i.i.i2.i.pre = load ptr, ptr %i.k, align 8, !tbaa !47
  br label %_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINS9_8iteratorEbERKT_ENKUlvE_clEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementIS7_NS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSG_DpOSH_.exit
  %i.aj = add i64 %.sroa.14.0, 16                 ; 2 uses
  %i.ak = add i64 %i.aj, %.sroa.640.0
  br label %bb.b

_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE28find_or_prepare_insert_largeIS7_EESt4pairINS9_8iteratorEbERKT_ENKUlvE_clEv.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i.i2.i = phi ptr [ %.sroa.0.0.copyload.i.i.i2.i.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i3, %bb.d ], [ %.sroa.0.0.copyload.i.i.i3, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i8 = phi ptr [ %.sroa.0.0.copyload.i.i.i.i8.pre, %bb.e ], [ %.sroa.0.0.copyload.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ]
  %.350.ph = phi i64 [ %i.ai, %bb.e ], [ %i.y, %bb.d ], [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.3.ph = phi i8 [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i8, i64 %.350.ph
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i, i64 %.350.ph
  store ptr %i.al, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph, ptr %i.an, align 8, !tbaa !371
  ret void
}

declare noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #25

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS3_10StringHashESt17basic_string_viewIcSt11char_traitsIcEELb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr %0, i64 noundef %1) #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1354, !nonnull !123, !align !128 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !117
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !112
  %i.c = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %1, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i.i.i)
  ret i64 %i.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #28

declare noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i32, i64, i64) local_unnamed_addr #1

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN6google8protobuf8internal9ArenaImpl4InitEb(ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal9ArenaImplD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #24

declare void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase7ReserveEi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece31SentencePieceText_SentencePieceEJEEEPT_PS1_DpOT0_(ptr noundef) local_unnamed_addr #1

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf8internal14ArenaStringPtr7MutableB5cxx11ENS2_12EmptyDefaultEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN13sentencepiece17SentencePieceTextEJEEEPT_PS1_DpOT0_(ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf8internal10LazyString4InitB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

declare noundef i32 @_ZN13sentencepiece11PieceToByteESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

declare noundef zeroext i32 @_ZN13sentencepiece11string_util10DecodeUTF8EPKcS2_Pm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_ZN4absl12lts_2026052613StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr, ptr, i64) local_unnamed_addr #1

declare void @_ZN4absl12lts_202605269StrAppendEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8AlphaNumE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i64 @_ZN4absl12lts_202605266Status7MakeRepEmSt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(i64 noundef, i64, ptr, i64, ptr) local_unnamed_addr #1

declare void @_ZN4absl12lts_2026052615status_internal13MakeErrorImplILi3EEENS0_6StatusESt17basic_string_viewIcSt11char_traitsIcEENS0_14SourceLocationE(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Status") align 8, i64, ptr, i64, ptr) local_unnamed_addr #1

declare noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN13sentencepiece31SentencePieceText_SentencePiece5ClearEv(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare void @_ZN6google8protobuf8internal14ArenaStringPtr3SetENS2_12EmptyDefaultERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairImmESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !364
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !373
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !373
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !363    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #35
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #36 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.r, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !1358
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !23

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #34
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.r, ptr %0, align 8, !tbaa !363
  store ptr %i.v, ptr %i.a, align 8, !tbaa !373
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !364
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !373  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !364
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !48
  %i.f = sext i32 %i.e to i64
  store i64 %i.f, ptr %i.b, align 8, !tbaa !361
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %2, align 8, !tbaa !117
  store i64 %i.h, ptr %i.g, align 8, !tbaa !360
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.i, ptr %i.a, align 8, !tbaa !373
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !363    ; 5 uses
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.102) #35
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.o = ashr exact i64 %i.m, 4                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i, %i.o  ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 576460752303423487)
  %i.s = select i1 %i.q, i64 576460752303423487, i64 %i.r ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !100
  %i.s = load ptr, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !88   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !89
  %i.z = load i64, ptr %i.t, align 8, !tbaa !47
  store i64 %i.z, ptr %i.r, align 8, !tbaa !47
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !88
  store ptr %i.t, ptr %2, align 8, !tbaa !89
  store i64 0, ptr %i.ab, align 8, !tbaa !88
  store i8 0, ptr %i.t, align 8, !tbaa !47
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !tbaa !100, !alias.scope !1384, !noalias !1385
  %i.ae = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !89, !alias.scope !1385, !noalias !1384 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !88, !alias.scope !1385, !noalias !1384 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false), !alias.scope !1386
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !89, !alias.scope !1384, !noalias !1385
  %i.al = load i64, ptr %i.af, align 8, !tbaa !47, !alias.scope !1385, !noalias !1384
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !47, !alias.scope !1384, !noalias !1385
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !88, !alias.scope !1385, !noalias !1384
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.d
  %i.am = phi i64 [ %i.ai, %bb.d ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !88, !alias.scope !1384, !noalias !1385
  store ptr %i.af, ptr %.0911.i.i.i, align 8, !tbaa !89, !alias.scope !1385, !noalias !1384
  store i64 0, ptr %i.an, align 8, !tbaa !88, !alias.scope !1385, !noalias !1384
  store i8 0, ptr %i.af, align 8, !tbaa !47, !alias.scope !1385, !noalias !1384
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ap, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ], [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1388)
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.as, ptr %.012.i.i.i18, align 8, !tbaa !100, !alias.scope !1387, !noalias !1388
  %i.at = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !89, !alias.scope !1388, !noalias !1387 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i17
  %i.aw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !88, !alias.scope !1388, !noalias !1387 ; 3 uses
  %i.ay = icmp ult i64 %i.ax, 16
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = add nuw nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.az, i1 false), !alias.scope !1389
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.at, ptr %.012.i.i.i18, align 8, !tbaa !89, !alias.scope !1387, !noalias !1388
  %i.ba = load i64, ptr %i.au, align 8, !tbaa !47, !alias.scope !1388, !noalias !1387
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !47, !alias.scope !1387, !noalias !1388
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !88, !alias.scope !1388, !noalias !1387
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20, %bb.e
  %i.bb = phi i64 [ %i.ax, %bb.e ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i20 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !88, !alias.scope !1387, !noalias !1388
  store ptr %i.au, ptr %.0911.i.i.i19, align 8, !tbaa !89, !alias.scope !1388, !noalias !1387
  store i64 0, ptr %i.bc, align 8, !tbaa !88, !alias.scope !1388, !noalias !1387
  store i8 0, ptr %i.au, align 8, !tbaa !47, !alias.scope !1388, !noalias !1387
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i24, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !11

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ar, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !166
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #34
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit26, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !167
  store ptr %.0.lcssa.i.i.i25, ptr %i.a, align 8, !tbaa !165
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !166
  ret void
}

declare void @_ZN4absl12lts_2026052612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE4findINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #27 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ult i64 %i.a, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !117 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !112
  %i.e = load ptr, ptr %1, align 8, !tbaa !89
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !88
  %i.h = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %i.g
  br i1 %i.h, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, 0
  br i1 %i.i, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEENS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %i.e, i64 %.sroa.01.0.copyload.i.i.i.i.i)
  %i.j = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.j, label %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEENS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEENS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.d
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2026052618container_internal11kSooControlE, ptr poison }, ptr %i.d, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !47
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i, i32 0, i32 1, i32 1)
  %i.l = lshr i64 %i.a, 8
  %i.m = and i64 %i.l, 255
  %i.n = load ptr, ptr %1, align 8, !tbaa !89
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !88
  %i.q = tail call noundef i64 @_ZN4absl12lts_2026052613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %i.m, ptr noundef %i.n, i64 noundef %i.p) ; 3 uses
  %i.r = load i64, ptr %0, align 8, !noalias !1393
  %i.s = and i64 %i.r, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.s
  %i.t = xor i64 %notmask.i.i.i.i.i.i.i, -1       ; 4 uses
  %i.u = lshr i64 %i.q, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %.sroa.0.0.copyload.i.i.i.i6 = load ptr, ptr %i.k, align 8, !tbaa !47 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i14.i = load ptr, ptr %i.w, align 8, !tbaa !47 ; 4 uses
  %i.x = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.y = shufflevector <16 x i8> %i.x, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.z = load ptr, ptr %1, align 8
  %i.aa = load i64, ptr %i.o, align 8
  %.fr26 = freeze i64 %i.aa                       ; 3 uses
  %i.ab = icmp eq i64 %.fr26, 0
  br i1 %i.ab, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.e, %bb.g
  %.sroa.13.0.i.us = phi i64 [ %i.av, %bb.g ], [ 0, %bb.e ]
  %.pn.i7.us = phi i64 [ %i.aw, %bb.g ], [ %i.q, %bb.e ]
  %.sroa.628.0.i.us = and i64 %.pn.i7.us, %i.t    ; 4 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.628.0.i.us
  tail call void @llvm.prefetch.p0(ptr %i.ac, i32 0, i32 3, i32 1)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %.sroa.628.0.i.us
  %i.ae = load <16 x i8>, ptr %i.ad, align 1, !tbaa !47 ; 2 uses
  %i.af = icmp eq <16 x i8> %i.y, %i.ae
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = zext i16 %i.ag to i32
  %i.ai = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ah) #41, !srcloc !367 ; 2 uses
  %.not49.i.us = icmp eq i32 %i.ai, 0
  br i1 %.not49.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.split.us, %bb.f
  %.sroa.019.050.i.us.us = phi i32 [ %i.aq, %bb.f ], [ %i.ai, %.split.us ] ; 3 uses
  %i.aj = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i.us.us, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = add nuw i64 %.sroa.628.0.i.us, %i.ak
  %i.am = and i64 %i.al, %i.t                     ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.am ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i8.us.us = load i64, ptr %i.an, align 8, !tbaa !117
  %i.ao = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i8.us.us, 0
  br i1 %i.ao, label %.thread36.i, label %bb.f, !prof !372

bb.f:                                             ; preds = %.lr.ph.i.us.us
  %i.ap = add i32 %.sroa.019.050.i.us.us, -1
  %i.aq = and i32 %i.ap, %.sroa.019.050.i.us.us   ; 2 uses
  %.not.i.us.us = icmp eq i32 %i.aq, 0
  br i1 %.not.i.us.us, label %._crit_edge.i.us, label %.lr.ph.i.us.us

._crit_edge.i.us:                                 ; preds = %bb.f, %.split.us
  %i.ar = icmp eq <16 x i8> %i.ae, splat (i8 -128)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = zext i16 %i.as to i32
  %i.au = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.at) #41, !srcloc !367
  %.not47.i.us = icmp eq i32 %i.au, 0
  br i1 %.not47.i.us, label %bb.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_m.exit, !prof !49

bb.g:                                             ; preds = %._crit_edge.i.us
  %i.av = add i64 %.sroa.13.0.i.us, 16            ; 2 uses
  %i.aw = add i64 %.sroa.628.0.i.us, %i.av
  br label %.split.us, !llvm.loop !1392

.split:                                           ; preds = %bb.e, %bb.i
  %.sroa.13.0.i = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.e ]
  %.pn.i7 = phi i64 [ %i.bt, %bb.i ], [ %i.q, %bb.e ]
  %.sroa.628.0.i = and i64 %.pn.i7, %i.t          ; 4 uses
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %.sroa.628.0.i
  tail call void @llvm.prefetch.p0(ptr %i.ax, i32 0, i32 3, i32 1)
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %.sroa.628.0.i
  %i.az = load <16 x i8>, ptr %i.ay, align 1, !tbaa !47 ; 2 uses
  %i.ba = icmp eq <16 x i8> %i.y, %i.az
  %i.bb = bitcast <16 x i1> %i.ba to i16
  %i.bc = zext i16 %i.bb to i32
  %i.bd = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bc) #41, !srcloc !367 ; 2 uses
  %.not49.i = icmp eq i32 %i.bd, 0
  br i1 %.not49.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split, %bb.h
  %.sroa.019.050.i = phi i32 [ %i.bn, %bb.h ], [ %i.bd, %.split ] ; 3 uses
  %i.be = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.019.050.i, i1 true)
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add nuw i64 %.sroa.628.0.i, %i.bf
  %i.bh = and i64 %i.bg, %i.t                     ; 2 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i14.i, i64 %i.bh ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i8 = load i64, ptr %i.bi, align 8, !tbaa !117
  %i.bj = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i8, %.fr26
  br i1 %i.bj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i11, label %bb.h, !prof !372

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i11: ; preds = %.lr.ph.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i10 = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i9, align 8, !tbaa !112
  %bcmp.i.i.i.i.i.i.i12 = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i10, ptr %i.z, i64 %.fr26)
  %i.bk = icmp eq i32 %bcmp.i.i.i.i.i.i.i12, 0
  br i1 %i.bk, label %.thread36.i, label %bb.h

.thread36.i:                                      ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i11, %.lr.ph.i.us.us
  %.us-phi = phi i64 [ %i.am, %.lr.ph.i.us.us ], [ %i.bh, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i11 ]
  %.us-phi17 = phi ptr [ %i.an, %.lr.ph.i.us.us ], [ %i.bi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i11 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i6, i64 %.us-phi
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_m.exit

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i11, %.lr.ph.i
  %i.bm = add i32 %.sroa.019.050.i, -1
  %i.bn = and i32 %i.bm, %.sroa.019.050.i         ; 2 uses
  %.not.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %.split
  %i.bo = icmp eq <16 x i8> %i.az, splat (i8 -128)
  %i.bp = bitcast <16 x i1> %i.bo to i16
  %i.bq = zext i16 %i.bp to i32
  %i.br = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bq) #41, !srcloc !367
  %.not47.i = icmp eq i32 %i.br, 0
  br i1 %.not47.i, label %bb.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_m.exit, !prof !49

bb.i:                                             ; preds = %._crit_edge.i
  %i.bs = add i64 %.sroa.13.0.i, 16               ; 2 uses
  %i.bt = add i64 %.sroa.628.0.i, %i.bs
  br label %.split, !llvm.loop !1392

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_m.exit: ; preds = %._crit_edge.i, %._crit_edge.i.us, %.thread36.i
  %.sroa.0.4.ph.i = phi ptr [ %i.bl, %.thread36.i ], [ null, %._crit_edge.i.us ], [ null, %._crit_edge.i ]
  %.sroa.3.4.ph.i = phi ptr [ %.us-phi17, %.thread36.i ], [ undef, %._crit_edge.i.us ], [ undef, %._crit_edge.i ]
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %.sroa.3.4.ph.i, 1
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_smallINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEENS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.c, %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_m.exit
  %.pn = phi { ptr, ptr } [ %.fca.1.insert.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEJEE10find_largeINSt7__cxx1112basic_stringIcS6_SaIcEEEEENS9_8iteratorERKT_m.exit ], [ %.fca.1.insert.i.i, %_ZN4absl12lts_2026052618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyISt17basic_string_viewIcSt11char_traitsIcEEEEvE5applyINS1_12EqualElementINSt7__cxx1112basic_stringIcS6_SaIcEEENS1_8StringEqEEEJRS7_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.i ], [ { ptr null, ptr undef }, %bb.b ], [ { ptr null, ptr undef }, %bb.c ], [ { ptr null, ptr undef }, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  ret { ptr, ptr } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorINSt7__cxx1112basic_stringIcS7_SaIcEEESaISF_EESF_Lb0EEclERKS9_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.75") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::strings_internal::Splitter<absl::lts_20260526::ByChar, absl::lts_20260526::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer.338", align 1 ; 3 uses
  %4 = alloca %"class.std::vector.84", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !1396
  call void @_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.84") align 8 %4, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(18) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !1396
  %i.a = load ptr, ptr %4, align 8, !tbaa !191    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 288230376151711743
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #35
          to label %.noexc.i unwind label %.thread

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.i = shl nuw nsw i64 %i.f, 1
  %i.j = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.k = phi ptr [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ], [ %i.j, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !167
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !166
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt17basic_string_viewIcSt11char_traitsIcEESt6vectorIS5_SaIS5_EEEEPNSt7__cxx1112basic_stringIcS4_SaIcEEEET0_T_SI_SH_(ptr %i.a, ptr %i.c, ptr noundef %i.k)
          to label %bb.e unwind label %bb.c

.thread:                                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i7.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx = shl nuw nsw i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %.idx) #34
  br label %.body

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !165
  %i.p = load ptr, ptr %4, align 8, !tbaa !196    ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !197
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #34
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

.body:                                            ; preds = %.thread, %bb.c, %bb.d
  %lpad.phi11 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread ], [ %lpad.thr_comm.split-lp, %bb.c ], [ %lpad.thr_comm.split-lp, %bb.d ]
  %i.v = load ptr, ptr %4, align 8, !tbaa !196    ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit5, label %bb.g

bb.g:                                             ; preds = %.body
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !197
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #34
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit5

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit5: ; preds = %.body, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %lpad.phi11
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS8_SaIS8_EES8_Lb0EEclERKS9_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.84") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(18) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array", align 8       ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::strings_internal::SplitIterator", align 8 ; 15 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  store i64 0, ptr %4, align 8, !tbaa !176, !alias.scope !1401
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.a, align 8, !tbaa !177, !alias.scope !1401
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !alias.scope !1401
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !178, !alias.scope !1401
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !47, !noalias !1401
  store i8 %i.f, ptr %i.d, align 8, !tbaa !47, !alias.scope !1401
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !117, !noalias !1401 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !112, !noalias !1401 ; 4 uses
  %i.g = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !177, !alias.scope !1401
  br label %_ZNK4absl12lts_2026052616strings_internal8SplitterINS0_6ByCharENS0_10AllowEmptyESt17basic_string_viewIcSt11char_traitsIcEEE5beginEv.exit

bb.c:                                             ; preds = %bb.a
  %i.h = invoke { i64, ptr } @_ZNK4absl12lts_202605266ByChar4FindESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %.sroa.0.0.copyload.i.i.i, ptr nonnull %.sroa.2.0.copyload.i.i.i, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %bb.c
  %i.i = extractvalue { i64, ptr } %i.h, 0
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i32 1, ptr %i.a, align 8, !tbaa !177, !alias.scope !1401
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.m = load i64, ptr %4, align 8, !tbaa !176, !alias.scope !1401 ; 5 uses
  %i.n = icmp ugt i64 %i.m, %.sroa.0.0.copyload.i.i.i
  br i1 %i.n, label %bb.f, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100, i64 noundef %i.m, i64 noundef %.sroa.0.0.copyload.i.i.i) #35
          to label %.noexc13 unwind label %bb.i

.noexc13:                                         ; preds = %bb.f
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i.i.i: ; preds = %bb.e
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 %i.m ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.o, %i.q
  %i.s = sub nuw i64 %.sroa.0.0.copyload.i.i.i, %i.m
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.s, i64 %i.r) ; 2 uses
  store i64 %.sroa.speculated.i.i.i.i, ptr %i.b, align 8, !tbaa !117, !alias.scope !1401
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_1
