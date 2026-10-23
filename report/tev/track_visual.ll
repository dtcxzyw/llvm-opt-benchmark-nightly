Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/track_visual?download=true
inline.NumInlined: 1913
inline.NumDeleted: 1119
begin_hunk_0_@_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJb5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSA_1EJbS8_EEEEEEDcSC_DpT0_:bb.a
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJb5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSA_1EJbS8_EEEEEEDcSC_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJb5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES4_EEEEEDTclclsr3stdE7declvalIS8_EEspclsr3stdE7declvalIT0_EEEEOS8_DpOSE_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #23
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJb5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES4_EEEEEDTclclsr3stdE7declvalIS8_EEspclsr3stdE7declvalIT0_EEEEOS8_DpOSE_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJb5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES4_EEEEEDTclclsr3stdE7declvalIS8_EEspclsr3stdE7declvalIT0_EEEEOS8_DpOSE_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !117  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #22, !inline_history !540
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #22
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !133
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #23
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI12Track_VisualEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit: ; preds = %bb.a, %bb.b
  ret void
}

declare void @heif_tai_clock_info_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 23
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = shl nuw nsw i8 %i.c, 1
  store i8 %i.d, ptr %0, align 8
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.b, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.d:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -10
  br i1 %i.e, label %bb.e, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  unreachable

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 44)
  %i.g = or i64 %.sroa.speculated.i, 7
  %i.h = add nuw i64 %i.g, 1                      ; 2 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #25 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %1, i64 %2, i1 false)
  store ptr %i.i, ptr %i.f, align 8, !tbaa !133
  %i.j = or disjoint i64 %i.h, 1
  store i64 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.k, align 8, !tbaa !133
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.c, %bb.b, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit
  %.sink23 = phi ptr [ %i.i, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit ], [ %i.b, %bb.b ], [ %i.b, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.sink23, i64 %2
  store i8 0, ptr %i.l, align 1, !tbaa !133
  ret ptr %0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, -2                         ; 5 uses
  %i.c = icmp ult i64 %2, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !133  ; 3 uses
  store i64 %2, ptr %i.d, align 8, !tbaa !133
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.d:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, -1                         ; 2 uses
  %i.h = add i64 %2, 1
  %i.i = sub i64 %i.h, %i.b
  %i.j = sub i64 -9, %i.b
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = trunc i64 %i.a to i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = select i1 %i.l, ptr %i.n, ptr %i.o
  %i.q = icmp ult i64 %i.g, 9223372036854775795
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = shl nuw i64 %i.g, 1
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.r) ; 2 uses
  %i.s = or i64 %.sroa.speculated.i, 7            ; 2 uses
  %i.t = icmp eq i64 %i.s, 23
  %i.u = add i64 %i.s, 1
  %i.v = select i1 %i.t, i64 25, i64 %i.u
  %.inv.i.inv.i = icmp ult i64 %.sroa.speculated.i, 23
  %i.w = select i1 %.inv.i.inv.i, i64 23, i64 %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = phi i64 [ %i.w, %bb.g ], [ -9, %bb.f ]   ; 2 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #25 ; 3 uses
  %.not49.i = icmp eq i64 %2, 0
  br i1 %.not49.i, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit, label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit53.i

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit53.i: ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit: ; preds = %bb.h, %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit53.i
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.b) #23
  store ptr %i.y, ptr %i.m, align 8, !tbaa !133
  %i.z = or i64 %i.x, 1
  store i64 %i.z, ptr %0, align 8
  store i64 %2, ptr %i.d, align 8, !tbaa !133
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit: ; preds = %bb.c, %bb.b, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit
  %.sink26 = phi ptr [ %i.y, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE21__grow_by_and_replaceEmmmmmmPKc.exit ], [ %i.f, %bb.b ], [ %i.f, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sink26, i64 %2
  store i8 0, ptr %i.aa, align 1, !tbaa !133
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__123__optional_storage_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE13__assign_fromB8ne180100IRKNS_27__optional_copy_assign_baseIS6_Lb0EEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !334, !range !209, !noundef !210 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i8, ptr %i.c, align 8, !tbaa !334, !range !209, !noundef !210
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i8 %i.b, 0
  %.not.i = icmp eq ptr %0, %1
  %or.cond = or i1 %.not.i, %.not
  br i1 %or.cond, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %0, align 8
  %i.g = trunc i8 %i.f to i1
  %i.h = load i8, ptr %1, align 8                 ; 2 uses
  %i.i = trunc i8 %i.h to i1                      ; 3 uses
  br i1 %i.g, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !197
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb1EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.k, i64 noundef %i.m) ; 0 uses
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit

bb.g:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = select i1 %i.i, ptr %i.p, ptr %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = lshr i8 %i.h, 1
  %i.v = zext nneg i8 %i.u to i64
  %i.w = select i1 %i.i, i64 %i.t, i64 %i.v
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE17__assign_no_aliasILb0EEERS5_PKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.r, i64 noundef %i.w) ; 0 uses
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit

bb.h:                                             ; preds = %bb.a
  %2 = trunc nuw i8 %i.b to i1
  br i1 %2, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = load i8, ptr %0, align 8
  %i.z = trunc i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !133
  %i.ac = load i64, ptr %0, align 8
  %i.ad = and i64 %i.ac, -2
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #23
  br label %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit

_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit: ; preds = %bb.i, %bb.j
  store i8 0, ptr %i.a, align 8, !tbaa !334
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit

bb.k:                                             ; preds = %bb.h
  %i.ae = load i8, ptr %1, align 8
  %i.af = trunc i8 %i.ae to i1
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !197
  br label %_ZNSt3__123__optional_storage_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE11__constructB8ne180100IJRKS6_EEEvDpOT_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !133
  tail call void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef %i.ah, i64 noundef %i.aj)
  br label %_ZNSt3__123__optional_storage_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE11__constructB8ne180100IJRKS6_EEEvDpOT_.exit

_ZNSt3__123__optional_storage_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE11__constructB8ne180100IJRKS6_EEEvDpOT_.exit: ; preds = %bb.l, %bb.m
  store i8 1, ptr %i.a, align 8, !tbaa !334
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_.exit: ; preds = %bb.g, %bb.f, %bb.e, %_ZNSt3__124__optional_destruct_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE5resetB8ne180100Ev.exit, %_ZNSt3__123__optional_storage_baseINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEELb0EE11__constructB8ne180100IJRKS6_EEEvDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16__treeINS_12__value_typeImN12Track_Visual13FrameUserDataEEENS_19__map_value_compareImS4_NS_4lessImEELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !118
  tail call void @_ZNSt3__16__treeINS_12__value_typeImN12Track_Visual13FrameUserDataEEENS_19__map_value_compareImS4_NS_4lessImEELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.a) #22
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130
  tail call void @_ZNSt3__16__treeINS_12__value_typeImN12Track_Visual13FrameUserDataEEENS_19__map_value_compareImS4_NS_4lessImEELb1EEENS_9allocatorIS4_EEE7destroyEPNS_11__tree_nodeIS4_PvEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.c) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.f = load i8, ptr %i.e, align 8, !tbaa !334, !range !209, !noundef !210
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = load i8, ptr %i.d, align 8
  %i.i = trunc i8 %i.h to i1
  %or.cond.i.i.i.i.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeImN12Track_Visual13FrameUserDataEEEPvEEEEE7destroyB8ne180100INS_4pairIKmS5_EEvvEEvRS9_PT_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !133
  %i.l = load i64, ptr %i.d, align 8
  %i.m = and i64 %i.l, -2
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.m) #23
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeImN12Track_Visual13FrameUserDataEEEPvEEEEE7destroyB8ne180100INS_4pairIKmS5_EEvvEEvRS9_PT_.exit

_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeImN12Track_Visual13FrameUserDataEEEPvEEEEE7destroyB8ne180100INS_4pairIKmS5_EEvvEEvRS9_PT_.exit: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 88) #23
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_11__tree_nodeINS_12__value_typeImN12Track_Visual13FrameUserDataEEEPvEEEEE7destroyB8ne180100INS_4pairIKmS5_EEvvEEvRS9_PT_.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN12heif_encoderD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_vmhdNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_vmhdNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !23
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_vmhdNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI8Box_vmhdNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !23
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(192) %0) #22, !inline_history !541
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_vmhdNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.a) #22, !inline_history !542
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI8Box_vmhdNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #23
  ret void
}

declare void @_ZN9BoxHeaderC2Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev() local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.a, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #26
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #11

declare void @_ZN12heif_encoderC1EPK19heif_encoder_plugin(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__127__tree_balance_after_insertB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = zext i1 %i.a to i8
  store i8 %i.c, ptr %i.b, align 8, !tbaa !344
  br i1 %i.a, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.ad
  %.04469 = phi ptr [ %i.i, %bb.ad ], [ %1, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.04469, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132  ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !344, !range !209, !noundef !210
  %.not49.not = icmp eq i8 %i.g, 0
  br i1 %.not49.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 13 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !118  ; 4 uses
  %i.k = icmp eq ptr %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !130  ; 2 uses
  %.not50.a = icmp eq ptr %i.m, null
  br i1 %.not50.a, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !344, !range !209, !noundef !210
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  store i8 1, ptr %i.f, align 8, !tbaa !344
  %i.q = icmp eq ptr %i.i, %0
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.s = zext i1 %i.q to i8
  store i8 %i.s, ptr %i.r, align 8, !tbaa !344
  store i8 1, ptr %i.n, align 8, !tbaa !344
  br label %bb.ad

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !118
  %i.v = icmp eq ptr %.04469, %i.u
  br i1 %i.v, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !130  ; 8 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !118  ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !130
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %.thread91, label %bb.g

.thread91:                                        ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.z, align 8, !tbaa !132
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !132
  %.pre76.a = load ptr, ptr %i.t, align 8, !tbaa !132 ; 4 uses
  %.pre77 = load ptr, ptr %.pre76.a, align 8, !tbaa !118
  %i.ab = icmp eq ptr %i.e, %.pre77
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %.pre76.a, ptr %i.ac, align 8, !tbaa !132
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread91, %bb.g
  %i.ad = phi ptr [ %i.z, %.thread91 ], [ %i.ac, %bb.g ]
  %i.ae = phi ptr [ %i.i, %.thread91 ], [ %.pre76.a, %bb.g ]
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !118
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.pre76.a, i64 8
  store ptr %i.x, ptr %i.af, align 8, !tbaa !130
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit

_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit: ; preds = %bb.h, %bb.i
  %i.ag = phi ptr [ %i.ad, %bb.h ], [ %i.ac, %bb.i ]
  store ptr %i.e, ptr %i.x, align 8, !tbaa !118
  store ptr %i.x, ptr %i.t, align 8, !tbaa !132
  %.pre78 = load ptr, ptr %i.ag, align 8, !tbaa !132 ; 2 uses
  %.pre79 = load ptr, ptr %.pre78, align 8, !tbaa !118
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit, %bb.e
  %i.ah = phi ptr [ %i.j, %bb.e ], [ %.pre79, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ] ; 5 uses
  %i.ai = phi ptr [ %i.i, %bb.e ], [ %.pre78, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ] ; 6 uses
  %i.aj = phi ptr [ %i.e, %bb.e ], [ %i.x, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i8 1, ptr %i.ak, align 8, !tbaa !344
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i8 0, ptr %i.al, align 8, !tbaa !344
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130 ; 3 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !118
  %.not.i51 = icmp eq ptr %i.an, null
  br i1 %.not.i51, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !132
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !132 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !132
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !118
  %i.at = icmp eq ptr %i.ai, %i.as
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.ah, ptr %i.aq, align 8, !tbaa !118
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ah, ptr %i.au, align 8, !tbaa !130
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.ai, ptr %i.am, align 8, !tbaa !130
  store ptr %i.ah, ptr %i.ap, align 8, !tbaa !132
  br label %.critedge

bb.p:                                             ; preds = %bb.b
  %.not49 = icmp eq ptr %i.j, null
  br i1 %.not49, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !344, !range !209, !noundef !210
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.r, label %.thread58

.thread58:                                        ; preds = %bb.q
  store i8 1, ptr %i.f, align 8, !tbaa !344
  %i.ay = icmp eq ptr %i.i, %0
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ba = zext i1 %i.ay to i8
  store i8 %i.ba, ptr %i.az, align 8, !tbaa !344
  store i8 1, ptr %i.av, align 8, !tbaa !344
  br label %bb.ad

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !118 ; 7 uses
  %i.bd = icmp eq ptr %.04469, %i.bc
  br i1 %i.bd, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !130 ; 3 uses
  store ptr %i.bf, ptr %i.e, align 8, !tbaa !118
  %.not.i52 = icmp eq ptr %i.bf, null
  br i1 %.not.i52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %i.e, ptr %i.bg, align 8, !tbaa !132
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !132
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = phi ptr [ %.pre, %bb.t ], [ %i.i, %bb.s ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !132
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !118
  %i.bk = icmp eq ptr %i.e, %i.bj
  br i1 %i.bk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.bc, ptr %i.bh, align 8, !tbaa !118
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53

bb.w:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bc, ptr %i.bl, align 8, !tbaa !130
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53

_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53: ; preds = %bb.v, %bb.w
  store ptr %i.e, ptr %i.be, align 8, !tbaa !130
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !132
  %.pre75 = load ptr, ptr %i.bi, align 8, !tbaa !132
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53, %bb.r
  %i.bm = phi ptr [ %.pre75, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53 ], [ %i.i, %bb.r ] ; 6 uses
  %i.bn = phi ptr [ %i.bc, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit53 ], [ %i.e, %bb.r ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store i8 1, ptr %i.bo, align 8, !tbaa !344
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i8 0, ptr %i.bp, align 8, !tbaa !344
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !130 ; 6 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !118 ; 3 uses
  store ptr %i.bs, ptr %i.bq, align 8, !tbaa !130
  %.not.i54 = icmp eq ptr %i.bs, null
  br i1 %.not.i54, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.bm, ptr %i.bt, align 8, !tbaa !132
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
end_hunk_0
begin_hunk_1_@_ZNSt3__113__tree_removeB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_S5_:bb.a
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !344, !range !209, !noundef !210
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.aa, label %split.thread

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bx = getelementptr inbounds nuw i8, ptr %.2, i64 24
  store i8 0, ptr %i.bx, align 8, !tbaa !344
  %i.by = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !132 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, %.4117
  br i1 %i.ca, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cc = load i8, ptr %i.cb, align 8, !tbaa !344, !range !209, !noundef !210
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.bj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i8 1, ptr %i.ce, align 8, !tbaa !344
  br label %bb.bk

split:                                            ; preds = %bb.x
  %.phi.trans.insert193 = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %.pre194 = load ptr, ptr %.phi.trans.insert193, align 8, !tbaa !130 ; 2 uses
  %i.cf = icmp eq ptr %.pre194, null
  br i1 %i.cf, label %bb.ad, label %split.thread

split.thread:                                     ; preds = %bb.z, %split
  %i.cg = phi ptr [ %.pre194, %split ], [ %i.bs, %bb.z ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !344, !range !209, !noundef !210
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %split.thread, %split
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i8 1, ptr %i.ck, align 8, !tbaa !344
  %i.cl = getelementptr inbounds nuw i8, ptr %.2, i64 24
  store i8 0, ptr %i.cl, align 8, !tbaa !344
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !130 ; 3 uses
  store ptr %i.cn, ptr %.2, align 8, !tbaa !118
  %.not.i146 = icmp eq ptr %i.cn, null
  br i1 %.not.i146, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %.2, ptr %i.co, align 8, !tbaa !132
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !132 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !132
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !118
  %i.ct = icmp eq ptr %.2, %i.cs
  br i1 %i.ct, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr %i.bm, ptr %i.cq, align 8, !tbaa !118
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit

bb.ah:                                            ; preds = %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.bm, ptr %i.cu, align 8, !tbaa !130
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit

_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit: ; preds = %bb.ag, %bb.ah
  store ptr %.2, ptr %i.cm, align 8, !tbaa !130
  store ptr %i.bm, ptr %i.cp, align 8, !tbaa !132
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit, %split.thread
  %i.cv = phi ptr [ %.2, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ], [ %i.cg, %split.thread ]
  %.3 = phi ptr [ %i.bm, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit ], [ %.2, %split.thread ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !132 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24 ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !344, !range !209, !noundef !210
  %i.da = getelementptr inbounds nuw i8, ptr %.3, i64 24
  store i8 %i.cz, ptr %i.da, align 8, !tbaa !344
  store i8 1, ptr %i.cy, align 8, !tbaa !344
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i8 1, ptr %i.db, align 8, !tbaa !344
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !130 ; 6 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !118 ; 3 uses
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !130
  %.not.i147 = icmp eq ptr %i.de, null
  br i1 %.not.i147, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store ptr %i.cx, ptr %i.df, align 8, !tbaa !132
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !132 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !132
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !118
  %i.dk = icmp eq ptr %i.cx, %i.dj
  br i1 %i.dk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store ptr %i.dd, ptr %i.dh, align 8, !tbaa !118
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit148

bb.am:                                            ; preds = %bb.ak
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr %i.dd, ptr %i.dl, align 8, !tbaa !130
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit148

_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit148: ; preds = %bb.al, %bb.am
  store ptr %i.cx, ptr %i.dd, align 8, !tbaa !118
  store ptr %i.dd, ptr %i.dg, align 8, !tbaa !132
  br label %bb.bk

bb.an:                                            ; preds = %.preheader
  br i1 %i.aw, label %bb.at, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store i8 1, ptr %i.au, align 8, !tbaa !344
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i8 0, ptr %i.dm, align 8, !tbaa !344
  %i.dn = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !130 ; 3 uses
  store ptr %i.do, ptr %i.ar, align 8, !tbaa !118
  %.not.i149 = icmp eq ptr %i.do, null
  br i1 %.not.i149, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store ptr %i.ar, ptr %i.dp, align 8, !tbaa !132
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !132 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !132
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !118
  %i.du = icmp eq ptr %i.ar, %i.dt
  br i1 %i.du, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.as, ptr %i.dr, align 8, !tbaa !118
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit150

bb.as:                                            ; preds = %bb.aq
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.as, ptr %i.dv, align 8, !tbaa !130
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit150

_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit150: ; preds = %bb.ar, %bb.as
  store ptr %i.ar, ptr %i.dn, align 8, !tbaa !130
  store ptr %i.as, ptr %i.dq, align 8, !tbaa !132
  %i.dw = getelementptr inbounds nuw i8, ptr %.1, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !130 ; 2 uses
  %i.dy = icmp eq ptr %.2115, %i.dx
  %spec.select142 = select i1 %i.dy, ptr %.1, ptr %.2115
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !118
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit150, %bb.an
  %.6119 = phi ptr [ %.2115, %bb.an ], [ %spec.select142, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit150 ] ; 2 uses
  %.4 = phi ptr [ %.1, %bb.an ], [ %i.dz, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit150 ] ; 14 uses
  %i.ea = load ptr, ptr %.4, align 8, !tbaa !118  ; 5 uses
  %i.eb = icmp eq ptr %i.ea, null                 ; 2 uses
  br i1 %i.eb, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ed = load i8, ptr %i.ec, align 8, !tbaa !344, !range !209, !noundef !210
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.av, label %.thread160.thread

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ef = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !130 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !344, !range !209, !noundef !210
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.el = getelementptr inbounds nuw i8, ptr %.4, i64 24
  store i8 0, ptr %i.el, align 8, !tbaa !344
  %i.em = getelementptr inbounds nuw i8, ptr %.4, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !132 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !344, !range !209, !noundef !210
  %.not143 = icmp eq i8 %i.ep, 0
  %2 = icmp eq ptr %i.en, %.6119
  %or.cond144.not = select i1 %.not143, i1 true, i1 %2
  br i1 %or.cond144.not, label %bb.ay, label %bb.bj

bb.ay:                                            ; preds = %bb.ax
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i8 1, ptr %i.eq, align 8, !tbaa !344
  br label %bb.bk

bb.az:                                            ; preds = %bb.aw
  br i1 %i.eb, label %bb.ba, label %.thread160

.thread160:                                       ; preds = %bb.az
  %.phi.trans.insert195 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %.pre196 = load i8, ptr %.phi.trans.insert195, align 8, !tbaa !344, !range !209
  %i.er = trunc nuw i8 %.pre196 to i1
  br i1 %i.er, label %.thread160._crit_edge, label %.thread160.thread

.thread160._crit_edge:                            ; preds = %.thread160
  %.phi.trans.insert197 = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %.pre198 = load ptr, ptr %.phi.trans.insert197, align 8, !tbaa !130
  br label %bb.ba

bb.ba:                                            ; preds = %.thread160._crit_edge, %bb.az
  %i.es = phi ptr [ %.pre198, %.thread160._crit_edge ], [ %i.eg, %bb.az ] ; 8 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.4, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i8 1, ptr %i.eu, align 8, !tbaa !344
  %i.ev = getelementptr inbounds nuw i8, ptr %.4, i64 24
  store i8 0, ptr %i.ev, align 8, !tbaa !344
  %i.ew = load ptr, ptr %i.es, align 8, !tbaa !118 ; 3 uses
  store ptr %i.ew, ptr %i.et, align 8, !tbaa !130
  %.not.i151 = icmp eq ptr %i.ew, null
  br i1 %.not.i151, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr %.4, ptr %i.ex, align 8, !tbaa !132
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.ey = getelementptr inbounds nuw i8, ptr %.4, i64 16 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !132 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !132
  %i.fb = load ptr, ptr %i.ez, align 8, !tbaa !118
  %i.fc = icmp eq ptr %.4, %i.fb
  br i1 %i.fc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.es, ptr %i.ez, align 8, !tbaa !118
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit152

bb.be:                                            ; preds = %bb.bc
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store ptr %i.es, ptr %i.fd, align 8, !tbaa !130
  br label %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit152

_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit152: ; preds = %bb.bd, %bb.be
  store ptr %.4, ptr %i.es, align 8, !tbaa !118
  store ptr %i.es, ptr %i.ey, align 8, !tbaa !132
  br label %.thread160.thread

.thread160.thread:                                ; preds = %bb.au, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit152, %.thread160
  %i.fe = phi ptr [ %.4, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit152 ], [ %i.ea, %.thread160 ], [ %i.ea, %bb.au ]
  %.5 = phi ptr [ %i.es, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit152 ], [ %.4, %.thread160 ], [ %.4, %bb.au ] ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.5, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !132 ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !344, !range !209, !noundef !210
  %i.fj = getelementptr inbounds nuw i8, ptr %.5, i64 24
  store i8 %i.fi, ptr %i.fj, align 8, !tbaa !344
  store i8 1, ptr %i.fh, align 8, !tbaa !344
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i8 1, ptr %i.fk, align 8, !tbaa !344
  %i.fl = load ptr, ptr %i.fg, align 8, !tbaa !118 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !130 ; 3 uses
  store ptr %i.fn, ptr %i.fg, align 8, !tbaa !118
  %.not.i153 = icmp eq ptr %i.fn, null
  br i1 %.not.i153, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.thread160.thread
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.fg, ptr %i.fo, align 8, !tbaa !132
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.thread160.thread
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !132 ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !132
  %i.fs = load ptr, ptr %i.fq, align 8, !tbaa !118
  %i.ft = icmp eq ptr %i.fg, %i.fs
  br i1 %i.ft, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.fl, ptr %i.fq, align 8, !tbaa !118
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit154

bb.bi:                                            ; preds = %bb.bg
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %i.fl, ptr %i.fu, align 8, !tbaa !130
  br label %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit154

_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit154: ; preds = %bb.bh, %bb.bi
  store ptr %i.fg, ptr %i.fm, align 8, !tbaa !130
  store ptr %i.fl, ptr %i.fp, align 8, !tbaa !132
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ax, %bb.ab
  %.sink = phi ptr [ %i.bz, %bb.ab ], [ %i.en, %bb.ax ] ; 2 uses
  %.7 = phi ptr [ %.4117, %bb.ab ], [ %.6119, %bb.ax ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !132 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !118
  %i.fy = icmp eq ptr %.sink, %i.fx
  %spec.select162.idx = select i1 %i.fy, i64 8, i64 0
  %spec.select162 = getelementptr inbounds nuw i8, ptr %i.fw, i64 %spec.select162.idx
  %.6 = load ptr, ptr %spec.select162, align 8, !tbaa !327
  br label %.preheader, !llvm.loop !549

bb.bk:                                            ; preds = %bb.p, %_ZNSt3__119__tree_right_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit154, %bb.ay, %_ZNSt3__118__tree_left_rotateB8ne180100IPNS_16__tree_node_baseIPvEEEEvT_.exit148, %bb.ac, %bb.n
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn }

!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{ptr @_ZNSt3__110shared_ptrI12Track_VisualED2B8ne180100Ev, null, null}
!1 = distinct !{!1, !131}
!2 = distinct !{!2, !131}
!3 = distinct !{null, null}
!4 = distinct !{ptr @_ZNSt3__110shared_ptrIK3BoxED2B8ne180100Ev, null, null}
!5 = distinct !{ptr @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev, null, null}
!6 = distinct !{null}
!7 = distinct !{ptr @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev, null, null}
!8 = distinct !{ptr @_ZNSt3__110shared_ptrI8HeifFileED2B8ne180100Ev, null, null}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{null}
!12 = distinct !{ptr @_ZNSt3__110shared_ptrI7EncoderED2B8ne180100Ev, null, null}
!13 = distinct !{!13, !131}
!14 = !{i32 8, !"PIC Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 2}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!17 = !{!"Simple C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!"vtable pointer", !17, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !18, i64 0}
!25 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !24, i64 0}
!26 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !25, i64 0}
!27 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !26, i64 0}
!28 = !{!"any pointer", !18, i64 0}
!29 = !{!"p1 omnipotent char", !28, i64 0}
!30 = !{!"_ZTS11ErrorBuffer", !27, i64 0, !29, i64 24}
!31 = !{!"p1 _ZTS11HeifContext", !28, i64 0}
!32 = !{!"bool", !18, i64 0}
!33 = !{!"_ZTS29heif_sample_aux_info_presence", !18, i64 0}
!34 = !{!"p1 _ZTS19heif_tai_clock_info", !28, i64 0}
!35 = !{!"_ZTS12TrackOptions", !19, i64 0, !32, i64 4, !33, i64 8, !34, i64 16, !33, i64 24, !27, i64 32}
!36 = !{!"p1 _ZTSN5Track12SampleTimingE", !28, i64 0}
!37 = !{!"_ZTSNSt3__122__compressed_pair_elemIPN5Track12SampleTimingELi0ELb0EEE", !36, i64 0}
!38 = !{!"_ZTSNSt3__117__compressed_pairIPN5Track12SampleTimingENS_9allocatorIS2_EEEE", !37, i64 0}
end_hunk_1
