Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/args-test?download=true
inline.NumInlined: 1795
inline.NumDeleted: 826
begin_hunk_0_@_ZN20args_test_clear_Test8TestBodyEv:_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #18
          to label %.noexc107 unwind label %bb.b  ; 7 uses

.noexc107:                                        ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  store i32 42, ptr %i.c, align 16, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 1, ptr %i.d, align 16, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !41
  store ptr %i.e, ptr %i.a, align 8, !tbaa !42
  store ptr %i.e, ptr %i.b, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr nonnull @.str.49, i64 2, i64 -9223372036854775807, ptr nonnull %i.c)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc107
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !52, !noalias !190
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i: ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8, !tbaa !53, !noalias !190
  %i.l = load i16, ptr %i.k, align 1
  %i.m = icmp ne i16 %i.l, 12852
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3)
          to label %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.d

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i, %bb.a
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.d

_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i
  %i.p = load i8, ptr %3, align 8, !tbaa !63, !range !64, !noundef !65
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.n, label %bb.e

bb.b:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.c:                                             ; preds = %.noexc107
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.e:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.g, %bb.f
  %i.x = phi ptr [ %i.w, %bb.g ], [ @.str.19, %bb.f ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 131, ptr noundef %i.x)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.y = load ptr, ptr %4, align 8, !tbaa !68     ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.y, null
  br i1 %.not.i.i32, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(128) %i.y) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.n

bb.j:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit35

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.ad, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.af = load ptr, ptr %4, align 8, !tbaa !68    ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.af, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit35, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34: ; preds = %bb.m
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !22
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit35

_ZN7testing7MessageD2Ev.exit35:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34, %bb.m, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %.pn, %bb.m ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i34 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %bb.v

bb.n:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !66 ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i36, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i109, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !53 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.o
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 32) #20
  br label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i109

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i109: ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.aq = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #18
          to label %.lr.ph.i.i.i.i.i113.preheader unwind label %bb.w ; 7 uses

.lr.ph.i.i.i.i.i113.preheader:                    ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i109
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i32 43, ptr %i.ar, align 16, !tbaa !34
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store i32 1, ptr %i.as, align 16, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aq, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false), !tbaa.struct !45, !alias.scope !191
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #20
  store ptr %i.aq, ptr %1, align 8, !tbaa !41
  store ptr %i.at, ptr %i.a, align 8, !tbaa !42
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store ptr %i.au, ptr %i.b, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.50, i64 9, i64 -9223372036854775806, ptr nonnull %i.aq)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i113.preheader
  %i.av = load ptr, ptr %2, align 8, !tbaa !53    ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %14 = icmp eq ptr %i.av, %i.aw
  %i.ax = load ptr, ptr %6, align 8, !tbaa !53    ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.az = icmp eq ptr %i.ax, %i.ay                ; 2 uses
  br i1 %14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.p
  br i1 %i.az, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.p
  br i1 %i.az, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !52 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.bd = load i8, ptr %i.ax, align 1, !tbaa !34
  store i8 %i.bd, ptr %i.av, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.ax, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.be = load i64, ptr %i.ba, align 8, !tbaa !52 ; 2 uses
  store i64 %i.be, ptr %i.h, align 8, !tbaa !52
  %i.bf = load ptr, ptr %2, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 0, ptr %i.bg, align 1, !tbaa !34
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ax, ptr %2, align 8, !tbaa !53
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load <2 x i64>, ptr %i.bh, align 8, !tbaa !34
  store <2 x i64> %i.bi, ptr %i.h, align 8, !tbaa !34
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bj = load i64, ptr %i.aw, align 8, !tbaa !34
  store ptr %i.ax, ptr %2, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = load <2 x i64>, ptr %i.bk, align 8, !tbaa !34
  store <2 x i64> %i.bl, ptr %i.h, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.av, ptr %6, align 8, !tbaa !53
  store i64 %i.bj, ptr %i.ay, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ay, ptr %6, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.bm = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.av, %bb.t ], [ %i.ay, %bb.u ]
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !52
  store i8 0, ptr %i.bm, align 1, !tbaa !34
  %i.bo = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !34
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !52, !noalias !192
  %i.bu = icmp eq i64 %i.bt, 9
  br i1 %i.bu, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bv = load ptr, ptr %2, align 8, !tbaa !53, !noalias !192 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 1
  %i.bx = xor i64 %i.bw, 3756112514465673780
  %i.by = getelementptr i8, ptr %i.bv, i64 8
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = xor i64 %i.ca, 51
  %i.cc = or i64 %i.bx, %i.cb
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.y

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(10) @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit unwind label %bb.y

_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42
  %i.cg = load i8, ptr %7, align 8, !tbaa !63, !range !64, !noundef !65
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.ai, label %bb.z

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit35, %bb.d
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit35 ], [ %i.t, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.bn

bb.w:                                             ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i109
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i113.preheader
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bn

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i42, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i45
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !66 ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i48, label %_ZNK7testing15AssertionResult15failure_messageEv.exit49, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit49

_ZNK7testing15AssertionResult15failure_messageEv.exit49: ; preds = %bb.ab, %bb.aa
  %i.co = phi ptr [ %i.cn, %bb.ab ], [ @.str.19, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 135, ptr noundef %i.co)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit49
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cp = load ptr, ptr %8, align 8, !tbaa !68    ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i50, label %_ZN7testing7MessageD2Ev.exit52, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51: ; preds = %bb.ad
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit52

_ZN7testing7MessageD2Ev.exit52:                   ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit55

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit49
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #17
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn20 = phi { ptr, i32 } [ %i.cv, %bb.ag ], [ %i.cu, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.cw = load ptr, ptr %8, align 8, !tbaa !68    ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i53, label %_ZN7testing7MessageD2Ev.exit55, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54: ; preds = %bb.ah
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !22
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit55

_ZN7testing7MessageD2Ev.exit55:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54, %bb.ah, %bb.ae
  %.pn20.pn = phi { ptr, i32 } [ %i.ct, %bb.ae ], [ %.pn20, %bb.ah ], [ %.pn20, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #17
  br label %bb.av

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA10_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit52
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !66 ; 4 uses
  %.not.i.i56 = icmp eq ptr %i.db, null
  br i1 %.not.i.i56, label %_ZN7testing15AssertionResultD2Ev.exit60, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !53 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57: ; preds = %bb.aj
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !34
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i57
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit60

_ZN7testing15AssertionResultD2Ev.exit60:          ; preds = %bb.ai, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.dh = load ptr, ptr %1, align 8, !tbaa !41    ; 9 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.di, %i.dh
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZN7testing15AssertionResultD2Ev.exit60
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !42
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZN7testing15AssertionResultD2Ev.exit60
  %i.dj = phi ptr [ %i.dh, %_ZSt8_DestroyIPN3fmt3v1216basic_format_argINS1_7contextEEES4_EvT_S6_RSaIT0_E.exit.i.i.i ], [ %i.di, %_ZN7testing15AssertionResultD2Ev.exit60 ] ; 7 uses
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !72  ; 2 uses
  %i.dl = load ptr, ptr %i.g, align 8, !tbaa !94
  %.not.i.i1.i = icmp eq ptr %i.dl, %i.dk
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i
  store ptr %i.dk, ptr %i.g, align 8, !tbaa !94
  br label %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i

_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN3fmt3v126detail14named_arg_infoIcEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE5clearEv.exit.i
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !70 ; 3 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit, label %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(16) %i.dn) #17, !inline_history !7
  br label %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit

_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit: ; preds = %_ZNSt6vectorIN3fmt3v126detail14named_arg_infoIcEESaIS4_EE5clearEv.exit.i, %_ZNKSt14default_deleteIN3fmt3v126detail4nodeIvEEEclEPS4_.exit.i.i.i.i.i.i
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !43
  %.not.i124 = icmp eq ptr %i.dj, %i.dr
  br i1 %.not.i124, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit
  store i32 44, ptr %i.dj, align 16, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i32 1, ptr %i.ds, align 16, !tbaa !38
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 32 ; 2 uses
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !42
  br label %bb.ao

bb.al:                                            ; preds = %_ZN3fmt3v1224dynamic_format_arg_storeINS0_7contextEE5clearEv.exit
  %i.du = ptrtoint ptr %i.dj to i64
  %i.dv = ptrtoint ptr %i.dh to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775776
  br i1 %i.dx, label %bb.am, label %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #19
          to label %.noexc137 unwind label %bb.aw

.noexc137:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125: ; preds = %bb.al
  %i.dy = ashr exact i64 %i.dw, 5                 ; 3 uses
  %.sroa.speculated.i.i.i126 = call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i126, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = call i64 @llvm.umin.i64(i64 %i.dz, i64 288230376151711743)
  %i.ec = select i1 %i.ea, i64 288230376151711743, i64 %i.eb ; 3 uses
  %.not.i.i.i127 = icmp ne i64 %i.ec, 0
  call void @llvm.assume(i1 %.not.i.i.i127)
  %i.ed = shl nuw nsw i64 %i.ec, 5
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #18
          to label %.noexc138 unwind label %bb.aw ; 6 uses

.noexc138:                                        ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.dw ; 2 uses
  store i32 44, ptr %i.ef, align 16, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store i32 1, ptr %i.eg, align 16, !tbaa !38
  %.not10.i.i.i.i.i128 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not10.i.i.i.i.i128, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133, label %.lr.ph.i.i.i.i.i129

.lr.ph.i.i.i.i.i129:                              ; preds = %.noexc138, %.lr.ph.i.i.i.i.i129
  %.012.i.i.i.i.i130 = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i129 ], [ %i.ee, %.noexc138 ] ; 2 uses
  %.0911.i.i.i.i.i131 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i129 ], [ %i.dh, %.noexc138 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.012.i.i.i.i.i130, ptr noundef nonnull align 16 dereferenceable(32) %.0911.i.i.i.i.i131, i64 32, i1 false), !tbaa.struct !45, !alias.scope !193
  %i.eh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i131, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i130, i64 32 ; 2 uses
  %.not.i.i.i.i.i132 = icmp eq ptr %i.eh, %i.dj
  br i1 %.not.i.i.i.i.i132, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133, label %.lr.ph.i.i.i.i.i129, !llvm.loop !0

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133: ; preds = %.lr.ph.i.i.i.i.i129, %.noexc138
  %.0.lcssa.i.i.i.i.i134 = phi ptr [ %i.ee, %.noexc138 ], [ %i.ei, %.lr.ph.i.i.i.i.i129 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i134, i64 32 ; 2 uses
  %.not.i33.i.i135 = icmp eq ptr %i.dh, null
  br i1 %.not.i33.i.i135, label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133
  call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.dw) #20
  br label %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136

_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136: ; preds = %bb.an, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit32.i.i133
  store ptr %i.ee, ptr %1, align 8, !tbaa !41
  store ptr %i.ej, ptr %i.a, align 8, !tbaa !42
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ee, i64 %i.ec
  store ptr %i.ek, ptr %i.b, align 8, !tbaa !43
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136
  %i.el = phi ptr [ %i.dt, %bb.ak ], [ %i.ej, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ]
  %i.em = phi ptr [ %i.dh, %bb.ak ], [ %i.ee, %_ZNSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i136 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = lshr exact i64 %i.ep, 5
  %i.er = and i64 %i.eq, 4294967295
  %i.es = or disjoint i64 %i.er, -9223372036854775808
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.49, i64 2, i64 %i.es, ptr %i.em)
          to label %bb.ap unwind label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.et = load ptr, ptr %2, align 8, !tbaa !53    ; 6 uses
  %15 = icmp eq ptr %i.et, %i.aw
  %i.eu = load ptr, ptr %10, align 8, !tbaa !53   ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev                ; 2 uses
  br i1 %15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71: ; preds = %bb.ap
  br i1 %i.ew, label %bb.aq, label %.thread.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66: ; preds = %bb.ap
  br i1 %i.ew, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !52 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 16
  call void @llvm.assume(i1 %i.ez)
  switch i64 %i.ey, label %bb.as [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69
    i64 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.fa = load i8, ptr %i.eu, align 1, !tbaa !34
  store i8 %i.fa, ptr %i.et, align 1, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr align 1 %i.eu, i64 %i.ey, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.fb = load i64, ptr %i.ex, align 8, !tbaa !52 ; 2 uses
  store i64 %i.fb, ptr %i.h, align 8, !tbaa !52
  %i.fc = load ptr, ptr %2, align 8, !tbaa !53
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fb
  store i8 0, ptr %i.fd, align 1, !tbaa !34
  %.pre.i70 = load ptr, ptr %10, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

.thread.i72:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i71
  store ptr %i.eu, ptr %2, align 8, !tbaa !53
  %i.fe = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ff = load <2 x i64>, ptr %i.fe, align 8, !tbaa !34
  store <2 x i64> %i.ff, ptr %i.h, align 8, !tbaa !34
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i66
  %i.fg = load i64, ptr %i.aw, align 8, !tbaa !34
  store ptr %i.eu, ptr %2, align 8, !tbaa !53
  %i.fh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fi = load <2 x i64>, ptr %i.fh, align 8, !tbaa !34
  store <2 x i64> %i.fi, ptr %i.h, align 8, !tbaa !34
  %.not.i68 = icmp eq ptr %i.et, null
  br i1 %.not.i68, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67
  store ptr %i.et, ptr %10, align 8, !tbaa !53
  store i64 %i.fg, ptr %i.ev, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i67, %.thread.i72
  store ptr %i.ev, ptr %10, align 8, !tbaa !53
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69, %bb.at, %bb.au
  %i.fj = phi ptr [ %.pre.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i69 ], [ %i.et, %bb.at ], [ %i.ev, %bb.au ]
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.fk, align 8, !tbaa !52
  store i8 0, ptr %i.fj, align 1, !tbaa !34
  %i.fl = load ptr, ptr %10, align 8, !tbaa !53   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !34
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.fq = load i64, ptr %i.h, align 8, !tbaa !52, !noalias !194
  %i.fr = icmp eq i64 %i.fq, 2
  br i1 %i.fr, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  %i.fs = load ptr, ptr %2, align 8, !tbaa !53, !noalias !194
  %i.ft = load i16, ptr %i.fs, align 1
  %i.fu = icmp ne i16 %i.ft, 13364
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80, label %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11)
          to label %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83 unwind label %bb.ay

_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.i.i78, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit76
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(3) @.str.54, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83 unwind label %bb.ay

_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77
  %i.fx = load i8, ptr %11, align 8, !tbaa !63, !range !64, !noundef !65
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.bi, label %bb.az

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit55, %bb.y
  %.pn20.pn.pn = phi { ptr, i32 } [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit55 ], [ %i.ck, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.bn

bb.aw:                                            ; preds = %_ZNKSt6vectorIN3fmt3v1216basic_format_argINS1_7contextEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i125, %bb.am
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.ax:                                            ; preds = %bb.ao
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %bb.bn

bb.ay:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread6.i.i77, %_ZSteqIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit.thread.i.i80
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.az:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !66 ; 2 uses
  %.not.i.i84 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i84, label %_ZNK7testing15AssertionResult15failure_messageEv.exit85, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !53
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit85

_ZNK7testing15AssertionResult15failure_messageEv.exit85: ; preds = %bb.bb, %bb.ba
  %i.gf = phi ptr [ %i.ge, %bb.bb ], [ @.str.19, %bb.ba ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 140, ptr noundef %i.gf)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit85
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bd unwind label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.gg = load ptr, ptr %12, align 8, !tbaa !68   ; 3 uses
  %.not.i.i86 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i86, label %_ZN7testing7MessageD2Ev.exit88, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87: ; preds = %bb.bd
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !22
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit88

_ZN7testing7MessageD2Ev.exit88:                   ; preds = %bb.bd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.bi

bb.be:                                            ; preds = %bb.az
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit91

bb.bf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit85
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bc
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #17
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pn24 = phi { ptr, i32 } [ %i.gm, %bb.bg ], [ %i.gl, %bb.bf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.gn = load ptr, ptr %12, align 8, !tbaa !68   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.bh
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !22
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90, %bb.bh, %bb.be
  %.pn24.pn = phi { ptr, i32 } [ %i.gk, %bb.be ], [ %.pn24, %bb.bh ], [ %.pn24, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #17
  br label %bb.bm

bb.bi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIA3_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit83, %_ZN7testing7MessageD2Ev.exit88
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !66 ; 4 uses
  %.not.i.i92 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i92, label %_ZN7testing15AssertionResultD2Ev.exit96, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !53 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93: ; preds = %bb.bj
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !34
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #20
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i93
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit96

_ZN7testing15AssertionResultD2Ev.exit96:          ; preds = %bb.bi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.gy = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.gz = icmp eq ptr %i.gy, %i.aw
  br i1 %i.gz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %_ZN7testing15AssertionResultD2Ev.exit96
  %i.ha = load i64, ptr %i.aw, align 8, !tbaa !34
  %i.hb = add i64 %i.ha, 1
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.hb) #20
end_hunk_0
