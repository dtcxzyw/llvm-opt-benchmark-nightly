Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_creation_benchmark?download=true
inline.NumInlined: 3424
inline.NumDeleted: 2312
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12_GLOBAL__N_129BM_LargeObjectCreationWithAnyERN9benchmark5StateE:_ZN9benchmark5State13StateIteratorC2EPS0_.exit
          cleanup
  br label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit32

_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit32:       ; preds = %bb.w, %.loopexit.split-lp, %.loopexit, %bb.aa, %bb.ab, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %i.du, %bb.aa ], [ %i.dv, %bb.ab ], [ %i.dk, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorISt3anySaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !98
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i) #28, !inline_history !826
  br label %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i

_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !95
  br label %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.g, align 8, !tbaa !102
  %i.h = ptrtoint ptr %.val1 to i64
  %i.i = ptrtoint ptr %.val to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.j) #30
  br label %_ZNSt12_Vector_baseIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEES5_EvT_S7_RSaIT0_E.exit, %bb.c
  ret void
}

declare void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

declare void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESI_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 20)) %1) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i32, ptr %i.a, align 8, !tbaa !156
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %.val, ptr %i.b, align 8, !tbaa !156
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESI_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIiEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_(ptr nofree nonnull readnone align 8 captures(none) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESI_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !158
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %.val, ptr %i.b, align 8, !tbaa !158
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESI_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrIdEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESG_(ptr nofree nonnull readnone align 8 captures(none) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress noreturn uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11inplace_ptrINS4_12SmallObject3EEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESJ_S8_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((16, 24)) %1) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !110
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28, !inline_history !827 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.32)
          to label %bb.b unwind label %bb.c, !inline_history !827

bb.b:                                             ; preds = %bb.a
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
          to label %bb.f unwind label %bb.d, !inline_history !827

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #28, !inline_history !827
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.c, %bb.c ]
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !157  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 4) #30, !inline_history !827
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  resume { ptr, i32 } %.pn.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.b
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #14

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrINS4_12SmallObject3EEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrINS4_12SmallObject3EEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef 4) #30
  br label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrINS4_12SmallObject3EEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11inplace_ptrINS4_12SmallObject3EEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrIiSaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESJ_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !115
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrIiSaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESJ_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiSaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiSaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiSaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !115
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 16) #30
  br label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiSaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiSaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrIdSaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESJ_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !118 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !118
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrIdSaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESJ_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdSaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdSaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESH_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !118
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdSaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !118
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 16) #30
  br label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdSaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdSaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESH_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrINS4_12SmallObject3ESaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESK_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !121 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !121
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrINS4_12SmallObject3ESaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESK_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ESaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESI_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ESaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESI_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESI_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef 4) #30
  br label %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i

_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 16) #30
  br label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESI_.exit

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESI_.exit: ; preds = %bb.a, %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt3pmr28unsynchronized_pool_resourceC2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %"struct.std::pmr::pool_options", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #28
  call void @_ZNSt3pmr28unsynchronized_pool_resourceC2ERKNS_12pool_optionsEPNS_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3pmr28unsynchronized_pool_resourceD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #14

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #18

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() local_unnamed_addr #14

declare void @_ZNSt3pmr28unsynchronized_pool_resourceC2ERKNS_12pool_optionsEPNS_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrIiNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESM_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !127
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrIiNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESM_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESK_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESK_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESK_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8)
          to label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESK_.exit unwind label %bb.c, !inline_history !14

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIiNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESK_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrIdNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESM_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !130 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !130
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrIdNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESM_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESK_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESK_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESK_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8)
          to label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESK_.exit unwind label %bb.c, !inline_history !14

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrIdNSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESK_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrINS4_12SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESN_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !133 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !133
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrINS4_12SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESN_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESL_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !133  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !212 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val4.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef 4) #30
  br label %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.h = load ptr, ptr %.val.i.i.i.i.i.i.i, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i.i.i.i.i.i, ptr noundef nonnull %i.e, i64 noundef 24, i64 noundef 8)
          to label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESL_.exit unwind label %bb.c, !inline_history !14

bb.c:                                             ; preds = %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESL_.exit: ; preds = %bb.a, %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EESaIS5_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !137  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %.0.val.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !139 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %.0.val.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_121PolymorphicObjectBaseEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_121PolymorphicObjectBaseEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.d = load ptr, ptr %.0.val.i.i, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %.0.val.i.i) #28, !inline_history !828
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_121PolymorphicObjectBaseEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !7

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !136
  br label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !tbaa !142
  %i.i = ptrtoint ptr %.val1 to i64
  %i.j = ptrtoint ptr %.val to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.k) #30
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectIiED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectIdED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectINS_12SmallObject3EED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_117PolymorphicObjectINS_12SmallObject3EEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i:          ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef 4) #30
  br label %_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit

_ZN12_GLOBAL__N_112SmallObject3D2Ev.exit:         ; preds = %bb.a, %_ZNKSt14default_deleteIiEclEPi.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectINS_12SmallObject3EED0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_117PolymorphicObjectINS_12SmallObject3EEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_117PolymorphicObjectINS_12SmallObject3EED2Ev.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i:        ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef 4) #30, !inline_history !829
  br label %_ZN12_GLOBAL__N_117PolymorphicObjectINS_12SmallObject3EED2Ev.exit

_ZN12_GLOBAL__N_117PolymorphicObjectINS_12SmallObject3EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrIiLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !154
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !155
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !15
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !15
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !156
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !29

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
end_hunk_0
begin_hunk_1_@_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESU_S8_:bb.a
  resume { ptr, i32 } %i.l

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRKS6_S8_E_clESU_S8_.exit: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  store ptr %i.g, ptr %i.m, align 8, !tbaa !184
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESU_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESS_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrIN3pro2v46detail19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEZNS2_8allocateISG_SF_JRSF_RKSB_EEEPT_RKT0_DpOT1_EUlPSG_E_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !871  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZZN3pro2v46detail8allocateINS1_19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEESF_JRSF_RKSB_EEEPT_RKT0_DpOT1_ENKUlPSG_E_clESS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !873, !nonnull !874, !align !875
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !216  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.b, i64 noundef 104, i64 noundef 8)
          to label %_ZZN3pro2v46detail8allocateINS1_19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEESF_JRSF_RKSB_EEEPT_RKT0_DpOT1_ENKUlPSG_E_clESS_.exit unwind label %bb.c, !inline_history !14

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZZN3pro2v46detail8allocateINS1_19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEESF_JRSF_RKSB_EEEPT_RKT0_DpOT1_ENKUlPSG_E_clESS_.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESS_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !184 ; 8 uses
  %i.b = load ptr, ptr %.val, align 8, !tbaa !212 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !33
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 56 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !33
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load i64, ptr %i.q, align 8, !tbaa !33
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #30
  br label %_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i.i.i.i.i.i
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %.val, i64 noundef 104, i64 noundef 8)
          to label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESS_.exit unwind label %bb.b, !inline_history !14

bb.b:                                             ; preds = %_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #31
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESS_.exit: ; preds = %_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_11compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESN_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !187 ; 2 uses
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !212 ; 4 uses
  %i.b = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(136) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(8) %.val4.i.i.i.i.i.i.i.i.i.i, i64 noundef 136, i64 noundef 8), !inline_history !876 ; 3 uses
  %.val7.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val, align 8, !tbaa !162
  store i64 %.val7.i.i.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !162
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !110
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #28, !inline_history !877 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.32)
          to label %bb.b unwind label %bb.c, !inline_history !877

bb.b:                                             ; preds = %bb.a
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #29
          to label %bb.f unwind label %bb.d, !inline_history !877

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.g) #28, !inline_history !877
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !157  ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.body.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 4) #30, !inline_history !877
  br label %.body.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.b
  unreachable

.body.i.i.i.i.i.i.i.i.i.i.i:                      ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.k = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %.val4.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull %i.e, i64 noundef 136, i64 noundef 8)
          to label %_ZNSt10unique_ptrIN3pro2v46detail19compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEZNS2_8allocateISA_S9_JRS9_RKS5_EEEPT_RKT0_DpOT1_EUlPSA_E_ED2Ev.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.g, !inline_history !878

bb.g:                                             ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #31, !inline_history !877
  unreachable

_ZNSt10unique_ptrIN3pro2v46detail19compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEZNS2_8allocateISA_S9_JRS9_RKS5_EEEPT_RKT0_DpOT1_EUlPSA_E_ED2Ev.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i
  resume { ptr, i32 } %.pn.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !187 ; 3 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %.val, align 8, !tbaa !212 ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val4.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef 4) #30
  br label %_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.c = load ptr, ptr %.val.i.i.i.i.i.i.i, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i.i.i.i.i.i, ptr noundef nonnull %.val, i64 noundef 136, i64 noundef 8)
          to label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESL_.exit unwind label %bb.b, !inline_history !14

bb.b:                                             ; preds = %_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #31
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_11compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESL_.exit: ; preds = %_ZSt10destroy_atIN3pro2v46detail19compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrISt5arrayIcLm100EESaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESL_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !190 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !190
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrISt5arrayIcLm100EESaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESL_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EESaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESJ_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EESaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESJ_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESJ_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !190
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 112) #30
  br label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESJ_.exit

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESJ_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESR_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !193
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESR_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESP_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESP_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !193
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESP_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !193  ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !33
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !33
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #30
  br label %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i

_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 104) #30
  br label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESP_.exit

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESP_.exit: ; preds = %bb.a, %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrINS4_12LargeObject3ESaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESK_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !196 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !196
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrINS4_12LargeObject3ESaIvEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESK_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ESaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESI_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ESaIvEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESI_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !196
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESI_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !196  ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef 4) #30
  br label %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i

_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 136) #30
  br label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESI_.exit

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ESaIvEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESI_.exit: ; preds = %bb.a, %_ZN3pro2v46detail10deallocateISaIvENS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ES3_EEEEvRKT_PT0_.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESO_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !199 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !199
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESO_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESM_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESM_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESM_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !199  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !212  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e, i64 noundef 120, i64 noundef 8)
          to label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESM_.exit unwind label %bb.c, !inline_history !14

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESM_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESU_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !202 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !202
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESU_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESS_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESS_(ptr noundef nonnull align 8 dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN3pro2v46detail18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3pro2v46detail18shared_compact_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !202
  %i.b = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN3pro2v46detail10deallocateINSt3pmr21polymorphic_allocatorISt4byteEENS1_26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EES6_EEEEvRKT_PT0_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !202    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !212  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !33
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i.i.i.i
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !33
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i

_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i.i.i.i
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %i.d, i64 noundef 112, i64 noundef 8)
          to label %_ZN3pro2v46detail10deallocateINSt3pmr21polymorphic_allocatorISt4byteEENS1_26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EES6_EEEEvRKT_PT0_.exit unwind label %bb.c, !inline_history !14

bb.c:                                             ; preds = %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #31
  unreachable

_ZN3pro2v46detail10deallocateINSt3pmr21polymorphic_allocatorISt4byteEENS1_26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EES6_EEEEvRKT_PT0_.exit: ; preds = %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESN_S8_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %1) #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !tbaa !205 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.val, ptr %i.b, align 8, !tbaa !205
  %i.c = atomicrmw add ptr %.val, i64 1 monotonic, align 8 ; 0 uses
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEC1INS1_18shared_compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRKS6_S8_E_8__invokeESN_S8_, ptr %1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENUlRS6_E_8__invokeESL_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205
  %i.c = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESL_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !205  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !212 ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 16
  %.val4.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val4.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.val4.i.i.i.i.i.i.i.i, i64 noundef 4) #30
  br label %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.h = load ptr, ptr %.val.i.i.i.i.i.i.i, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %.val.i.i.i.i.i.i.i, ptr noundef nonnull %i.e, i64 noundef 144, i64 noundef 8)
          to label %_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESL_.exit unwind label %bb.c, !inline_history !14

bb.c:                                             ; preds = %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #31
  unreachable

_ZZN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEC1INS1_18shared_compact_ptrINS4_12LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEESt15in_place_type_tIT_EENKUlRS6_E_clESL_.exit: ; preds = %bb.a, %_ZSt10destroy_atIN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112LargeObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEvPT_.exit.i.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_121PolymorphicObjectBaseD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #22 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectISt5arrayIcLm100EEED0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEED2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(104) dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_117PolymorphicObjectISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) initializes((0, 8)) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_117PolymorphicObjectISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !33
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30, !inline_history !879
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !33
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #30, !inline_history !879
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN12_GLOBAL__N_117PolymorphicObjectISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !33
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #30, !inline_history !879
  br label %_ZN12_GLOBAL__N_117PolymorphicObjectISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEED2Ev.exit

_ZN12_GLOBAL__N_117PolymorphicObjectISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.2.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #30
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectINS_12LargeObject3EED2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(136) dereferenceable(136) initializes((0, 8)) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_117PolymorphicObjectINS_12LargeObject3EEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i.i, label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i:        ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef 4) #30
  br label %_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit

_ZN12_GLOBAL__N_112LargeObject3D2Ev.exit:         ; preds = %bb.a, %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_117PolymorphicObjectINS_12LargeObject3EED0Ev(ptr noundef nonnull align 8 dereferenceable(136) initializes((0, 8)) %0) unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_117PolymorphicObjectINS_12LargeObject3EEE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_117PolymorphicObjectINS_12LargeObject3EED2Ev.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i:      ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef 4) #30, !inline_history !880
  br label %_ZN12_GLOBAL__N_117PolymorphicObjectINS_12LargeObject3EED2Ev.exit

_ZN12_GLOBAL__N_117PolymorphicObjectINS_12LargeObject3EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12__shared_ptrISt5arrayIcLm100EELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_proxy_creation_benchmark.cpp:bb.a

_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i124: ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i3.i123, %bb.aa
  %i.jl = load ptr, ptr %5, align 8, !tbaa !70    ; 3 uses
  %.not.i5.i125 = icmp eq ptr %i.jl, null
  br i1 %.not.i5.i125, label %_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i127, label %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i126

_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i126: ; preds = %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i124
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !37
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(312) %i.jl) #28, !inline_history !930
  br label %_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i127

_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i127: ; preds = %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i126, %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %common.resume

__cxx_global_var_init.24.exit:                    ; preds = %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i130, %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  store ptr %i.ix, ptr @_ZN12_GLOBAL__N_128benchmark_uniq_14_benchmark_E, align 8, !tbaa !938
  %i.jp = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_128benchmark_uniq_14_benchmark_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store ptr @_ZN12_GLOBAL__N_142BM_LargeObjectCreationWithSharedPtr_PooledERN9benchmark5StateE, ptr %i.b, align 8, !tbaa !35
  call void @_ZSt11make_uniqueIN9benchmark8internal17FunctionBenchmarkEJRA43_KcPFvRNS0_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull align 1 dereferenceable(43) @.str.27, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.jq = load ptr, ptr %3, align 8, !tbaa !70
  store ptr null, ptr %3, align 8, !tbaa !70
  store ptr %i.jq, ptr %2, align 8, !tbaa !937
  %i.jr = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS_9BenchmarkESt14default_deleteIS2_EE(ptr nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %__cxx_global_var_init.24.exit
  %i.js = load ptr, ptr %2, align 8, !tbaa !938   ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.js, null
  br i1 %.not.i.i139, label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i141, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i140

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i140: ; preds = %bb.ab
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !37
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(304) %i.js) #28, !inline_history !931
  br label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i141

_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i141: ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i140, %bb.ab
  %i.jw = load ptr, ptr %3, align 8, !tbaa !70    ; 3 uses
  %.not.i1.i142 = icmp eq ptr %i.jw, null
  br i1 %.not.i1.i142, label %__cxx_global_var_init.26.exit, label %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i143

_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i143: ; preds = %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i141
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !37
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(312) %i.jw) #28, !inline_history !932
  br label %__cxx_global_var_init.26.exit

bb.ac:                                            ; preds = %__cxx_global_var_init.24.exit
  %i.ka = landingpad { ptr, i32 }
          cleanup
  %i.kb = load ptr, ptr %2, align 8, !tbaa !938   ; 3 uses
  %.not.i2.i133 = icmp eq ptr %i.kb, null
  br i1 %.not.i2.i133, label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i135, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i3.i134

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i3.i134: ; preds = %bb.ac
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !37
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(304) %i.kb) #28, !inline_history !931
  br label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i135

_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i135: ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i3.i134, %bb.ac
  %i.kf = load ptr, ptr %3, align 8, !tbaa !70    ; 3 uses
  %.not.i5.i136 = icmp eq ptr %i.kf, null
  br i1 %.not.i5.i136, label %_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i138, label %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i137

_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i137: ; preds = %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i135
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !37
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(312) %i.kf) #28, !inline_history !932
  br label %_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i138

_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i138: ; preds = %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i137, %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

__cxx_global_var_init.26.exit:                    ; preds = %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i141, %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  store ptr %i.jr, ptr @_ZN12_GLOBAL__N_128benchmark_uniq_15_benchmark_E, align 8, !tbaa !938
  %i.kj = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_128benchmark_uniq_15_benchmark_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @_ZN12_GLOBAL__N_129BM_LargeObjectCreationWithAnyERN9benchmark5StateE, ptr %i.a, align 8, !tbaa !35
  call void @_ZSt11make_uniqueIN9benchmark8internal17FunctionBenchmarkEJRA30_KcPFvRNS0_5StateEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %1, ptr noundef nonnull align 1 dereferenceable(30) @.str.29, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.kk = load ptr, ptr %1, align 8, !tbaa !70
  store ptr null, ptr %1, align 8, !tbaa !70
  store ptr %i.kk, ptr %0, align 8, !tbaa !937
  %i.kl = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalESt10unique_ptrINS_9BenchmarkESt14default_deleteIS2_EE(ptr nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %__cxx_global_var_init.26.exit
  %i.km = load ptr, ptr %0, align 8, !tbaa !938   ; 3 uses
  %.not.i.i150 = icmp eq ptr %i.km, null
  br i1 %.not.i.i150, label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i152, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i151

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i151: ; preds = %bb.ad
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !37
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 8
  %i.kp = load ptr, ptr %i.ko, align 8
  call void %i.kp(ptr noundef nonnull align 8 dereferenceable(304) %i.km) #28, !inline_history !933
  br label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i152

_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i152: ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i151, %bb.ad
  %i.kq = load ptr, ptr %1, align 8, !tbaa !70    ; 3 uses
  %.not.i1.i153 = icmp eq ptr %i.kq, null
  br i1 %.not.i1.i153, label %__cxx_global_var_init.28.exit, label %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i154

_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i154: ; preds = %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i152
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !37
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(312) %i.kq) #28, !inline_history !934
  br label %__cxx_global_var_init.28.exit

bb.ae:                                            ; preds = %__cxx_global_var_init.26.exit
  %i.ku = landingpad { ptr, i32 }
          cleanup
  %i.kv = load ptr, ptr %0, align 8, !tbaa !938   ; 3 uses
  %.not.i2.i144 = icmp eq ptr %i.kv, null
  br i1 %.not.i2.i144, label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i146, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i3.i145

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i3.i145: ; preds = %bb.ae
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !37
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8
  call void %i.ky(ptr noundef nonnull align 8 dereferenceable(304) %i.kv) #28, !inline_history !933
  br label %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i146

_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i146: ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i3.i145, %bb.ae
  %i.kz = load ptr, ptr %1, align 8, !tbaa !70    ; 3 uses
  %.not.i5.i147 = icmp eq ptr %i.kz, null
  br i1 %.not.i5.i147, label %_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i149, label %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i148

_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i148: ; preds = %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i146
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !37
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  call void %i.lc(ptr noundef nonnull align 8 dereferenceable(312) %i.kz) #28, !inline_history !934
  br label %_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i149

_ZNSt10unique_ptrIN9benchmark8internal17FunctionBenchmarkESt14default_deleteIS2_EED2Ev.exit7.i149: ; preds = %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i6.i148, %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit4.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %common.resume

__cxx_global_var_init.28.exit:                    ; preds = %_ZNSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS1_EED2Ev.exit.i152, %_ZNKSt14default_deleteIN9benchmark8internal17FunctionBenchmarkEEclEPS2_.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  store ptr %i.kl, ptr @_ZN12_GLOBAL__N_128benchmark_uniq_16_benchmark_E, align 8, !tbaa !938
  %i.ld = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN12_GLOBAL__N_128benchmark_uniq_16_benchmark_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { builtin allocsize(0) }
attributes #28 = { nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }

!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}
!llvm.errno.tbaa = !{!24}

!0 = distinct !{null, null, null, null, null, null, null, null, null, null}
!1 = distinct !{!1, !101}
!2 = distinct !{ptr @_ZNSt6vectorIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EED2Ev, null, null, null, null, null, null, null, null}
!3 = distinct !{!3, !101}
!4 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null}
!5 = distinct !{null, null, null, null}
!6 = distinct !{ptr @_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EESaIS5_EED2Ev, null, null, null, null, null, null}
!7 = distinct !{!7, !101}
!8 = distinct !{null, null}
!9 = distinct !{!9, !101}
!10 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIvESaIS1_EED2Ev, null, null, null, null, null, null, null}
!11 = distinct !{!11, !101}
!12 = distinct !{!12, !101}
!13 = distinct !{!13, !101}
!14 = distinct !{null}
!15 = distinct !{null, null}
!16 = !{i32 8, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 2}
!19 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!20 = !{!"Simple C++ TBAA"}
!21 = !{!"omnipotent char", !20, i64 0}
!22 = !{!"int", !21, i64 0}
!23 = !{!"__libc_errno", !22, i64 0}
!24 = !{!23, !22, i64 0}
!25 = !{!"any pointer", !21, i64 0}
!26 = !{!"p1 omnipotent char", !25, i64 0}
!27 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!30 = !{!"long", !21, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0, !30, i64 8, !21, i64 16}
!32 = !{!31, !26, i64 0}
!33 = !{!21, !21, i64 0}
!34 = !{!31, !30, i64 8}
!35 = !{!25, !25, i64 0}
!36 = !{!"vtable pointer", !20, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !21, i64 0}
!39 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !42, i64 0}
!44 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !25, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE12_Vector_implE", !45, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE", !46, i64 0}
!48 = !{!"_ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !47, i64 0}
!49 = !{!"_ZTSN9benchmark8TimeUnitE", !21, i64 0}
!50 = !{!"bool", !21, i64 0}
!51 = !{!"double", !21, i64 0}
!52 = !{!"_ZTSN9benchmark4BigOE", !21, i64 0}
!53 = !{!"p1 _ZTSN9benchmark8internal10StatisticsE", !25, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE12_Vector_implE", !54, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE", !55, i64 0}
!57 = !{!"_ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !56, i64 0}
!58 = !{!"p1 int", !25, i64 0}
!59 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!60 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !59, i64 0}
!61 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !60, i64 0}
!62 = !{!"_ZTSSt6vectorIiSaIiEE", !61, i64 0}
!63 = !{!"_ZTSSt14_Function_base", !21, i64 0, !25, i64 16}
!64 = !{!"_ZTSSt8functionIFvRKN9benchmark5StateEEE", !63, i64 0, !25, i64 24}
!65 = !{!"_ZTSSt8functionIFSt10unique_ptrIN9benchmark16ThreadRunnerBaseESt14default_deleteIS2_EEiEE", !63, i64 0, !25, i64 24}
!66 = !{!"_ZTSN9benchmark9BenchmarkE", !31, i64 8, !38, i64 40, !43, i64 48, !48, i64 72, !49, i64 96, !50, i64 100, !22, i64 104, !51, i64 112, !51, i64 120, !30, i64 128, !22, i64 136, !50, i64 140, !50, i64 141, !50, i64 142, !52, i64 144, !25, i64 152, !57, i64 160, !62, i64 184, !64, i64 208, !64, i64 240, !65, i64 272}
!67 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !66, i64 0, !25, i64 304}
!68 = !{!67, !25, i64 304}
!69 = !{!"p1 _ZTSN9benchmark8internal17FunctionBenchmarkE", !25, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"_ZTSN9benchmark8internal7SkippedE", !21, i64 0}
!72 = !{!"p1 long", !25, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !72, i64 0, !72, i64 8, !72, i64 16}
!74 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !73, i64 0}
!75 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !74, i64 0}
!76 = !{!"_ZTSSt6vectorIlSaIlEE", !75, i64 0}
!77 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!78 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !77, i64 0}
!79 = !{!"_ZTSSt14_Rb_tree_color", !21, i64 0}
!80 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !25, i64 0}
!81 = !{!"_ZTSSt18_Rb_tree_node_base", !79, i64 0, !80, i64 8, !80, i64 16, !80, i64 24}
!82 = !{!"_ZTSSt15_Rb_tree_header", !81, i64 0, !30, i64 32}
!83 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !78, i64 0, !82, i64 8}
!84 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !83, i64 0}
!85 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !84, i64 0}
!86 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !25, i64 0}
!87 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !25, i64 0}
!88 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !25, i64 0}
!89 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !25, i64 0}
!90 = !{!"_ZTSN9benchmark5StateE", !30, i64 0, !30, i64 8, !30, i64 16, !50, i64 24, !50, i64 25, !71, i64 28, !76, i64 32, !30, i64 56, !85, i64 64, !31, i64 112, !22, i64 144, !22, i64 148, !86, i64 152, !87, i64 160, !88, i64 168, !89, i64 176}
!91 = !{!90, !71, i64 28}
!92 = !{!"branch_weights", i32 1, i32 127}
!93 = !{!"p1 _ZTSN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEE", !25, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN3pro2v45proxyIN12_GLOBAL__N_113DefaultFacadeEEESaIS5_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!94, !93, i64 0}
!96 = !{!94, !93, i64 8}
!97 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_13copy_dispatchEKFvRS6_EEE", !25, i64 0}
!98 = !{!97, !25, i64 0}
!99 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIN12_GLOBAL__N_113DefaultFacadeEEENS1_16destroy_dispatchEDoFvvEEE", !25, i64 0}
!100 = !{!99, !25, i64 0}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!94, !93, i64 16}
!103 = !{i64 2636861}
!104 = !{!"branch_weights", i32 127, i32 255873}
!105 = !{!"_ZTSN3pro2v46detail11inplace_ptrIiEE", !22, i64 0}
!106 = !{!105, !22, i64 0}
!107 = !{!"_ZTSN3pro2v46detail11inplace_ptrIdEE", !51, i64 0}
!108 = !{!107, !51, i64 0}
!109 = !{!"_ZTSSt10_Head_baseILm0EPiLb0EE", !58, i64 0}
!110 = !{!109, !58, i64 0}
!111 = !{!"_ZTSSt13__atomic_baseIlE", !30, i64 0}
!112 = !{!111, !30, i64 0}
!113 = !{!"p1 _ZTSN3pro2v46detail26shared_compact_ptr_storageIiSaIvEEE", !25, i64 0}
!114 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_26shared_compact_ptr_storageIiSaIvEEEEE", !113, i64 0}
!115 = !{!114, !113, i64 0}
!116 = !{!"p1 _ZTSN3pro2v46detail26shared_compact_ptr_storageIdSaIvEEE", !25, i64 0}
!117 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_26shared_compact_ptr_storageIdSaIvEEEEE", !116, i64 0}
!118 = !{!117, !116, i64 0}
!119 = !{!"p1 _ZTSN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ESaIvEEE", !25, i64 0}
!120 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ESaIvEEEEE", !119, i64 0}
!121 = !{!120, !119, i64 0}
!122 = !{!"branch_weights", i32 1, i32 1048575}
!123 = !{!90, !30, i64 16}
!124 = !{!"branch_weights", i32 0, i32 -2147483648}
!125 = !{!"p1 _ZTSN3pro2v46detail26shared_compact_ptr_storageIiNSt3pmr21polymorphic_allocatorISt4byteEEEE", !25, i64 0}
!126 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_26shared_compact_ptr_storageIiNSt3pmr21polymorphic_allocatorISt4byteEEEEEE", !125, i64 0}
!127 = !{!126, !125, i64 0}
!128 = !{!"p1 _ZTSN3pro2v46detail26shared_compact_ptr_storageIdNSt3pmr21polymorphic_allocatorISt4byteEEEE", !25, i64 0}
!129 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_26shared_compact_ptr_storageIdNSt3pmr21polymorphic_allocatorISt4byteEEEEEE", !128, i64 0}
!130 = !{!129, !128, i64 0}
!131 = !{!"p1 _ZTSN3pro2v46detail26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEE", !25, i64 0}
!132 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_26shared_compact_ptr_storageIN12_GLOBAL__N_112SmallObject3ENSt3pmr21polymorphic_allocatorISt4byteEEEEEE", !131, i64 0}
!133 = !{!132, !131, i64 0}
!134 = !{!"p1 _ZTSSt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS1_EE", !25, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN12_GLOBAL__N_121PolymorphicObjectBaseESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!135, !134, i64 0}
!137 = !{!135, !134, i64 8}
!138 = !{!"p1 _ZTSN12_GLOBAL__N_121PolymorphicObjectBaseE", !25, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!"llvm.loop.isvectorized", i32 1}
!141 = !{!"llvm.loop.unroll.runtime.disable"}
!142 = !{!135, !134, i64 16}
!143 = !{!"p1 _ZTSSt10shared_ptrIvE", !25, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIvESaIS1_EE17_Vector_impl_dataE", !143, i64 0, !143, i64 8, !143, i64 16}
!145 = !{!144, !143, i64 0}
!146 = !{!144, !143, i64 8}
!147 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0}
!148 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !147, i64 0}
!149 = !{!148, !147, i64 0}
!150 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !25, i64 0, !148, i64 8}
!151 = !{!150, !25, i64 0}
!152 = !{!144, !143, i64 16}
!153 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 8, !22, i64 12}
!154 = !{!153, !22, i64 8}
!155 = !{!153, !22, i64 12}
!156 = !{!22, !22, i64 0}
!157 = !{!58, !58, i64 0}
!158 = !{!51, !51, i64 0}
!159 = !{!"p1 double", !25, i64 0}
!160 = !{!159, !159, i64 0}
!161 = !{!"p1 _ZTSNSt3pmr15memory_resourceE", !25, i64 0}
!162 = !{!161, !161, i64 0}
!163 = !{!"p1 _ZTSSt3any", !25, i64 0}
!164 = !{!"_ZTSNSt12_Vector_baseISt3anySaIS0_EE17_Vector_impl_dataE", !163, i64 0, !163, i64 8, !163, i64 16}
!165 = !{!164, !163, i64 8}
!166 = !{!164, !163, i64 0}
!167 = !{!"_ZTSSt3any", !25, i64 0, !21, i64 8}
!168 = !{!167, !25, i64 0}
!169 = !{!164, !163, i64 16}
!170 = !{!"p1 _ZTSN3pro2v46detail11inplace_ptrISt5arrayIcLm100EEEE", !25, i64 0}
!171 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_11inplace_ptrISt5arrayIcLm100EEEEEE", !170, i64 0}
!172 = !{!171, !170, i64 0}
!173 = !{!"p1 _ZTSN3pro2v46detail11inplace_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEE", !25, i64 0}
!174 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_11inplace_ptrISt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm3EEEEEE", !173, i64 0}
!175 = !{!174, !173, i64 0}
!176 = !{!"p1 _ZTSN3pro2v46detail11inplace_ptrIN12_GLOBAL__N_112LargeObject3EEE", !25, i64 0}
!177 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_11inplace_ptrIN12_GLOBAL__N_112LargeObject3EEEEE", !176, i64 0}
!178 = !{!177, !176, i64 0}
!179 = !{!"p1 _ZTSN3pro2v46detail19compact_ptr_storageISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEE", !25, i64 0}
!180 = !{!"_ZTSN3pro2v46detail12indirect_ptrINS1_19compact_ptr_storageISt5arrayIcLm100EENSt3pmr21polymorphic_allocatorISt4byteEEEEEE", !179, i64 0}
end_hunk_2
