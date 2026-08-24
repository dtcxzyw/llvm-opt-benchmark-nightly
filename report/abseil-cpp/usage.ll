Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/usage?download=true
inline.NumInlined: 1220
inline.NumDeleted: 485
begin_hunk_0_@"_ZNSt17_Function_handlerIFbRKN4absl12lts_2026052615CommandLineFlagEEZNS1_14flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbSt17basic_string_viewIcSt11char_traitsIcEEEENS6_10HelpFormatESD_E3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation":bb.a
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare void @_ZN4absl12lts_2026052614flags_internal26ShortProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2026052614flags_internal12_GLOBAL__N_1lsERSoRKNS2_10XMLElementE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.37, i64 noundef 1) ; 0 uses
  %.sroa.08.0.copyload = load i64, ptr %1, align 8, !tbaa !23
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.29.0.copyload = load ptr, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !24
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sroa.29.0.copyload, i64 noundef %.sroa.08.0.copyload)
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106  ; 2 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !105  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %.not22 = icmp samesign eq i64 %i.h, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %i.j = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.45, i64 noundef 2) ; 0 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !23
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !24
  %i.k = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.sroa.2.0.copyload, i64 noundef %.sroa.0.0.copyload) ; 2 uses
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.38, i64 noundef 1) ; 0 uses
  ret ptr %i.k

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %.023 = phi ptr [ %i.ac, %bb.l ], [ %i.g, %bb.a ] ; 2 uses
  %i.m = load i8, ptr %.023, align 1, !tbaa !30   ; 4 uses
  switch i8 %i.m, label %bb.h [
    i8 34, label %bb.b
    i8 39, label %bb.c
    i8 38, label %bb.d
    i8 60, label %bb.e
    i8 62, label %bb.f
    i8 10, label %bb.g
    i8 11, label %bb.g
    i8 12, label %bb.g
    i8 9, label %bb.g
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.n = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.39, i64 noundef 6) ; 0 uses
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %i.o = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.40, i64 noundef 6) ; 0 uses
  br label %bb.l

bb.d:                                             ; preds = %.lr.ph
  %i.p = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.41, i64 noundef 5) ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph
  %i.q = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.42, i64 noundef 4) ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %.lr.ph
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.43, i64 noundef 4) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.44, i64 noundef 1) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph
  %i.t = icmp ugt i8 %i.m, 31
  br i1 %i.t, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.m, ptr %i.a, align 1, !tbaa !30
  %i.u = load ptr, ptr %0, align 8, !tbaa !20
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr inbounds i8, ptr %0, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !35
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.m) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.023, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare void @_ZN4absl12lts_2026052614flags_internal11ForEachFlagESt8functionIFvRNS0_15CommandLineFlagEEE(ptr noundef align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRN4absl12lts_2026052615CommandLineFlagEEZNS1_14flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKS2_EENS5_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !136
  br i1 %i.e, label %"_ZSt10__invoke_rIvRZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !136
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 4 uses
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) @_ZN4absl12lts_2026052614flags_internal17kStrippedFlagHelpE) #23
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i: ; preds = %bb.b
  %.pre.i.i.i = load ptr, ptr %2, align 8, !tbaa !26
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.j, 0
  %.pre35.i.i.i = load ptr, ptr %2, align 8, !tbaa !26 ; 3 uses
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.pre35.i.i.i, ptr nonnull @_ZN4absl12lts_2026052614flags_internal17kStrippedFlagHelpE, i64 %i.j)
  %i.n = icmp eq i32 %bcmp.i.i.i.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i: ; preds = %bb.d, %bb.c, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i
  %i.o = phi ptr [ %.pre.i.i.i, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i ], [ %.pre35.i.i.i, %bb.d ], [ %.pre35.i.i.i, %bb.c ] ; 2 uses
  %i.p = phi i1 [ false, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit_crit_edge.i.i.i ], [ %i.n, %bb.d ], [ true, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
  %i.s = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.s)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i.i.i
  %i.t = load i64, ptr %i.q, align 8, !tbaa !30
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %i.p, label %"_ZSt10__invoke_rIvRZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit", label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.v = load ptr, ptr %0, align 8, !tbaa !137, !nonnull !33, !align !34 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNKSt8functionIFbRKN4absl12lts_2026052615CommandLineFlagEEEclES4_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt25__throw_bad_function_callv() #26
  unreachable

_ZNKSt8functionIFbRKN4absl12lts_2026052615CommandLineFlagEEEclES4_.exit.i.i.i: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !52
  %i.aa = call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !139
  br i1 %i.aa, label %bb.g, label %"_ZSt10__invoke_rIvRZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.g:                                             ; preds = %_ZNKSt8functionIFbRKN4absl12lts_2026052615CommandLineFlagEEEclES4_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ab = load ptr, ptr %1, align 8, !tbaa !20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !136
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !140, !nonnull !33, !align !34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.ag = load ptr, ptr %3, align 8, !tbaa !26    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i.thread.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.h
  %.1.i.i.in.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %.1.i.i.i.i.i.i = add i64 %.1.i.i.in.i.i.i.i, -1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.1.i.i.i.i.i.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !30
  switch i8 %i.ak, label %bb.h [
    i8 92, label %.loopexit.i.i.i
    i8 47, label %.loopexit.i.i.i
  ]

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i.i, 0
  br i1 %.not17.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.thread.i.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i, !llvm.loop !141

._crit_edge.i.i.i.i.thread.i.i.i:                 ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.al, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br label %bb.k

.loopexit.i.i.i:                                  ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ai, i64 %.1.i.i.in.i.i.i.i) ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %.sroa.speculated.i.i.i.i.i, ptr %i.a, align 8, !tbaa !23
  %i.an = icmp ugt i64 %.sroa.speculated.i.i.i.i.i, 15
  br i1 %i.an, label %.noexc.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %.loopexit.i.i.i
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %._crit_edge.i.i.i.i.i.i.thread.i unwind label %bb.s ; 2 uses

._crit_edge.i.i.i.i.i.i.thread.i:                 ; preds = %.noexc.i.i.i.i.i.i
  store ptr %i.ao, ptr %4, align 8, !tbaa !26
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !23
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !30
  br label %bb.j

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.loopexit.i.i.i
  %cond.i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 1
  br i1 %cond.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !30
  store i8 %i.aq, ptr %i.am, align 8, !tbaa !30
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.thread.i
  %i.ar = phi ptr [ %i.ao, %._crit_edge.i.i.i.i.i.i.thread.i ], [ %i.am, %._crit_edge.i.i.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.ag, i64 %.sroa.speculated.i.i.i.i.i, i1 false)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !23
  %.pre5.i = load ptr, ptr %4, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.thread.i.i.i
  %i.as = phi ptr [ %i.al, %._crit_edge.i.i.i.i.thread.i.i.i ], [ %.pre5.i, %bb.j ], [ %i.am, %bb.i ]
  %i.at = phi i64 [ 0, %._crit_edge.i.i.i.i.thread.i.i.i ], [ %.pre.i, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %i.au = phi ptr [ %i.al, %._crit_edge.i.i.i.i.thread.i.i.i ], [ %i.am, %bb.j ], [ %i.am, %bb.i ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.at, ptr %i.av, align 8, !tbaa !29
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ax = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.ay = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.m unwind label %bb.t       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 3 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !142 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !144
  %.not.i.i16.i.i.i = icmp eq ptr %i.ba, %i.bc
  br i1 %.not.i.i16.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %1, ptr %i.ba, align 8, !tbaa !89
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !142
  br label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.ay, align 8, !tbaa !145 ; 4 uses
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 6 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775800
  br i1 %i.bi, label %bb.p, label %_ZNKSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.noexc17.i.i.i unwind label %bb.u

.noexc17.i.i.i:                                   ; preds = %bb.p
  unreachable

_ZNKSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.bj = ashr exact i64 %i.bh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 1152921504606846975)
  %i.bn = select i1 %i.bl, i64 1152921504606846975, i64 %i.bm ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #28
          to label %.noexc18.i.i.i unwind label %bb.u ; 4 uses

.noexc18.i.i.i:                                   ; preds = %_ZNKSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bh ; 2 uses
  store ptr %1, ptr %i.bq, align 8, !tbaa !89
  %i.br = icmp sgt i64 %i.bh, 0
  br i1 %i.br, label %bb.q, label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i

bb.q:                                             ; preds = %.noexc18.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr align 8 %i.be, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i

_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i: ; preds = %bb.q, %.noexc18.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.not.i17.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i17.i.i.i.i.i.i, label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bh) #24
  br label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.r, %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i.i.i
  store ptr %i.bp, ptr %i.ay, align 8, !tbaa !145
  store ptr %i.bs, ptr %i.az, align 8, !tbaa !142
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.bt, ptr %i.bb, align 8, !tbaa !144
  br label %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i

_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i: ; preds = %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i.i, %bb.n
  %i.bu = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.au
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i: ; preds = %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i
  %i.bw = load i64, ptr %i.au, align 8, !tbaa !30
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i: ; preds = %_ZNSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE9push_backEOS4_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.by = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !30
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %"_ZSt10__invoke_rIvRZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit"

bb.s:                                             ; preds = %.noexc.i.i.i.i.i.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i

bb.t:                                             ; preds = %bb.l, %bb.k
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZNKSt6vectorIPKN4absl12lts_2026052615CommandLineFlagESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i, %bb.p
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn.i.i.i = phi { ptr, i32 } [ %i.cf, %bb.u ], [ %i.ce, %bb.t ] ; 2 uses
  %i.cg = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.au
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i: ; preds = %bb.v
  %i.ci = load i64, ptr %i.au, align 8, !tbaa !30
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i, %bb.s
  %.pn.pn.pn.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i.i.i ], [ %i.cd, %bb.s ], [ %.pn.i.i.i, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.ck = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !30
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn.pn.i.i.i

"_ZSt10__invoke_rIvRZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS1_15CommandLineFlagEEENS2_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0JRS6_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESK_E4typeEOSL_DpOSM_.exit": ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt8functionIFbRKN4absl12lts_2026052615CommandLineFlagEEEclES4_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRN4absl12lts_2026052615CommandLineFlagEEZNS1_14flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKS2_EENS5_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS0_15CommandLineFlagEEENS1_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0", ptr %0, align 8, !tbaa !133
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !135
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !146
  br label %"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN4absl12lts_2026052614flags_internal12_GLOBAL__N_113FlagsHelpImplERSoSt8functionIFbRKNS2_15CommandLineFlagEEENS3_10HelpFormatESt17basic_string_viewIcSt11char_traitsIcEEE3$_0E10_M_managerERSt9_Any_dataRKSJ_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IS5_St6vectorIPKN4absl12lts_2026052615CommandLineFlagESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEESF_SaISG_ISH_SK_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.40", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i
end_hunk_0
