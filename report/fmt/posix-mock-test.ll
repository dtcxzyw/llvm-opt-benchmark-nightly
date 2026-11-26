Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/posix-mock-test?download=true
inline.NumInlined: 1355
inline.NumDeleted: 465
begin_hunk_0_@_ZN25file_test_open_retry_Test8TestBodyEv:bb.a
  br label %bb.z

bb.r:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60  ; 4 uses
  %.not.i.i15 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i15, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.s
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !20
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.r, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  store i32 0, ptr @_ZN12_GLOBAL__N_110open_countE, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i8 0, ptr %i.b, align 1, !tbaa !20
  %i.ag = load ptr, ptr %1, align 8, !tbaa !70
  %i.ah = invoke noundef i64 @_ZN3fmt3v124file4readEPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.ag, ptr noundef nonnull %i.b, i64 noundef 1)
          to label %bb.t unwind label %bb.aa      ; 0 uses

bb.t:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.ai = load ptr, ptr %1, align 8, !tbaa !70    ; 3 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3fmt3v124fileESt14default_deleteIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !22 ; 2 uses
  %.not.i.i18 = icmp eq i32 %i.aj, -1
  br i1 %.not.i.i18, label %_ZNKSt14default_deleteIN3fmt3v124fileEEclEPS2_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = invoke i32 @close(i32 noundef %i.aj)
          to label %.noexc.i.i unwind label %bb.y

.noexc.i.i:                                       ; preds = %bb.v
  %i.al = load i32, ptr @_ZN12_GLOBAL__N_111close_countE, align 4, !tbaa !19 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i, label %_ZN4test5closeEi.exit.i.i, label %bb.w

bb.w:                                             ; preds = %.noexc.i.i
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr @_ZN12_GLOBAL__N_111close_countE, align 4, !tbaa !19
  %.not4.i.i.i = icmp eq i32 %i.al, 3
  br i1 %.not4.i.i.i, label %_ZN4test5closeEi.exit.i.i, label %_ZN4test5closeEi.exit.thread.i.i

_ZN4test5closeEi.exit.thread.i.i:                 ; preds = %bb.w
  %i.an = tail call ptr @__errno_location() #26
  store i32 4, ptr %i.an, align 4, !tbaa !19
  br label %bb.x

_ZN4test5closeEi.exit.i.i:                        ; preds = %bb.w, %.noexc.i.i
  %.not1.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not1.i.i, label %_ZNKSt14default_deleteIN3fmt3v124fileEEclEPS2_.exit, label %_ZN4test5closeEi.exit._crit_edge.i.i

_ZN4test5closeEi.exit._crit_edge.i.i:             ; preds = %_ZN4test5closeEi.exit.i.i
  %.pre.i.i = tail call ptr @__errno_location() #26
  %.pre.i = load i32, ptr %.pre.i.i, align 4, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %_ZN4test5closeEi.exit._crit_edge.i.i, %_ZN4test5closeEi.exit.thread.i.i
  %i.ao = phi i32 [ %.pre.i, %_ZN4test5closeEi.exit._crit_edge.i.i ], [ 4, %_ZN4test5closeEi.exit.thread.i.i ]
  call void @_ZN3fmt3v1219report_system_errorEiPKc(i32 noundef %i.ao, ptr noundef nonnull @.str) #27
  br label %_ZNKSt14default_deleteIN3fmt3v124fileEEclEPS2_.exit

bb.y:                                             ; preds = %bb.v
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable

_ZNKSt14default_deleteIN3fmt3v124fileEEclEPS2_.exit: ; preds = %bb.u, %_ZN4test5closeEi.exit.i.i, %bb.x
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 4) #31
  br label %_ZNSt10unique_ptrIN3fmt3v124fileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3fmt3v124fileESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.t, %_ZNKSt14default_deleteIN3fmt3v124fileEEclEPS2_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit14, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit14 ], [ %i.j, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.g, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.ar, %bb.aa ], [ %.pn.pn.pn, %bb.z ], [ %i.i, %bb.g ], [ %i.h, %bb.f ]
  %i.as = load ptr, ptr %1, align 8, !tbaa !70    ; 2 uses
  %.not.i16 = icmp eq ptr %i.as, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN3fmt3v124fileESt14default_deleteIS2_EED2Ev.exit17, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZNKSt14default_deleteIN3fmt3v124fileEEclEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.as)
  br label %_ZNSt10unique_ptrIN3fmt3v124fileESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN3fmt3v124fileESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn8
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN37file_test_close_no_retry_in_dtor_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.fmt::v12::pipe", align 4   ; 8 uses
  %8 = alloca %"class.std::unique_ptr.51", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %class.output_redirect, align 8    ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN3fmt3v124pipeC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.d = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30
          to label %bb.b unwind label %bb.k       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %7, align 4, !tbaa !22
  store i32 %i.e, ptr %i.d, align 4, !tbaa !22
  store i32 -1, ptr %7, align 4, !tbaa !22
  store ptr %i.d, ptr %8, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %bb.c unwind label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %9, align 8, !tbaa !57, !range !58, !noundef !59
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %.noexc.i, label %bb.ap

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.h, ptr %12, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 17, ptr %i.a, align 8, !tbaa !36
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.i, ptr %12, align 8, !tbaa !63
  %i.j = load i64, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.i, ptr noundef nonnull align 1 dereferenceable(17) @.str, i64 17, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !67
  %i.l = load ptr, ptr %12, align 8, !tbaa !63
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_Z20system_error_messageiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.d unwind label %bb.n

bb.d:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67, !noalias !141
  %i.p = icmp eq i64 %i.o, 4611686018427387903
  br i1 %i.p, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
          to label %.noexc37 unwind label %bb.o, !noalias !141

.noexc37:                                         ; preds = %bb.e
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %.noexc38 unwind label %bb.o, !noalias !141 ; 6 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.r, ptr %10, align 8, !tbaa !66, !alias.scope !141
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !63   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.f:                                             ; preds = %.noexc38
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !67   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc38
  store ptr %i.s, ptr %10, align 8, !tbaa !63, !alias.scope !141
  %i.z = load i64, ptr %i.t, align 8, !tbaa !20
  store i64 %i.z, ptr %i.r, align 8, !tbaa !20, !alias.scope !141
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %i.aa = phi i64 [ %i.w, %bb.f ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !67, !alias.scope !141
  store ptr %i.t, ptr %i.q, align 8, !tbaa !63
  store i64 0, ptr %i.ab, align 8, !tbaa !67
  store i8 0, ptr %i.t, align 8, !tbaa !20
  %i.ad = load ptr, ptr %11, align 8, !tbaa !63   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.g
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !20
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  %i.ai = load ptr, ptr %12, align 8, !tbaa !63   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.h
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !20
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !71
  invoke void @_ZN15output_redirectC1EP8_IO_FILEb(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.am, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.an = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  br i1 %i.an, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr @_ZN12_GLOBAL__N_111close_countE, align 4, !tbaa !19
  call void @_ZNSt15__uniq_ptr_implIN3fmt3v124fileESt14default_deleteIS2_EE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #27
  %i.ao = load i32, ptr @_ZN12_GLOBAL__N_111close_countE, align 4, !tbaa !19
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !19
  store i32 0, ptr @_ZN12_GLOBAL__N_111close_countE, align 4, !tbaa !19
  br label %bb.r

bb.k:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3fmt3v124fileESt14default_deleteIS2_EED2Ev.exit127

bb.l:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.m:                                             ; preds = %.noexc.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.n:                                             ; preds = %.noexc
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.e
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %11, align 8, !tbaa !63   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.o
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !20
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.n
  %.pn = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.at, %bb.o ] ; 2 uses
  %i.az = load ptr, ptr %12, align 8, !tbaa !63   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.h
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.bb = load i64, ptr %i.h, align 8, !tbaa !20
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.q:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.r:                                             ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZN15output_redirect16restore_and_readB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.s unwind label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !67 ; 3 uses
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !67
  %i.bi = icmp eq i64 %i.bg, %i.bh
  br i1 %i.bi, label %bb.t, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bj = icmp eq i64 %i.bg, 0
  %.pre132 = load ptr, ptr %14, align 8, !tbaa !63 ; 3 uses
  br i1 %i.bj, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread131, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.t
  %i.bk = load ptr, ptr %10, align 8, !tbaa !63
  %bcmp.i.i = call i32 @bcmp(ptr %.pre132, ptr %i.bk, i64 %i.bg)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread131, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.s, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc49 unwind label %bb.am

.noexc49:                                         ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bl = load ptr, ptr %6, align 8, !tbaa !65
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef nonnull align 1 dereferenceable(117) @.str.24, i64 noundef 116)
          to label %_ZN7testing7MessagelsIA117_cEERS0_RKT_.exit.i unwind label %bb.v ; 0 uses

_ZN7testing7MessagelsIA117_cEERS0_RKT_.exit.i:    ; preds = %.noexc49
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %_ZN7testing7MessagelsIA117_cEERS0_RKT_.exit.i
  %i.bo = load ptr, ptr %6, align 8, !tbaa !65    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %bb.w, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.u
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(128) %i.bo) #27, !inline_history !136
  br label %bb.w

bb.v:                                             ; preds = %_ZN7testing7MessagelsIA117_cEERS0_RKT_.exit.i, %.noexc49
  %i.bs = landingpad { ptr, i32 }
          cleanup
  %i.bt = load ptr, ptr %6, align 8, !tbaa !65    ; 3 uses
  %.not.i.i3.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i3.i, label %_ZN7testing7MessageD2Ev.exit5.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i4.i: ; preds = %bb.v
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZN34buffered_file_test_open_retry_Test8TestBodyEv:bb.a

bb.w:                                             ; preds = %bb.s
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %i.ai) #27
  br label %bb.ab

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ao = load i32, ptr @_ZN12_GLOBAL__N_112fclose_countE, align 4, !tbaa !19 ; 3 uses
  %.not.i.i.i.i20 = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i.i20, label %_ZN4test6fcloseEP8_IO_FILE.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN12_GLOBAL__N_112fclose_countE, align 4, !tbaa !19
  %.not2.i.i.i.i = icmp eq i32 %i.ao, 3
  br i1 %.not2.i.i.i.i, label %_ZN4test6fcloseEP8_IO_FILE.exit.i.i.i, label %_ZN4test6fcloseEP8_IO_FILE.exit.thread.i.i.i

_ZN4test6fcloseEP8_IO_FILE.exit.thread.i.i.i:     ; preds = %bb.z
  %i.aq = tail call ptr @__errno_location() #26
  store i32 4, ptr %i.aq, align 4, !tbaa !19
  br label %bb.aa

_ZN4test6fcloseEP8_IO_FILE.exit.i.i.i:            ; preds = %bb.z, %bb.y
  %i.ar = call i32 @fclose(ptr noundef nonnull %i.an)
  %.not1.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not1.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EED2Ev.exit, label %_ZN4test6fcloseEP8_IO_FILE.exit._crit_edge.i.i.i

_ZN4test6fcloseEP8_IO_FILE.exit._crit_edge.i.i.i: ; preds = %_ZN4test6fcloseEP8_IO_FILE.exit.i.i.i
  %.pre.i.i.i21 = tail call ptr @__errno_location() #26
  %.pre.i.i = load i32, ptr %.pre.i.i.i21, align 4, !tbaa !19
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4test6fcloseEP8_IO_FILE.exit._crit_edge.i.i.i, %_ZN4test6fcloseEP8_IO_FILE.exit.thread.i.i.i
  %i.as = phi i32 [ %.pre.i.i, %_ZN4test6fcloseEP8_IO_FILE.exit._crit_edge.i.i.i ], [ 4, %_ZN4test6fcloseEP8_IO_FILE.exit.thread.i.i.i ]
  call void @_ZN3fmt3v1219report_system_errorEiPKc(i32 noundef %i.as, ptr noundef nonnull @.str) #27
  br label %_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.x, %_ZN4test6fcloseEP8_IO_FILE.exit.i.i.i, %bb.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.ab:                                            ; preds = %bb.w, %bb.v
  %.pn9 = phi { ptr, i32 } [ %i.al, %bb.v ], [ %i.am, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.u, %bb.f, %bb.e
  %.pn9.pn = phi { ptr, i32 } [ %.pn9, %bb.ab ], [ %.pn.pn.pn, %bb.u ], [ %i.h, %bb.f ], [ %i.g, %bb.e ]
  call void @_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn9.pn

bb.ad:                                            ; preds = %bb.t
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNKSt14default_deleteIN3fmt3v1213buffered_fileEEclEPS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @_ZN12_GLOBAL__N_112fclose_countE, align 4, !tbaa !19 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZN4test6fcloseEP8_IO_FILE.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr @_ZN12_GLOBAL__N_112fclose_countE, align 4, !tbaa !19
  %.not2.i.i.i = icmp eq i32 %i.c, 3
  br i1 %.not2.i.i.i, label %_ZN4test6fcloseEP8_IO_FILE.exit.i.i, label %_ZN4test6fcloseEP8_IO_FILE.exit.thread.i.i

_ZN4test6fcloseEP8_IO_FILE.exit.thread.i.i:       ; preds = %bb.d
  %i.e = tail call ptr @__errno_location() #26
  store i32 4, ptr %i.e, align 4, !tbaa !19
  br label %bb.e

_ZN4test6fcloseEP8_IO_FILE.exit.i.i:              ; preds = %bb.d, %bb.c
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b)
  %.not1.i.i = icmp eq i32 %i.f, 0
  br i1 %.not1.i.i, label %_ZNKSt14default_deleteIN3fmt3v1213buffered_fileEEclEPS2_.exit, label %_ZN4test6fcloseEP8_IO_FILE.exit._crit_edge.i.i

_ZN4test6fcloseEP8_IO_FILE.exit._crit_edge.i.i:   ; preds = %_ZN4test6fcloseEP8_IO_FILE.exit.i.i
  %.pre.i.i = tail call ptr @__errno_location() #26
  %.pre.i = load i32, ptr %.pre.i.i, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %_ZN4test6fcloseEP8_IO_FILE.exit._crit_edge.i.i, %_ZN4test6fcloseEP8_IO_FILE.exit.thread.i.i
  %i.g = phi i32 [ %.pre.i, %_ZN4test6fcloseEP8_IO_FILE.exit._crit_edge.i.i ], [ 4, %_ZN4test6fcloseEP8_IO_FILE.exit.thread.i.i ]
  tail call void @_ZN3fmt3v1219report_system_errorEiPKc(i32 noundef %i.g, ptr noundef nonnull @.str) #27
  br label %_ZNKSt14default_deleteIN3fmt3v1213buffered_fileEEclEPS2_.exit

_ZNKSt14default_deleteIN3fmt3v1213buffered_fileEEclEPS2_.exit: ; preds = %bb.b, %_ZN4test6fcloseEP8_IO_FILE.exit.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 8) #31
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt14default_deleteIN3fmt3v1213buffered_fileEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN46buffered_file_test_close_no_retry_in_dtor_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::Message", align 8  ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"struct.fmt::v12::pipe", align 4   ; 7 uses
  %8 = alloca %"class.std::unique_ptr.71", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %class.output_redirect, align 8    ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @_ZN3fmt3v124pipeC2Ev(ptr noundef nonnull align 4 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30
          to label %bb.b unwind label %bb.m       ; 7 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3fmt3v124file6fdopenEPKc(ptr dead_on_unwind nonnull writable sret(%"class.fmt::v12::buffered_file") align 8 %i.d, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull @.str.79)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr %8, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store i32 0, ptr %i.b, align 4, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %9)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %9, align 8, !tbaa !57, !range !58, !noundef !59
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.noexc.i, label %bb.as

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.g, ptr %12, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 17, ptr %i.a, align 8, !tbaa !36
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.p     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %12, align 8, !tbaa !63
  %i.i = load i64, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  store i64 %i.i, ptr %i.g, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.h, ptr noundef nonnull align 1 dereferenceable(17) @.str, i64 17, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !67
  %i.k = load ptr, ptr %12, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  invoke void @_Z20system_error_messageiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %.noexc
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !67, !noalias !208
  %i.o = icmp eq i64 %i.n, 4611686018427387903
  br i1 %i.o, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.134) #29
          to label %.noexc37 unwind label %bb.r, !noalias !208

.noexc37:                                         ; preds = %bb.f
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.e
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.12, i64 noundef 1)
          to label %.noexc38 unwind label %bb.r, !noalias !208 ; 6 uses

.noexc38:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.q, ptr %10, align 8, !tbaa !66, !alias.scope !208
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !63   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %.noexc38
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !67   ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc38
  store ptr %i.r, ptr %10, align 8, !tbaa !63, !alias.scope !208
  %i.y = load i64, ptr %i.s, align 8, !tbaa !20
  store i64 %i.y, ptr %i.q, align 8, !tbaa !20, !alias.scope !208
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.z = phi i64 [ %i.v, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !67, !alias.scope !208
  store ptr %i.s, ptr %i.p, align 8, !tbaa !63
  store i64 0, ptr %i.aa, align 8, !tbaa !67
  store i8 0, ptr %i.s, align 8, !tbaa !20
  %i.ac = load ptr, ptr %11, align 8, !tbaa !63   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.h
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !20
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  %i.ah = load ptr, ptr %12, align 8, !tbaa !63   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.g
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.g, align 8, !tbaa !20
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !71
  invoke void @_ZN15output_redirectC1EP8_IO_FILEb(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %i.al, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.s

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.am = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.j unwind label %bb.t

bb.j:                                             ; preds = %bb.i
  br i1 %i.am, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr @_ZN12_GLOBAL__N_112fclose_countE, align 4, !tbaa !19
  store ptr null, ptr %8, align 8, !tbaa !75
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !18
  %.not.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 2, ptr @_ZN12_GLOBAL__N_112fclose_countE, align 4, !tbaa !19
  %i.ao = tail call ptr @__errno_location() #26
  store i32 4, ptr %i.ao, align 4, !tbaa !19
  call void @_ZN3fmt3v1219report_system_errorEiPKc(i32 noundef 4, ptr noundef nonnull @.str) #27
  br label %_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.k, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #31
  %.pre = load i32, ptr @_ZN12_GLOBAL__N_112fclose_countE, align 4, !tbaa !19
  store i32 %.pre, ptr %i.b, align 4, !tbaa !19
  store i32 0, ptr @_ZN12_GLOBAL__N_112fclose_countE, align 4, !tbaa !19
  br label %bb.u

bb.m:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.n:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #31
  br label %bb.bz

bb.o:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.p:                                             ; preds = %.noexc.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

bb.q:                                             ; preds = %.noexc
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.f
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %11, align 8, !tbaa !63   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.r
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43, %bb.q
  %.pn = phi { ptr, i32 } [ %i.at, %bb.q ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43 ], [ %i.au, %bb.r ] ; 2 uses
  %i.ba = load ptr, ptr %12, align 8, !tbaa !63   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.g
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45
  %i.bc = load i64, ptr %i.g, align 8, !tbaa !20
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.p ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.t:                                             ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.u:                                             ; preds = %bb.j, %_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.bg = phi ptr [ %i.d, %bb.j ], [ null, %_ZNSt10unique_ptrIN3fmt3v1213buffered_fileESt14default_deleteIS2_EE5resetEPS2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZN15output_redirect16restore_and_readB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %bb.v unwind label %bb.ao

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !67 ; 3 uses
  %i.bj = load i64, ptr %i.ab, align 8, !tbaa !67
  %i.bk = icmp eq i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.w, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.bl = icmp eq i64 %i.bi, 0
  %.pre132 = load ptr, ptr %14, align 8, !tbaa !63 ; 3 uses
  br i1 %i.bl, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread130, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.w
  %i.bm = load ptr, ptr %10, align 8, !tbaa !63
  %bcmp.i.i = call i32 @bcmp(ptr %.pre132, ptr %i.bm, i64 %i.bi)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread130, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.v, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.noexc49 unwind label %bb.ap

.noexc49:                                         ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.bn = load ptr, ptr %6, align 8, !tbaa !65
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 1 dereferenceable(121) @.str.88, i64 noundef 120)
          to label %_ZN7testing7MessagelsIA121_cEERS0_RKT_.exit.i unwind label %bb.y ; 0 uses

_ZN7testing7MessagelsIA121_cEERS0_RKT_.exit.i:    ; preds = %.noexc49
  invoke void @_ZN7testing15AssertionResult13AppendMessageERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZN7testing7MessagelsIA121_cEERS0_RKT_.exit.i
end_hunk_1
begin_hunk_2_@_ZN24os_test_getpagesize_TestD0Ev:bb.a
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #16

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN25file_test_open_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN37file_test_close_no_retry_in_dtor_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN29file_test_close_no_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN19file_test_size_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN23file_test_max_size_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN25file_test_read_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN26file_test_write_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN27file_test_dup_no_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN25file_test_dup2_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN35file_test_dup2_no_except_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN28file_test_pipe_no_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN30file_test_fdopen_no_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN34buffered_file_test_open_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN46buffered_file_test_close_no_retry_in_dtor_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN38buffered_file_test_close_no_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN39buffered_file_test_fileno_no_retry_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN22scoped_mock_scope_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI24os_test_getpagesize_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI24os_test_getpagesize_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV24os_test_getpagesize_Test, i64 16), ptr %i.a, align 8, !tbaa !38
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

declare void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12system_errorC2ESt10error_codeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.a = load ptr, ptr %2, align 8, !tbaa !38, !noalias !232
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !noalias !232
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %1), !inline_history !227
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.113, i64 noundef 2)
          to label %.noexc unwind label %bb.g, !noalias !233 ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.e, ptr %5, align 8, !tbaa !66, !alias.scope !233
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !63   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !67   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.f, ptr %5, align 8, !tbaa !63, !alias.scope !233
  %i.m = load i64, ptr %i.g, align 8, !tbaa !20
  store i64 %i.m, ptr %i.e, align 8, !tbaa !20, !alias.scope !233
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.n = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.n, ptr %i.p, align 8, !tbaa !67, !alias.scope !233
  store ptr %i.g, ptr %i.d, align 8, !tbaa !63
  store i64 0, ptr %i.o, align 8, !tbaa !67
  store i8 0, ptr %i.g, align 8, !tbaa !20
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !67, !noalias !234
  %i.s = load ptr, ptr %3, align 8, !tbaa !63, !noalias !234
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.s, i64 noundef %i.r)
          to label %.noexc10 unwind label %bb.h, !noalias !234 ; 6 uses

.noexc10:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.u, ptr %4, align 8, !tbaa !66, !alias.scope !234
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

bb.d:                                             ; preds = %.noexc10
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !67   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %bb.e

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %.noexc10
  store ptr %i.v, ptr %4, align 8, !tbaa !63, !alias.scope !234
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !20
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !20, !alias.scope !234
  %.phi.trans.insert.i8 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre.i9 = load i64, ptr %.phi.trans.insert.i8, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %i.ad = phi i64 [ %i.z, %bb.d ], [ %.pre.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !67, !alias.scope !234
  store ptr %i.w, ptr %i.t, align 8, !tbaa !63
  store i64 0, ptr %i.ae, align 8, !tbaa !67
  store i8 0, ptr %i.w, align 8, !tbaa !20
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.f
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !20
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.ak = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.am = load i64, ptr %i.e, align 8, !tbaa !20
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.an) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  %i.ao = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !20
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12system_error, i64 16), ptr %0, align 8, !tbaa !38
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.at, align 8, !tbaa !19
  %.sroa.327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %.sroa.327.0..sroa_idx, align 8, !tbaa !29
  ret void

bb.g:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

bb.h:                                             ; preds = %bb.c
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

bb.i:                                             ; preds = %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %4, align 8, !tbaa !63    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.u
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.i
  %i.az = load i64, ptr %i.u, align 8, !tbaa !20
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ], [ %i.aw, %bb.i ] ; 2 uses
  %i.bb = load ptr, ptr %5, align 8, !tbaa !63    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.e
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !20
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.au, %bb.g ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ]
  %i.bf = load ptr, ptr %6, align 8, !tbaa !63    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !20
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #16

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI25file_test_open_retry_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI25file_test_open_retry_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV25file_test_open_retry_Test, i64 16), ptr %i.a, align 8, !tbaa !38
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI37file_test_close_no_retry_in_dtor_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI37file_test_close_no_retry_in_dtor_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #30 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV37file_test_close_no_retry_in_dtor_Test, i64 16), ptr %i.a, align 8, !tbaa !38
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #31
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI29file_test_close_no_retry_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #17 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #31
  ret void
}
end_hunk_2
