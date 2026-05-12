inline.NumInlined: 7735
inline.NumDeleted: 3262
begin_hunk_0_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a
  %7 = alloca %"struct.fmt::v11::detail::format_arg_store.399", align 16 ; 5 uses
  %8 = alloca %"class.folly::Future", align 8     ; 7 uses
  %9 = alloca %"class.folly::ExecutorKeepAlive.381", align 8 ; 8 uses
  %.sroa.0.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %10 = alloca %"class.std::function.249", align 8 ; 12 uses
  %11 = alloca %"class.folly::SemiFuture", align 8 ; 11 uses
  %12 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %13 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !789
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false), !noalias !789
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28, !noalias !789
  %i.se = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #42
          to label %.noexc220 unwind label %bb.hs ; 10 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a
          to label %bb.gd unwind label %bb.fa, !noalias !789

bb.gd:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 16, i1 false), !tbaa.struct !754, !noalias !789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.ue, i64 16, i1 false), !tbaa.struct !754, !noalias !789
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ue, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i, i64 16, i1 false), !tbaa.struct !754, !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.uj = load <2 x ptr>, ptr %i.uf, align 8, !tbaa !118, !noalias !789
  %i.uk = load <2 x ptr>, ptr %i.jt, align 8, !tbaa !118, !noalias !789
  store <2 x ptr> %i.uj, ptr %i.jt, align 8, !tbaa !118, !noalias !789
  store <2 x ptr> %i.uk, ptr %i.uf, align 8, !tbaa !118, !noalias !789
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.ul = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.sn) #28, !noalias !789 ; 0 uses
  %.val.i = load ptr, ptr %i.jt, align 8, !tbaa !117, !noalias !789
  %.not.i.i.not.i39.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.not.i39.i, label %bb.gh, label %bb.gf

end_hunk_2
begin_hunk_3_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a

_ZN5folly10SemiFutureINS_4UnitEED2Ev.exit54.i:    ; preds = %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !789
  %i.wk = load ptr, ptr %i.jt, align 8, !tbaa !117, !noalias !789 ; 2 uses
  %.not.i55.i = icmp eq ptr %i.wk, null
  br i1 %.not.i55.i, label %bb.hl, label %bb.hg

end_hunk_3
begin_hunk_4_@_ZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_Rb:bb.a
bb.hi:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50.i, %bb.gx, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit11.i.i, %bb.gg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28.i, %bb.eo
  %.pn17.pn.pn.i = phi { ptr, i32 } [ %.pn.i.i, %_ZN5folly17ExecutorKeepAliveINS_8ExecutorEED2Ev.exit11.i.i ], [ %i.sr, %bb.eo ], [ %.pn.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit28.i ], [ %i.un, %bb.gg ], [ %.pn17.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit50.i ], [ %i.vy, %bb.gx ]
  call void @_ZN5folly10SemiFutureINS_4UnitEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #28, !noalias !789
  %.pre65.i = load ptr, ptr %i.jt, align 8, !tbaa !117, !noalias !789 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28, !noalias !789
  %.not.i56.i = icmp eq ptr %.pre65.i, null
  br i1 %.not.i56.i, label %_ZNSt14_Function_baseD2Ev.exit57.i, label %bb.hj
end_hunk_4
begin_hunk_5_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_T0_T1_":bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_T2_"(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull captures(none) %3) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.14 = alloca { i64, i64 }, align 8        ; 2 uses
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
end_hunk_5
begin_hunk_6_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_T2_":bb.a
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !118
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false)
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.16.32.copyload = load i64, ptr %.sroa.16.32..sroa_idx, align 8 ; 2 uses
  %i.ad = icmp sgt i64 %.1, %1
end_hunk_6
begin_hunk_7_@"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_SI_T1_T2_":bb.a

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.m, %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  %.sroa.16.32..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i64 %.sroa.16.32.copyload, ptr %.sroa.16.32..sroa_idx39, align 8
  ret void
end_hunk_7
begin_hunk_8_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_SH_T0_":bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_"(ptr %0) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.16 = alloca { i64, i64 }, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  %i.a = load ptr, ptr %0, align 8, !tbaa !225    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !139  ; 2 uses
end_hunk_8
begin_hunk_9_@"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_":bb.a
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.18.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.18.32.copyload = load i64, ptr %.sroa.18.32..sroa_idx, align 8 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 -8
end_hunk_9
begin_hunk_10_@"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN8facebook5velox6memory20ArbitrationCandidateESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS4_16SharedArbitrator39sortCandidatesByReclaimableFreeCapacityERS9_E3$_0EEEvT_T0_":bb.a

_ZN8facebook5velox6memory20ArbitrationCandidateD2Ev.exit: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEaSEOS4_.exit.i.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i5.i.i, %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa16, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  %.sroa.18.32..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa16, i64 48
  store i64 %.sroa.18.32.copyload, ptr %.sroa.18.32..sroa_idx6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  ret void
}

end_hunk_10
begin_hunk_11_@_ZN5folly6detail8function14FunctionTraitsIFvvEE10uninitCallERNS1_4DataE:bb.a
; Function Attrs: mustprogress uwtable
define internal void @"_ZN5folly6detail8function5call_IZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESE_RbE3$_1Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE"(ptr noundef nonnull readonly align 16 captures(none) dereferenceable(48) %0) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i.i.i = alloca { i64, i64 }, align 8 ; 4 uses
  %1 = alloca %"class.std::function.249", align 8 ; 14 uses
  %.val = load ptr, ptr %0, align 16, !tbaa !771  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, i8 0, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 4 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.b, 0
end_hunk_11
begin_hunk_12_@"_ZN5folly6detail8function5call_IZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESE_RbE3$_1Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE":bb.a

bb.k:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 16, i1 false), !tbaa.struct !754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 16, i1 false), !tbaa.struct !754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !754
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 224 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.l, align 8, !tbaa !118
  %i.n = load <2 x ptr>, ptr %i.k, align 8, !tbaa !118
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !118
  store <2 x ptr> %i.n, ptr %i.l, align 8, !tbaa !118
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  invoke fastcc void @_ZN8facebook5velox11AsyncSourceIZNS0_6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESB_RbE13ReclaimResultE8makeItemEOSt8functionIFSt10unique_ptrISD_St14default_deleteISD_EEvEE(ptr noundef nonnull align 8 dereferenceable(248) %.val, ptr noundef nonnull align 8 dereferenceable(32) %1)
end_hunk_12
begin_hunk_13_@"_ZN5folly6detail8function5call_IZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESE_RbE3$_1Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE":bb.a

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %"_ZZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESA_RbENK3$_1clEv.exit", label %bb.m

end_hunk_13
begin_hunk_14_@"_ZN5folly6detail8function5call_IZN8facebook5velox6memory16SharedArbitrator24reclaimUsedMemoryBySpillEmRSt13unordered_setImSt4hashImESt8equal_toImESaImEESE_RbE3$_1Lb1ELb0EvJEEET2_DpT3_RNS1_4DataE":bb.a
bb.q:                                             ; preds = %bb.p, %bb.o, %bb.f
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.v, %bb.p ], [ %.pn.i.i, %bb.o ], [ %i.f, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117  ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i10.i.i, label %_ZNSt14_Function_baseD2Ev.exit11.i.i, label %bb.r

end_hunk_14
begin_hunk_15_@_ZNSt22_Optional_payload_baseIN8facebook5velox7process15ThreadDebugInfoEE14_M_move_assignEOS4_:bb.a
; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(96) ptr @_ZN8facebook5velox7process15ThreadDebugInfoaSEOS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.269", align 8 ; 9 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !15     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = icmp eq ptr %i.a, %i.b
end_hunk_15
begin_hunk_16_@_ZN8facebook5velox7process15ThreadDebugInfoaSEOS2_:bb.a
  store i8 0, ptr %i.ay, align 1, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bc = load <2 x ptr>, ptr %i.bb, align 8, !tbaa !118
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !117
end_hunk_16
begin_hunk_17_@_ZN8facebook5velox7process15ThreadDebugInfoaSEOS2_:bb.a

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i64 16, i1 false), !tbaa.struct !754
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvvEEC2EOS1_.exit.i

_ZNSt8functionIFvvEEC2EOS1_.exit.i:               ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 16, i1 false), !tbaa.struct !754
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !754
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !118
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !118 ; 2 uses
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !118
  store <2 x ptr> %i.bc, ptr %i.bg, align 8, !tbaa !118
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvvEEaSEOS1_.exit, label %bb.o
end_hunk_17
