Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/trainer_interface?download=true
inline.NumInlined: 5380
inline.NumDeleted: 2279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@"_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEEZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_2ET_SI_SI_T0_":bb.a

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 8
  store ptr %i.ak, ptr %.sroa.013.025.i, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn24.i, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !47
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !47
  %i.ay = load i64, ptr %i.al, align 8, !tbaa !48
  store i64 %i.ay, ptr %i.ai, align 8, !tbaa !48
  br label %bb.q

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.az = load i64, ptr %i.ai, align 8, !tbaa !48
  store ptr %i.ak, ptr %.sroa.013.025.i, align 8, !tbaa !50
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn24.i, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 8
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !47
  %i.bd = load i64, ptr %i.al, align 8, !tbaa !48
  store i64 %i.bd, ptr %i.ai, align 8, !tbaa !48
  %.not.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.ah, ptr %.sroa.07.026.i, align 8, !tbaa !50
  store i64 %i.az, ptr %i.al, align 8, !tbaa !48
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.al, ptr %.sroa.07.026.i, align 8, !tbaa !50
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i: ; preds = %bb.q, %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i, %bb.l
  %i.be = phi ptr [ %i.ah, %bb.p ], [ %i.al, %bb.q ], [ %i.ak, %bb.l ], [ %.pre.i.i5.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn24.i, i64 48
  store i64 0, ptr %i.bf, align 8, !tbaa !47
  store i8 0, ptr %i.be, align 1, !tbaa !48
  %i.bg = load i64, ptr %i.af, align 8, !tbaa !168
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 32
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !170
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 40
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i, %.lr.ph.i
  %.sroa.013.1.i = phi ptr [ %.sroa.013.025.i, %.lr.ph.i ], [ %i.bi, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i ] ; 2 uses
  %.sroa.07.0.i = getelementptr inbounds nuw i8, ptr %.sroa.07.026.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.07.0.i, %1
  br i1 %.not.i, label %"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_2EEET_SL_SL_T0_.exit", label %.lr.ph.i, !llvm.loop !465

"_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_2EEET_SL_SL_T0_.exit": ; preds = %bb.r, %._crit_edge.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_2EEET_SL_SL_T0_.exit.i"
  %.sroa.013.2.i = phi ptr [ %1, %._crit_edge.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEENS0_5__ops10_Iter_predIZN13sentencepiece16TrainerInterface13LoadSentencesEvE3$_2EEET_SL_SL_T0_.exit.i" ], [ %.sroa.013.1.i, %bb.r ]
  ret ptr %.sroa.013.2.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare void @_ZN13sentencepiece11string_util17UTF8ToUnicodeTextESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::vector.39") align 8, i64, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNO4absl12lts_2026052613StatusBuilderlsIA33_cEEOS1_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNR4absl12lts_2026052613StatusBuilderlsIA33_cEERS1_RKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.d = load i8, ptr %i.c, align 8, !tbaa !61, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.b)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(33) %1) #34
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(33) %1, i64 noundef %i.i) ; 0 uses
  br label %_ZNR4absl12lts_2026052613StatusBuilderlsIA33_cEERS1_RKT_.exit

_ZNR4absl12lts_2026052613StatusBuilderlsIA33_cEERS1_RKT_.exit: ; preds = %bb.a, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEEixIDiS6_Li0EEEDTclsrT0_5valueclL_ZSt9addressofIS4_IKDiS5_EEPT_RSD_EclL_ZSt7declvalIRSC_EDTcl9__declvalISD_ELi0EEEvEEEEERSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %3 = alloca %"struct.std::pair.321", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.a = load i64, ptr %0, align 8, !noalias !477 ; 3 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !48, !noalias !479 ; 2 uses
  %i.f = load i32, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, align 4, !tbaa !134, !noalias !479
  %i.g = load i32, ptr %1, align 4, !tbaa !134, !noalias !479
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.thread4.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.thread.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.thread4.i.i: ; preds = %bb.c
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !alias.scope !479
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE11try_emplaceIDiLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS6_JEE14const_iteratorEEE5valueEiE4typeELi0EEES4_INSC_8iteratorEbERKDiDpOT1_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.thread.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !479
  store ptr %0, ptr %2, align 8, !tbaa !208, !noalias !479
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.i, align 8, !tbaa !132, !noalias !479
  %i.j = call { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIDiEEDiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE), !noalias !479
  %i.k = extractvalue { ptr, ptr } %i.j, 1        ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !479
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !479
  br label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.i.i: ; preds = %bb.a
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE28find_or_prepare_insert_largeIDiEES4_INS7_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.321") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !211, !range !52, !alias.scope !480
  %i.l = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.l, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.i._crit_edge.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE11try_emplaceIDiLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS6_JEE14const_iteratorEEE5valueEiE4typeELi0EEES4_INSC_8iteratorEbERKDiDpOT1_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.i._crit_edge.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.i.i
  %.sroa.2.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.pre.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !480
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.i._crit_edge.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.thread.i.i
  %.sroa.2.0.copyload.i.i = phi ptr [ %.sroa.2.0.copyload.i.pre.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.i._crit_edge.i ], [ %i.k, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.thread.i.i ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !134, !noalias !480
  store i32 %i.m, ptr %.sroa.2.0.copyload.i.i, align 8, !tbaa !213
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !205
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i, i64 16
  store i64 0, ptr %i.o, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE11try_emplaceIDiLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS6_JEE14const_iteratorEEE5valueEiE4typeELi0EEES4_INSC_8iteratorEbERKDiDpOT1_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_mapINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE11try_emplaceIDiLi0EJETnNSt9enable_ifIXntsr3std14is_convertibleIT_NS1_12raw_hash_setIS6_JEE14const_iteratorEEE5valueEiE4typeELi0EEES4_INSC_8iteratorEbERKDiDpOT1_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.thread4.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE22find_or_prepare_insertIDiEES4_INS7_8iteratorEbERKT_.exit.i.i, %bb.d
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNO4absl12lts_2026052613StatusBuilderlsIA49_cEEOS1_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(49) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNR4absl12lts_2026052613StatusBuilderlsIA49_cEERS1_RKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.d = load i8, ptr %i.c, align 8, !tbaa !61, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.b)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(49) %1) #34
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(49) %1, i64 noundef %i.i) ; 0 uses
  br label %_ZNR4absl12lts_2026052613StatusBuilderlsIA49_cEERS1_RKT_.exit

_ZNR4absl12lts_2026052613StatusBuilderlsIA49_cEERS1_RKT_.exit: ; preds = %bb.a, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN13sentencepiece6SortedIDiSt4pairIblEEESt6vectorIS1_IT_T0_ESaIS6_EERKN4absl12lts_2026052613flat_hash_mapIS4_S5_NSA_18container_internal17FlatHashMapPolicyIS4_S5_E11DefaultHashENSE_9DefaultEqENSE_12DefaultAllocEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.117") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.117", align 8   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.b)
  %.not.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit.thread, label %bb.b, !prof !43

_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit.thread: ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorppEv.exit.i.i.i.i.i.i.thread

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.a, 254
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !48
  br label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !48, !nonnull !53, !noundef !53 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !48 ; 2 uses
  %i.h = load i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 1, !tbaa !234
  %i.i = icmp slt i8 %i.h, -1
  br i1 %i.i, label %.lr.ph.i.i.i, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.j = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ]
  %i.k = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.n = load i8, ptr %i.l, align 1, !tbaa !234
  %i.o = icmp slt i8 %i.n, -1
  br i1 %i.o, label %.lr.ph.i.i.i, label %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit, !llvm.loop !481

_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit: ; preds = %.lr.ph.i.i.i, %bb.c, %bb.d
  %.sroa.6.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i, %bb.d ], [ %.sroa.0.0.copyload.i.i.i.i.i.i.i, %bb.c ], [ %i.m, %.lr.ph.i.i.i ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.d ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.c ], [ %i.l, %.lr.ph.i.i.i ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit
  %.09.i.i.i = phi i64 [ %i.y, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i ], [ 0, %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit ] ; 2 uses
  %.sroa.02.07.i.i.i = phi ptr [ %.sroa.02.1.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i, %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.07.i.i.i, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !234   ; 2 uses
  %i.r = icmp slt i8 %i.q, -1
  br i1 %i.r, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i7, %.lr.ph.i.i.i.i.i.i
  %i.s = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.p, %.lr.ph.i.i.i7 ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !234   ; 2 uses
  %i.v = icmp slt i8 %i.u, -1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i, !llvm.loop !481

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i7
  %.sroa.02.1.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i7 ], [ %i.t, %.lr.ph.i.i.i.i.i.i ]
  %i.w = phi i8 [ %i.q, %.lr.ph.i.i.i7 ], [ %i.u, %.lr.ph.i.i.i.i.i.i ]
  %i.x = icmp eq i8 %i.w, -1
  %i.y = add nuw nsw i64 %.09.i.i.i, 1            ; 3 uses
  br i1 %i.x, label %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i7, !prof !43, !llvm.loop !482

_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i
  %i.z = icmp samesign ugt i64 %.09.i.i.i, 384307168202282324
  br i1 %i.z, label %.noexc.i, label %_ZNSt12_Vector_baseISt4pairIDiS0_IblEESaIS2_EE11_M_allocateEm.exit.i.i

.noexc.i:                                         ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #31
  unreachable

_ZNSt12_Vector_baseISt4pairIDiS0_IblEESaIS2_EE11_M_allocateEm.exit.i.i: ; preds = %_ZSt10__distanceIN4absl12lts_2026052618container_internal12raw_hash_setINS2_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorEENSt15iterator_traitsIT_E15difference_typeESB_SB_St18input_iterator_tag.exit.i.i
  %i.aa = mul nuw nsw i64 %i.y, 24
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #32 ; 3 uses
  store ptr %i.ab, ptr %2, align 8, !tbaa !217
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !218
  br label %.lr.ph.i.i.i.i12.i.i

.lr.ph.i.i.i.i12.i.i:                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIDiS0_IblEESaIS2_EE11_M_allocateEm.exit.i.i
  %.016.i.i.i.i.i.i = phi ptr [ %i.at, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i ], [ %i.ab, %_ZNSt12_Vector_baseISt4pairIDiS0_IblEESaIS2_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.sroa.6.015.i.i.i.i.i.i = phi ptr [ %.sroa.6.1.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.6.0.i.i, %_ZNSt12_Vector_baseISt4pairIDiS0_IblEESaIS2_EE11_M_allocateEm.exit.i.i ] ; 3 uses
  %.sroa.08.014.i.i.i.i.i.i = phi ptr [ %.sroa.08.1.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i, %_ZNSt12_Vector_baseISt4pairIDiS0_IblEESaIS2_EE11_M_allocateEm.exit.i.i ]
  %i.ae = load i32, ptr %.sroa.6.015.i.i.i.i.i.i, align 8, !tbaa !485
  store i32 %i.ae, ptr %.016.i.i.i.i.i.i, align 8, !tbaa !213
  %i.af = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.6.015.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.014.i.i.i.i.i.i, i64 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.6.015.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !234 ; 2 uses
  %i.ak = icmp slt i8 %i.aj, -1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i12.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.al = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i12.i.i ]
  %i.am = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i12.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !234 ; 2 uses
  %i.aq = icmp slt i8 %i.ap, -1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i, !llvm.loop !481

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i12.i.i
  %.sroa.08.1.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i12.i.i ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i12.i.i ], [ %i.ao, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.ar = phi i8 [ %i.aj, %.lr.ph.i.i.i.i12.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.as = icmp eq i8 %i.ar, -1
  %i.at = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 24 ; 2 uses
  br i1 %i.as, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorppEv.exit.i.i.i.i.i.i.thread, label %.lr.ph.i.i.i.i12.i.i, !prof !43, !llvm.loop !483

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorppEv.exit.i.i.i.i.i.i.thread: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit.thread
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %_ZNK4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE5beginEv.exit.thread ], [ %i.at, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE8iterator21skip_empty_or_deletedEv.exit.i.i.i.i.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.au, align 8, !tbaa !235
  invoke void @_ZN13sentencepiece6SortedIDiSt4pairIblEEESt6vectorIS1_IT_T0_ESaIS6_EERKS8_(ptr dead_on_unwind writable sret(%"class.std::vector.117") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorppEv.exit.i.i.i.i.i.i.thread
  %i.av = load ptr, ptr %2, align 8, !tbaa !217   ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorISt4pairIDiS0_IblEESaIS2_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !218
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #33
  br label %_ZNSt6vectorISt4pairIDiS0_IblEESaIS2_EED2Ev.exit

_ZNSt6vectorISt4pairIDiS0_IblEESaIS2_EED2Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret void

bb.g:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDiSt4pairIblEEEJEE14const_iteratorppEv.exit.i.i.i.i.i.i.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %2, align 8, !tbaa !217   ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i11, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !218
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bh) #33
  br label %.body

.body:                                            ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.bb
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNO4absl12lts_2026052613StatusBuilderlsIA22_cEEOS1_RKT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(22) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNR4absl12lts_2026052613StatusBuilderlsIA22_cEERS1_RKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.d = load i8, ptr %i.c, align 8, !tbaa !61, !range !52, !noundef !53
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2026052613StatusBuilder3Rep10InitStreamEv(ptr noundef nonnull align 8 dereferenceable(446) %i.b)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %.pre.i, %bb.c ], [ %i.b, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !nonnull !53, !align !66
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(22) %1) #34
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(22) %1, i64 noundef %i.i) ; 0 uses
  br label %_ZNR4absl12lts_2026052613StatusBuilderlsIA22_cEERS1_RKT_.exit

_ZNR4absl12lts_2026052613StatusBuilderlsIA22_cEERS1_RKT_.exit: ; preds = %bb.a, %bb.d
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE7emplaceIJRKDiRKlETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSC_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.125") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.a = load i64, ptr %1, align 8, !noalias !508 ; 4 uses
  %i.b = and i64 %i.a, 254
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.d = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.a, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i, label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.e = or i64 %i.a, 131328
  store i64 %i.e, ptr %1, align 8, !noalias !511
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE28find_or_prepare_insert_smallIDiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !134, !noalias !511
  %i.i = load i32, ptr %2, align 4, !tbaa !134, !noalias !511
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE28find_or_prepare_insert_smallIDiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !511
  store ptr %1, ptr %4, align 8, !tbaa !208, !noalias !511
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.k, align 8, !tbaa !132, !noalias !511
  %i.l = call noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm16ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIDiEEDiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false), !noalias !511 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !511
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !48, !noalias !511, !nonnull !53, !noundef !53
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !48, !noalias !511
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i, i64 %i.l
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashMapPolicyIDilEEJEE28find_or_prepare_insert_smallIDiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN13sentencepiece6SortedIS8_lEESB_IS2_IT_T0_ESaISL_EERKSN_EUlRKS9_SR_E_EEEvSJ_SJ_SJ_SJ_SK_:bb.a
  br i1 %i.bq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65.thread, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit55.thread69
  %i.br = icmp eq i64 %i.d, %i.ba
  br i1 %i.br, label %bb.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65.thread70

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !47 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !47 ; 2 uses
  %.sroa.speculated.i.i.i.i56 = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bt) ; 2 uses
  %i.bw = icmp eq i64 %.sroa.speculated.i.i.i.i56, 0
  br i1 %i.bw, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57: ; preds = %bb.k
  %i.bx = load ptr, ptr %3, align 8, !tbaa !50
  %i.by = load ptr, ptr %2, align 8, !tbaa !50
  %i.bz = tail call i32 @memcmp(ptr noundef %i.by, ptr noundef %i.bx, i64 noundef %.sroa.speculated.i.i.i.i56) #34 ; 2 uses
  %.not.i.i.i.i58 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i.i58, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57, %bb.k
  %i.ca = sub i64 %i.bt, %i.bv
  %spec.select7.i.i.i.i.i62 = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 -2147483648)
  %.08.i.i.i.i.i63 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i62, i64 2147483647)
  %.0.i6.i.i.i.i64 = trunc nsw i64 %.08.i.i.i.i.i63 to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61
  %.0.i.i.i.i60 = phi i32 [ %i.bz, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i57 ], [ %.0.i6.i.i.i.i64, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i61 ]
  %i.cb = icmp slt i32 %.0.i.i.i.i60, 0
  br i1 %i.cb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65.thread70

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit55.thread69, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %3) #34
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !168
  %i.ce = load i64, ptr %i.az, align 8, !tbaa !168
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !168
  store i64 %i.cd, ptr %i.az, align 8, !tbaa !168
  br label %bb.l

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65.thread70: ; preds = %bb.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2) #34
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !168
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !168
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !168
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !168
  br label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit55.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65.thread70, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit65.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit35.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit45.thread68, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit45.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN13sentencepiece6SortedIS8_lEESB_IS2_IT_T0_ESaISL_EERKSN_EUlRKS9_SR_E_EEESJ_SJ_SJ_SJ_SK_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %.sroa.020.0 = phi ptr [ %0, %bb.a ], [ %i.aj, %bb.i ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.1, %bb.i ]
  %i.c = load i64, ptr %i.a, align 8, !tbaa !170  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread, %bb.b
  %.sroa.020.1 = phi ptr [ %.sroa.020.0, %bb.b ], [ %i.q, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread ] ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.020.1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !170  ; 2 uses
  %i.f = icmp sgt i64 %i.e, %i.c
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %i.e, %i.c
  br i1 %i.g, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread23

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.020.1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47   ; 2 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.e
  %i.l = load ptr, ptr %2, align 8, !tbaa !50
  %i.m = load ptr, ptr %.sroa.020.1, align 8, !tbaa !50
  %i.n = tail call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #34 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.e
  %i.o = sub i64 %i.i, %i.j
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread23

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.020.1, i64 40
  br label %bb.c, !llvm.loop !898

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread23: ; preds = %bb.d, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.020.1, i64 32 ; 2 uses
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread23
  %.sroa.0.0.pn = phi ptr [ %.sroa.0.0, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread23 ], [ %.sroa.0.1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread.backedge ] ; 4 uses
  %.sroa.0.1 = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -40 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !170  ; 2 uses
  %i.u = icmp sgt i64 %i.c, %i.t
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread.backedge, label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread, !llvm.loop !899

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread
  %i.v = icmp eq i64 %i.c, %i.t
  br i1 %i.v, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread24

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47   ; 2 uses
  %.sroa.speculated.i.i.i.i8 = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.w) ; 2 uses
  %i.z = icmp eq i64 %.sroa.speculated.i.i.i.i8, 0
  br i1 %i.z, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9: ; preds = %bb.g
  %i.aa = load ptr, ptr %.sroa.0.1, align 8, !tbaa !50
  %i.ab = load ptr, ptr %2, align 8, !tbaa !50
  %i.ac = tail call i32 @memcmp(ptr noundef %i.ab, ptr noundef %i.aa, i64 noundef %.sroa.speculated.i.i.i.i8) #34 ; 2 uses
  %.not.i.i.i.i10 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9, %bb.g
  %i.ad = sub i64 %i.w, %i.y
  %spec.select7.i.i.i.i.i14 = tail call i64 @llvm.smax.i64(i64 %i.ad, i64 -2147483648)
  %.08.i.i.i.i.i15 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i14, i64 2147483647)
  %.0.i6.i.i.i.i16 = trunc nsw i64 %.08.i.i.i.i.i15 to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13
  %.0.i.i.i.i12 = phi i32 [ %i.ac, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9 ], [ %.0.i6.i.i.i.i16, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i13 ]
  %i.ae = icmp slt i32 %.0.i.i.i.i12, 0
  br i1 %i.ae, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread24

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread24: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17
  %i.af = icmp ult ptr %.sroa.020.1, %.sroa.0.1
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread24
  ret ptr %.sroa.020.1

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit17.thread24
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.pn, i64 -8 ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.020.1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.1) #34
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !168
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !168
  store i64 %i.ai, ptr %i.r, align 8, !tbaa !168
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !168
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.020.1, i64 40
  br label %bb.b, !llvm.loop !900
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZN13sentencepiece6SortedIS8_lEESB_IS2_IT_T0_ESaISL_EERKSN_EUlRKS9_SR_E_EEEvSJ_SJ_SK_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::pair", align 8        ; 13 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit21, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.022 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.not23 = icmp eq ptr %.sroa.0.022, %1
  br i1 %.not23, label %.loopexit21, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.025 = phi ptr [ %.sroa.0.022, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.025, %bb.q ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pn24, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !170  ; 3 uses
  %i.k = load i64, ptr %i.b, align 8, !tbaa !170  ; 2 uses
  %i.l = icmp sgt i64 %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.j, %i.k
  br i1 %i.m, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread20

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.pn24, i64 48
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = load i64, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.p, i64 %i.o) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !50
  %i.s = load ptr, ptr %.sroa.0.025, align 8, !tbaa !50
  %i.t = call i32 @memcmp(ptr noundef %i.s, ptr noundef %i.r, i64 noundef %.sroa.speculated.i.i.i.i) #34 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.d
  %i.u = sub i64 %i.o, %i.p
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.u, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.t, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.v = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread20

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.d, ptr %2, align 8, !tbaa !46
  %i.w = load ptr, ptr %.sroa.0.025, align 8, !tbaa !50 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pn24, i64 56 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %.pn24, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread
  store ptr %i.w, ptr %2, align 8, !tbaa !50
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !48
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !48
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEC2EOS6_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %3 = getelementptr inbounds nuw i8, ptr %.pn24, i64 48 ; 2 uses
  %4 = load i64, ptr %3, align 8, !tbaa !47
  store i64 %4, ptr %i.e, align 8, !tbaa !47
  store ptr %i.x, ptr %.sroa.0.025, align 8, !tbaa !50
  store i64 0, ptr %3, align 8, !tbaa !47
  store i8 0, ptr %i.x, align 8, !tbaa !48
  store i64 %i.j, ptr %i.f, align 8, !tbaa !170
  %i.ae = ptrtoint ptr %.sroa.0.025 to i64
  %i.af = sub i64 %i.ae, %i.g                     ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEC2EOS6_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn24, i64 80
  %i.ai = udiv exact i64 %i.af, 40
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bn, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i ], [ %i.ai, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ak, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i ], [ %i.ah, %.lr.ph.preheader.i.i.i.i.i ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %i.aj, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i ], [ %.sroa.0.025, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.aj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 5 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 6 uses
  %i.am = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 4 uses
  %i.an = icmp eq ptr %i.al, %i.am
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !50 ; 5 uses
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 6 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap                ; 2 uses
  br i1 %i.an, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aq, label %bb.f, label %.thread.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !47 ; 3 uses
  %i.at = icmp ult i64 %i.as, 16
  call void @llvm.assume(i1 %i.at)
  switch i64 %i.as, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = load i8, ptr %i.ao, align 1, !tbaa !48
  store i8 %i.au, ptr %i.al, align 1, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.ao, i64 %i.as, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.av = load i64, ptr %i.ar, align 8, !tbaa !47 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !47
  %i.ax = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.ay, align 1, !tbaa !48
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !50
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !50
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !47
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !47
  %i.bc = load i64, ptr %i.ap, align 8, !tbaa !48
  store i64 %i.bc, ptr %i.am, align 8, !tbaa !48
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.bd = load i64, ptr %i.am, align 8, !tbaa !48
  store ptr %i.ao, ptr %i.ak, align 8, !tbaa !50
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !47
  %i.bg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !47
  %i.bh = load i64, ptr %i.ap, align 8, !tbaa !48
  store i64 %i.bh, ptr %i.am, align 8, !tbaa !48
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !50
  store i64 %i.bd, ptr %i.ap, align 8, !tbaa !48
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !50
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i
  %i.bi = phi ptr [ %i.al, %bb.i ], [ %i.ap, %bb.j ], [ %.pre.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i.i ]
  %i.bj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  store i64 0, ptr %i.bj, align 8, !tbaa !47
  store i8 0, ptr %i.bi, align 1, !tbaa !48
  %i.bk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !168
  %i.bm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !170
  %i.bn = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bo = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !901

.loopexit:                                        ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit.i.i.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEC2EOS6_.exit
  %i.bp = load ptr, ptr %0, align 8, !tbaa !50    ; 6 uses
  %i.bq = icmp eq ptr %i.bp, %i.h
  %i.br = load ptr, ptr %2, align 8, !tbaa !50    ; 6 uses
  %i.bs = icmp eq ptr %i.br, %i.d                 ; 2 uses
  %.pre26 = load i64, ptr %i.e, align 8, !tbaa !47 ; 5 uses
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %.loopexit
  br i1 %i.bs, label %bb.k, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.loopexit
  br i1 %i.bs, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  %i.bt = icmp ult i64 %.pre26, 16
  call void @llvm.assume(i1 %i.bt)
  br i1 %.not21.i.i, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit, label %bb.l, !prof !43

bb.l:                                             ; preds = %bb.k
  switch i64 %.pre26, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %i.br, align 1, !tbaa !48
  store i8 %i.bu, ptr %i.bp, align 1, !tbaa !48
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.br, i64 %.pre26, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !47  ; 2 uses
  store i64 %i.bv, ptr %i.c, align 8, !tbaa !47
  %i.bw = load ptr, ptr %0, align 8, !tbaa !50
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 0, ptr %i.bx, align 1, !tbaa !48
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !50
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  store ptr %i.br, ptr %0, align 8, !tbaa !50
  store i64 %.pre26, ptr %i.c, align 8, !tbaa !47
  %i.by = load i64, ptr %i.d, align 8, !tbaa !48
  store i64 %i.by, ptr %i.h, align 8, !tbaa !48
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bz = load i64, ptr %i.h, align 8, !tbaa !48
  store ptr %i.br, ptr %0, align 8, !tbaa !50
  store i64 %.pre26, ptr %i.c, align 8, !tbaa !47
  %i.ca = load i64, ptr %i.d, align 8, !tbaa !48
  store i64 %i.ca, ptr %i.h, align 8, !tbaa !48
  %.not.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bp, ptr %2, align 8, !tbaa !50
  store i64 %i.bz, ptr %i.d, align 8, !tbaa !48
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.d, ptr %2, align 8, !tbaa !50
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.o, %bb.p
  %i.cb = phi ptr [ %i.bp, %bb.o ], [ %i.d, %bb.p ], [ %i.br, %bb.k ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.e, align 8, !tbaa !47
  store i8 0, ptr %i.cb, align 1, !tbaa !48
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !168
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !170
  %i.cd = load ptr, ptr %2, align 8, !tbaa !50    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.d
  br i1 %i.ce, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit
  %i.cf = load i64, ptr %i.d, align 8, !tbaa !48
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #33
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEaSEOS6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.q

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread20: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZN13sentencepiece6SortedIS8_lEESB_IS2_IT_T0_ESaISL_EERKSN_EUlRKS9_SR_E_EEEvSJ_SK_(ptr nonnull %.sroa.0.025)
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElED2Ev.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN13sentencepiece6SortedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElEESt6vectorISt4pairIT_T0_ESaISE_EERKSG_EUlRKSB_IS9_lESL_E_EclINS_17__normal_iteratorIPSJ_SA_ISJ_SaISJ_EEEEST_EEbSC_SD_.exit.thread20
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 40 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
end_hunk_1
