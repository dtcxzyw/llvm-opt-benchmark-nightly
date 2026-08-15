inline.NumInlined: 833
inline.NumDeleted: 396
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS1_6FlagOpEPKvS5_S5_:bb.a

._crit_edge.i.i.i.i.i:                            ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !46, !alias.scope !76
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !26, !alias.scope !76
  store i8 0, ptr %i.n, align 8, !tbaa !18, !alias.scope !76
  br label %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN4absl12lts_2025051211UnparseFlagISt8optionalIbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.thread.i.i.i, %._crit_edge.i.i.i.i.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !13     ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  %i.s = load ptr, ptr %4, align 8, !tbaa !13     ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.u = icmp eq ptr %i.s, %i.t                   ; 2 uses
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  br i1 %i.u, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIbEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  br i1 %i.u, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %.not21.i = icmp eq ptr %4, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  switch i64 %i.w, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.y = load i8, ptr %i.s, align 1, !tbaa !18
  store i8 %i.y, ptr %i.p, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.z = load i64, ptr %i.v, align 8, !tbaa !26   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !26
  %i.ab = load ptr, ptr %2, align 8, !tbaa !13
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.s, ptr %2, align 8, !tbaa !13
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load <2 x i64>, ptr %i.ae, align 8, !tbaa !18
  store <2 x i64> %i.af, ptr %i.ad, align 8, !tbaa !18
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !18
  store ptr %i.s, ptr %2, align 8, !tbaa !13
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !18
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.p, ptr %4, align 8, !tbaa !13
  store i64 %i.ag, ptr %i.t, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.t, ptr %4, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.ak = phi ptr [ %i.p, %bb.o ], [ %i.t, %bb.p ], [ %i.s, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.al, align 8, !tbaa !26
  store i8 0, ptr %i.ak, align 1, !tbaa !18
  %i.am = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.q:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.r:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIbEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit: ; preds = %bb.b, %_ZN4absl12lts_202505129ParseFlagISt8optionalIbEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread, %_ZN4absl12lts_202505129ParseFlagISt8optionalIbEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit, %bb.a, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.1 = phi ptr [ null, %bb.r ], [ inttoptr (i64 2 to ptr), %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ inttoptr (i64 88 to ptr), %bb.q ], [ @_ZN4absl12lts_2025051213base_internal11FastTypeTagISt8optionalIbEE9kDummyVarE, %bb.f ], [ @_ZTISt8optionalIbE, %bb.g ], [ %i.b, %bb.b ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %_ZN4absl12lts_202505129ParseFlagISt8optionalIbEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread ], [ null, %_ZN4absl12lts_202505129ParseFlagISt8optionalIbEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN45AbslFlagDefaultGenForgrpc_enable_fork_support3GenEPv(ptr noundef %0) #0 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN39AbslFlagDefaultGenForgrpc_poll_strategy3GenEPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN39AbslFlagDefaultGenForgrpc_poll_strategyD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN40AbslFlagDefaultGenForgrpc_abort_on_leaks3GenEPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN46AbslFlagDefaultGenForgrpc_system_ssl_roots_dir3GenEPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN46AbslFlagDefaultGenForgrpc_system_ssl_roots_dirD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN53AbslFlagDefaultGenForgrpc_default_ssl_roots_file_path3GenEPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN53AbslFlagDefaultGenForgrpc_default_ssl_roots_file_pathD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN65AbslFlagDefaultGenForgrpc_use_system_roots_over_language_callback3GenEPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN50AbslFlagDefaultGenForgrpc_not_use_system_ssl_roots3GenEPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN43AbslFlagDefaultGenForgrpc_ssl_cipher_suites3GenEPv(ptr noundef %0) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN43AbslFlagDefaultGenForgrpc_ssl_cipher_suitesD2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN61AbslFlagDefaultGenForgrpc_cpp_experimental_disable_reflection3GenEPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN53AbslFlagDefaultGenForgrpc_channelz_max_orphaned_nodes3GenEPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  store i64 0, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN46AbslFlagDefaultGenForgrpc_channelz_call_tracer3GenEPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  store i16 0, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS1_6FlagOpEPKvS5_S5_(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  switch i32 %0, label %bb.r [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.h
    i32 8, label %bb.j
    i32 9, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #16
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef %2, i64 noundef 16) #17
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.f:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.h:                                             ; preds = %bb.a
  %.sroa.0.0.copyload23 = load double, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %.sroa.7.sroa.0.0.copyload = load <7 x i8>, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !24 ; 2 uses
  %i.c = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.c, label %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2025051214flags_internal13AbslParseFlagESt17basic_string_viewIcSt11char_traitsIcEEPdPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull %i.a, ptr noundef %3)
  br i1 %i.d, label %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread35, label %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit

_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread35: ; preds = %bb.i
  %i.e = load double, ptr %i.a, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread

_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread: ; preds = %bb.h, %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread35
  %.sroa.0.134 = phi double [ %i.e, %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread35 ], [ %.sroa.0.0.copyload23, %bb.h ]
  %.sroa.5.133 = phi i8 [ 1, %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread35 ], [ 0, %bb.h ]
  store double %.sroa.0.134, ptr %2, align 8
  store i8 %.sroa.5.133, ptr %.sroa.5.0..sroa_idx, align 8
  store <7 x i8> %.sroa.7.sroa.0.0.copyload, ptr %.sroa.7.0..sroa_idx, align 1
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !91, !range !40, !noalias !93, !noundef !42
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %.thread.i.i.i, label %._crit_edge.i.i.i.i.i

.thread.i.i.i:                                    ; preds = %bb.j
  %i.i = load double, ptr %1, align 8, !tbaa !80, !noalias !94
  call void @_ZN4absl12lts_2025051214flags_internal7UnparseB5cxx11Ed(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, double noundef %i.i)
  br label %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

._crit_edge.i.i.i.i.i:                            ; preds = %bb.j
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !46, !alias.scope !93
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !26, !alias.scope !93
  store i8 0, ptr %i.j, align 8, !tbaa !18, !alias.scope !93
  br label %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit

_ZN4absl12lts_2025051211UnparseFlagISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit: ; preds = %.thread.i.i.i, %._crit_edge.i.i.i.i.i
  %i.l = load ptr, ptr %2, align 8, !tbaa !13     ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %i.o = load ptr, ptr %4, align 8, !tbaa !13     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.q = icmp eq ptr %i.o, %i.p                   ; 2 uses
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  br i1 %i.q, label %bb.k, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN4absl12lts_2025051211UnparseFlagISt8optionalIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_.exit
  br i1 %i.q, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !26   ; 3 uses
  %i.t = icmp ult i64 %i.s, 16
  call void @llvm.assume(i1 %i.t)
  %.not21.i = icmp eq ptr %4, %2
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  switch i64 %i.s, label %bb.n [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.u = load i8, ptr %i.o, align 1, !tbaa !18
  store i8 %i.u, ptr %i.l, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.n, %bb.m, %bb.l
  %i.v = load i64, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !26
  %i.x = load ptr, ptr %2, align 8, !tbaa !13
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !18
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.o, ptr %2, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load <2 x i64>, ptr %i.aa, align 8, !tbaa !18
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !18
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !18
  store ptr %i.o, ptr %2, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load <2 x i64>, ptr %i.ad, align 8, !tbaa !18
  store <2 x i64> %i.af, ptr %i.ae, align 8, !tbaa !18
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.l, ptr %4, align 8, !tbaa !13
  store i64 %i.ac, ptr %i.p, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.p, ptr %4, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.o, %bb.p
  %i.ag = phi ptr [ %i.l, %bb.o ], [ %i.p, %bb.p ], [ %i.o, %bb.k ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !26
  store i8 0, ptr %i.ag, align 1, !tbaa !18
  %i.ai = load ptr, ptr %4, align 8, !tbaa !13    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.q:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

bb.r:                                             ; preds = %bb.a
  br label %_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit

_ZNSt16allocator_traitsISaIZN4absl12lts_2025051214flags_internal7FlagOpsISt8optionalIdEEEPvNS2_6FlagOpEPKvS6_S6_E12AlignedSpaceEE8allocateERSB_m.exit: ; preds = %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread, %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit, %bb.b, %bb.a, %bb.r, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.1 = phi ptr [ null, %bb.r ], [ inttoptr (i64 16 to ptr), %bb.a ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.e ], [ inttoptr (i64 88 to ptr), %bb.q ], [ @_ZN4absl12lts_2025051213base_internal11FastTypeTagISt8optionalIdEE9kDummyVarE, %bb.f ], [ @_ZTISt8optionalIdE, %bb.g ], [ %i.b, %bb.b ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %2, %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit.thread ], [ null, %_ZN4absl12lts_202505129ParseFlagISt8optionalIdEEEbSt17basic_string_viewIcSt11char_traitsIcEEPT_PNSt7__cxx1112basic_stringIcS6_SaIcEEE.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN61AbslFlagDefaultGenForgrpc_experimental_target_memory_pressure3GenEPv(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN64AbslFlagDefaultGenForgrpc_experimental_memory_pressure_threshold3GenEPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN65AbslFlagDefaultGenForgrpc_chaotic_good_metrics_update_interval_ms3GenEPv(ptr noundef %0) #2 comdat align 2 {
bb.a:
  store i64 0, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9grpc_core10ConfigVarsC2ERKNS0_9OverridesE(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 12), (16, 38)) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %union.U.78, align 8                ; 7 uses
  %3 = alloca %union.U.78, align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !37, !range !40, !noundef !42
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !27
  br label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_grpc_client_channel_backup_poll_interval_ms, i64 88) acquire, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.g, -6076574518398440533
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef i64 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(96) @FLAGS_grpc_client_channel_backup_poll_interval_ms)
  br label %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i

_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.i.i.i.i to i32
  %i.i = and i64 %.sroa.0.0.i.i.i.i, 4294967296
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %bb.e, label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i
  %i.j = tail call noundef i32 @_ZN9grpc_core17LoadConfigFromEnvESt17basic_string_viewIcSt11char_traitsIcEEi(i64 43, ptr nonnull @.str.51, i32 noundef 5000)
  br label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit

_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit: ; preds = %bb.b, %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i, %bb.e
  %.1.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.e ], [ %.sroa.0.0.extract.trunc.i, %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i ]
  store i32 %.1.i, ptr %0, align 8, !tbaa !97
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.m = load i8, ptr %i.l, align 4, !tbaa !37, !range !40, !noundef !42
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !27
  br label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit39

bb.g:                                             ; preds = %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit
  %i.q = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_grpc_channelz_max_orphaned_nodes, i64 88) acquire, align 8 ; 2 uses
  %.not.i.i.i.i33 = icmp eq i64 %i.q, -6076574518398440533
  br i1 %.not.i.i.i.i33, label %bb.h, label %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i34, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.r = tail call noundef i64 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(96) @FLAGS_grpc_channelz_max_orphaned_nodes)
  br label %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i34

_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i34: ; preds = %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i35 = phi i64 [ %i.q, %bb.g ], [ %i.r, %bb.h ] ; 2 uses
  %.sroa.0.0.extract.trunc.i36 = trunc i64 %.sroa.0.0.i.i.i.i35 to i32
  %i.s = and i64 %.sroa.0.0.i.i.i.i35, 4294967296
  %.not.i37 = icmp eq i64 %i.s, 0
  br i1 %.not.i37, label %bb.i, label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit39

bb.i:                                             ; preds = %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i34
  %i.t = tail call noundef i32 @_ZN9grpc_core17LoadConfigFromEnvESt17basic_string_viewIcSt11char_traitsIcEEi(i64 32, ptr nonnull @.str.52, i32 noundef 0)
  br label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit39

_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit39: ; preds = %bb.f, %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i34, %bb.i
  %.1.i38 = phi i32 [ %i.p, %bb.f ], [ %i.t, %bb.i ], [ %.sroa.0.0.extract.trunc.i36, %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i34 ]
  store i32 %.1.i38, ptr %i.k, align 4, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load i8, ptr %i.v, align 4, !tbaa !37, !range !40, !noundef !42
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit39
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27
  br label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit46

bb.k:                                             ; preds = %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit39
  %i.aa = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_grpc_chaotic_good_metrics_update_interval_ms, i64 88) acquire, align 8 ; 2 uses
  %.not.i.i.i.i40 = icmp eq i64 %i.aa, -6076574518398440533
  br i1 %.not.i.i.i.i40, label %bb.l, label %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i41, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.ab = tail call noundef i64 @_ZNK4absl12lts_2025051214flags_internal8FlagImpl11ReadOneWordEv(ptr noundef nonnull align 8 dereferenceable(96) @FLAGS_grpc_chaotic_good_metrics_update_interval_ms)
  br label %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i41

_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i41: ; preds = %bb.l, %bb.k
  %.sroa.0.0.i.i.i.i42 = phi i64 [ %i.aa, %bb.k ], [ %i.ab, %bb.l ] ; 2 uses
  %.sroa.0.0.extract.trunc.i43 = trunc i64 %.sroa.0.0.i.i.i.i42 to i32
  %i.ac = and i64 %.sroa.0.0.i.i.i.i42, 4294967296
  %.not.i44 = icmp eq i64 %i.ac, 0
  br i1 %.not.i44, label %bb.m, label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit46

bb.m:                                             ; preds = %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i41
  %i.ad = tail call noundef i32 @_ZN9grpc_core17LoadConfigFromEnvESt17basic_string_viewIcSt11char_traitsIcEEi(i64 44, ptr nonnull @.str.53, i32 noundef 100)
  br label %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit46

_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit46: ; preds = %bb.j, %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i41, %bb.m
  %.1.i45 = phi i32 [ %i.z, %bb.j ], [ %i.ad, %bb.m ], [ %.sroa.0.0.extract.trunc.i43, %_ZN4absl12lts_202505127GetFlagISt8optionalIiEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i41 ]
  store i32 %.1.i45, ptr %i.u, align 8, !tbaa !104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !91, !range !40, !noundef !42
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit46
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !80
  br label %_ZN9grpc_core10LoadConfigIddEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit

bb.o:                                             ; preds = %_ZN9grpc_core10LoadConfigIiiEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ak = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_grpc_experimental_target_memory_pressure, i64 56) acquire, align 8 ; 2 uses
  %i.al = and i64 %i.ak, 1
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.i.i.i.i, label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.thread.i.i.i.i, !prof !105

_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.i.i.i.i: ; preds = %bb.o
  %i.am = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_grpc_experimental_target_memory_pressure, i64 88) monotonic, align 8
  store i64 %i.am, ptr %3, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_grpc_experimental_target_memory_pressure, i64 96) monotonic, align 8
  store i64 %i.ao, ptr %i.an, align 8
  fence acquire
  %i.ap = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_grpc_experimental_target_memory_pressure, i64 56) monotonic, align 8
  %i.aq = icmp eq i64 %i.ak, %i.ap
  br i1 %i.aq, label %_ZN4absl12lts_202505127GetFlagISt8optionalIdEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i, label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.thread.i.i.i.i, !prof !106

_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.thread.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.i.i.i.i, %bb.o
  call void @_ZNK4absl12lts_2025051214flags_internal8FlagImpl4ReadEPv(ptr noundef nonnull align 8 dereferenceable(104) @FLAGS_grpc_experimental_target_memory_pressure, ptr noundef nonnull %3)
  br label %_ZN4absl12lts_202505127GetFlagISt8optionalIdEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i

_ZN4absl12lts_202505127GetFlagISt8optionalIdEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i: ; preds = %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.thread.i.i.i.i, %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i = load double, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.ar = trunc nuw i8 %.sroa.2.0.copyload.i.i.i.i to i1
  br i1 %i.ar, label %_ZN9grpc_core10LoadConfigIddEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_202505127GetFlagISt8optionalIdEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i
  %i.as = call noundef double @_ZN9grpc_core17LoadConfigFromEnvESt17basic_string_viewIcSt11char_traitsIcEEd(i64 40, ptr nonnull @.str.54, double noundef f0x3FEE666666666666)
  br label %_ZN9grpc_core10LoadConfigIddEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit

_ZN9grpc_core10LoadConfigIddEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit: ; preds = %bb.n, %_ZN4absl12lts_202505127GetFlagISt8optionalIdEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i, %bb.p
  %.1.i47 = phi double [ %i.aj, %bb.n ], [ %i.as, %bb.p ], [ %.sroa.0.0.copyload.i.i.i.i, %_ZN4absl12lts_202505127GetFlagISt8optionalIdEEET_RKNS0_14flags_internal4FlagIS4_EE.exit.i ]
  store double %.1.i47, ptr %i.ae, align 8, !tbaa !107
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.av = load i8, ptr %i.au, align 8, !tbaa !91, !range !40, !noundef !42
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN9grpc_core10LoadConfigIddEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !80
  br label %_ZN9grpc_core10LoadConfigIddEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit56

bb.r:                                             ; preds = %_ZN9grpc_core10LoadConfigIddEET_RKN4absl12lts_2025051214flags_internal4FlagISt8optionalIS1_EEESt17basic_string_viewIcSt11char_traitsIcEERKS7_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.az = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @FLAGS_grpc_experimental_memory_pressure_threshold, i64 56) acquire, align 8 ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not.i.i.i.i.i.i48 = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i.i.i.i48, label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.i.i.i.i55, label %_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.thread.i.i.i.i49, !prof !105

_ZNK4absl12lts_2025051214flags_internal9FlagValueISt8optionalIdELNS1_20FlagValueStorageKindE2EE3GetERKNS1_12SequenceLockERS4_.exit.i.i.i.i55: ; preds = %bb.r
end_hunk_0
