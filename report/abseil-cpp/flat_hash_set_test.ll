Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/flat_hash_set_test?download=true
inline.NumInlined: 32432
inline.NumDeleted: 6420
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEED2Ev:bb.a
  call void @llvm.assume(i1 %i.k)
  %i.l = and i64 %.val2.i.i, 65536
  %.not.i.i.i.i = icmp ne i64 %i.l, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !107
  %i.n = xor i64 %notmask.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE15destructor_implEv.exit unwind label %bb.e

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE15destructor_implEv.exit: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i, %bb.c, %bb.b, %.noexc
  ret void

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #35
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE22find_or_prepare_insertIS7_EESt4pairINSD_8iteratorEbERKT_(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.186", align 8 ; 5 uses
  %.val = load i64, ptr %1, align 8               ; 5 uses
  %i.a = and i64 %.val, 254
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp ult i64 %.val, 131072
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE17should_sample_sooEv.exit.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE17should_sample_sooEv.exit.i.i: ; preds = %bb.b
  %i.c = or i64 %.val, 131328
  store i64 %i.c, ptr %1, align 8, !noalias !1200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_smallIS7_EESt4pairINSD_8iteratorEbERKT_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val8.i.i = load ptr, ptr %i.e, align 8, !tbaa !235, !noalias !1200
  %.val7.val.i.i = load ptr, ptr %2, align 8, !tbaa !235, !noalias !1200
  %.val8.val.i.i = load i32, ptr %.val8.i.i, align 4, !tbaa !135, !noalias !1200
  %.val7.val.val.i.i = load i32, ptr %.val7.val.i.i, align 4, !tbaa !135, !noalias !1200
  %i.f = icmp eq i32 %.val8.val.i.i, %.val7.val.val.i.i
  br i1 %i.f, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_smallIS7_EESt4pairINSD_8iteratorEbERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !1200
  store ptr %1, ptr %3, align 8, !tbaa !1201, !noalias !1200
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.g, align 8, !tbaa !1202, !noalias !1200
  %i.h = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE18GetPolicyFunctionsEvE5value, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyIZNS3_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashSt10unique_ptrIiSt14default_deleteIiEELb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !1200 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !1200
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !107, !noalias !1200, !nonnull !99, !noundef !99
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !107, !noalias !1200
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.h
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_smallIS7_EESt4pairINSD_8iteratorEbERKT_.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !107, !noalias !1203 ; 3 uses
  %i.m = and i64 %.val, 255
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.m
  tail call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !1203
  %i.n = lshr i64 %.val, 8
  %i.o = and i64 %i.n, 255
  %.val5.i = load ptr, ptr %2, align 8, !tbaa !235, !noalias !1203
  %.val5.val.i = load i32, ptr %.val5.i, align 4, !tbaa !135, !noalias !1203 ; 2 uses
  %i.p = sext i32 %.val5.val.i to i64             ; 2 uses
  %i.q = xor i64 %i.o, %i.p                       ; 2 uses
  %i.r = xor i64 %notmask.i.i.i.i.i.i, -1         ; 2 uses
  %i.s = lshr i64 %i.p, 57
  %i.t = trunc nuw nsw i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val7.i = load ptr, ptr %i.u, align 8, !tbaa !107, !noalias !1203 ; 3 uses
  %i.v = insertelement <16 x i8> poison, i8 %i.t, i64 0
  %i.w = shufflevector <16 x i8> %i.v, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.pn.i = phi i64 [ %i.q, %bb.e ], [ %i.as, %bb.h ]
  %.sroa.14.0.i = phi i64 [ 0, %bb.e ], [ %i.ar, %bb.h ] ; 2 uses
  %.sroa.642.0.i = and i64 %.pn.i, %i.r           ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val7.i, i64 %.sroa.642.0.i
  tail call void @llvm.prefetch.p0(ptr %i.x, i32 0, i32 3, i32 1), !noalias !1203
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.642.0.i
  %i.z = load <16 x i8>, ptr %i.y, align 1, !tbaa !107, !noalias !1203 ; 2 uses
  %i.aa = icmp eq <16 x i8> %i.w, %i.z
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = zext i16 %i.ab to i32
  %i.ad = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ac) #42, !srcloc !136 ; 2 uses
  %.not70.i = icmp eq i32 %i.ad, 0
  br i1 %.not70.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.critedge.i.i
  %.sroa.027.071.i = phi i32 [ %i.al, %.critedge.i.i ], [ %i.ad, %bb.f ] ; 3 uses
  %i.ae = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.027.071.i, i1 true)
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = add nuw i64 %.sroa.642.0.i, %i.af
  %i.ah = and i64 %i.ag, %i.r                     ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val7.i, i64 %i.ah
  %.val3.i = load ptr, ptr %i.ai, align 8, !tbaa !235, !noalias !1203
  %.val3.val.i = load i32, ptr %.val3.i, align 4, !tbaa !135, !noalias !1203
  %i.aj = icmp eq i32 %.val3.val.i, %.val5.val.i
  br i1 %i.aj, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_largeIS7_EESt4pairINSD_8iteratorEbERKT_.exit, label %.critedge.i.i, !prof !137

.critedge.i.i:                                    ; preds = %.lr.ph.i
  %i.ak = add i32 %.sroa.027.071.i, -1
  %i.al = and i32 %i.ak, %.sroa.027.071.i         ; 2 uses
  %.not.i = icmp eq i32 %i.al, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.critedge.i.i, %bb.f
  %i.am = icmp eq <16 x i8> %i.z, splat (i8 -128)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = zext i16 %i.an to i32
  %i.ap = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ao) #42, !srcloc !136 ; 2 uses
  %.not64.i = icmp eq i32 %i.ap, 0
  br i1 %.not64.i, label %bb.h, label %bb.g, !prof !138

bb.g:                                             ; preds = %._crit_edge.i
  %i.aq = tail call noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE18GetPolicyFunctionsEvE5value, i64 noundef %i.q, i32 %i.ap, i64 %.sroa.642.0.i, i64 %.sroa.14.0.i), !noalias !1203
  %.sroa.0.0.copyload.i.i.i.i10.pre.i = load ptr, ptr %i.l, align 8, !tbaa !107, !noalias !1203
  %.val.i.pre.i = load ptr, ptr %i.u, align 8, !tbaa !107, !noalias !1203
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_largeIS7_EESt4pairINSD_8iteratorEbERKT_.exit

bb.h:                                             ; preds = %._crit_edge.i
  %i.ar = add i64 %.sroa.14.0.i, 16               ; 2 uses
  %i.as = add i64 %i.ar, %.sroa.642.0.i
  br label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_largeIS7_EESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %.lr.ph.i, %bb.g
  %.val.i.i4 = phi ptr [ %.val.i.pre.i, %bb.g ], [ %.val7.i, %.lr.ph.i ]
  %.sroa.0.0.copyload.i.i.i.i10.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i10.pre.i, %bb.g ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.lr.ph.i ] ; 2 uses
  %.352.ph.i = phi i64 [ %i.aq, %bb.g ], [ %i.ah, %.lr.ph.i ] ; 2 uses
  %.3.ph.i = phi i8 [ 1, %bb.g ], [ 0, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i10.i, i64 %.352.ph.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i4, i64 %.352.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i10.i) ]
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_smallIS7_EESt4pairINSD_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_smallIS7_EESt4pairINSD_8iteratorEbERKT_.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE17should_sample_sooEv.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_largeIS7_EESt4pairINSD_8iteratorEbERKT_.exit
  %.sink19 = phi ptr [ %i.at, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_largeIS7_EESt4pairINSD_8iteratorEbERKT_.exit ], [ %i.i, %bb.d ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE17should_sample_sooEv.exit.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ]
  %.sink = phi ptr [ %i.au, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_largeIS7_EESt4pairINSD_8iteratorEbERKT_.exit ], [ %i.k, %bb.d ], [ %i.d, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE17should_sample_sooEv.exit.i.i ], [ %i.e, %bb.c ]
  %.3.ph.i.sink = phi i8 [ %.3.ph.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE28find_or_prepare_insert_largeIS7_EESt4pairINSD_8iteratorEbERKT_.exit ], [ 1, %bb.d ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE17should_sample_sooEv.exit.i.i ], [ 0, %bb.c ]
  store ptr %.sink19, ptr %0, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.3.ph.i.sink, ptr %i.av, align 8, !tbaa !238
  ret void
}

declare noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm0ELb0EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), ptr, ptr, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnIZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashSt10unique_ptrIiSt14default_deleteIiEELb0EEEmPKvPvm(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #25 {
bb.a:
  %.val3 = load ptr, ptr %1, align 8, !tbaa !235
  %.val3.val = load i32, ptr %.val3, align 4, !tbaa !135
  %i.a = sext i32 %.val3.val to i64
  %i.b = xor i64 %2, %i.a
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE19transfer_n_slots_fnEPvSE_SE_m(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3) #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.a = shl i64 %3, 3                            ; 2 uses
  %i.b = getelementptr i8, ptr %1, i64 %i.a
  %i.c = getelementptr i8, ptr %2, i64 %i.a
  %bound0 = icmp ult ptr %1, %i.c
  %bound1 = icmp ult ptr %2, %i.b
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.d = shl i64 %n.vec, 3                        ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %2, i64 %i.d
  %i.g = and i64 %3, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.h  ; 2 uses
  %next.gep16 = getelementptr i8, ptr %2, i64 %i.h ; 3 uses
  %i.i = getelementptr i8, ptr %next.gep16, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep16, align 8, !tbaa !235, !alias.scope !1210
  %wide.load17 = load <2 x i64>, ptr %i.i, align 8, !tbaa !235, !alias.scope !1210
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !235, !alias.scope !1211, !noalias !1210
  store <2 x i64> %wide.load17, ptr %i.j, align 8, !tbaa !235, !alias.scope !1211, !noalias !1210
  store <2 x ptr> splat (ptr null), ptr %next.gep16, align 8, !tbaa !235, !alias.scope !1210
  store <2 x ptr> splat (ptr null), ptr %i.i, align 8, !tbaa !235, !alias.scope !1210
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !1207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader20

.lr.ph.preheader20:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ] ; 2 uses
  %.0913.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 2 uses
  %.01012.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader ], [ %i.g, %middle.block ] ; 4 uses
  %i.l = add i64 %.01012.ph, -1
  %xtraiter = and i64 %.01012.ph, 3               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader20, %.lr.ph.prol
  %.014.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.014.ph, %.lr.ph.preheader20 ] ; 2 uses
  %.0913.prol = phi ptr [ %i.o, %.lr.ph.prol ], [ %.0913.ph, %.lr.ph.preheader20 ] ; 3 uses
  %.01012.prol = phi i64 [ %i.n, %.lr.ph.prol ], [ %.01012.ph, %.lr.ph.preheader20 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader20 ]
  %i.m = load i64, ptr %.0913.prol, align 8, !tbaa !235
  store i64 %i.m, ptr %.014.prol, align 8, !tbaa !235
  store ptr null, ptr %.0913.prol, align 8, !tbaa !235
  %i.n = add i64 %.01012.prol, -1                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0913.prol, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1208

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader20
  %.014.unr = phi ptr [ %.014.ph, %.lr.ph.preheader20 ], [ %i.p, %.lr.ph.prol ]
  %.0913.unr = phi ptr [ %.0913.ph, %.lr.ph.preheader20 ], [ %i.o, %.lr.ph.prol ]
  %.01012.unr = phi i64 [ %.01012.ph, %.lr.ph.preheader20 ], [ %i.n, %.lr.ph.prol ]
  %i.q = icmp ult i64 %i.l, 3
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi ptr [ %i.ad, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0913 = phi ptr [ %i.ac, %.lr.ph ], [ %.0913.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.01012 = phi i64 [ %i.ab, %.lr.ph ], [ %.01012.unr, %.lr.ph.prol.loopexit ]
  %i.r = load i64, ptr %.0913, align 8, !tbaa !235
  store i64 %i.r, ptr %.014, align 8, !tbaa !235
  store ptr null, ptr %.0913, align 8, !tbaa !235
  %i.s = getelementptr inbounds nuw i8, ptr %.0913, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.014, i64 8
  %i.u = load i64, ptr %i.s, align 8, !tbaa !235
  store i64 %i.u, ptr %i.t, align 8, !tbaa !235
  store ptr null, ptr %i.s, align 8, !tbaa !235
  %i.v = getelementptr inbounds nuw i8, ptr %.0913, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.x = load i64, ptr %i.v, align 8, !tbaa !235
  store i64 %i.x, ptr %i.w, align 8, !tbaa !235
  store ptr null, ptr %i.v, align 8, !tbaa !235
  %i.y = getelementptr inbounds nuw i8, ptr %.0913, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !235
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !235
  store ptr null, ptr %i.y, align 8, !tbaa !235
  %i.ab = add i64 %.01012, -4                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0913, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.014, i64 32
  %.not.3 = icmp eq i64 %i.ab, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1209

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyISt10unique_ptrIiSt14default_deleteIiEEEEJZNS1_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSA_8TestBodyEvE2EqEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSJ_PFvSJ_hmmE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !107 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04964 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04964
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !107
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04964 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #42, !srcloc !136 ; 2 uses
  %.not62 = icmp eq i32 %i.r, 65535
  br i1 %.not62, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04964, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !1212

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.054.063 = phi i32 [ %i.bb, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.054.063, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04964, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
  %i.ab = and i64 %i.aa, 255
  %.val53 = load ptr, ptr %i.y, align 8           ; 2 uses
  %.val53.val = load i32, ptr %.val53, align 4, !tbaa !135
  %i.ac = sext i32 %.val53.val to i64             ; 2 uses
  %i.ad = xor i64 %i.ab, %i.ac                    ; 5 uses
  %i.ae = lshr i64 %i.ac, 57
  %i.af = trunc nuw nsw i64 %i.ae to i8           ; 2 uses
  %i.ag = sub i64 %i.x, %i.ad                     ; 2 uses
  %i.ah = and i64 %i.i, %i.ag
  %i.ai = icmp eq i64 %i.ah, 0
  %i.aj = ptrtoint ptr %.val53 to i64
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !137

bb.d:                                             ; preds = %.lr.ph
  %i.ak = and i64 %i.ag, 15
  %i.al = add nsw i64 %i.ak, %i.ad
  %i.am = and i64 %i.al, %i.c
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.an = and i64 %i.ad, %i.d
  %.not.i = icmp ult i64 %i.an, %i.x
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !137

bb.f:                                             ; preds = %bb.e
  %i.ao = and i64 %i.ad, %i.c                     ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.ao
  %i.aq = load <16 x i8>, ptr %i.ap, align 1, !tbaa !107
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = zext i16 %i.as to i32
  %i.au = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.at) #42, !srcloc !136 ; 2 uses
  %.not26.i = icmp eq i32 %i.au, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !138

bb.g:                                             ; preds = %bb.f
  %i.av = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.au, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add nuw i64 %i.ao, %i.aw
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.af, i64 noundef %i.x, i64 noundef %i.ad)
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.d
  %.sink27.i = phi i64 [ %i.ax, %bb.g ], [ %i.am, %bb.d ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sink27.i
  store i8 %i.af, ptr %i.ay, align 1, !tbaa !143
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sink27.i
  store i64 %i.aj, ptr %i.az, align 8, !tbaa !235
  store ptr null, ptr %i.y, align 8, !tbaa !235
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ba = add i32 %.sroa.054.063, -1
  %i.bb = and i32 %i.ba, %.sroa.054.063           ; 2 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyIZNS3_12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashSt10unique_ptrIiSt14default_deleteIiEELb0EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE(ptr nofree readonly captures(none) %0, i64 noundef %1) #25 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1214
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !235
  %.val.val.val = load i32, ptr %.val.val, align 4, !tbaa !135
  %i.b = sext i32 %.val.val.val to i64
  %i.c = xor i64 %1, %i.b
  ret i64 %i.c
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052613flat_hash_setISt10unique_ptrIiSt14default_deleteIiEEZNS3_18container_internal12_GLOBAL__N_135FlatHashSet_MergeExtractInsert_Test8TestBodyEvE4HashZNSB_8TestBodyEvE2EqSaIS8_EEEE10DescribeToEPSo(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
