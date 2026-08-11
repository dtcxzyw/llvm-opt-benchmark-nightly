inline.NumInlined: 4972
inline.NumDeleted: 904
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNSt12__shared_ptrIK18colvar_grid_paramsLN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EE5resetIS0_EENSt9enable_ifIXsr21__sp_is_constructibleIS0_T_EE5valueEvE4typeEPS6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #24 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(728) %1) #24, !inline_history !791
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #26
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #28
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.l, align 8, !tbaa !246
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !248
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIP20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.n, align 8, !tbaa !792
  store ptr %1, ptr %0, align 8, !tbaa !794
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !245  ; 8 uses
  store ptr %i.a, ptr %i.o, align 8, !tbaa !245
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8, !tbaa !246
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !248
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #24, !inline_history !795
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #24, !inline_history !795
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !250
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !251

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #24
  br label %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrI20colvar_grid_gradientLN9__gnu_cxx12_Lock_policyE2EEC2IS0_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

declare void @_ZN20colvar_grid_gradientC1ERSt6vectorIP6colvarSaIS2_EESt10shared_ptrI17colvar_grid_countES6_IK18colvar_grid_paramsENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(728), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef align 8, ptr noundef align 8, ptr noundef align 8) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrI17colvar_grid_countLN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !245  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !246
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !248
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !790
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24, !inline_history !790
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !250
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !251

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #24
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN15colvarbias_meta20init_replicas_paramsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(896) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.h = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 0 uses
  %i.i = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !270
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !264  ; 6 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !265  ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = icmp eq ptr %i.l, %i.m
  br i1 %i.q, label %bb.b, label %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE9push_backEOS1_.exit

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !541
  %.not.i.i = icmp eq ptr %i.l, %i.s
  br i1 %.not.i.i, label %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.l, align 8, !tbaa !266
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.t, ptr %i.k, align 8, !tbaa !264
  br label %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP15colvarbias_metaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.b
  %i.u = add nuw nsw i64 %i.p, 1                  ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #27 ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.p ; 2 uses
  store ptr %0, ptr %i.x, align 8, !tbaa !266
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #25
  br label %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP15colvarbias_metaSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.w, ptr %i.j, align 8, !tbaa !265
  store ptr %i.y, ptr %i.k, align 8, !tbaa !264
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.z, ptr %i.r, align 8, !tbaa !541
  br label %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP15colvarbias_metaSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.c, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !186
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.br, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP15colvarbias_metaSaIS1_EE9push_backEOS1_.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !10
  %i.ad = getelementptr i8, ptr %i.ac, i64 -32
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 155 ; 5 uses
  %i.ah = tail call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRbRKbNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.38, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i32 noundef 131078)
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %0, align 8, !tbaa !10
  %i.aj = getelementptr i8, ptr %i.ai, i64 -32
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = tail call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRbRKbNS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, ptr noundef nonnull align 1 dereferenceable(1) %i.ag, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !796, !range !184, !noundef !185
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 154 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !256, !range !184, !noundef !185
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %.noexc.i

.noexc.i:                                         ; preds = %bb.h
  store i8 1, ptr %i.ap, align 2, !tbaa !256
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.as, ptr %2, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 32, ptr %i.f, align 8, !tbaa !16
  %i.at = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.at, ptr %2, align 8, !tbaa !18
  %i.au = load i64, ptr %i.f, align 8, !tbaa !16  ; 3 uses
  store i64 %i.au, ptr %i.as, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.at, ptr noundef nonnull align 1 dereferenceable(32) @.str.40, i64 32, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !21
  %i.aw = load ptr, ptr %2, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  invoke void @_ZN12colvarmodule3logERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %.noexc
  %i.ay = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.as
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !20
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

bb.k:                                             ; preds = %.noexc
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.as
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.k
  %i.bg = load i64, ptr %i.as, align 8, !tbaa !20
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58 ], [ %i.bd, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h, %bb.g
  %i.bi = load ptr, ptr %0, align 8, !tbaa !10
  %i.bj = getelementptr i8, ptr %i.bi, i64 -32
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %0, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 7 uses
  %i.bn = call noundef zeroext i1 @_ZN11colvarparse10get_keyvalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcRS5_S7_NS_10Parse_ModeE(ptr noundef nonnull align 8 dereferenceable(320) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i32 noundef 131078) ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !21
  %.not36 = icmp eq i64 %i.bp, 0
  br i1 %.not36, label %bb.m, label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 800 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(24) %i.bq)
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.n, label %.noexc.i81

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef i32 %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.bq)
  store i32 %i.bz, ptr %i.g, align 4, !tbaa !250
  call void @_ZN12colvarmodule6to_strB5cxx11ERKimm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.g, i64 noundef 0, i64 noundef 0)
  %i.ca = load ptr, ptr %i.bm, align 8, !tbaa !18 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  %i.cd = load ptr, ptr %3, align 8, !tbaa !18    ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce                ; 2 uses
  br i1 %i.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.n
  br i1 %i.cf, label %bb.o, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.n
  br i1 %i.cf, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !21 ; 3 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  switch i64 %i.ch, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.cj = load i8, ptr %i.cd, align 1, !tbaa !20
  store i8 %i.cj, ptr %i.ca, align 1, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.ck = load i64, ptr %i.cg, align 8, !tbaa !21 ; 2 uses
  store i64 %i.ck, ptr %i.bo, align 8, !tbaa !21
  %i.cl = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 0, ptr %i.cm, align 1, !tbaa !20
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cd, ptr %i.bm, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load <2 x i64>, ptr %i.cn, align 8, !tbaa !20
  store <2 x i64> %i.co, ptr %i.bo, align 8, !tbaa !20
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cp = load i64, ptr %i.cb, align 8, !tbaa !20
  store ptr %i.cd, ptr %i.bm, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cr = load <2 x i64>, ptr %i.cq, align 8, !tbaa !20
  store <2 x i64> %i.cr, ptr %i.bo, align 8, !tbaa !20
end_hunk_0
