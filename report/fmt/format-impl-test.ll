Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-impl-test?download=true
inline.NumInlined: 4849
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN28fp_test_dragonbox_max_k_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIfvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit15

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.n = load ptr, ptr %2, align 8, !tbaa !86     ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.n, null
  br i1 %.not.i.i13, label %_ZN7testing7MessageD2Ev.exit15, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14: ; preds = %bb.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit15

_ZN7testing7MessageD2Ev.exit15:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14, %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %.pn, %bb.i ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i14 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.w

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIfvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !84   ; 4 uses
  %.not.i.i16 = icmp eq ptr %i.s, null
  br i1 %.not.i.i16, label %_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIdvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.w = load i64, ptr %i.u, align 8, !tbaa !71
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #31
  br label %_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIdvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit

_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIdvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  %i.y = load i8, ptr %4, align 8, !tbaa !81, !range !82, !noundef !83
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.u, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIdvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !84 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i22, label %_ZNK7testing15AssertionResult15failure_messageEv.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !70
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit23

_ZNK7testing15AssertionResult15failure_messageEv.exit23: ; preds = %bb.n, %bb.m
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ @.str.5, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 210, ptr noundef %i.ad)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit23
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ae = load ptr, ptr %5, align 8, !tbaa !86    ; 3 uses
  %.not.i.i24 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i24, label %_ZN7testing7MessageD2Ev.exit26, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25: ; preds = %bb.p
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(128) %i.ae) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit26

_ZN7testing7MessageD2Ev.exit26:                   ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit29

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit23
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #30
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn8 = phi { ptr, i32 } [ %i.ak, %bb.s ], [ %i.aj, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.al = load ptr, ptr %5, align 8, !tbaa !86    ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.al, null
  br i1 %.not.i.i27, label %_ZN7testing7MessageD2Ev.exit29, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28: ; preds = %bb.t
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit29

_ZN7testing7MessageD2Ev.exit29:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28, %bb.t, %bb.q
  %.pn8.pn = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %.pn8, %bb.t ], [ %.pn8, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.w

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIdvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit, %_ZN7testing7MessageD2Ev.exit26
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84 ; 4 uses
  %.not.i.i30 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i30, label %_ZN7testing15AssertionResultD2Ev.exit34, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31: ; preds = %bb.v
  %i.au = load i64, ptr %i.as, align 8, !tbaa !71
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i31
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit34

_ZN7testing15AssertionResultD2Ev.exit34:          ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.w:                                             ; preds = %_ZN7testing7MessageD2Ev.exit29, %_ZN7testing7MessageD2Ev.exit15
  %.pn8.pn.pn = phi { ptr, i32 } [ %.pn8.pn, %_ZN7testing7MessageD2Ev.exit29 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit15 ]
  resume { ptr, i32 } %.pn8.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN39format_impl_test_format_error_code_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.136", align 16 ; 4 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.138", align 16 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer.24", align 8 ; 13 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.fmt::v12::basic_memory_buffer.24", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %.sroa.0 = alloca i32, align 8                  ; 5 uses
  %.sroa.5 = alloca i32, align 4                  ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.fmt::v12::basic_memory_buffer.24", align 8 ; 14 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.g, ptr %4, align 8, !tbaa !96
  store i64 3617552076553482853, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 10 uses
  store i64 8, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.i, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !96
  store i16 8250, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 2, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.l, align 2, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.n, align 8, !tbaa !90
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.p, ptr %6, align 8, !tbaa !91
  store i64 500, ptr %i.m, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  store ptr @.str.127, ptr %1, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !tbaa !97
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.q, align 8, !tbaa !107
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %6, ptr %i.r, align 8, !tbaa !94
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.s, align 8, !tbaa !103
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %3, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !71
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr null, ptr %i.t, align 8, !tbaa !108
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.127, i64 7, ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.a unwind label %bb.i

bb.a:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @_ZN3fmt3v126detail17format_error_codeERNS1_6bufferIcEEiNS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 42, ptr nonnull @.str.128, i64 4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.u = load i64, ptr %i.o, align 8, !tbaa !95, !noalias !458 ; 6 uses
  %i.v = icmp ult i64 %i.u, 4611686018427387903
  call void @llvm.assume(i1 %i.v)
  %i.w = load ptr, ptr %6, align 8, !tbaa !91, !noalias !458 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !96, !alias.scope !458
  %i.y = icmp eq ptr %i.w, null
  %i.z = icmp ne i64 %i.u, 0
  %or.cond.i.i = and i1 %i.z, %i.y
  br i1 %or.cond.i.i, label %.noexc.i87, label %bb.b

.noexc.i87:                                       ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #32
          to label %.noexc88 unwind label %bb.j

.noexc88:                                         ; preds = %.noexc.i87
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30, !noalias !458
  store i64 %i.u, ptr %i.d, align 8, !tbaa !97, !noalias !458
  %i.aa = icmp samesign ugt i64 %i.u, 15
  br i1 %i.aa, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc89 unwind label %bb.j   ; 2 uses

.noexc89:                                         ; preds = %.noexc.i.i
  store ptr %i.ab, ptr %8, align 8, !tbaa !70, !alias.scope !458
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !97, !noalias !458
  store i64 %i.ac, ptr %i.x, align 8, !tbaa !71, !alias.scope !458
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc89, %bb.b
  %i.ad = phi ptr [ %i.ab, %.noexc89 ], [ %i.x, %bb.b ] ; 2 uses
  switch i64 %i.u, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.ae = load i8, ptr %i.w, align 1, !tbaa !71
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !71
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.w, i64 %i.u, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.af = load i64, ptr %i.d, align 8, !tbaa !97, !noalias !458 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !69, !alias.scope !458
  %i.ah = load ptr, ptr %8, align 8, !tbaa !70, !alias.scope !458
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.aj = load ptr, ptr %4, align 8, !tbaa !70, !noalias !459
  %i.ak = load i64, ptr %i.h, align 8, !tbaa !69, !noalias !459 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.al, ptr %9, align 8, !tbaa !96, !alias.scope !460
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.am, align 8, !tbaa !69, !alias.scope !460
  store i8 0, ptr %i.al, align 8, !tbaa !71, !alias.scope !460
  %i.an = add i64 %i.ak, 6
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.an)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !69, !alias.scope !460
  %i.ap = add i64 %i.ao, -4611686018427387898
  %i.aq = icmp ult i64 %i.ap, 6
  br i1 %i.aq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.f
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.131, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.g ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.as = load i64, ptr %i.am, align 8, !tbaa !69, !alias.scope !460
  %i.at = sub i64 4611686018427387903, %i.as
  %i.au = icmp ult i64 %i.at, %i.ak
  br i1 %i.au, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #32
          to label %.cont.i.i unwind label %bb.g

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.av = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.aj, i64 noundef %i.ak)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.e
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %9, align 8, !tbaa !70, !alias.scope !460 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.al
  br i1 %i.ay, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.az = load i64, ptr %i.ag, align 8, !tbaa !69, !noalias !461 ; 3 uses
  %i.ba = load i64, ptr %i.am, align 8, !tbaa !69, !noalias !461
  %i.bb = icmp eq i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

bb.h:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.bc = icmp eq i64 %i.az, 0
  br i1 %i.bc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.h
  %i.bd = load ptr, ptr %9, align 8, !tbaa !70, !noalias !461
  %i.be = load ptr, ptr %8, align 8, !tbaa !70, !noalias !461
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.be, ptr %i.bd, i64 %i.az), !noalias !461
  %i.bf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.h
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit unwind label %bb.k

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit unwind label %bb.k

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i
  %i.bg = load ptr, ptr %9, align 8, !tbaa !70    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN39format_impl_test_format_error_code_Test8TestBodyEv:._crit_edge.i.i
  %i.ef = icmp eq i32 %bcmp.i.i.i117, 0
  br i1 %i.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i118, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i115

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i118: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i116, %bb.ab
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit121 unwind label %bb.ah

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i115: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i116, %bb.aa
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.129, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit121 unwind label %bb.ah

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit121: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i118, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i115
  %i.eg = load ptr, ptr %15, align 8, !tbaa !70   ; 2 uses
  %i.eh = icmp eq ptr %i.eg, %i.dn
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit121
  %i.ei = load i64, ptr %i.dn, align 8, !tbaa !71
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.eg, i64 noundef %i.ej) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.ek = load i8, ptr %14, align 8, !tbaa !81, !range !82, !noundef !83
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.ar, label %bb.ai

bb.ac:                                            ; preds = %_ZN7testing7MessageD2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100
  %.pn42.pn.pn = phi { ptr, i32 } [ %.pn42.pn, %_ZN7testing7MessageD2Ev.exit104 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.i
  %.pn42.pn.pn.pn = phi { ptr, i32 } [ %.pn42.pn.pn, %bb.ac ], [ %i.bq, %bb.i ]
  %i.em = load ptr, ptr %6, align 8, !tbaa !91    ; 2 uses
  %.not.i.i125 = icmp eq ptr %i.em, %i.p
  br i1 %.not.i.i125, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit126, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.em) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit126

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit126: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ds

bb.af:                                            ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.ag:                                            ; preds = %.noexc.i.i110, %.noexc.i111
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i115, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i118
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %15, align 8, !tbaa !70   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dn
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.ah
  %i.es = load i64, ptr %i.dn, align 8, !tbaa !71
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127, %bb.ag
  %.pn47 = phi { ptr, i32 } [ %i.eo, %bb.ag ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127 ], [ %i.ep, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.av

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !84 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !70
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.ak, %bb.aj
  %i.ex = phi ptr [ %i.ew, %bb.ak ], [ @.str.5, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 226, ptr noundef %i.ex)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.ey = load ptr, ptr %16, align 8, !tbaa !86   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.am
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !45
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #30
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn49 = phi { ptr, i32 } [ %i.fe, %bb.ap ], [ %i.fd, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.ff = load ptr, ptr %16, align 8, !tbaa !86   ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.aq
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !45
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(128) %i.ff) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.aq, %bb.an
  %.pn49.pn = phi { ptr, i32 } [ %i.fc, %bb.an ], [ %.pn49, %bb.aq ], [ %.pn49, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #30
  br label %bb.av

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZN7testing7MessageD2Ev.exit134
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !84 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i138, label %_ZN7testing15AssertionResultD2Ev.exit142, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !70 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.as
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !71
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit142

_ZN7testing15AssertionResultD2Ev.exit142:         ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.fq = load ptr, ptr %13, align 8, !tbaa !70   ; 2 uses
  %i.fr = icmp eq ptr %i.fq, %i.dg
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %_ZN7testing15AssertionResultD2Ev.exit142
  %i.fs = load i64, ptr %i.dg, align 8, !tbaa !71
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fq, i64 noundef %i.ft) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %_ZN7testing15AssertionResultD2Ev.exit142, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.fu = load ptr, ptr %12, align 8, !tbaa !91   ; 2 uses
  %.not.i.i146 = icmp eq ptr %i.fu, %i.db
  br i1 %.not.i.i146, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit147, label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  call void @free(ptr noundef %i.fu) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit147

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i32 42, ptr %.sroa.0, align 8
  store i32 -1, ptr %.sroa.5, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 7 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  br label %bb.ax

bb.au:                                            ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.go = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.gp = icmp eq ptr %i.go, %i.j
  br i1 %i.gp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.au
  %i.gq = load i64, ptr %i.j, align 8, !tbaa !71
  %i.gr = add i64 %i.gq, 1
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.gs = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.g
  br i1 %i.gt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.gu = load i64, ptr %i.g, align 8, !tbaa !71
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.av:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  %i.gw = load ptr, ptr %13, align 8, !tbaa !70   ; 2 uses
  %i.gx = icmp eq ptr %i.gw, %i.dg
  br i1 %i.gx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.av
  %i.gy = load i64, ptr %i.dg, align 8, !tbaa !71
  %i.gz = add i64 %i.gy, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.gz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.af
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %i.en, %bb.af ], [ %.pn49.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %.pn49.pn.pn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ha = load ptr, ptr %12, align 8, !tbaa !91   ; 2 uses
  %.not.i.i157 = icmp eq ptr %i.ha, %i.db
  br i1 %.not.i.i157, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit158, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  call void @free(ptr noundef %i.ha) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit158

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ds

bb.ax:                                            ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit147, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit276
  %34 = phi i1 [ true, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit147 ], [ false, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit276 ]
  %.0511.sroa.phi = phi ptr [ %.sroa.0, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit147 ], [ %.sroa.5, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit276 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !464
  %35 = load i32, ptr %.0511.sroa.phi, align 4, !tbaa !87, !noalias !464 ; 3 uses
  store i32 %35, ptr %2, align 16, !tbaa !71, !noalias !464
  invoke void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr nonnull @.str.133, i64 8, i64 1, ptr nonnull %2)
          to label %bb.ay unwind label %bb.bo

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !464
  %i.hb = load ptr, ptr %4, align 8, !tbaa !70    ; 6 uses
  %i.hc = icmp eq ptr %i.hb, %i.g
  %i.hd = load ptr, ptr %18, align 8, !tbaa !70   ; 5 uses
  %i.he = icmp eq ptr %i.hd, %i.fv                ; 2 uses
  br i1 %i.hc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ay
  br i1 %i.he, label %bb.az, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ay
  br i1 %i.he, label %bb.az, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hf = load i64, ptr %i.fw, align 8, !tbaa !69 ; 3 uses
  %i.hg = icmp ult i64 %i.hf, 16
  call void @llvm.assume(i1 %i.hg)
  switch i64 %i.hf, label %bb.bb [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ba
  ]

bb.ba:                                            ; preds = %bb.az
  %i.hh = load i8, ptr %i.hd, align 1, !tbaa !71
  store i8 %i.hh, ptr %i.hb, align 1, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hb, ptr align 1 %i.hd, i64 %i.hf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.bb, %bb.ba, %bb.az
  %i.hi = load i64, ptr %i.fw, align 8, !tbaa !69 ; 2 uses
  store i64 %i.hi, ptr %i.h, align 8, !tbaa !69
  %i.hj = load ptr, ptr %4, align 8, !tbaa !70
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  store i8 0, ptr %i.hk, align 1, !tbaa !71
  %.pre.i = load ptr, ptr %18, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.hd, ptr %4, align 8, !tbaa !70
  %i.hl = load <2 x i64>, ptr %i.fw, align 8, !tbaa !71
  store <2 x i64> %i.hl, ptr %i.h, align 8, !tbaa !71
  br label %bb.bd

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hm = load i64, ptr %i.g, align 8, !tbaa !71
  store ptr %i.hd, ptr %4, align 8, !tbaa !70
  %i.hn = load <2 x i64>, ptr %i.fw, align 8, !tbaa !71
  store <2 x i64> %i.hn, ptr %i.h, align 8, !tbaa !71
  %.not.i = icmp eq ptr %i.hb, null
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hb, ptr %18, align 8, !tbaa !70
  store i64 %i.hm, ptr %i.fv, align 8, !tbaa !71
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.fv, ptr %18, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.bc, %bb.bd
  %i.ho = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.hb, %bb.bc ], [ %i.fv, %bb.bd ]
  store i64 0, ptr %i.fw, align 8, !tbaa !69
  store i8 0, ptr %i.ho, align 1, !tbaa !71
  %i.hp = load ptr, ptr %18, align 8, !tbaa !70   ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.fv
  br i1 %i.hq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hr = load i64, ptr %i.fv, align 8, !tbaa !71
  %i.hs = add i64 %i.hr, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.hs) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store i64 0, ptr %i.fz, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.fy, align 8, !tbaa !90
  store ptr %i.ga, ptr %19, align 8, !tbaa !91
  store i64 500, ptr %i.fx, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.ht = load i64, ptr %i.h, align 8, !tbaa !69
  %i.hu = load i64, ptr %i.k, align 8, !tbaa !69
  %i.hv = add i64 %i.ht, %i.hu
  %i.hw = sub i64 500, %i.hv
  store ptr %i.gb, ptr %20, align 8, !tbaa !96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.hw, i8 noundef signext 120)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit163 unwind label %bb.bp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.hx = load ptr, ptr %20, align 8, !tbaa !70
  %i.hy = load i64, ptr %i.gc, align 8, !tbaa !69
  call void @_ZN3fmt3v126detail17format_error_codeERNS1_6bufferIcEEiNS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef %35, ptr %i.hx, i64 %i.hy) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.hz = load ptr, ptr %20, align 8, !tbaa !70, !noalias !465
  %i.ia = load i64, ptr %i.gc, align 8, !tbaa !69, !noalias !465 ; 3 uses
  %i.ib = load ptr, ptr %5, align 8, !tbaa !70, !noalias !465
  %i.ic = load i64, ptr %i.k, align 8, !tbaa !69, !noalias !465 ; 3 uses
  store ptr %i.gd, ptr %23, align 8, !tbaa !96, !alias.scope !466
  store i64 0, ptr %i.ge, align 8, !tbaa !69, !alias.scope !466
  store i8 0, ptr %i.gd, align 8, !tbaa !71, !alias.scope !466
  %i.id = add i64 %i.ic, %i.ia
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.id)
          to label %bb.be unwind label %.loopexit

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit163
  %i.ie = load i64, ptr %i.ge, align 8, !tbaa !69, !alias.scope !466
  %i.if = sub i64 4611686018427387903, %i.ie
  %i.ig = icmp ult i64 %i.if, %i.ia
  br i1 %i.ig, label %.invoke.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i167: ; preds = %bb.be
  %i.ih = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.hz, i64 noundef %i.ia)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i168 unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i168: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i167
  %i.ii = load i64, ptr %i.ge, align 8, !tbaa !69, !alias.scope !466
  %i.ij = sub i64 4611686018427387903, %i.ii
  %i.ik = icmp ult i64 %i.ij, %i.ic
  br i1 %i.ik, label %.invoke.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i169

.invoke.i.i170:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i168, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #32
          to label %.cont.i.i171 unwind label %.loopexit.split-lp

.cont.i.i171:                                     ; preds = %.invoke.i.i170
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i168
  %i.il = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.ib, i64 noundef %i.ic)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %.loopexit ; 0 uses

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i169
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

.loopexit.split-lp:                               ; preds = %.invoke.i.i170
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.bf:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.im = load ptr, ptr %23, align 8, !tbaa !70, !alias.scope !466 ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.gd
  br i1 %i.in, label %.body172, label %.body172.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i169
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.io = load i64, ptr %i.h, align 8, !tbaa !69, !noalias !467 ; 2 uses
  %i.ip = load i64, ptr %i.ge, align 8, !tbaa !69, !noalias !467
  %i.iq = sub i64 4611686018427387903, %i.ip
  %i.ir = icmp ult i64 %i.iq, %i.io
  br i1 %i.ir, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.bg:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.250) #32
          to label %.noexc176 unwind label %.loopexit.split-lp315

.noexc176:                                        ; preds = %bb.bg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.is = load ptr, ptr %4, align 8, !tbaa !70, !noalias !467
  %i.it = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.is, i64 noundef %i.io)
          to label %.noexc177 unwind label %.loopexit314 ; 6 uses

.noexc177:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.gf, ptr %22, align 8, !tbaa !96, !alias.scope !467
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !70 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 16 ; 5 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

bb.bh:                                            ; preds = %.noexc177
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !69 ; 3 uses
  %i.iz = icmp ult i64 %i.iy, 16
  call void @llvm.assume(i1 %i.iz)
  %i.ja = add nuw nsw i64 %i.iy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gf, ptr noundef nonnull align 8 dereferenceable(1) %i.iv, i64 %i.ja, i1 false)
  br label %bb.bi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %.noexc177
  store ptr %i.iu, ptr %22, align 8, !tbaa !70, !alias.scope !467
  %i.jb = load i64, ptr %i.iv, align 8, !tbaa !71
  store i64 %i.jb, ptr %i.gf, align 8, !tbaa !71, !alias.scope !467
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %.pre.i175 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !69
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174, %bb.bh
  %i.jc = phi i64 [ %i.iy, %bb.bh ], [ %.pre.i175, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174 ]
  %i.jd = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i64 %i.jc, ptr %i.gg, align 8, !tbaa !69, !alias.scope !467
  store ptr %i.iv, ptr %i.it, align 8, !tbaa !70
  store i64 0, ptr %i.jd, align 8, !tbaa !69
  store i8 0, ptr %i.iv, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !468)
  %i.je = load i64, ptr %i.fz, align 8, !tbaa !95, !noalias !468 ; 6 uses
  %i.jf = icmp ult i64 %i.je, 4611686018427387903
  call void @llvm.assume(i1 %i.jf)
  %i.jg = load ptr, ptr %19, align 8, !tbaa !91, !noalias !468 ; 3 uses
  store ptr %i.gh, ptr %24, align 8, !tbaa !96, !alias.scope !468
  %i.jh = icmp eq ptr %i.jg, null
  %i.ji = icmp ne i64 %i.je, 0
  %or.cond.i.i178 = and i1 %i.ji, %i.jh
  br i1 %or.cond.i.i178, label %.noexc.i181, label %bb.bj

.noexc.i181:                                      ; preds = %bb.bi
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #32
          to label %.noexc182 unwind label %.loopexit.split-lp320

.noexc182:                                        ; preds = %.noexc.i181
  unreachable

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !468
  store i64 %i.je, ptr %i.b, align 8, !tbaa !97, !noalias !468
  %i.jj = icmp samesign ugt i64 %i.je, 15
  br i1 %i.jj, label %.noexc.i.i180, label %._crit_edge.i.i.i179

.noexc.i.i180:                                    ; preds = %bb.bj
  %i.jk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc183 unwind label %.loopexit319 ; 2 uses

.noexc183:                                        ; preds = %.noexc.i.i180
  store ptr %i.jk, ptr %24, align 8, !tbaa !70, !alias.scope !468
  %i.jl = load i64, ptr %i.b, align 8, !tbaa !97, !noalias !468
  store i64 %i.jl, ptr %i.gh, align 8, !tbaa !71, !alias.scope !468
  br label %._crit_edge.i.i.i179

._crit_edge.i.i.i179:                             ; preds = %.noexc183, %bb.bj
  %i.jm = phi ptr [ %i.jk, %.noexc183 ], [ %i.gh, %bb.bj ] ; 2 uses
  switch i64 %i.je, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %bb.bm
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i179
  %i.jn = load i8, ptr %i.jg, align 1, !tbaa !71
  store i8 %i.jn, ptr %i.jm, align 1, !tbaa !71
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i.i179
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr align 1 %i.jg, i64 %i.je, i1 false)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i.i179
  %i.jo = load i64, ptr %i.b, align 8, !tbaa !97, !noalias !468 ; 2 uses
  store i64 %i.jo, ptr %i.gi, align 8, !tbaa !69, !alias.scope !468
  %i.jp = load ptr, ptr %24, align 8, !tbaa !70, !alias.scope !468
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jo
  store i8 0, ptr %i.jq, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !468
  %i.jr = load i64, ptr %i.gg, align 8, !tbaa !69, !noalias !469 ; 3 uses
  %i.js = load i64, ptr %i.gi, align 8, !tbaa !69, !noalias !469
  %i.jt = icmp eq i64 %i.jr, %i.js
  br i1 %i.jt, label %bb.bn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i185

bb.bn:                                            ; preds = %bb.bm
  %i.ju = icmp eq i64 %i.jr, 0
  br i1 %i.ju, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i188, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i186

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i186: ; preds = %bb.bn
  %i.jv = load ptr, ptr %24, align 8, !tbaa !70, !noalias !469
  %i.jw = load ptr, ptr %22, align 8, !tbaa !70, !noalias !469
  %bcmp.i.i.i187 = call i32 @bcmp(ptr %i.jw, ptr %i.jv, i64 %i.jr), !noalias !469
  %i.jx = icmp eq i32 %bcmp.i.i.i187, 0
  br i1 %i.jx, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i188, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i185

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i188: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i186, %bb.bn
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit191 unwind label %bb.bq

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i185: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i186, %bb.bm
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.129, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit191 unwind label %bb.bq

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit191: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i188, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i185
  %i.jy = load ptr, ptr %24, align 8, !tbaa !70   ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.gh
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit191
  %i.ka = load i64, ptr %i.gh, align 8, !tbaa !71
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jy, i64 noundef %i.kb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit191, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.kc = load ptr, ptr %22, align 8, !tbaa !70   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.gf
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.ke = load i64, ptr %i.gf, align 8, !tbaa !71
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  %i.kg = load ptr, ptr %23, align 8, !tbaa !70   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.gd
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %i.ki = load i64, ptr %i.gd, align 8, !tbaa !71
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  %i.kk = load i8, ptr %21, align 8, !tbaa !81, !range !82, !noundef !83
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.ca, label %bb.br

bb.bo:                                            ; preds = %bb.ax
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  br label %bb.dr

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

.loopexit314:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %lpad.loopexit316 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

.loopexit.split-lp315:                            ; preds = %bb.bg
  %lpad.loopexit.split-lp317 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

.loopexit319:                                     ; preds = %.noexc.i.i180
  %lpad.loopexit321 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

.loopexit.split-lp320:                            ; preds = %.noexc.i181
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

bb.bq:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i185, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i188
  %i.ko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kp = load ptr, ptr %24, align 8, !tbaa !70   ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.gh
  br i1 %i.kq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201: ; preds = %bb.bq
  %i.kr = load i64, ptr %i.gh, align 8, !tbaa !71
  %i.ks = add i64 %i.kr, 1
  call void @_ZdlPvm(ptr noundef %i.kp, i64 noundef %i.ks) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203: ; preds = %bb.bq, %.loopexit319, %.loopexit.split-lp320, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
  %.pn54 = phi { ptr, i32 } [ %i.ko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201 ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp320 ], [ %lpad.loopexit321, %.loopexit319 ], [ %i.ko, %bb.bq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.kt = load ptr, ptr %22, align 8, !tbaa !70   ; 2 uses
  %i.ku = icmp eq ptr %i.kt, %i.gf
  br i1 %i.ku, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203
  %i.kv = load i64, ptr %i.gf, align 8, !tbaa !71
  %i.kw = add i64 %i.kv, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, %.loopexit314, %.loopexit.split-lp315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  %.pn54.pn = phi { ptr, i32 } [ %.pn54, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204 ], [ %lpad.loopexit.split-lp317, %.loopexit.split-lp315 ], [ %lpad.loopexit316, %.loopexit314 ], [ %.pn54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203 ] ; 2 uses
  %i.kx = load ptr, ptr %23, align 8, !tbaa !70   ; 2 uses
  %i.ky = icmp eq ptr %i.kx, %i.gd
  br i1 %i.ky, label %.body172, label %.body172.sink.split

.body172.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %bb.bf
  %.sink617 = phi ptr [ %i.im, %bb.bf ], [ %i.kx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ]
  %.pn54.pn.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.bf ], [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ]
  %i.kz = load i64, ptr %i.gd, align 8, !tbaa !71
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %.sink617, i64 noundef %i.la) #31
  br label %.body172

.body172:                                         ; preds = %.body172.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206, %bb.bf
  %.pn54.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.bf ], [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit206 ], [ %.pn54.pn.pn.ph, %.body172.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #30
  br label %bb.ce

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30
  %i.lb = load ptr, ptr %i.gj, align 8, !tbaa !84 ; 2 uses
  %.not.i.i210 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i210, label %_ZNK7testing15AssertionResult15failure_messageEv.exit211, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !70
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit211

_ZNK7testing15AssertionResult15failure_messageEv.exit211: ; preds = %bb.bt, %bb.bs
  %i.ld = phi ptr [ %i.lc, %bb.bt ], [ @.str.5, %bb.bs ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 236, ptr noundef %i.ld)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit211
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bv unwind label %bb.by

bb.bv:                                            ; preds = %bb.bu
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  %i.le = load ptr, ptr %25, align 8, !tbaa !86   ; 3 uses
  %.not.i.i212 = icmp eq ptr %i.le, null
  br i1 %.not.i.i212, label %_ZN7testing7MessageD2Ev.exit214, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213: ; preds = %bb.bv
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !45
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(128) %i.le) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit214

_ZN7testing7MessageD2Ev.exit214:                  ; preds = %bb.bv, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  br label %bb.ca

bb.bw:                                            ; preds = %bb.br
  %i.li = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit217

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit211
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.by:                                            ; preds = %bb.bu
  %i.lk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #30
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pn58 = phi { ptr, i32 } [ %i.lk, %bb.by ], [ %i.lj, %bb.bx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #30
  %i.ll = load ptr, ptr %25, align 8, !tbaa !86   ; 3 uses
  %.not.i.i215 = icmp eq ptr %i.ll, null
  br i1 %.not.i.i215, label %_ZN7testing7MessageD2Ev.exit217, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216: ; preds = %bb.bz
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !45
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(128) %i.ll) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit217

_ZN7testing7MessageD2Ev.exit217:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216, %bb.bz, %bb.bw
  %.pn58.pn = phi { ptr, i32 } [ %i.li, %bb.bw ], [ %.pn58, %bb.bz ], [ %.pn58, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #30
  br label %bb.ce

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, %_ZN7testing7MessageD2Ev.exit214
  %i.lp = load ptr, ptr %i.gj, align 8, !tbaa !84 ; 4 uses
  %.not.i.i218 = icmp eq ptr %i.lp, null
  br i1 %.not.i.i218, label %_ZN7testing15AssertionResultD2Ev.exit222, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !70 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219: ; preds = %bb.cb
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !71
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i219
  call void @_ZdlPvm(ptr noundef nonnull %i.lp, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit222

_ZN7testing15AssertionResultD2Ev.exit222:         ; preds = %bb.ca, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  store i64 500, ptr %i.e, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.lv = load i64, ptr %i.fz, align 8, !tbaa !95 ; 2 uses
  store i64 %i.lv, ptr %i.f, align 8, !tbaa !97
  %i.lw = icmp eq i64 %i.lv, 500
  br i1 %i.lw, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit222
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.cf

bb.cd:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit222
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %27, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.cf

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  %i.lx = load i8, ptr %27, align 8, !tbaa !81, !range !82, !noundef !83
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %bb.cp, label %bb.cg

bb.ce:                                            ; preds = %_ZN7testing7MessageD2Ev.exit217, %.body172
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn, %_ZN7testing7MessageD2Ev.exit217 ], [ %.pn54.pn.pn, %.body172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #30
  br label %bb.dq

bb.cf:                                            ; preds = %bb.cd, %bb.cc
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  br label %bb.cz

bb.cg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ch unwind label %bb.cl

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #30
  %i.ma = load ptr, ptr %i.gk, align 8, !tbaa !84 ; 2 uses
  %.not.i.i225 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i225, label %_ZNK7testing15AssertionResult15failure_messageEv.exit226, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !70
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit226

_ZNK7testing15AssertionResult15failure_messageEv.exit226: ; preds = %bb.ci, %bb.ch
  %i.mc = phi ptr [ %i.mb, %bb.ci ], [ @.str.5, %bb.ch ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 238, ptr noundef %i.mc)
          to label %bb.cj unwind label %bb.cm

bb.cj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit226
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  %i.md = load ptr, ptr %28, align 8, !tbaa !86   ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.md, null
  br i1 %.not.i.i227, label %_ZN7testing7MessageD2Ev.exit229, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228: ; preds = %bb.ck
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !45
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(128) %i.md) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit229

_ZN7testing7MessageD2Ev.exit229:                  ; preds = %bb.ck, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i228
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  br label %bb.cp

bb.cl:                                            ; preds = %bb.cg
  %i.mh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit232

bb.cm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit226
  %i.mi = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cn:                                            ; preds = %bb.cj
  %i.mj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #30
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.pn62 = phi { ptr, i32 } [ %i.mj, %bb.cn ], [ %i.mi, %bb.cm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #30
  %i.mk = load ptr, ptr %28, align 8, !tbaa !86   ; 3 uses
  %.not.i.i230 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i230, label %_ZN7testing7MessageD2Ev.exit232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.co
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !45
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  %i.mn = load ptr, ptr %i.mm, align 8
  call void %i.mn(ptr noundef nonnull align 8 dereferenceable(128) %i.mk) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit232

_ZN7testing7MessageD2Ev.exit232:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, %bb.co, %bb.cl
  %.pn62.pn = phi { ptr, i32 } [ %i.mh, %bb.cl ], [ %.pn62, %bb.co ], [ %.pn62, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %27) #30
  br label %bb.cz

bb.cp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit229
  %i.mo = load ptr, ptr %i.gk, align 8, !tbaa !84 ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i233, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !70 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.mr = icmp eq ptr %i.mp, %i.mq
  br i1 %i.mr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234: ; preds = %bb.cq
  %i.ms = load i64, ptr %i.mq, align 8, !tbaa !71
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.mt) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234
  call void @_ZdlPvm(ptr noundef nonnull %i.mo, i64 noundef 32) #31
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  store i64 0, ptr %i.fz, align 8, !tbaa !95
  %i.mu = load i64, ptr %i.gc, align 8, !tbaa !69 ; 4 uses
  %i.mv = add i64 %i.mu, 1                        ; 3 uses
  %i.mw = load ptr, ptr %20, align 8, !tbaa !70   ; 2 uses
  %i.mx = icmp eq ptr %i.mw, %i.gb
  br i1 %i.mx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.cr
  %i.my = icmp ult i64 %i.mu, 16
  call void @llvm.assume(i1 %i.my)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cr
  %i.mz = load i64, ptr %i.gb, align 8, !tbaa !71
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.na = phi i64 [ %i.mz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.nb = icmp ugt i64 %i.mv, %i.na
  br i1 %i.nb, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.mu, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc238 unwind label %bb.da

.noexc238:                                        ; preds = %bb.cs
  %.pre.i.i = load ptr, ptr %20, align 8, !tbaa !70
  br label %bb.ct

bb.ct:                                            ; preds = %.noexc238, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.nc = phi ptr [ %.pre.i.i, %.noexc238 ], [ %i.mw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 %i.mu
  store i8 120, ptr %i.nd, align 1, !tbaa !71
  store i64 %i.mv, ptr %i.gc, align 8, !tbaa !69
  %i.ne = load ptr, ptr %20, align 8, !tbaa !70
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.mv
  store i8 0, ptr %i.nf, align 1, !tbaa !71
  %i.ng = load ptr, ptr %20, align 8, !tbaa !70
  %i.nh = load i64, ptr %i.gc, align 8, !tbaa !69
  call void @_ZN3fmt3v126detail17format_error_codeERNS1_6bufferIcEEiNS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef %35, ptr %i.ng, i64 %i.nh) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.ni = load i64, ptr %i.fz, align 8, !tbaa !95, !noalias !470 ; 6 uses
  %i.nj = icmp ult i64 %i.ni, 4611686018427387903
  call void @llvm.assume(i1 %i.nj)
  %i.nk = load ptr, ptr %19, align 8, !tbaa !91, !noalias !470 ; 3 uses
  store ptr %i.gl, ptr %31, align 8, !tbaa !96, !alias.scope !470
  %i.nl = icmp eq ptr %i.nk, null
  %i.nm = icmp ne i64 %i.ni, 0
  %or.cond.i.i239 = and i1 %i.nm, %i.nl
  br i1 %or.cond.i.i239, label %.noexc.i242, label %bb.cu

.noexc.i242:                                      ; preds = %bb.ct
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.230) #32
          to label %.noexc243 unwind label %.loopexit.split-lp325

.noexc243:                                        ; preds = %.noexc.i242
  unreachable

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !470
  store i64 %i.ni, ptr %i.a, align 8, !tbaa !97, !noalias !470
  %i.nn = icmp samesign ugt i64 %i.ni, 15
  br i1 %i.nn, label %.noexc.i.i241, label %._crit_edge.i.i.i240

.noexc.i.i241:                                    ; preds = %bb.cu
  %i.no = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc244 unwind label %.loopexit324 ; 2 uses

.noexc244:                                        ; preds = %.noexc.i.i241
  store ptr %i.no, ptr %31, align 8, !tbaa !70, !alias.scope !470
  %i.np = load i64, ptr %i.a, align 8, !tbaa !97, !noalias !470
  store i64 %i.np, ptr %i.gl, align 8, !tbaa !71, !alias.scope !470
  br label %._crit_edge.i.i.i240

._crit_edge.i.i.i240:                             ; preds = %.noexc244, %bb.cu
  %i.nq = phi ptr [ %i.no, %.noexc244 ], [ %i.gl, %bb.cu ] ; 2 uses
  switch i64 %i.ni, label %bb.cw [
    i64 1, label %bb.cv
    i64 0, label %bb.cx
  ]

bb.cv:                                            ; preds = %._crit_edge.i.i.i240
  %i.nr = load i8, ptr %i.nk, align 1, !tbaa !71
  store i8 %i.nr, ptr %i.nq, align 1, !tbaa !71
  br label %bb.cx

bb.cw:                                            ; preds = %._crit_edge.i.i.i240
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nq, ptr align 1 %i.nk, i64 %i.ni, i1 false)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv, %._crit_edge.i.i.i240
  %i.ns = load i64, ptr %i.a, align 8, !tbaa !97, !noalias !470 ; 2 uses
  store i64 %i.ns, ptr %i.gm, align 8, !tbaa !69, !alias.scope !470
  %i.nt = load ptr, ptr %31, align 8, !tbaa !70, !alias.scope !470
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.ns
  store i8 0, ptr %i.nu, align 1, !tbaa !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !470
  %i.nv = load i64, ptr %i.gm, align 8, !tbaa !69, !noalias !471 ; 3 uses
  %i.nw = load i64, ptr %i.h, align 8, !tbaa !69, !noalias !471
  %i.nx = icmp eq i64 %i.nv, %i.nw
  br i1 %i.nx, label %bb.cy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i246

bb.cy:                                            ; preds = %bb.cx
  %i.ny = icmp eq i64 %i.nv, 0
  br i1 %i.ny, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i249, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i247

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i247: ; preds = %bb.cy
  %i.nz = load ptr, ptr %4, align 8, !tbaa !70, !noalias !471
  %i.oa = load ptr, ptr %31, align 8, !tbaa !70, !noalias !471
  %bcmp.i.i.i248 = call i32 @bcmp(ptr %i.oa, ptr %i.nz, i64 %i.nv), !noalias !471
  %i.ob = icmp eq i32 %bcmp.i.i.i248, 0
  br i1 %i.ob, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i249, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i246

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i249: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i247, %bb.cy
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit252 unwind label %bb.db

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i246: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i247, %bb.cx
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EENS_15AssertionResultEPKcSA_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.132, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit252 unwind label %bb.db

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit252: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i249, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i246
  %i.oc = load ptr, ptr %31, align 8, !tbaa !70   ; 2 uses
  %i.od = icmp eq ptr %i.oc, %i.gl
  br i1 %i.od, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit252
  %i.oe = load i64, ptr %i.gl, align 8, !tbaa !71
  %i.of = add i64 %i.oe, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.of) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit252, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  %i.og = load i8, ptr %30, align 8, !tbaa !81, !range !82, !noundef !83
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.dl, label %bb.dc

bb.cz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit232, %bb.cf
  %.pn62.pn.pn = phi { ptr, i32 } [ %.pn62.pn, %_ZN7testing7MessageD2Ev.exit232 ], [ %i.lz, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #30
  br label %bb.dp

bb.da:                                            ; preds = %bb.cs
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dp

.loopexit324:                                     ; preds = %.noexc.i.i241
  %lpad.loopexit326 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

.loopexit.split-lp325:                            ; preds = %.noexc.i242
  %lpad.loopexit.split-lp327 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

bb.db:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i246, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i249
  %i.oj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ok = load ptr, ptr %31, align 8, !tbaa !70   ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.gl
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.db
  %i.om = load i64, ptr %i.gl, align 8, !tbaa !71
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.db, %.loopexit324, %.loopexit.split-lp325, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256
  %.pn66 = phi { ptr, i32 } [ %i.oj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256 ], [ %lpad.loopexit.split-lp327, %.loopexit.split-lp325 ], [ %lpad.loopexit326, %.loopexit324 ], [ %i.oj, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #30
  br label %bb.do

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dd unwind label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #30
  %i.oo = load ptr, ptr %i.gn, align 8, !tbaa !84 ; 2 uses
  %.not.i.i259 = icmp eq ptr %i.oo, null
  br i1 %.not.i.i259, label %_ZNK7testing15AssertionResult15failure_messageEv.exit260, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !70
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit260

_ZNK7testing15AssertionResult15failure_messageEv.exit260: ; preds = %bb.de, %bb.dd
  %i.oq = phi ptr [ %i.op, %bb.de ], [ @.str.5, %bb.dd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 243, ptr noundef %i.oq)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit260
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %bb.df
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  %i.or = load ptr, ptr %32, align 8, !tbaa !86   ; 3 uses
  %.not.i.i261 = icmp eq ptr %i.or, null
  br i1 %.not.i.i261, label %_ZN7testing7MessageD2Ev.exit263, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262: ; preds = %bb.dg
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !45
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %i.ou = load ptr, ptr %i.ot, align 8
  call void %i.ou(ptr noundef nonnull align 8 dereferenceable(128) %i.or) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit263

_ZN7testing7MessageD2Ev.exit263:                  ; preds = %bb.dg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  br label %bb.dl

bb.dh:                                            ; preds = %bb.dc
  %i.ov = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit266

bb.di:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit260
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.df
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #30
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn68 = phi { ptr, i32 } [ %i.ox, %bb.dj ], [ %i.ow, %bb.di ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #30
  %i.oy = load ptr, ptr %32, align 8, !tbaa !86   ; 3 uses
  %.not.i.i264 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i264, label %_ZN7testing7MessageD2Ev.exit266, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265: ; preds = %bb.dk
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !45
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(128) %i.oy) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit266

_ZN7testing7MessageD2Ev.exit266:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265, %bb.dk, %bb.dh
  %.pn68.pn = phi { ptr, i32 } [ %i.ov, %bb.dh ], [ %.pn68, %bb.dk ], [ %.pn68, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #30
  br label %bb.do

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, %_ZN7testing7MessageD2Ev.exit263
  %i.pc = load ptr, ptr %i.gn, align 8, !tbaa !84 ; 4 uses
  %.not.i.i267 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i267, label %_ZN7testing15AssertionResultD2Ev.exit271, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !70 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %i.pf = icmp eq ptr %i.pd, %i.pe
  br i1 %i.pf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268: ; preds = %bb.dm
  %i.pg = load i64, ptr %i.pe, align 8, !tbaa !71
  %i.ph = add i64 %i.pg, 1
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.ph) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i268
  call void @_ZdlPvm(ptr noundef nonnull %i.pc, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit271

_ZN7testing15AssertionResultD2Ev.exit271:         ; preds = %bb.dl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %i.pi = load ptr, ptr %20, align 8, !tbaa !70   ; 2 uses
  %i.pj = icmp eq ptr %i.pi, %i.gb
  br i1 %i.pj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZN7testing15AssertionResultD2Ev.exit271
  %i.pk = load i64, ptr %i.gb, align 8, !tbaa !71
  %i.pl = add i64 %i.pk, 1
  call void @_ZdlPvm(ptr noundef %i.pi, i64 noundef %i.pl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZN7testing15AssertionResultD2Ev.exit271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %i.pm = load ptr, ptr %19, align 8, !tbaa !91   ; 2 uses
  %.not.i.i275 = icmp eq ptr %i.pm, %i.ga
  br i1 %.not.i.i275, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit276, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  call void @free(ptr noundef %i.pm) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit276

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br i1 %34, label %bb.ax, label %bb.au, !llvm.loop !457

bb.do:                                            ; preds = %_ZN7testing7MessageD2Ev.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68.pn, %_ZN7testing7MessageD2Ev.exit266 ], [ %.pn66, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #30
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.da, %bb.cz
  %.pn68.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn, %bb.do ], [ %i.oi, %bb.da ], [ %.pn62.pn.pn, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.ce
  %.pn68.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn, %bb.dp ], [ %.pn58.pn.pn, %bb.ce ] ; 2 uses
  %i.pn = load ptr, ptr %20, align 8, !tbaa !70   ; 2 uses
  %i.po = icmp eq ptr %i.pn, %i.gb
  br i1 %i.po, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277: ; preds = %bb.dq
  %i.pp = load i64, ptr %i.gb, align 8, !tbaa !71
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pn, i64 noundef %i.pq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277, %bb.bp
  %.pn68.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.kn, %bb.bp ], [ %.pn68.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i277 ], [ %.pn68.pn.pn.pn.pn, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  %i.pr = load ptr, ptr %19, align 8, !tbaa !91   ; 2 uses
  %.not.i.i280 = icmp eq ptr %i.pr, %i.ga
  br i1 %.not.i.i280, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit281.a, label %36

36:                                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279
  call void @free(ptr noundef %i.pr) #30
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit281.a

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit281.a: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit279, %36
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.dr

bb.dr:                                            ; preds = %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit281.a, %bb.bo
  %.pn68.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit281.a ], [ %i.km, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit158, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit126
  %.pn68.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn68.pn.pn.pn.pn.pn.pn, %bb.dr ], [ %.pn49.pn.pn.pn, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit158 ], [ %.pn42.pn.pn.pn, %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit126 ]
  %i.ps = load ptr, ptr %5, align 8, !tbaa !70    ; 2 uses
  %i.pt = icmp eq ptr %i.ps, %i.j
  br i1 %i.pt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %bb.ds
  %i.pu = load i64, ptr %i.j, align 8, !tbaa !71
  %i.pv = add i64 %i.pu, 1
  call void @_ZdlPvm(ptr noundef %i.ps, i64 noundef %i.pv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %bb.ds, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.pw = load ptr, ptr %4, align 8, !tbaa !70    ; 2 uses
  %i.px = icmp eq ptr %i.pw, %i.g
  br i1 %i.px, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %i.py = load i64, ptr %i.g, align 8, !tbaa !71
  %i.pz = add i64 %i.py, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.pz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn68.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail17format_error_codeERNS1_6bufferIcEEiNS0_17basic_string_viewIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr %2, i64 %3) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.122", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !95
  %spec.select = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 2 uses
  %i.b = or i32 %spec.select, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = xor i32 %i.c, 31
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !97
  %i.h = zext i32 %spec.select to i64
  %i.i = add i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  br i1 %i.j, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.187)
          to label %.invoke unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  tail call void @__cxa_free_exception(ptr nonnull %i.k) #30
  br label %.body

_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit: ; preds = %bb.a
  %i.m = lshr i64 %i.i, 32
  %i.n = icmp slt i32 %1, 0
  %.neg56 = select i1 %i.n, i64 491, i64 492
  %i.o = sub nsw i64 %.neg56, %i.m
  %.not = icmp ugt i64 %3, %i.o
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %2, ptr %7, align 16, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %3, ptr %i.p, align 8, !tbaa !71
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @_ZZN3fmt3v126detail17format_error_codeERNS1_6bufferIcEEiNS0_17basic_string_viewIcEEE3SEP, ptr %i.q, align 16, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr @.str.227, ptr %5, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i15.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 4, ptr %.sroa.2.0..sroa_idx.i15.i, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !107
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %i.s, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 205, ptr %i.t, align 8, !tbaa !103
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %7, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !71
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr null, ptr %i.u, align 8, !tbaa !108
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.227, i64 4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr @_ZZN3fmt3v126detail17format_error_codeERNS1_6bufferIcEEiNS0_17basic_string_viewIcEEE9ERROR_STR, ptr %6, align 16, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %1, ptr %i.v, align 16, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr @.str.227, ptr %4, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i15.i26 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4, ptr %.sroa.2.0..sroa_idx.i15.i26, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !107
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 28, ptr %i.y, align 8, !tbaa !103
  %.sroa.2.0..sroa_idx.i16.i27 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i16.i27, align 8, !tbaa !71
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.z, align 8, !tbaa !108
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.227, i64 4, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !95
  %i.ab = icmp ult i64 %i.aa, 501
  br i1 %i.ab, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull @.str.5)
          to label %.invoke unwind label %bb.i

.invoke:                                          ; preds = %bb.h, %bb.b
  %.sink = phi ptr [ %i.k, %bb.b ], [ %i.ac, %bb.h ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17assertion_failure, i64 16), ptr %.sink, align 8, !tbaa !45
  invoke void @__cxa_throw(ptr nonnull %.sink, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
          to label %.cont unwind label %bb.k

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.ac) #30
  br label %.body

bb.j:                                             ; preds = %bb.g
  ret void

bb.k:                                             ; preds = %.invoke, %bb.f, %bb.d
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.k, %bb.i, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.ae, %bb.k ], [ %i.ad, %bb.i ]
  %i.af = extractvalue { ptr, i32 } %eh.lpad-body, 0
  call void @__clang_call_terminate(ptr %i.af) #33
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN34format_impl_test_count_digits_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_Z17test_count_digitsIjEvv()
  tail call void @_Z17test_count_digitsImEvv()
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z17test_count_digitsIjEvv() local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"class.testing::Message", align 8  ; 7 uses
  %2 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 1, ptr %i.c, align 4, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %bb.r

bb.c:                                             ; preds = %bb.a, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
end_hunk_1
