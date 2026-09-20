Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/parser?download=true
inline.NumInlined: 4853
inline.NumDeleted: 1730
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEED2Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !48   ; 8 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.x, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !51
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #32, !inline_history !423
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #32, !inline_history !423
  br label %_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !43
  %.not.i.i.i1 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.ak, %bb.g ]
  %i.al = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.al, label %bb.h, label %_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #32
  br label %_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !40 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt8__detail8_ScannerIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !43
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #35
  br label %_ZNSt8__detail8_ScannerIcED2Ev.exit

_ZNSt8__detail8_ScannerIcED2Ev.exit:              ; preds = %_ZNSt12__shared_ptrINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef align 8 dereferenceable(8) %4) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt8__detail12_ScannerBaseC2ENSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(169) %0, i32 noundef %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32 ; 2 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !87     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !424
  %.not.i.i = icmp ult i64 %i.d, %i.g
  br i1 %.not.i.i, label %bb.b, label %_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !91
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.k, null
  br i1 %.not9.i.i, label %_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.thread.i, label %_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.i

_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.i: ; preds = %bb.b
  %i.l = tail call ptr @__dynamic_cast(ptr nonnull %i.k, ptr nonnull @_ZTINSt6locale5facetE, ptr nonnull @_ZTISt5ctypeIcE, i64 0) #32 ; 2 uses
  %.not.not.i = icmp eq ptr %i.l, null
  br i1 %.not.not.i, label %_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.thread.i, label %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit

_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.thread.i: ; preds = %_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.i, %bb.b, %bb.a
  tail call void @_ZSt16__throw_bad_castv() #34
  unreachable

_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit: ; preds = %_ZSt15__try_use_facetIKSt5ctypeIcEEPKT_RKSt6locale.exit.i
  store ptr %i.l, ptr %i.c, align 8, !tbaa !94
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i64 0, ptr %i.o, align 8, !tbaa !41
  store i8 0, ptr %i.n, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.r = load i32, ptr %i.q, align 4, !tbaa !124
  %i.s = and i32 %i.r, 16
  %.not = icmp eq i32 %i.s, 0
  %.elt = select i1 %.not, i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE19_M_eat_escape_posixEv to i64), i64 ptrtoint (ptr @_ZNSt8__detail8_ScannerIcE18_M_eat_escape_ecmaEv to i64)
  store i64 %.elt, ptr %i.p, align 8, !tbaa !125
  %.repack5 = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 0, ptr %.repack5, align 8, !tbaa !125
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 27, ptr %i.w, align 8, !tbaa !108
  br label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit

bb.d:                                             ; preds = %_ZSt9use_facetIKSt5ctypeIcEERKT_RKSt6locale.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i32, ptr %i.x, align 8, !tbaa !111
  switch i32 %i.y, label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit [
    i32 0, label %bb.e
    i32 2, label %bb.f
    i32 1, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  invoke void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %0)
          to label %_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit unwind label %bb.h

_ZNSt8__detail8_ScannerIcE10_M_advanceEv.exit:    ; preds = %bb.d, %bb.c, %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !40  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.n
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !43
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.z
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_State", align 8 ; 12 uses
  %2 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !126  ; 4 uses
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !126
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !127  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !128
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !44
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !127
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !129    ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.n  ; 2 uses
  %i.o = icmp ult i64 %3, %i.n
  %i.p = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #36 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.l ; 2 uses
  store i64 %i.b, ptr %i.t, align 8, !tbaa !44
  %i.u = icmp sgt i64 %i.l, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !128
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #35
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.s, ptr %0, align 8, !tbaa !129
  store ptr %i.v, ptr %i.d, align 8, !tbaa !127
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.f, align 8, !tbaa !128
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  store i32 8, ptr %1, align 8, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -1, ptr %i.aa, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store i64 %i.b, ptr %i.ab, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !131
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !132 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !133
  %.not.i.i.i2 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not.i.i.i2, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.ah = load i32, ptr %2, align 8, !tbaa !119
  %i.ai = icmp eq i32 %i.ah, 11
  br i1 %i.ai, label %bb.h, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i8 0, i64 24, i1 false)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !136
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !136
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i

_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i:       ; preds = %bb.i, %bb.h, %bb.g
  %i.ar = load ptr, ptr %i.ad, align 8, !tbaa !132
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  store ptr %i.as, ptr %i.ad, align 8, !tbaa !132
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

bb.j:                                             ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  invoke void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.ad, align 8, !tbaa !132
  br label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i: ; preds = %.noexc, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i
  %i.at = phi ptr [ %i.as, %_ZNSt8__detail6_StateIcEC2EOS1_.exit.i.i.i ], [ %.pre.i, %.noexc ]
  %i.au = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 48                ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 100000
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  invoke void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 9, ptr noundef nonnull @.str.53) #34
          to label %.noexc3 unwind label %bb.s

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE9push_backEOS2_.exit.i
  %i.ba = load i32, ptr %2, align 8, !tbaa !119
  %i.bb = icmp eq i32 %i.ba, 11
  br i1 %i.bb, label %bb.m, label %_ZNSt8__detail6_StateIcED2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !137 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %_ZNSt8__detail6_StateIcED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.be, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit unwind label %bb.o ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #33
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit:                ; preds = %bb.l, %bb.m, %bb.n
  %i.bi = load i32, ptr %1, align 8, !tbaa !119
  %i.bj = icmp eq i32 %i.bi, 11
  br i1 %i.bj, label %bb.p, label %_ZNSt8__detail6_StateIcED2Ev.exit5

bb.p:                                             ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !137 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i4, label %_ZNSt8__detail6_StateIcED2Ev.exit5, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef 3)
          to label %_ZNSt8__detail6_StateIcED2Ev.exit5 unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  call void @__clang_call_terminate(ptr %i.bo) #33
  unreachable

_ZNSt8__detail6_StateIcED2Ev.exit5:               ; preds = %_ZNSt8__detail6_StateIcED2Ev.exit, %bb.p, %bb.q
  %i.bp = add nsw i64 %i.ay, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret i64 %i.bp

bb.s:                                             ; preds = %bb.k, %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %2) #32
  call void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %1) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !108
  %i.d = icmp eq i32 %i.c, 19
  br i1 %i.d, label %.lr.ph, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt5stackINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESt5dequeIS5_SaIS5_EEE4pushEOS5_.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 27, ptr %i.b, align 8, !tbaa !108
  br label %bb.h

end_hunk_0
begin_hunk_1_@_ZNSt23_Sp_counted_ptr_inplaceINSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #32
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8__detail6_StateIcED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !119
  %i.b = icmp eq i32 %i.a, 11
  br i1 %i.b, label %bb.b, label %_ZNSt14_Function_baseD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !137  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = invoke noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_allocate_mapEm.exit:
  %i.a = udiv i64 %1, 21                          ; 2 uses
  %i.b = urem i64 %1, 21
  %i.c = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.d, 3     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.e, align 8, !tbaa !123
  %i.f = shl nuw nsw i64 %.sroa.speculated, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #36 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !121
  %i.h = load i64, ptr %i.e, align 8, !tbaa !123
  %i.i = sub i64 %i.h, %i.c
  %i.j = lshr i64 %i.i, 1
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j ; 6 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.n, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i ], [ %i.k, %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.m = invoke noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #36
          to label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.m, ptr %.011.i, align 8, !tbaa !115
  %i.n = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.l
  br i1 %i.o, label %.lr.ph.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit, !llvm.loop !460

bb.a:                                             ; preds = %.lr.ph.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #32 ; 0 uses
  %i.s = icmp ult ptr %i.k, %.011.i
  br i1 %i.s, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.k, %bb.a ] ; 2 uses
  %i.t = load ptr, ptr %.06.i.i, align 8, !tbaa !115
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef 504) #35
  %i.u = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.v = icmp ult ptr %i.u, %.011.i
  br i1 %i.v, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i, !llvm.loop !1

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #34
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #33
  unreachable

bb.d:                                             ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  unreachable

.body:                                            ; preds = %bb.b
  %i.z = extractvalue { ptr, i32 } %i.w, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #32 ; 0 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !121
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !123
  %i.ad = shl i64 %i.ac, 3
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ad) #35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #34
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %.body
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ae

_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE15_M_create_nodesEPPS5_S9_.exit: ; preds = %_ZNSt11_Deque_baseINSt8__detail9_StateSeqINSt7__cxx1112regex_traitsIcEEEESaIS5_EE16_M_allocate_nodeEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.ag, align 8, !tbaa !114
  %i.ah = load ptr, ptr %i.k, align 8, !tbaa !115 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !113
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 504
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !117
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.am, ptr %i.an, align 8, !tbaa !114
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !115 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 504
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !117
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !461
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.b
  store ptr %i.as, ptr %i.al, align 8, !tbaa !118
  ret void

bb.g:                                             ; preds = %bb.e
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #33
  unreachable

bb.h:                                             ; preds = %.body
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !104    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt8__detail6_StateIcEESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorINSt8__detail6_StateIcEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 192153584101141162)
  %i.k = select i1 %i.i, i64 192153584101141162, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #36 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false), !tbaa.struct !131
  %i.q = load i32, ptr %2, align 8, !tbaa !119
  %i.r = icmp eq i32 %i.q, 11
  br i1 %i.r, label %bb.c, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorINSt8__detail6_StateIcEESaIS2_EE12_M_check_lenEmPKc.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 24, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !136
  store ptr %i.v, ptr %i.t, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !137  ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.not.i.i, label %_ZNSt8__detail6_StateIcEC2EOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 16, i1 false), !tbaa.struct !167
  store ptr %i.x, ptr %i.z, align 8, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  br label %_ZNSt8__detail6_StateIcEC2EOS1_.exit

_ZNSt8__detail6_StateIcEC2EOS1_.exit:             ; preds = %_ZNKSt6vectorINSt8__detail6_StateIcEESaIS2_EE12_M_check_lenEmPKc.exit, %bb.c, %bb.d
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt8__detail6_StateIcEC2EOS1_.exit, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt8__detail6_StateIcEC2EOS1_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ak, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt8__detail6_StateIcEC2EOS1_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i, i64 48, i1 false), !tbaa.struct !131, !alias.scope !471
  %i.aa = load i32, ptr %.0911.i.i.i, align 8, !tbaa !119, !alias.scope !470, !noalias !469
  %i.ab = icmp eq i32 %i.aa, 11
  br i1 %i.ab, label %bb.e, label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 24, i1 false), !alias.scope !469, !noalias !470
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !136, !alias.scope !470, !noalias !469
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !136, !alias.scope !469, !noalias !470
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !137, !alias.scope !470, !noalias !469 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 16, i1 false), !tbaa.struct !167, !alias.scope !471
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !137, !alias.scope !469, !noalias !470
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !alias.scope !470, !noalias !469
  br label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !465

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt8__detail6_StateIcEC2EOS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt8__detail6_StateIcEC2EOS1_.exit ], [ %i.al, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20
  %.012.i.i.i18 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %i.am, %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %1, %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i19, i64 48, i1 false), !tbaa.struct !131, !alias.scope !474
  %i.an = load i32, ptr %.0911.i.i.i19, align 8, !tbaa !119, !alias.scope !473, !noalias !472
  %i.ao = icmp eq i32 %i.an, 11
  br i1 %i.ao, label %bb.g, label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i8 0, i64 24, i1 false), !alias.scope !472, !noalias !473
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !136, !alias.scope !473, !noalias !472
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !136, !alias.scope !472, !noalias !473
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !137, !alias.scope !473, !noalias !472 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i23 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.not.i.i.i.i.i.i23, label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 16, i1 false), !tbaa.struct !167, !alias.scope !474
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !137, !alias.scope !472, !noalias !473
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false), !alias.scope !473, !noalias !472
  br label %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20

_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20: ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i17
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i21 = icmp eq ptr %i.ax, %i.b
  br i1 %.not.i.i.i21, label %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, label %.lr.ph.i.i.i17, !llvm.loop !465

_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24: ; preds = %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20, %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i22 = phi ptr [ %i.am, %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt8__detail6_StateIcEES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i20 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i25 = icmp eq ptr %i.c, null
  br i1 %.not.i25, label %_ZNSt12_Vector_baseINSt8__detail6_StateIcEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bc) #35
  br label %_ZNSt12_Vector_baseINSt8__detail6_StateIcEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseINSt8__detail6_StateIcEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorINSt8__detail6_StateIcEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit24, %bb.i
  store ptr %i.o, ptr %0, align 8, !tbaa !104
  store ptr %.0.lcssa.i.i.i22, ptr %i.a, align 8, !tbaa !132
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__detail::_StateSeq", align 8 ; 8 uses
  %2 = alloca %"class.std::__detail::_StateSeq", align 8 ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE12_M_assertionEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !475
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_atomEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !475
  br i1 %i.b, label %.preheader, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE7_M_termEv.exit

.preheader:                                       ; preds = %bb.b, %.preheader
  %i.c = tail call noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE13_M_quantifierEv(ptr noundef nonnull align 8 dereferenceable(400) %0), !inline_history !475
  br i1 %i.c, label %.preheader, label %.loopexit, !llvm.loop !476

.loopexit:                                        ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !112, !noalias !485 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !113, !noalias !485 ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !143
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.d:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114, !noalias !485
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !115, !noalias !486
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !tbaa.struct !143
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef 504) #35, !noalias !486
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !116, !noalias !486
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8 ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !114, !noalias !486
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !115, !noalias !486 ; 3 uses
  store ptr %i.q, ptr %i.f, align 8, !tbaa !113, !noalias !486
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 504
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.r, ptr %i.s, align 8, !tbaa !117, !noalias !486
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.t, %bb.d ]
  store ptr %storemerge.i.i.i, ptr %i.d, align 8, !tbaa !118, !noalias !486
  tail call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_alternativeEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !112, !noalias !487 ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !113, !noalias !487 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
  %i.x = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.u, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !142
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit2

bb.f:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit
end_hunk_1
begin_hunk_2_@_ZNKSt7__cxx1112regex_traitsIcE5valueEci:bb.a
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.e = load i64, ptr %i.b, align 8, !tbaa !43
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  switch i32 %2, label %bb.f [
    i32 8, label %.sink.split
    i32 16, label %_ZNSirsEPFRSt8ios_baseS0_E.exit13
  ]

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.d
  %i.k = load i64, ptr %i.b, align 8, !tbaa !43
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10, %bb.c
  %.pn = phi { ptr, i32 } [ %i.g, %bb.c ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10 ], [ %i.h, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.h

bb.e:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120) %3) #32
  br label %bb.h

_ZNSirsEPFRSt8ios_baseS0_E.exit13:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSirsEPFRSt8ios_baseS0_E.exit13
  %.sink20 = phi i32 [ 8, %_ZNSirsEPFRSt8ios_baseS0_E.exit13 ], [ 64, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !53
  %i.o = getelementptr i8, ptr %i.n, i64 -24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds i8, ptr %3, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !573
  %i.t = and i32 %i.s, -75
  %i.u = or disjoint i32 %i.t, %.sink20
  store i32 %i.u, ptr %i.r, align 8, !tbaa !574
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.e       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %3, align 8, !tbaa !53
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !262
  %i.ac = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.ad = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ad, ptr %3, align 8, !tbaa !53
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.af = getelementptr i8, ptr %i.ad, i64 -24
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds i8, ptr %3, i64 %i.ag
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ai, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !40 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.an = load i64, ptr %i.al, align 8, !tbaa !43
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #35
  br label %_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ap = and i32 %i.ab, 5
  %.not = icmp eq i32 %i.ap, 0
  %i.aq = trunc i64 %i.ac to i32
  %i.ar = select i1 %.not, i32 %i.aq, i32 -1
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ai, align 8, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.as) #32
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.at, ptr %3, align 8, !tbaa !53
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.av = getelementptr i8, ptr %i.at, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %3, i64 %i.aw
  store ptr %i.au, ptr %i.ax, align 8, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.ay, align 8, !tbaa !264
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.az) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret i32 %i.ar

bb.h:                                             ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %.pn8 = phi { ptr, i32 } [ %i.m, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  resume { ptr, i32 } %.pn8
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #18

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEC1ERKNS_12basic_stringIcS2_S3_EESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #8 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIlEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265, !nonnull !155, !align !156
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.58) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !209
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !210
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !266  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !266
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !221  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.af = icmp ult i64 %3, %i.ae
  %i.ag = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #36 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.ak, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = add i64 %i.aa, -4
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %i.ab, %i.al
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.z, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.av = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !581, !noalias !580
  %wide.load29 = load <4 x i32>, ptr %i.av, align 2, !alias.scope !581, !noalias !580
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !580, !noalias !581
  store <4 x i32> %wide.load29, ptr %i.aw, align 2, !alias.scope !580, !noalias !581
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.ay = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !581, !noalias !580
  store i32 %i.ay, ptr %.012.i.i.i.i.i, align 2, !alias.scope !580, !noalias !581
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !579

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.as, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.be) #35
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aj, ptr %i.s, align 8, !tbaa !221
  store ptr %i.bb, ptr %i.t, align 8, !tbaa !266
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bf, ptr %i.v, align 8, !tbaa !218
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !211    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !211   ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !211 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !43 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !43
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !9

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !582

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !43
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb0EEC2ERKS4_:bb.a
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %i.as, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = load ptr, ptr %i.bf, align 8, !tbaa !216
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #35
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.n ], [ %i.ds, %bb.o ], [ %i.ds, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dq, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dy = load ptr, ptr %0, align 8, !tbaa !225   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dz = load ptr, ptr %i.l, align 8, !tbaa !212
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ec) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.014 = phi ptr [ %i.p, %bb.d ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.08.013 = phi ptr [ %i.o, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16 ; 3 uses
  store ptr %i.b, ptr %.014, align 8, !tbaa !42
  %i.c = load ptr, ptr %.sroa.08.013, align 8, !tbaa !40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.e, ptr %i.a, align 8, !tbaa !44
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.lr.ph
  %i.g = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.g, ptr %.014, align 8, !tbaa !40
  %i.h = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.h, ptr %i.b, align 8, !tbaa !43
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %.lr.ph
  %i.i = phi ptr [ %i.g, %.noexc ], [ %i.b, %.lr.ph ] ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.c, align 1, !tbaa !43
  store i8 %i.j, ptr %i.i, align 1, !tbaa !43
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !41
  %i.m = load ptr, ptr %.014, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.o, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !603

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = call ptr @__cxa_begin_catch(ptr %i.r) #32 ; 0 uses
  invoke void @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #34
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.p, %bb.d ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.t

bb.i:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279, !nonnull !155, !align !156
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext false) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.58) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !209
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !210
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !266  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !266
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !221  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.af = icmp ult i64 %3, %i.ae
  %i.ag = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #36 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.ak, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = add i64 %i.aa, -4
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %i.ab, %i.al
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.z, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.av = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !610, !noalias !609
  %wide.load29 = load <4 x i32>, ptr %i.av, align 2, !alias.scope !610, !noalias !609
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !609, !noalias !610
  store <4 x i32> %wide.load29, ptr %i.aw, align 2, !alias.scope !609, !noalias !610
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !607

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.ay = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !610, !noalias !609
  store i32 %i.ay, ptr %.012.i.i.i.i.i, align 2, !alias.scope !609, !noalias !610
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !608

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.as, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.be) #35
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aj, ptr %i.s, align 8, !tbaa !221
  store ptr %i.bb, ptr %i.t, align 8, !tbaa !266
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bf, ptr %i.v, align 8, !tbaa !218
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.80, align 8             ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !211    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !211   ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !211 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !43 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !43
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !9

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !611

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !43
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EEC2ERKS9_:bb.a
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #33
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ESt6vectorIS9_SaIS9_EEEEPS9_S9_ET0_T_SI_SH_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.p, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EJRKS7_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.j, align 8, !tbaa !284
  ret void

.body:                                            ; preds = %bb.f
  %i.w = load ptr, ptr %0, align 8, !tbaa !283    ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !236
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #35
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EED2Ev.exit: ; preds = %bb.i, %.body
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !42
  %i.d = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.f, ptr %i.b, align 8, !tbaa !44
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !40
  %i.i = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.i, ptr %i.c, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !43
  store i8 %i.k, ptr %i.j, align 1, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !41
  %i.n = load ptr, ptr %0, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !42
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.u, ptr %i.a, align 8, !tbaa !44
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i5, label %._crit_edge.i.i4

.noexc.i5:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i5
  store ptr %i.w, ptr %i.p, align 8, !tbaa !40
  %i.x = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.x, ptr %i.r, align 8, !tbaa !43
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.u, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i4
  %i.z = load i8, ptr %i.s, align 1, !tbaa !43
  store i8 %i.z, ptr %i.y, align 1, !tbaa !43
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i4
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !41
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void

bb.g:                                             ; preds = %.noexc.i5
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.c
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !43
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !286, !nonnull !155, !align !156
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.58) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !209
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !210
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !266  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !266
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !221  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.af = icmp ult i64 %3, %i.ae
  %i.ag = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #36 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.ak, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = add i64 %i.aa, -4
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %i.ab, %i.al
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.z, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.av = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !628, !noalias !627
  %wide.load29 = load <4 x i32>, ptr %i.av, align 2, !alias.scope !628, !noalias !627
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !627, !noalias !628
  store <4 x i32> %wide.load29, ptr %i.aw, align 2, !alias.scope !627, !noalias !628
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !625

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628)
  %i.ay = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !628, !noalias !627
  store i32 %i.ay, ptr %.012.i.i.i.i.i, align 2, !alias.scope !627, !noalias !628
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !626

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.as, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.be) #35
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aj, ptr %i.s, align 8, !tbaa !221
  store ptr %i.bb, ptr %i.t, align 8, !tbaa !266
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bf, ptr %i.v, align 8, !tbaa !218
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.85, align 8             ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !211    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !211   ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !211 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !43 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !43
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !9

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !629

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !43
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb0EEC2ERKS4_:bb.a

bb.l:                                             ; preds = %.loopexit30
  %i.co = icmp ugt i64 %i.cn, 9223372036854775804
  br i1 %i.co, label %.noexc.i.i25, label %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, !prof !55

.noexc.i.i25:                                     ; preds = %bb.l
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc26 unwind label %bb.o

.noexc26:                                         ; preds = %.noexc.i.i25
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.l
  %i.cp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cn) #36
          to label %.noexc27 unwind label %bb.o

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.loopexit30
  %i.cq = phi ptr [ null, %.loopexit30 ], [ %i.cp, %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i ] ; 8 uses
  store ptr %i.cq, ptr %i.cg, align 8, !tbaa !221
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !266
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !218
  %i.cu = load ptr, ptr %i.ch, align 8, !tbaa !217 ; 5 uses
  %i.cv = load ptr, ptr %i.ci, align 8, !tbaa !217 ; 3 uses
  %.not7.i.i.i.i.i19 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not7.i.i.i.i.i19, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %.noexc27
  %i.cw = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %i.cx = ptrtoaddr ptr %i.cq to i64
  %i.cy = ptrtoaddr ptr %i.cv to i64
  %i.cz = add i64 %i.cy, -4
  %i.da = sub i64 %i.cz, %i.cw                    ; 2 uses
  %i.db = lshr i64 %i.da, 2
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %min.iters.check61 = icmp ult i64 %i.da, 44
  %i.dd = sub i64 %i.cw, %i.cx
  %diff.check60 = icmp ugt i64 %i.dd, -32
  %or.cond74 = or i1 %min.iters.check61, %diff.check60
  br i1 %or.cond74, label %.lr.ph.i.i.i.i.i20.preheader75, label %vector.ph62

vector.ph62:                                      ; preds = %.lr.ph.i.i.i.i.i20.preheader
  %n.vec63 = and i64 %i.dc, 9223372036854775800   ; 3 uses
  %i.de = shl i64 %n.vec63, 2                     ; 2 uses
  %i.df = getelementptr i8, ptr %i.cq, i64 %i.de  ; 2 uses
  %i.dg = getelementptr i8, ptr %i.cu, i64 %i.de
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph62
  %index65 = phi i64 [ 0, %vector.ph62 ], [ %index.next70, %vector.body64 ] ; 2 uses
  %i.dh = shl i64 %index65, 2                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.cq, i64 %i.dh ; 2 uses
  %next.gep67 = getelementptr i8, ptr %i.cu, i64 %i.dh ; 2 uses
  %i.di = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load68 = load <4 x i32>, ptr %next.gep67, align 2
  %wide.load69 = load <4 x i32>, ptr %i.di, align 2
  %i.dj = getelementptr i8, ptr %next.gep66, i64 16
  store <4 x i32> %wide.load68, ptr %next.gep66, align 2
  store <4 x i32> %wide.load69, ptr %i.dj, align 2
  %index.next70 = add nuw i64 %index65, 8         ; 2 uses
  %i.dk = icmp eq i64 %index.next70, %n.vec63
  br i1 %i.dk, label %middle.block71, label %vector.body64, !llvm.loop !634

middle.block71:                                   ; preds = %vector.body64
  %cmp.n72 = icmp eq i64 %i.dc, %n.vec63
  br i1 %cmp.n72, label %.loopexit, label %.lr.ph.i.i.i.i.i20.preheader75

.lr.ph.i.i.i.i.i20.preheader75:                   ; preds = %.lr.ph.i.i.i.i.i20.preheader, %middle.block71
  %.09.i.i.i.i.i21.ph = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.df, %middle.block71 ]
  %.sroa.04.08.i.i.i.i.i22.ph = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.preheader ], [ %i.dg, %middle.block71 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader75, %.lr.ph.i.i.i.i.i20
  %.09.i.i.i.i.i21 = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i20 ], [ %.09.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i22 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i.i20 ], [ %.sroa.04.08.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader75 ] ; 2 uses
  %i.dl = load i32, ptr %.sroa.04.08.i.i.i.i.i22, align 2
  store i32 %i.dl, ptr %.09.i.i.i.i.i21, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i22, i64 4 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i21, i64 4 ; 2 uses
  %.not.i.i.i.i.i23 = icmp eq ptr %i.dm, %i.cv
  br i1 %.not.i.i.i.i.i23, label %.loopexit, label %.lr.ph.i.i.i.i.i20, !llvm.loop !635

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i20, %middle.block71, %.noexc27
  %.0.lcssa.i.i.i.i.i24 = phi ptr [ %i.cq, %.noexc27 ], [ %i.df, %middle.block71 ], [ %i.dn, %.lr.ph.i.i.i.i.i20 ]
  store ptr %.0.lcssa.i.i.i.i.i24, ptr %i.cr, align 8, !tbaa !266
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.do, ptr noundef nonnull align 8 dereferenceable(64) %i.dp, i64 64, i1 false)
  ret void

bb.m:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i12
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %_ZNSt15__new_allocatorISt4pairIccEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i15
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

bb.o:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112regex_traitsIcE10_RegexMaskEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i25
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %i.as, align 8, !tbaa !222 ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.du = load ptr, ptr %i.bf, align 8, !tbaa !216
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dt, i64 noundef %i.dx) #35
  br label %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit:        ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.n ], [ %i.ds, %bb.o ], [ %i.ds, %bb.p ]
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.v) #32
  br label %.body

.body:                                            ; preds = %bb.m, %bb.i, %bb.h, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorISt4pairIccESaIS1_EED2Ev.exit ], [ %i.dq, %bb.m ], [ %i.am, %bb.i ], [ %i.am, %bb.h ]
  %i.dy = load ptr, ptr %0, align 8, !tbaa !225   ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.dz = load ptr, ptr %i.l, align 8, !tbaa !212
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ec) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %.body, %bb.q
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE22_M_add_character_classERKNS1_12basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !290, !nonnull !155, !align !156
  %i.c = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = tail call i32 @_ZNKSt7__cxx1112regex_traitsIcE16lookup_classnameIPKcEENS1_10_RegexMaskET_S6_b(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.c, ptr noundef %i.f, i1 noundef zeroext true) ; 5 uses
  %i.h = and i32 %i.g, 131071
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeEPKc(i32 noundef 0, ptr noundef nonnull @.str.58) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.sroa.04.0.insert.ext = lshr i32 %i.g, 16
  %i.k = load i16, ptr %i.j, align 8, !tbaa !209
  %i.l = trunc i32 %i.g to i16
  %i.m = or i16 %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.o = load i8, ptr %i.n, align 2, !tbaa !210
  %i.p = trunc i32 %.sroa.04.0.insert.ext to i8
  %i.q = or i8 %i.o, %i.p
  %.sroa.2.0.insert.ext.i.i = zext i8 %i.q to i32
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i32 %.sroa.2.0.insert.ext.i.i, 16
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.m to i32
  %.sroa.0.0.insert.insert.i.i = or disjoint i32 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.r = trunc nuw i32 %.sroa.0.0.insert.insert.i.i to i24
  store i24 %i.r, ptr %i.j, align 8
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !266  ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !218
  %.not.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.04.0.insert.ext6 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext6, ptr %i.u, align 2
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.y, ptr %i.t, align 8, !tbaa !266
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !221  ; 7 uses
  %i.aa = ptrtoint ptr %i.u to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 4 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.ae ; 2 uses
  %i.af = icmp ult i64 %3, %i.ae
  %i.ag = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #36 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ac
  %.sroa.04.0.insert.ext10 = and i32 %i.g, 16777215
  store i32 %.sroa.04.0.insert.ext10, ptr %i.ak, align 2
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, %i.u
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = add i64 %i.aa, -4
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 2
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 44
  %i.aq = sub i64 %i.ab, %i.al
  %diff.check = icmp ugt i64 %i.aq, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 9223372036854775800     ; 3 uses
  %i.ar = shl i64 %n.vec, 2                       ; 2 uses
  %i.as = getelementptr i8, ptr %i.aj, i64 %i.ar  ; 2 uses
  %i.at = getelementptr i8, ptr %i.z, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.au ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.z, i64 %i.au ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.av = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 2, !alias.scope !642, !noalias !641
  %wide.load29 = load <4 x i32>, ptr %i.av, align 2, !alias.scope !642, !noalias !641
  %i.aw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 2, !alias.scope !641, !noalias !642
  store <4 x i32> %wide.load29, ptr %i.aw, align 2, !alias.scope !641, !noalias !642
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader31

.lr.ph.i.i.i.i.i.preheader31:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader31, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader31 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  %i.ay = load i32, ptr %.0911.i.i.i.i.i, align 2, !alias.scope !642, !noalias !641
  store i32 %i.ay, ptr %.012.i.i.i.i.i, align 2, !alias.scope !641, !noalias !642
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.az, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !640

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aj, %_ZNKSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.as, %middle.block ], [ %i.ba, %.lr.ph.i.i.i.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 4
  %.not.i23.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.bc = load ptr, ptr %i.v, align 8, !tbaa !218
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.be) #35
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.aj, ptr %i.s, align 8, !tbaa !221
  store ptr %i.bb, ptr %i.t, align 8, !tbaa !266
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah
  store ptr %i.bf, ptr %i.v, align 8, !tbaa !218
  br label %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112regex_traitsIcE10_RegexMaskESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb1ELb1EE8_M_readyEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.88, align 8             ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !211    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !211  ; 4 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit: ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = xor i64 %i.h, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.a, ptr %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !211   ; 4 uses
  %.pre36 = ptrtoaddr ptr %.pre to i64            ; 2 uses
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !211 ; 7 uses
  %.pre1335 = ptrtoaddr ptr %.pre13 to i64        ; 2 uses
  %i.j = icmp eq ptr %.pre, %.pre13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 1 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.k, %.pre13
  %or.cond = select i1 %i.j, i1 true, i1 %.not.i.i.i31
  br i1 %or.cond, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph

.preheader.i.i.i:                                 ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %.pre13
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS1_EES6_.exit, label %.lr.ph, !llvm.loop !9

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit, %.preheader.i.i.i
  %indvar = phi i64 [ %indvar.next, %.preheader.i.i.i ], [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %i.m = phi ptr [ %i.l, %.preheader.i.i.i ], [ %i.k, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 3 uses
  %.sroa.09.0.i.i.i32 = phi ptr [ %i.m, %.preheader.i.i.i ], [ %.pre, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEEvT_S7_.exit ] ; 5 uses
  %i.n = load i8, ptr %.sroa.09.0.i.i.i32, align 1, !tbaa !43 ; 3 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !43
  %i.p = icmp eq i8 %i.n, %i.o
  br i1 %i.p, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !9

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i32, i64 2 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.q, %.pre13
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.r = xor i64 %.pre1335, 2
  %i.s = add i64 %indvar, %.pre36
  %i.t = sub i64 %i.r, %i.s
  %i.u = add i64 %.pre1335, -3
  %i.v = add i64 %indvar, %.pre36
  %i.w = sub i64 %i.u, %i.v
  %xtraiter = and i64 %i.t, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.c
  %i.x = phi i8 [ %i.z, %bb.c ], [ %i.n, %.lr.ph.i.i.preheader ]
  %i.y = phi ptr [ %i.ac, %bb.c ], [ %i.q, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.c ], [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.c ], [ 0, %.lr.ph.i.i.preheader ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !43    ; 4 uses
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.prol
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 1 ; 2 uses
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ab, %bb.b ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !643

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.c, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %.unr = phi i8 [ %i.n, %.lr.ph.i.i.preheader ], [ %i.z, %bb.c ]
  %.unr38 = phi ptr [ %i.q, %.lr.ph.i.i.preheader ], [ %i.ac, %bb.c ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i32, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.c ]
  %i.ad = icmp ult i64 %i.w, 3
  br i1 %i.ad, label %._crit_edge.i.i.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.h
  %i.ae = phi i8 [ %i.as, %bb.h ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.af = phi ptr [ %i.av, %bb.h ], [ %.unr38, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.h ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !43  ; 3 uses
  %i.ah = icmp eq i8 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.1, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 1 ; 2 uses
  store i8 %i.ag, ptr %i.ai, align 1, !tbaa !43
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ai, %bb.d ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !43  ; 3 uses
  %i.al = icmp eq i8 %i.ag, %i.ak
  br i1 %i.al, label %.lr.ph.i.i.2, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 1 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNKSt7__cxx1112regex_traitsIcE18lookup_collatenameIPKcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_SA_:bb.a
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.preheader.split
  %bcmp.i = call i32 @bcmp(ptr %.pre49, ptr nonnull %i.aq, i64 %i.j)
  %i.at = icmp eq i32 %bcmp.i, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.preheader.split.us, %.critedge.us, %.critedge.us.1, %.critedge.us.2
  %.us-phi = phi i64 [ %.017.add.us.2, %.critedge.us.2 ], [ %.017.idx42.us, %.preheader.split.us ], [ %.017.add.us, %.critedge.us ], [ %.017.add.us.1, %.critedge.us.1 ], [ %.017.idx42, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.au = lshr exact i64 %.us-phi, 3              ; 2 uses
  %i.av = trunc i64 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !275
  %.not.i30 = icmp eq i8 %i.ax, 0
  br i1 %.not.i30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.az = and i64 %i.au, 255
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !43
  br label %_ZNKSt5ctypeIcE5widenEc.exit

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.f)
          to label %.noexc32 unwind label %bb.k

.noexc32:                                         ; preds = %bb.j
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef signext i8 %i.be(ptr noundef nonnull align 8 dereferenceable(570) %i.f, i8 noundef signext %i.av)
          to label %_ZNKSt5ctypeIcE5widenEc.exit unwind label %bb.k, !inline_history !669

_ZNKSt5ctypeIcE5widenEc.exit:                     ; preds = %bb.i, %.noexc32
  %.0.i31 = phi i8 [ %i.bb, %bb.i ], [ %i.bf, %.noexc32 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bg, ptr %0, align 8, !tbaa !42
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, i8 noundef signext %.0.i31)
          to label %_ZNKSt5ctypeIcE5widenEc.exit._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit_crit_edge unwind label %bb.l

_ZNKSt5ctypeIcE5widenEc.exit._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit_crit_edge: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit
  %.pre50 = load ptr, ptr %4, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

bb.k:                                             ; preds = %.noexc32, %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNKSt5ctypeIcE5widenEc.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.critedge:                                        ; preds = %.preheader.split, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.017.add = add nuw nsw i64 %.017.idx42, 8      ; 2 uses
  %.not23 = icmp eq i64 %.017.add, 1024
  br i1 %.not23, label %.critedge28, label %.preheader.split

.critedge28:                                      ; preds = %.critedge, %.critedge.us.3
  %i.bj = phi ptr [ %i.l, %.critedge.us.3 ], [ %.pre49, %.critedge ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bl, align 8, !tbaa !41
  store i8 0, ptr %i.bk, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %_ZNKSt5ctypeIcE5widenEc.exit._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit_crit_edge, %.critedge28
  %i.bm = phi ptr [ %.pre50, %_ZNKSt5ctypeIcE5widenEc.exit._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit_crit_edge ], [ %i.bj, %.critedge28 ] ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.g
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.bo = load i64, ptr %i.g, align 8, !tbaa !43
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret void

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.h
  %.pn25 = phi { ptr, i32 } [ %i.ap, %bb.h ], [ %i.bi, %bb.l ], [ %i.bh, %bb.k ]
  %i.bq = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.g
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.bs = load i64, ptr %i.g, align 8, !tbaa !43
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %.pn25
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNKSt7__cxx1112regex_traitsIcE17transform_primaryIPcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #32
  %i.b = load ptr, ptr %1, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 3 uses
  %.not.not.i = icmp eq ptr %i.f, null
  br i1 %.not.not.i, label %bb.b, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #34
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.a
  %i.g = ptrtoint ptr %3 to i64
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc.i, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.74) #34
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %.not.i.i.i = icmp eq ptr %3, %2
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #36 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i ; 2 uses
  %i.m = icmp samesign ugt i64 %i.i, 1
  br i1 %i.m, label %bb.c, label %bb.e, !prof !276

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %2, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIcSaIcEEC2IPcvEET_S4_RKS0_.exit

bb.d:                                             ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr null, i64 %i.i
  br label %_ZNSt6vectorIcSaIcEEC2IPcvEET_S4_RKS0_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit.i.i
  %i.o = load i8, ptr %2, align 1, !tbaa !43
  store i8 %i.o, ptr %i.k, align 1, !tbaa !43
  br label %_ZNSt6vectorIcSaIcEEC2IPcvEET_S4_RKS0_.exit

_ZNSt6vectorIcSaIcEEC2IPcvEET_S4_RKS0_.exit:      ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.17.0 = phi ptr [ %i.n, %bb.d ], [ %i.l, %bb.c ], [ %i.l, %bb.e ]
  %.sroa.012.0 = phi ptr [ null, %bb.d ], [ %i.k, %bb.c ], [ %i.k, %bb.e ] ; 8 uses
  %i.p = ptrtoint ptr %.sroa.17.0 to i64
  %i.q = ptrtoint ptr %.sroa.012.0 to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.012.0, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(570) %i.f, ptr noundef %.sroa.012.0, ptr noundef %i.s)
          to label %_ZNKSt5ctypeIcE7tolowerEPcPKc.exit unwind label %bb.h, !inline_history !16 ; 0 uses

_ZNKSt5ctypeIcE7tolowerEPcPKc.exit:               ; preds = %_ZNSt6vectorIcSaIcEEC2IPcvEET_S4_RKS0_.exit
  invoke void @_ZNKSt7__cxx1112regex_traitsIcE9transformIPcEENS_12basic_stringIcSt11char_traitsIcESaIcEEET_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %.sroa.012.0, ptr noundef %i.s)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZNKSt5ctypeIcE7tolowerEPcPKc.exit
  %.not.i.i.i7 = icmp eq ptr %.sroa.012.0, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.0, i64 noundef %i.r) #35
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %_ZNSt6vectorIcSaIcEEC2IPcvEET_S4_RKS0_.exit, %_ZNKSt5ctypeIcE7tolowerEPcPKc.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i9 = icmp eq ptr %.sroa.012.0, null
  br i1 %.not.i.i.i9, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.012.0, i64 noundef %i.r) #35
  br label %.body

.body:                                            ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !224  ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !223    ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.i      ; 2 uses
  %i.j = icmp ult i64 %3, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %3, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.f
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #36 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !42
  %i.s = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.u, ptr %i.a, align 8, !tbaa !44
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.w = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.w, ptr %i.q, align 8, !tbaa !40
  %i.x = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.x, ptr %i.r, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.y = phi ptr [ %i.w, %.noexc ], [ %i.r, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !43
  store i8 %i.z, ptr %i.y, align 1, !tbaa !43
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !41
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ae, ptr %.012.i.i.i, align 8, !tbaa !42, !alias.scope !677, !noalias !678
  %i.af = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !678, !noalias !677 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41, !alias.scope !678, !noalias !677 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false), !alias.scope !679
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.af, ptr %.012.i.i.i, align 8, !tbaa !40, !alias.scope !677, !noalias !678
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !43, !alias.scope !678, !noalias !677
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !43, !alias.scope !677, !noalias !678
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !41, !alias.scope !678, !noalias !677
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.an = phi i64 [ %i.aj, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !41, !alias.scope !677, !noalias !678
  store ptr %i.ag, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !678, !noalias !677
  store i64 0, ptr %i.ao, align 8, !tbaa !41, !alias.scope !678, !noalias !677
  store i8 0, ptr %i.ag, align 8, !tbaa !43, !alias.scope !678, !noalias !677
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !673

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.e ], [ %i.ar, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  call void @llvm.experimental.noalias.scope.decl(metadata !681)
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.at, ptr %.012.i.i.i28, align 8, !tbaa !42, !alias.scope !680, !noalias !681
  %i.au = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !40, !alias.scope !681, !noalias !680 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !41, !alias.scope !681, !noalias !680 ; 3 uses
  %i.az = icmp ult i64 %i.ay, 16
  call void @llvm.assume(i1 %i.az)
  %i.ba = add nuw nsw i64 %i.ay, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull align 8 dereferenceable(1) %i.av, i64 %i.ba, i1 false), !alias.scope !682
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.au, ptr %.012.i.i.i28, align 8, !tbaa !40, !alias.scope !680, !noalias !681
  %i.bb = load i64, ptr %i.av, align 8, !tbaa !43, !alias.scope !681, !noalias !680
  store i64 %i.bb, ptr %i.at, align 8, !tbaa !43, !alias.scope !680, !noalias !681
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !41, !alias.scope !681, !noalias !680
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.bc = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bc, ptr %i.be, align 8, !tbaa !41, !alias.scope !680, !noalias !681
  store ptr %i.av, ptr %.0911.i.i.i29, align 8, !tbaa !40, !alias.scope !681, !noalias !680
  store i64 0, ptr %i.bd, align 8, !tbaa !41, !alias.scope !681, !noalias !680
  store i8 0, ptr %i.av, align 8, !tbaa !43, !alias.scope !681, !noalias !680
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bf, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !673

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.as, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bg, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !214
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bk) #35
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !223
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !224
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !214
  ret void

bb.i:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = call ptr @__cxa_begin_catch(ptr %i.bo) #32 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #35
  invoke void @__cxa_rethrow() #34
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.bm

bb.l:                                             ; preds = %bb.i
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #33
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE18_M_expression_termILb0ELb1EEEbRNS4_13_BracketStateERNS_15_BracketMatcherIS3_XT_EXT0_EEE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef nonnull align 1 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(160) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.94, align 8             ; 7 uses
  %4 = alloca %class.anon.95, align 8             ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !108  ; 2 uses
  %i.d = icmp eq i32 %i.c, 11
  br i1 %i.d, label %bb.b, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit
end_hunk_6
begin_hunk_7_@_ZNSt8__detail15_BracketMatcherINSt7__cxx1112regex_traitsIcEELb0ELb1EE13_M_make_rangeEcc:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 10 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !42, !alias.scope !697
  %i.av = load ptr, ptr %7, align 8, !tbaa !40, !noalias !697 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 9 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41, !noalias !697 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false)
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.av, ptr %i.at, align 8, !tbaa !40, !alias.scope !697
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !43, !noalias !697
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !43, !alias.scope !697
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !tbaa !41, !noalias !697
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i, %bb.i
  %i.bd = phi i64 [ %i.az, %bb.i ], [ %.pre3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !41, !alias.scope !697
  store ptr %i.aw, ptr %7, align 8, !tbaa !40, !noalias !697
  store i64 0, ptr %i.be, align 8, !tbaa !41, !noalias !697
  store i8 0, ptr %i.aw, align 8, !tbaa !43, !noalias !697
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !284 ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !236
  %.not.i.i = icmp eq ptr %i.bh, %i.bj
  br i1 %.not.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  store ptr %i.bk, ptr %i.bh, align 8, !tbaa !42
  %i.bl = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ah
  br i1 %i.bm, label %bb.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bn = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bk, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.bo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  store ptr %i.bl, ptr %i.bh, align 8, !tbaa !40
  %i.bp = load i64, ptr %i.ah, align 8, !tbaa !43
  store i64 %i.bp, ptr %i.bk, align 8, !tbaa !43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %i.aq, ptr %i.bq, align 8, !tbaa !41
  store ptr %i.ah, ptr %5, align 8, !tbaa !40
  store i64 0, ptr %i.as, align 8, !tbaa !41
  store i8 0, ptr %i.ah, align 8, !tbaa !43
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 3 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !42
  %i.bt = load ptr, ptr %i.at, align 8, !tbaa !40 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.au
  br i1 %i.bu, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  %i.bv = load i64, ptr %i.bf, align 8, !tbaa !41 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bs, ptr noundef nonnull align 8 dereferenceable(1) %i.au, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !40
  %i.by = load i64, ptr %i.au, align 8, !tbaa !43
  store i64 %i.by, ptr %i.bs, align 8, !tbaa !43
  %.pre = load i64, ptr %i.bf, align 8, !tbaa !41
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i
  %i.bz = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i ], [ %i.bv, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !41
  store ptr %i.au, ptr %i.at, align 8, !tbaa !40
  store i64 0, ptr %i.bf, align 8, !tbaa !41
  store i8 0, ptr %i.au, align 8, !tbaa !43
  %i.cb = load ptr, ptr %i.bg, align 8, !tbaa !284
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  store ptr %i.cc, ptr %i.bg, align 8, !tbaa !284
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.n:                                             ; preds = %bb.j
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit unwind label %bb.p

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit: ; preds = %bb.n
  %.pre29 = load ptr, ptr %i.at, align 8, !tbaa !40 ; 2 uses
  %i.cd = icmp eq ptr %.pre29, %i.au
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit
  %i.ce = load i64, ptr %i.au, align 8, !tbaa !43
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %.pre29, i64 noundef %i.cf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE9push_backEOS7_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  %i.cg = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.ah
  br i1 %i.ch, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ci = load i64, ptr %i.ah, align 8, !tbaa !43
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #35
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ck = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.aw
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
  %i.cm = load i64, ptr %i.aw, align 8, !tbaa !43
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.co = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.aj
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.aj, align 8, !tbaa !43
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

bb.o:                                             ; preds = %_ZNKSt8__detail20_RegexTranslatorBaseINSt7__cxx1112regex_traitsIcEELb0ELb1EE12_M_transformEc.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.n
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #32
  %i.cu = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.aw
  br i1 %i.cv, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.p
  %i.cw = load i64, ptr %i.aw, align 8, !tbaa !43
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #35
  br label %.body

.body:                                            ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i11 ], [ %i.cs, %bb.o ], [ %i.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.ct, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.cy = load ptr, ptr %6, align 8, !tbaa !40    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %.body
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !43
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !284  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !283    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 144115188075855871)
  %i.k = select i1 %i.i, i64 144115188075855871, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 6
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #36 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !42
  %i.r = load ptr, ptr %2, align 8, !tbaa !40     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE12_M_check_lenEmPKc.exit
  store ptr %i.r, ptr %i.p, align 8, !tbaa !40
  %i.y = load i64, ptr %i.s, align 8, !tbaa !43
  store i64 %i.y, ptr %i.q, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.z = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.v, %bb.c ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !41
  store ptr %i.s, ptr %2, align 8, !tbaa !40
  store i64 0, ptr %i.aa, align 8, !tbaa !41
  store i8 0, ptr %i.s, align 8, !tbaa !43
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !42
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !41 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 16
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = add nuw nsw i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(1) %i.ag, i64 %i.al, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !40
  %i.am = load i64, ptr %i.ag, align 8, !tbaa !43
  store i64 %i.am, ptr %i.ae, align 8, !tbaa !43
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !41
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i
  %i.an = phi i64 [ %i.aj, %bb.d ], [ %.pre38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !41
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !40
  store i64 0, ptr %i.ao, align 8, !tbaa !41
  store i8 0, ptr %i.ag, align 8, !tbaa !43
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.br, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.bq, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.aq, ptr %.012.i.i.i, align 8, !tbaa !42, !alias.scope !705, !noalias !706
  %i.ar = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !706, !noalias !705 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !41, !alias.scope !706, !noalias !705 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !707
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ar, ptr %.012.i.i.i, align 8, !tbaa !40, !alias.scope !705, !noalias !706
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !43, !alias.scope !706, !noalias !705
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !43, !alias.scope !705, !noalias !706
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !41, !alias.scope !706, !noalias !705
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.e
  %i.az = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.av, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !41, !alias.scope !705, !noalias !706
  store ptr %i.as, ptr %.0911.i.i.i, align 8, !tbaa !40, !alias.scope !706, !noalias !705
  store i64 0, ptr %i.ba, align 8, !tbaa !41, !alias.scope !706, !noalias !705
  store i8 0, ptr %i.as, align 8, !tbaa !43, !alias.scope !706, !noalias !705
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !42, !alias.scope !705, !noalias !706
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !40, !alias.scope !706, !noalias !705 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !41, !alias.scope !706, !noalias !705 ; 3 uses
  %i.bk = icmp ult i64 %i.bj, 16
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = add nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bl, i1 false), !alias.scope !707
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.bf, ptr %i.bc, align 8, !tbaa !40, !alias.scope !705, !noalias !706
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !43, !alias.scope !706, !noalias !705
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !43, !alias.scope !705, !noalias !706
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !41, !alias.scope !706, !noalias !705
  br label %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i, %bb.f
  %i.bn = phi i64 [ %i.bj, %bb.f ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.bn, ptr %i.bp, align 8, !tbaa !41, !alias.scope !705, !noalias !706
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !40, !alias.scope !706, !noalias !705
  store i64 0, ptr %i.bo, align 8, !tbaa !41, !alias.scope !706, !noalias !705
  store i8 0, ptr %i.bg, align 8, !tbaa !43, !alias.scope !706, !noalias !705
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !701

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2EOS6_.exit ], [ %i.br, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit30, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27
  %.012.i.i.i18 = phi ptr [ %i.cu, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %i.bs, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 8 uses
  %.0911.i.i.i19 = phi ptr [ %i.ct, %_ZSt19__relocate_object_aISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ES7_SaIS7_EEvPT_PT0_RT1_.exit.i.i.i27 ], [ %1, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709)
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.bt, ptr %.012.i.i.i18, align 8, !tbaa !42, !alias.scope !708, !noalias !709
  %i.bu = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !40, !alias.scope !709, !noalias !708 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !41, !alias.scope !709, !noalias !708 ; 3 uses
  %i.bz = icmp ult i64 %i.by, 16
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = add nuw nsw i64 %i.by, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bt, ptr noundef nonnull align 8 dereferenceable(1) %i.bv, i64 %i.ca, i1 false), !alias.scope !710
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.bu, ptr %.012.i.i.i18, align 8, !tbaa !40, !alias.scope !708, !noalias !709
  %i.cb = load i64, ptr %i.bv, align 8, !tbaa !43, !alias.scope !709, !noalias !708
  store i64 %i.cb, ptr %i.bt, align 8, !tbaa !43, !alias.scope !708, !noalias !709
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !41, !alias.scope !709, !noalias !708
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.cc = phi i64 [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ], [ %i.by, %bb.g ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !41, !alias.scope !708, !noalias !709
  store ptr %i.bv, ptr %.0911.i.i.i19, align 8, !tbaa !40, !alias.scope !709, !noalias !708
  store i64 0, ptr %i.cd, align 8, !tbaa !41, !alias.scope !709, !noalias !708
  store i8 0, ptr %i.bv, align 8, !tbaa !43, !alias.scope !709, !noalias !708
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 3 uses
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !42, !alias.scope !708, !noalias !709
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !40, !alias.scope !709, !noalias !708 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 5 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i24

end_hunk_7
begin_hunk_8_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl:bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bb, align 8, !tbaa !211
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !211
  store i64 %i.bc, ptr %i.bb, align 8, !tbaa !211
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !107
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.be), !inline_history !785
  store ptr %.sroa.0.0.copyload.i, ptr %i.bb, align 8, !tbaa !211
  br label %common.ret

bb.l:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !43
  %i.bh = load ptr, ptr %0, align 8, !tbaa !318
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bg ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 8
  %i.bj = load i64, ptr %i.g, align 8, !tbaa !211
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !316
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107
  %i.bm = load <2 x i64>, ptr %i.bi, align 8
  store i64 %i.bj, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !211
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.bl), !inline_history !786
  store <2 x i64> %i.bm, ptr %i.bi, align 8, !tbaa !211
  store i8 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !316
  br label %common.ret

bb.m:                                             ; preds = %.lr.ph
  %i.bn = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !211
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !340 ; 2 uses
  %i.br = and i32 %i.bq, 1
  %.not.i26 = icmp eq i32 %i.br, 0
  br i1 %.not.i26, label %bb.o, label %common.ret

bb.o:                                             ; preds = %bb.n
  %i.bs = and i32 %i.bq, 128
  %.not3.i = icmp eq i32 %i.bs, 0
  br i1 %.not3.i, label %tailrecurse.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %i.i, align 8, !tbaa !368, !nonnull !155, !align !156
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !320
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !166
  %i.by = and i32 %i.bx, 2064
  %i.bz = icmp eq i32 %i.by, 2064
  br i1 %i.bz, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

bb.q:                                             ; preds = %bb.m
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !368, !nonnull !155, !align !156
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !320
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !166
  %i.cf = and i32 %i.ce, 2064
  %i.cg = icmp eq i32 %i.cf, 2064
  br i1 %i.cg, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_M_at_beginEv.exit: ; preds = %bb.p, %bb.q
  %i.ch = getelementptr inbounds i8, ptr %i.bn, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !43
  %i.cj = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.ci)
  br i1 %i.cj, label %tailrecurse.backedge, label %common.ret

bb.r:                                             ; preds = %.lr.ph
  %i.ck = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.cl = load ptr, ptr %i.h, align 8, !tbaa !211
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %.split, label %bb.s

.split:                                           ; preds = %bb.r
  %i.cn = load i32, ptr %i.j, align 8, !tbaa !340
  %i.co = and i32 %i.cn, 2
  %.not.i28 = icmp eq i32 %i.co, 0
  br i1 %.not.i28, label %tailrecurse.backedge, label %common.ret

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !368, !nonnull !155, !align !156
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !320
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !166
  %i.cu = and i32 %i.ct, 2064
  %i.cv = icmp eq i32 %i.cu, 2064
  br i1 %i.cv, label %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit, label %common.ret

_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE9_M_at_endEv.exit: ; preds = %bb.s
  %i.cw = load i8, ptr %i.ck, align 1, !tbaa !43
  %i.cx = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE21_M_is_line_terminatorEc(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef signext %i.cw)
  br i1 %i.cx, label %tailrecurse.backedge, label %common.ret

bb.t:                                             ; preds = %.lr.ph
  %i.cy = tail call noundef zeroext i1 @_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE16_M_word_boundaryEv(ptr noundef nonnull align 8 dereferenceable(141) %0), !inline_history !787
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !43, !range !165, !noundef !155
  %i.db = zext i1 %i.cy to i8
  %.not.i = icmp eq i8 %i.da, %i.db
  br i1 %.not.i, label %common.ret, label %tailrecurse.backedge

bb.u:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !43
  %i.de = tail call noundef zeroext i1 @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i64 noundef %i.dd), !inline_history !788
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.dg = load i8, ptr %i.df, align 8, !tbaa !43, !range !165, !noundef !155
  %i.dh = zext i1 %i.de to i8
  %.not.i24 = icmp eq i8 %i.dg, %i.dh
  br i1 %.not.i24, label %common.ret, label %tailrecurse.backedge

bb.v:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.w:                                             ; preds = %.lr.ph
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE17_M_handle_backrefENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %.tr3751)
  br label %common.ret

bb.x:                                             ; preds = %.lr.ph
  %i.di = load ptr, ptr %i.g, align 8, !tbaa !211 ; 2 uses
  %i.dj = load ptr, ptr %i.k, align 8, !tbaa !211
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dl = load i32, ptr %i.j, align 8, !tbaa !340
  %i.dm = and i32 %i.dl, 32
  %.not.i25 = icmp eq i32 %i.dm, 0
  br i1 %.not.i25, label %bb.z, label %common.ret

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dn = icmp eq i8 %1, 1
  br i1 %i.dn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %i.h, align 8, !tbaa !211
  %i.dp = icmp eq ptr %i.di, %i.do
  br i1 %i.dp, label %bb.ab, label %common.ret

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.dq = load i8, ptr %i.m, align 4, !tbaa !366, !range !165, !noundef !155
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %common.ret, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.m, align 4, !tbaa !366
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !363, !nonnull !155, !align !156
  %i.du = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(141) %0) ; 0 uses
  br label %common.ret

bb.ad:                                            ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !166
  %i.dx = and i32 %i.dw, 16
  %.not.i88 = icmp eq i32 %i.dx, 0
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !43
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.dz), !inline_history !789
  %i.ea = load i8, ptr %i.m, align 4, !tbaa !366, !range !165, !noundef !155 ; 2 uses
  br i1 %.not.i88, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %common.ret, label %tailrecurse

tailrecurse:                                      ; preds = %bb.ae
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !107 ; 2 uses
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !343
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.ed ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !367, !range !165, !noundef !155
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %common.ret, label %.lr.ph.backedge

bb.af:                                            ; preds = %bb.ad
  store i8 0, ptr %i.m, align 4, !tbaa !366
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !107
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %i.ej), !inline_history !789
  %i.ek = load i8, ptr %i.m, align 4, !tbaa !366, !range !165, !noundef !155
  %i.el = or i8 %i.ek, %i.ea
  store i8 %i.el, ptr %i.m, align 4, !tbaa !366
  br label %common.ret
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE17_M_realloc_insertIJRlRKSF_EEEvNS4_IPSG_SI_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !344    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
  unreachable

_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %4, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %i.k = select i1 %i.i, i64 288230376151711743, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #36 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = load i64, ptr %2, align 8, !tbaa !44
  store i64 %i.q, ptr %i.p, align 8, !tbaa !365
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !361  ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !318    ; 3 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i.i.i.i.i, label %.noexc27, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.y = sdiv exact i64 %i.x, 24
  %i.z = icmp ugt i64 %i.y, 384307168202282325
  br i1 %i.z, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !55

.noexc.i.i.i:                                     ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #36
          to label %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge unwind label %bb.f

_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge: ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %3, align 8, !tbaa !312
  %.pre45 = load ptr, ptr %i.s, align 8, !tbaa !312
  br label %.noexc27

.noexc27:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit
  %i.ab = phi ptr [ %i.t, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %.pre45, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 2 uses
  %i.ac = phi ptr [ %i.u, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %.pre, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 2 uses
  %i.ad = phi ptr [ null, %_ZNKSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE12_M_check_lenEmS6_.exit ], [ %i.aa, %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i..noexc27_crit_edge ] ; 5 uses
  store ptr %i.ad, ptr %i.r, align 8, !tbaa !318
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !361
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !319
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ac, %i.ab
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc27, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ad, %.noexc27 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.noexc27 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !24

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc27
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc27 ], [ %i.ai, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ae, align 8, !tbaa !361
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.loopexit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i ], [ %i.o, %.loopexit ] ; 4 uses
  %.0911.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i ], [ %i.c, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !797)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.aj = load i64, ptr %.0911.i.i.i, align 8, !tbaa !365, !alias.scope !798, !noalias !797
  store i64 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !365, !alias.scope !797, !noalias !798
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !312, !alias.scope !798, !noalias !797
  store <2 x ptr> %i.am, ptr %i.ak, align 8, !tbaa !312, !alias.scope !797, !noalias !798
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !319, !alias.scope !798, !noalias !797
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !319, !alias.scope !797, !noalias !798
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false), !alias.scope !798, !noalias !797
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aq, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, label %.lr.ph.i.i.i, !llvm.loop !793

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit: ; preds = %.lr.ph.i.i.i, %.loopexit
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %.loopexit ], [ %i.ar, %.lr.ph.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bb, %.lr.ph.i.i.i29 ], [ %i.as, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  %.0911.i.i.i31 = phi ptr [ %i.ba, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.at = load i64, ptr %.0911.i.i.i31, align 8, !tbaa !365, !alias.scope !800, !noalias !799
  store i64 %i.at, ptr %.012.i.i.i30, align 8, !tbaa !365, !alias.scope !799, !noalias !800
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 8 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !312, !alias.scope !800, !noalias !799
  store <2 x ptr> %i.aw, ptr %i.au, align 8, !tbaa !312, !alias.scope !799, !noalias !800
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !319, !alias.scope !800, !noalias !799
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !319, !alias.scope !799, !noalias !800
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false), !alias.scope !800, !noalias !799
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 32 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !793

_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.as, %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit ], [ %i.bb, %.lr.ph.i.i.i29 ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !346
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bf) #35
  br label %_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit

_ZNSt12_Vector_baseISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEESaISH_EE13_M_deallocateEPSH_m.exit: ; preds = %_ZNSt6vectorISt4pairIlS_INSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS1_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISD_EEESaISG_EE11_S_relocateEPSG_SJ_SJ_RSH_.exit34, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !344
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !345
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.k
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !346
  ret void

bb.e:                                             ; preds = %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  %i.bk = tail call ptr @__cxa_begin_catch(ptr %i.bj) #32 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #35
  invoke void @__cxa_rethrow() #34
          to label %bb.i unwind label %bb.e

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.bh

bb.h:                                             ; preds = %bb.e
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  tail call void @__clang_call_terminate(ptr %i.bm) #33
  unreachable

bb.i:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE15_M_handle_matchENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(141) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !358, !nonnull !155, !align !156
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %2 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !211  ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !211
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i8, ptr %i.j, align 1, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.m, ptr %i.b, align 1, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !137
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #34
  unreachable

_ZNKSt8__detail6_StateIcE10_M_matchesEc.exit:     ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !136
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.b), !inline_history !801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.s, label %bb.d, label %bb.i

end_hunk_8
begin_hunk_9_@_Z34parser_validateAndParsePauliStrSumNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPKc:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !913
  br label %bb.ak

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %i.cv = icmp ugt i64 %i.cr, 9223372036854775792
  br i1 %i.cv, label %.noexc.i.i, label %_ZNSt15__new_allocatorI8PauliStrE8allocateEmPKv.exit.i.i.i.i, !prof !55

.noexc.i.i:                                       ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc43 unwind label %bb.ap

.noexc43:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI8PauliStrE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.o
  %i.cw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #36
          to label %.noexc44 unwind label %bb.ap  ; 5 uses

.noexc44:                                         ; preds = %_ZNSt15__new_allocatorI8PauliStrE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.cw, ptr %12, align 8, !tbaa !914
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !915
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cr ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !913
  %i.da = icmp samesign ugt i64 %i.cr, 16
  br i1 %i.da, label %bb.p, label %bb.q, !prof !276

bb.p:                                             ; preds = %.noexc44
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %.sroa.0.0.ph, i64 %i.cr, i1 false)
  br label %bb.ak

bb.q:                                             ; preds = %.noexc44
  %i.db = icmp eq i64 %i.cr, 16
  br i1 %i.db, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph, i64 16, i1 false), !tbaa.struct !916
  br label %bb.ak

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dd = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.e
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.s
  %i.df = load i64, ptr %i.e, align 8, !tbaa !43
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit101.thread166: ; preds = %_ZNSt12_Vector_baseISt7complexIdESaIS1_EE11_M_allocateEm.exit.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.thread149:                                       ; preds = %bb.g
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit101

.loopexit175:                                     ; preds = %bb.l, %.noexc36, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc.i52
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.t:                                             ; preds = %bb.m
  store ptr %i.bl, ptr %8, align 8, !tbaa !42
  %i.dj = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.dk = load i64, ptr %i.bk, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 %i.dk, ptr %i.b, align 8, !tbaa !44
  %i.dl = icmp ugt i64 %i.dk, 15
  br i1 %i.dl, label %.noexc.i52, label %._crit_edge.i.i51

.noexc.i52:                                       ; preds = %bb.t
  %i.dm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc53 unwind label %.loopexit175 ; 2 uses

.noexc53:                                         ; preds = %.noexc.i52
  store ptr %i.dm, ptr %8, align 8, !tbaa !40
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !44
  store i64 %i.dn, ptr %i.bl, align 8, !tbaa !43
  br label %._crit_edge.i.i51

._crit_edge.i.i51:                                ; preds = %.noexc53, %bb.t
  %i.do = phi ptr [ %i.dm, %.noexc53 ], [ %i.bl, %bb.t ] ; 2 uses
  switch i64 %i.dk, label %bb.v [
    i64 1, label %bb.u
    i64 0, label %bb.w
  ]

bb.u:                                             ; preds = %._crit_edge.i.i51
  %i.dp = load i8, ptr %i.dj, align 1, !tbaa !43
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !43
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr align 1 %i.dj, i64 %i.dk, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge.i.i51
  %i.dq = load i64, ptr %i.b, align 8, !tbaa !44  ; 2 uses
  store i64 %i.dq, ptr %i.bm, align 8, !tbaa !41
  %i.dr = load ptr, ptr %8, align 8, !tbaa !40
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 0, ptr %i.ds, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  %i.dt = call noundef zeroext i1 @_Z16isOnlyWhiteSpaceNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 dereferenceable(32) %8)
  %i.du = load ptr, ptr %8, align 8, !tbaa !40    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.bl
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55: ; preds = %bb.w
  %i.dw = load i64, ptr %i.bl, align 8, !tbaa !43
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
  br i1 %i.dt, label %bb.i, label %bb.x, !llvm.loop !906

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  store ptr %i.bn, ptr %11, align 8, !tbaa !42
  %i.dy = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.dz = load i64, ptr %i.bk, align 8, !tbaa !41 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.dz, ptr %i.a, align 8, !tbaa !44
  %i.ea = icmp ugt i64 %i.dz, 15
  br i1 %i.ea, label %.noexc.i62, label %._crit_edge.i.i61

.noexc.i62:                                       ; preds = %bb.x
  %i.eb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc63 unwind label %.loopexit176 ; 2 uses

.noexc63:                                         ; preds = %.noexc.i62
  store ptr %i.eb, ptr %11, align 8, !tbaa !40
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !44
  store i64 %i.ec, ptr %i.bn, align 8, !tbaa !43
  br label %._crit_edge.i.i61

._crit_edge.i.i61:                                ; preds = %.noexc63, %bb.x
  %i.ed = phi ptr [ %i.eb, %.noexc63 ], [ %i.bn, %bb.x ] ; 2 uses
  switch i64 %i.dz, label %bb.z [
    i64 1, label %bb.y
    i64 0, label %bb.aa
  ]

bb.y:                                             ; preds = %._crit_edge.i.i61
  %i.ee = load i8, ptr %i.dy, align 1, !tbaa !43
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !43
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge.i.i61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr align 1 %i.dy, i64 %i.dz, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %._crit_edge.i.i61
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  store i64 %i.ef, ptr %i.bo, align 8, !tbaa !41
  %i.eg = load ptr, ptr %11, align 8, !tbaa !40
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.ef
  store i8 0, ptr %i.eh, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  invoke void @_Z19parseWeightedPaulisNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt7complexIdER8PauliStrb(ptr nofree noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext %2)
          to label %bb.ab unwind label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.ei = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.bn
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %bb.ab
  %i.ek = load i64, ptr %i.bn, align 8, !tbaa !43
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  %.not.i68 = icmp eq ptr %.sroa.13127.0.ph, %.sroa.22133.0.ph
  br i1 %.not.i68, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13127.0.ph, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !167
  br label %_ZNSt6vectorISt7complexIdESaIS1_EE9push_backERKS1_.exit

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  %i.em = ptrtoint ptr %.sroa.13127.0.ph to i64
  %i.en = ptrtoint ptr %.sroa.0120.0.ph to i64
  %i.eo = sub i64 %i.em, %i.en                    ; 4 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775792
  br i1 %i.ep, label %bb.ae, label %_ZNKSt6vectorISt7complexIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
          to label %.noexc70.a unwind label %.loopexit.split-lp177

.noexc70.a:                                       ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt7complexIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.eq = ashr exact i64 %i.eo, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %14 = add nsw i64 %.sroa.speculated.i.i.i, %i.eq ; 2 uses
  %i.er = icmp ult i64 %14, %i.eq
  %i.es = call i64 @llvm.umin.i64(i64 %14, i64 576460752303423487)
  %i.et = select i1 %i.er, i64 576460752303423487, i64 %i.es ; 3 uses
  %.not.i.i.i69 = icmp ne i64 %i.et, 0
  call void @llvm.assume(i1 %.not.i.i.i69)
  %i.eu = shl nuw nsw i64 %i.et, 4
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #36
          to label %.noexc71 unwind label %.loopexit176 ; 5 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorISt7complexIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !167
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0120.0.ph, %.sroa.13127.0.ph
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc71, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %i.ev, %.noexc71 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i ], [ %.sroa.0120.0.ph, %.noexc71 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !167, !alias.scope !917
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ex, %.sroa.13127.0.ph
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt7complexIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !910

_ZNSt6vectorISt7complexIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc71
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ev, %.noexc71 ], [ %i.ey, %.lr.ph.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0120.0.ph, i64 noundef %i.eo) #35
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.et
  br label %_ZNSt6vectorISt7complexIdESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorISt7complexIdESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ac
  %.sroa.0120.9 = phi ptr [ %i.ev, %_ZNSt6vectorISt7complexIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0120.0.ph, %bb.ac ] ; 3 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt7complexIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13127.0.ph, %bb.ac ]
  %.sroa.22133.9 = phi ptr [ %i.ez, %_ZNSt6vectorISt7complexIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.22133.0.ph, %bb.ac ] ; 3 uses
  %.sroa.13127.2 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16
  %.not.i72 = icmp eq ptr %.sroa.13.0.ph, %.sroa.22.0.ph
  br i1 %.not.i72, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EE9push_backERKS1_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13.0.ph, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !916
  br label %_ZNSt6vectorI8PauliStrSaIS0_EE9push_backERKS0_.exit

bb.ag:                                            ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EE9push_backERKS1_.exit
  %i.fa = ptrtoint ptr %.sroa.13.0.ph to i64
  %i.fb = ptrtoint ptr %.sroa.0.0.ph to i64
  %i.fc = sub i64 %i.fa, %i.fb                    ; 6 uses
  %i.fd = icmp eq i64 %i.fc, 9223372036854775792
  br i1 %i.fd, label %bb.ah, label %_ZNKSt6vectorI8PauliStrSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #34
          to label %.noexc75 unwind label %.loopexit.split-lp177

.noexc75:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorI8PauliStrSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ag
  %i.fe = ashr exact i64 %i.fc, 4                 ; 3 uses
  %.sroa.speculated.i.i.i73 = call i64 @llvm.umax.i64(i64 %i.fe, i64 1)
  %15 = add nsw i64 %.sroa.speculated.i.i.i73, %i.fe ; 2 uses
  %i.ff = icmp ult i64 %15, %i.fe
  %i.fg = call i64 @llvm.umin.i64(i64 %15, i64 576460752303423487)
  %i.fh = select i1 %i.ff, i64 576460752303423487, i64 %i.fg ; 3 uses
  %.not.i.i.i74 = icmp ne i64 %i.fh, 0
  call void @llvm.assume(i1 %.not.i.i.i74)
  %i.fi = shl nuw nsw i64 %i.fh, 4
  %i.fj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #36
          to label %.noexc76 unwind label %.loopexit176 ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorI8PauliStrSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 %i.fc ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !916
  %i.fl = icmp sgt i64 %i.fc, 0
  br i1 %i.fl, label %bb.ai, label %_ZNSt6vectorI8PauliStrSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

bb.ai:                                            ; preds = %.noexc76
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fj, ptr align 8 %.sroa.0.0.ph, i64 %i.fc, i1 false)
  br label %_ZNSt6vectorI8PauliStrSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI8PauliStrSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.ai, %.noexc76
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.ph, i64 noundef %i.fc) #35
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.fh
  br label %_ZNSt6vectorI8PauliStrSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI8PauliStrSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI8PauliStrSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.af
  %.sroa.0.4 = phi ptr [ %i.fj, %_ZNSt6vectorI8PauliStrSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.0.0.ph, %bb.af ]
  %.pn174 = phi ptr [ %i.fk, %_ZNSt6vectorI8PauliStrSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.13.0.ph, %bb.af ]
  %.sroa.22.4 = phi ptr [ %i.fm, %_ZNSt6vectorI8PauliStrSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %.sroa.22.0.ph, %bb.af ]
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn174, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %.outer, !llvm.loop !906

.loopexit176:                                     ; preds = %.noexc.i62, %_ZNKSt6vectorISt7complexIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorI8PauliStrSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.22.0.ph.lcssa248 = phi ptr [ %.sroa.22.0.ph, %.noexc.i62 ], [ %.sroa.22.0.ph, %_ZNKSt6vectorISt7complexIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.13.0.ph, %_ZNKSt6vectorI8PauliStrSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.0120.1.ph = phi ptr [ %.sroa.0120.0.ph, %.noexc.i62 ], [ %.sroa.0120.0.ph, %_ZNKSt6vectorISt7complexIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.0120.9, %_ZNKSt6vectorI8PauliStrSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.22133.1.ph = phi ptr [ %.sroa.22133.0.ph, %.noexc.i62 ], [ %.sroa.13127.0.ph, %_ZNKSt6vectorISt7complexIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.22133.9, %_ZNKSt6vectorI8PauliStrSaIS0_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit180 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

.loopexit.split-lp177:                            ; preds = %bb.ae, %bb.ah
  %.sroa.22.0.ph255 = phi ptr [ %.sroa.13.0.ph, %bb.ah ], [ %.sroa.22.0.ph, %bb.ae ]
  %.sroa.0120.1.ph178 = phi ptr [ %.sroa.0120.9, %bb.ah ], [ %.sroa.0120.0.ph, %bb.ae ]
  %.sroa.22133.1.ph179 = phi ptr [ %.sroa.22133.9, %bb.ah ], [ %.sroa.13127.0.ph, %bb.ae ]
  %lpad.loopexit.split-lp181 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

bb.aj:                                            ; preds = %bb.aa
  %i.fn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fo = load ptr, ptr %11, align 8, !tbaa !40   ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.bn
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.aj
  %i.fq = load i64, ptr %i.bn, align 8, !tbaa !43
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.aj, %.loopexit176, %.loopexit.split-lp177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77
  %.sroa.22.0.ph254 = phi ptr [ %.sroa.22.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.sroa.22.0.ph255, %.loopexit.split-lp177 ], [ %.sroa.22.0.ph.lcssa248, %.loopexit176 ], [ %.sroa.22.0.ph, %bb.aj ]
  %.sroa.0120.2 = phi ptr [ %.sroa.0120.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.sroa.0120.1.ph178, %.loopexit.split-lp177 ], [ %.sroa.0120.1.ph, %.loopexit176 ], [ %.sroa.0120.0.ph, %bb.aj ]
  %.sroa.22133.2 = phi ptr [ %.sroa.22133.0.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.sroa.22133.1.ph179, %.loopexit.split-lp177 ], [ %.sroa.22133.1.ph, %.loopexit176 ], [ %.sroa.22133.0.ph, %bb.aj ]
  %.pn15 = phi { ptr, i32 } [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %lpad.loopexit.split-lp181, %.loopexit.split-lp177 ], [ %lpad.loopexit180, %.loopexit176 ], [ %i.fn, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %.loopexit175, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.sroa.22.0.ph253 = phi ptr [ %.sroa.22.0.ph254, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.sroa.22.0.ph, %.loopexit175 ], [ %.sroa.22.0.ph, %.loopexit.split-lp ]
  %.sroa.0120.3 = phi ptr [ %.sroa.0120.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.sroa.0120.0.ph, %.loopexit175 ], [ %.sroa.0120.0.ph, %.loopexit.split-lp ]
  %.sroa.22133.3 = phi ptr [ %.sroa.22133.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.sroa.22133.0.ph, %.loopexit175 ], [ %.sroa.22133.0.ph, %.loopexit.split-lp ]
  %.pn15.pn = phi { ptr, i32 } [ %.pn15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %lpad.loopexit, %.loopexit175 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fs = load ptr, ptr %7, align 8, !tbaa !40    ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.bj
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
  %i.fu = load i64, ptr %i.bj, align 8, !tbaa !43
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.au

bb.ak:                                            ; preds = %bb.r, %bb.q, %bb.p, %.thread
  %i.fw = phi ptr [ %i.cz, %bb.p ], [ %i.cz, %bb.q ], [ %i.cz, %bb.r ], [ %i.cu, %.thread ] ; 2 uses
  %i.fx = phi ptr [ %i.cy, %bb.p ], [ %i.cy, %bb.q ], [ %i.cy, %bb.r ], [ %i.ct, %.thread ]
  %i.fy = phi ptr [ %i.cx, %bb.p ], [ %i.cx, %bb.q ], [ %i.cx, %bb.r ], [ %i.cs, %.thread ]
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !915
  %i.fz = ptrtoint ptr %.sroa.13127.0.ph to i64
  %i.ga = ptrtoint ptr %.sroa.0120.0.ph to i64    ; 2 uses
  %i.gb = sub i64 %i.fz, %i.ga                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %.not.i.i.i.i83 = icmp eq ptr %.sroa.13127.0.ph, %.sroa.0120.0.ph
  br i1 %.not.i.i.i.i83, label %.noexc89.thread, label %bb.al

.noexc89.thread:                                  ; preds = %bb.ak
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr null, i64 %i.gb
  %i.ge = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store ptr %i.gd, ptr %i.ge, align 8, !tbaa !920
  br label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.gf = icmp ugt i64 %i.gb, 9223372036854775792
  br i1 %i.gf, label %.noexc.i.i87, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i, !prof !55

.noexc.i.i87:                                     ; preds = %bb.al
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #34
          to label %.noexc88 unwind label %bb.aq

.noexc88:                                         ; preds = %.noexc.i.i87
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.al
  %i.gg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #36
          to label %.noexc89 unwind label %bb.aq  ; 4 uses

.noexc89:                                         ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i
  store ptr %i.gg, ptr %13, align 8, !tbaa !921
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !922
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gb
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !920
  br label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %.noexc89, %.lr.ph.i.i.i.i.i84
  %.09.i.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i84 ], [ %i.gg, %.noexc89 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.gk, %.lr.ph.i.i.i.i.i84 ], [ %.sroa.0120.0.ph, %.noexc89 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !167
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i85 = icmp eq ptr %i.gk, %.sroa.13127.0.ph
  br i1 %.not.i.i.i.i.i85, label %.loopexit, label %.lr.ph.i.i.i.i.i84, !llvm.loop !911

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i84, %.noexc89.thread
  %i.gm = phi ptr [ %i.ge, %.noexc89.thread ], [ %i.gj, %.lr.ph.i.i.i.i.i84 ] ; 2 uses
  %i.gn = phi ptr [ %i.gc, %.noexc89.thread ], [ %i.gh, %.lr.ph.i.i.i.i.i84 ]
  %.0.lcssa.i.i.i.i.i86 = phi ptr [ null, %.noexc89.thread ], [ %i.gl, %.lr.ph.i.i.i.i.i84 ]
  store ptr %.0.lcssa.i.i.i.i.i86, ptr %i.gn, align 8, !tbaa !922
  invoke void @_Z17createPauliStrSumSt6vectorI8PauliStrSaIS0_EES_ISt7complexIdESaIS4_EE(ptr dead_on_unwind writable sret(%struct.PauliStrSum) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %12, ptr nofree noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %.loopexit
  %i.go = load ptr, ptr %13, align 8, !tbaa !921  ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i90, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gp = load ptr, ptr %i.gm, align 8, !tbaa !920
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.go to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %i.go, i64 noundef %i.gs) #35
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit:      ; preds = %bb.am, %bb.an
  %i.gt = load ptr, ptr %12, align 8, !tbaa !914  ; 3 uses
  %.not.i.i.i91 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i91, label %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit
  %i.gu = load ptr, ptr %i.fw, align 8, !tbaa !913
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gv, %i.gw
  call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #35
  br label %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit

_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit:          ; preds = %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit, %bb.ao
  %i.gy = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.gy, ptr %6, align 8, !tbaa !53
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ha = getelementptr i8, ptr %i.gy, i64 -24
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = getelementptr inbounds i8, ptr %6, i64 %i.hb
  store ptr %i.gz, ptr %i.hc, align 8, !tbaa !53
  %i.hd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !53
  %i.hf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.hf, align 8, !tbaa !53
  %i.hg = getelementptr inbounds nuw i8, ptr %6, i64 96
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !40 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit95.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit
  %i.hk = load i64, ptr %i.hi, align 8, !tbaa !43
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hh, i64 noundef %i.hl) #35
  br label %_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit95.a

_ZNSt6vectorISt7complexIdESaIS1_EED2Ev.exit95.a:  ; preds = %_ZNSt6vectorI8PauliStrSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.hf, align 8, !tbaa !53
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 80
end_hunk_9
