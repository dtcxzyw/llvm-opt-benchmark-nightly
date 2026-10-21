Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/format-impl-test?download=true
inline.NumInlined: 4849
inline.NumDeleted: 1078
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN21fp_test_multiply_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIyjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.ap
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !45
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(128) %i.cg) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.au

bb.aq:                                            ; preds = %bb.al
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit69

bb.ar:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit63
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #30
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn23 = phi { ptr, i32 } [ %i.cm, %bb.as ], [ %i.cl, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.cn = load ptr, ptr %12, align 8, !tbaa !86   ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i67, label %_ZN7testing7MessageD2Ev.exit69, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68: ; preds = %bb.at
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !45
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(128) %i.cn) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit69

_ZN7testing7MessageD2Ev.exit69:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68, %bb.at, %bb.aq
  %.pn23.pn = phi { ptr, i32 } [ %i.ck, %bb.aq ], [ %.pn23, %bb.at ], [ %.pn23, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.aw

bb.au:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit61, %_ZN7testing7MessageD2Ev.exit66
  %i.cr = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !84 ; 4 uses
  %.not.i.i70 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i70, label %_ZN7testing15AssertionResultD2Ev.exit74, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !70 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71: ; preds = %bb.av
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !71
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i71
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit74

_ZN7testing15AssertionResultD2Ev.exit74:          ; preds = %bb.au, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit69, %_ZN7testing7MessageD2Ev.exit55, %_ZN7testing7MessageD2Ev.exit39, %_ZN7testing7MessageD2Ev.exit30
  %.pn23.pn.pn = phi { ptr, i32 } [ %.pn23.pn, %_ZN7testing7MessageD2Ev.exit69 ], [ %.pn20.pn, %_ZN7testing7MessageD2Ev.exit55 ], [ %.pn17.pn, %_ZN7testing7MessageD2Ev.exit39 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  resume { ptr, i32 } %.pn23.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN28fp_test_dragonbox_max_k_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIfvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  %i.a = load i8, ptr %1, align 8, !tbaa !81, !range !82, !noundef !83
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.a

bb.a:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN3fmt3v126detail9dragonbox10float_infoIfvEUt_EiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %i.e, %bb.c ], [ @.str.5, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 204, ptr noundef %i.f)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  %i.g = load ptr, ptr %2, align 8, !tbaa !86     ; 3 uses
  %.not.i.i12 = icmp eq ptr %i.g, null
  br i1 %.not.i.i12, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #30, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
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
  %.not.i.i22.a = icmp eq ptr %i.ab, null
  br i1 %.not.i.i22.a, label %_ZNK7testing15AssertionResult15failure_messageEv.exit23, label %bb.n

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
end_hunk_0
begin_hunk_1_@_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm:bb.a

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail9allocatorIcE8allocateEm.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #22

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr %4, ptr %5) local_unnamed_addr #12 comdat {
bb.a:
  %6 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %7 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %8 = alloca %"struct.fmt::v12::detail::default_arg_formatter", align 8 ; 11 uses
  %9 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %i.a = icmp eq i64 %2, 2
  br i1 %i.a, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 1
  %i.c = icmp ne i16 %i.b, 32123
  %i.d = zext i1 %i.c to i32
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i64 %3, -1
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %3, 4294967295
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 16, !tbaa !124
  br label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit

bb.f:                                             ; preds = %bb.c
  %i.h = trunc i64 %3 to i32
  %i.i = and i32 %i.h, 15                         ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread: ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  br label %bb.v

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit: ; preds = %bb.f, %bb.e
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %bb.e ], [ %i.i, %bb.f ]
  %.sroa.0.0.copyload.sink65 = load i128, ptr %4, align 16, !tbaa !71 ; 8 uses
  %i.j = trunc i128 %.sroa.0.0.copyload.sink65 to i64 ; 4 uses
  %i.k = lshr i128 %.sroa.0.0.copyload.sink65, 64
  %i.l = trunc nuw i128 %i.k to i64               ; 2 uses
  %i.m = trunc i128 %.sroa.0.0.copyload.sink65 to i32 ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i = inttoptr i64 %i.j to ptr ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.n = ptrtoint ptr %0 to i64
  store i64 %i.n, ptr %8, align 8, !tbaa !94
  switch i32 %.sroa.21.0, label %bb.v [
    i32 15, label %bb.u
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
    i32 13, label %bb.s
    i32 14, label %bb.t
  ]

bb.g:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %i.o = tail call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i32 noundef %i.m) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.h:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %i.m)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.i:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %i.p = tail call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i64 noundef %i.j) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.j:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %i.j)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.k:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %i.q = tail call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEnTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr nonnull %0, i128 noundef %.sroa.0.0.copyload.sink65) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v126detail21default_arg_formatterIcEclIoTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %8, i128 noundef %.sroa.0.0.copyload.sink65)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.m:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %i.r = trunc i128 %.sroa.0.0.copyload.sink65 to i1
  call void @_ZN3fmt3v126detail21default_arg_formatterIcEclIbTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %i.r)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.n:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %i.s = trunc i128 %.sroa.0.0.copyload.sink65 to i8
  call void @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %8, i8 noundef signext %i.s)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.o:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.25 = bitcast i32 %i.m to float
  %i.t = tail call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr nonnull %0, float noundef %.sroa.0.0..sroa.0.0..sroa.0.0.25) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.p:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.0..sroa.0.0..sroa.0.0.21 = bitcast i64 %i.j to double
  %i.u = tail call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr nonnull %0, double noundef %.sroa.0.0..sroa.0.0..sroa.0.0.21) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.q:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %i.v = trunc i128 %.sroa.0.0.copyload.sink65 to i80
  %.sroa.0.0..sroa.0.0..sroa.0.0.18 = bitcast i80 %i.v to x86_fp80
  %i.w = tail call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr nonnull %0, x86_fp80 noundef %.sroa.0.0..sroa.0.0..sroa.0.0.18, i64 137438986240, i64 -4294967296, ptr null) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.r:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, i64 %i.l
  %i.y = tail call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr noundef %i.x, ptr nonnull %0) ; 0 uses
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  call void @_ZN3fmt3v126detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i = inttoptr i64 %i.l to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %0, ptr %7, align 8, !tbaa !94
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  call void %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.2.0.copyload.i(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 8 dereferenceable(32) %7), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit

bb.v:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit.thread, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.209) #32
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.x

bb.w:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %1, ptr %9, align 8, !tbaa !104
  %.sroa.2.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i15, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !107
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %0, ptr %i.ab, align 8, !tbaa !94
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %3, ptr %i.ac, align 8, !tbaa !103
  %.sroa.2.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %4, ptr %.sroa.2.0..sroa_idx.i16, align 8, !tbaa !71
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %5, ptr %i.ad, align 8, !tbaa !108
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail21default_arg_formatterIcEEEEDTclfp_Li0EEEOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %4 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %5 = alloca %class.anon.97, align 8             ; 5 uses
  %6 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %7 = alloca %class.anon.80, align 8             ; 5 uses
  %8 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %9 = alloca %"class.fmt::v12::parse_context", align 8 ; 4 uses
  %10 = alloca %"class.fmt::v12::context", align 8 ; 5 uses
  %11 = alloca %class.anon.97, align 8            ; 5 uses
  %12 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %13 = alloca %class.anon.80, align 8            ; 5 uses
  %14 = alloca %"struct.fmt::v12::format_specs", align 4 ; 7 uses
  %15 = alloca %struct.id_adapter, align 8        ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 8 uses
  %.not230 = icmp samesign eq i64 %1, 0
  br i1 %.not230, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 4
  %scevgep.i.i.i66 = getelementptr inbounds nuw i8, ptr %12, i64 5
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 4
  %scevgep.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 5
  %i.j = getelementptr inbounds nuw i8, ptr %14, i64 12
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4
  %scevgep.i.i.i134 = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 4
  %scevgep.i.i.i113 = getelementptr inbounds nuw i8, ptr %8, i64 5
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.sroa.2.0..sroa_idx.i.i.i114 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit
  %.0232 = phi ptr [ %0, %.lr.ph ], [ %.1, %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit ] ; 6 uses
  %.024231 = phi ptr [ %0, %.lr.ph ], [ %.125, %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0232, i64 1 ; 9 uses
  %i.t = load i8, ptr %.0232, align 1, !tbaa !71
  switch i8 %i.t, label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit [
    i8 123, label %bb.c
    i8 125, label %bb.cd
  ]

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i35 = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.u = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.024231, ptr noundef nonnull %.0232, ptr %.sroa.0.0.copyload.i.i35) ; 0 uses
  %i.v = icmp eq ptr %i.s, %i.a
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.211) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.s, align 1, !tbaa !71
  switch i8 %i.w, label %bb.aq [
    i8 125, label %bb.f
    i8 123, label %bb.an
    i8 58, label %bb.ao
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.c, align 8, !tbaa !107  ; 7 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.214) #32
  unreachable

_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit: ; preds = %bb.f
  %i.z = add nuw nsw i32 %i.x, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !107
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !126, !noalias !560 ; 3 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = icmp ult i32 %i.x, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !71, !noalias !560
  %i.af = zext nneg i32 %i.x to i64
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %.sroa.21186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.21186.0.copyload = load i32, ptr %.sroa.21186.0..sroa_idx, align 16, !tbaa !124
  br label %_ZNK3fmt3v127context3argEi.exit

bb.j:                                             ; preds = %_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit
  %i.ah = icmp samesign ugt i32 %i.x, 14
  br i1 %i.ah, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = shl nuw nsw i32 %i.x, 2
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = lshr i64 %i.aa, %i.aj
  %i.al = trunc i64 %i.ak to i32
  %i.am = and i32 %i.al, 15                       ; 2 uses
  %.not.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !71, !noalias !560
  %i.ao = zext nneg i32 %i.x to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  br label %_ZNK3fmt3v127context3argEi.exit

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.i, %bb.l
  %.sroa.0170.0.copyload.sink369.in = phi ptr [ %i.ag, %bb.i ], [ %i.ap, %bb.l ]
  %.sroa.21186.0 = phi i32 [ %.sroa.21186.0.copyload, %bb.i ], [ %i.am, %bb.l ]
  %.sroa.0170.0.copyload.sink369 = load i128, ptr %.sroa.0170.0.copyload.sink369.in, align 16, !tbaa !71 ; 12 uses
  %extract.t = trunc i128 %.sroa.0170.0.copyload.sink369 to i8
  %extract.t331 = trunc i128 %.sroa.0170.0.copyload.sink369 to i32 ; 5 uses
  %extract.t334 = trunc i128 %.sroa.0170.0.copyload.sink369 to i64 ; 10 uses
  %extract = lshr i128 %.sroa.0170.0.copyload.sink369, 64
  %extract.t339 = trunc nuw i128 %extract to i64  ; 2 uses
  %.sroa.0170.0..sroa.0170.0..sroa.0170.0..sroa.0.0.copyload.i.i31 = inttoptr i64 %extract.t334 to ptr ; 6 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !tbaa !94 ; 35 uses
  switch i32 %.sroa.21186.0, label %_ZNK3fmt3v127context3argEi.exit.thread [
    i32 15, label %bb.am
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.s
    i32 6, label %bb.t
    i32 7, label %bb.ab
    i32 8, label %bb.ac
    i32 9, label %bb.ae
    i32 10, label %bb.af
    i32 11, label %bb.ag
    i32 12, label %bb.ah
    i32 13, label %bb.aj
    i32 14, label %bb.ak
  ]

bb.m:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit
  %i.aq = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i, i32 noundef %extract.t331) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.n:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit
  %i.ar = or i32 %extract.t331, 1
  %i.as = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ar, i1 true)
  %i.at = xor i32 %i.as, 31
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !97
  %i.ax = trunc i128 %.sroa.0170.0.copyload.sink369 to i64
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = add i64 %i.aw, %i.ay                    ; 2 uses
  %i.ba = lshr i64 %i.az, 32
  %i.bb = trunc nuw i64 %i.ba to i32              ; 2 uses
  %i.bc = ashr i64 %i.az, 32                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !95 ; 2 uses
  %i.bf = add i64 %i.bc, %i.be                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !92
  %i.bi = icmp ugt i64 %i.bf, %i.bh
  br i1 %i.bi, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !90
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.bf), !inline_history !551
  %.pre.i.i.i = load i64, ptr %i.bd, align 8, !tbaa !95 ; 2 uses
  %.pre14.i.i.i = load i64, ptr %i.bg, align 8, !tbaa !92
  %.pre15.i.i.i = add i64 %.pre.i.i.i, %i.bc      ; 2 uses
  %i.bl = icmp ult i64 %.pre14.i.i.i, %.pre15.i.i.i
  br i1 %i.bl, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, %bb.n
  %i.bm = phi i64 [ %.pre.i.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i ], [ %i.be, %bb.n ]
  %.pre-phi19.i.i.i = phi i64 [ %.pre15.i.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i ], [ %i.bf, %bb.n ]
  store i64 %.pre-phi19.i.i.i, ptr %i.bd, align 8, !tbaa !95
  %i.bn = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i37, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  %i.bp = call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i(ptr noundef nonnull %i.bo, i32 noundef %extract.t331, i32 noundef %i.bb) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.bq = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.0.0.copyload.i, i32 noundef %extract.t331, i32 noundef %i.bb) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.p:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit
  %i.br = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i, i64 noundef %extract.t334) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit
  %i.bs = or i64 %extract.t334, 1
  %i.bt = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = xor i64 %i.bt, 63
  %i.bv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !71  ; 2 uses
  %i.bx = zext i8 %i.bw to i32
  %i.by = zext i8 %i.bw to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.by
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_:bb.a
  %i.db = add nuw nsw i32 %.017.i.i.i.i, 4        ; 2 uses
  %i.dc = icmp ult i128 %.01116.i.i.i.i, 100000
  br i1 %i.dc, label %_ZN3fmt3v126detail12count_digitsEo.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZN3fmt3v126detail12count_digitsEo.exit.i.i:      ; preds = %bb.z, %bb.y, %bb.w, %bb.u, %bb.t
  %.012.i.i.i.i = phi i32 [ %i.cz, %bb.y ], [ %i.cv, %bb.u ], [ %i.cx, %bb.w ], [ 1, %bb.t ], [ %i.db, %bb.z ] ; 3 uses
  %i.dd = sext i32 %.012.i.i.i.i to i64           ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 3 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !95 ; 2 uses
  %i.dg = add i64 %i.df, %i.dd                    ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !92
  %i.dj = icmp ugt i64 %i.dg, %i.di
  br i1 %i.dj, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i54, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i50

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i54: ; preds = %_ZN3fmt3v126detail12count_digitsEo.exit.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !90
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.dg), !inline_history !553
  %.pre.i.i.i55 = load i64, ptr %i.de, align 8, !tbaa !95 ; 2 uses
  %.pre14.i.i.i56 = load i64, ptr %i.dh, align 8, !tbaa !92
  %.pre15.i.i.i57 = add i64 %.pre.i.i.i55, %i.dd  ; 2 uses
  %i.dm = icmp ult i64 %.pre14.i.i.i56, %.pre15.i.i.i57
  br i1 %i.dm, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i53, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i50

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i50: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i54, %_ZN3fmt3v126detail12count_digitsEo.exit.i.i
  %i.dn = phi i64 [ %.pre.i.i.i55, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i54 ], [ %i.df, %_ZN3fmt3v126detail12count_digitsEo.exit.i.i ]
  %.pre-phi19.i.i.i51 = phi i64 [ %.pre15.i.i.i57, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i54 ], [ %i.dg, %_ZN3fmt3v126detail12count_digitsEo.exit.i.i ]
  store i64 %.pre-phi19.i.i.i51, ptr %i.de, align 8, !tbaa !95
  %i.do = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !91 ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.do, null
  br i1 %.not.i.i52, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i53, label %bb.aa

bb.aa:                                            ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i50
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dn
  %i.dq = call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i(ptr noundef nonnull %i.dp, i128 noundef %.sroa.0170.0.copyload.sink369, i32 noundef %.012.i.i.i.i) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i53: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i50, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i54
  %i.dr = call ptr @_ZN3fmt3v126detail14format_decimalIcoNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.0.0.copyload.i, i128 noundef %.sroa.0170.0.copyload.sink369, i32 noundef %.012.i.i.i.i) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  %i.ds = trunc i128 %.sroa.0170.0.copyload.sink369 to i1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store i32 32768, ptr %14, align 4, !tbaa !110
  store i8 32, ptr %i.i, align 4, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.j, align 4, !tbaa !117
  %i.dt = select i1 %i.ds, ptr @.str.192, ptr @.str.193
  %i.du = select i1 %i.ds, i64 4, i64 5           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  store ptr %i.dt, ptr %13, align 8, !tbaa !104
  store i64 %i.du, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !97
  %i.dv = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(16) %14, i64 noundef %i.du, i64 noundef %i.du, ptr noundef nonnull align 8 dereferenceable(16) %13) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 4 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !95 ; 2 uses
  %i.dy = add i64 %i.dx, 1                        ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !92
  %i.eb = icmp ugt i64 %i.dy, %i.ea
  br i1 %i.eb, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !90
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %i.dy), !inline_history !554
  %.pre.i.i = load i64, ptr %i.dw, align 8, !tbaa !95 ; 2 uses
  %.pre6.i.i = load i64, ptr %i.dz, align 8, !tbaa !92
  %.pre7.i.i = add i64 %.pre.i.i, 1               ; 3 uses
  %i.ee = icmp ugt i64 %.pre7.i.i, %.pre6.i.i
  br i1 %i.ee, label %bb.ad, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit

bb.ad:                                            ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.ef = load ptr, ptr %i.ec, align 8, !tbaa !90
  call void %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i, i64 noundef %.pre7.i.i), !inline_history !555
  %.pre.i.i.i.i = load i64, ptr %i.dw, align 8, !tbaa !95 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit

_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit: ; preds = %bb.ac, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i, %bb.ad
  %.pre-phi.i.i.i.i = phi i64 [ %.pre7.i.i, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ], [ %.pre2.i.i.i.i, %bb.ad ], [ %i.dy, %bb.ac ]
  %i.eg = phi i64 [ %.pre.i.i, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ], [ %.pre.i.i.i.i, %bb.ad ], [ %i.dx, %bb.ac ]
  %i.eh = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !91
  store i64 %.pre-phi.i.i.i.i, ptr %i.dw, align 8, !tbaa !95
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.eg
  store i8 %extract.t, ptr %i.ei, align 1, !tbaa !71
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  %.sroa.0170.0..sroa.0170.0..sroa.0170.0.179 = bitcast i32 %extract.t331 to float
  %i.ej = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %.sroa.0.0.copyload.i, float noundef %.sroa.0170.0..sroa.0170.0..sroa.0170.0.179) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  %.sroa.0170.0..sroa.0170.0..sroa.0170.0.175 = bitcast i64 %extract.t334 to double
  %i.ek = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %.sroa.0.0.copyload.i, double noundef %.sroa.0170.0..sroa.0170.0..sroa.0170.0.175) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.ag:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  %extract.t337 = trunc i128 %.sroa.0170.0.copyload.sink369 to i80
  %.sroa.0170.0..sroa.0170.0..sroa.0170.0.172 = bitcast i80 %extract.t337 to x86_fp80
  %i.el = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i, x86_fp80 noundef %.sroa.0170.0..sroa.0170.0..sroa.0170.0.172, i64 137438986240, i64 -4294967296, ptr null) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.ah:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  %.not.i.i63 = icmp eq i64 %extract.t334, 0
  br i1 %.not.i.i63, label %bb.ai, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.208) #32
  unreachable

_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit: ; preds = %bb.ah
  %i.em = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0170.0..sroa.0170.0..sroa.0170.0..sroa.0.0.copyload.i.i31) #30
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0170.0..sroa.0170.0..sroa.0170.0..sroa.0.0.copyload.i.i31, i64 %i.em
  %i.eo = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %.sroa.0170.0..sroa.0170.0..sroa.0170.0..sroa.0.0.copyload.i.i31, ptr noundef nonnull %i.en, ptr %.sroa.0.0.copyload.i) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.aj:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0170.0..sroa.0170.0..sroa.0170.0..sroa.0.0.copyload.i.i31, i64 %extract.t339
  %i.eq = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0170.0..sroa.0170.0..sroa.0170.0..sroa.0.0.copyload.i.i31, ptr noundef %i.ep, ptr %.sroa.0.0.copyload.i) ; 0 uses
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.ak:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  store i32 32768, ptr %12, align 4, !tbaa !110
  store i8 32, ptr %i.f, align 4, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i66, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.g, align 4, !tbaa !117
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %.03.i.i.i.i.i = phi i64 [ %extract.t334, %bb.ak ], [ %i.es, %bb.al ]
  %.0.i.i.i.i.i = phi i32 [ 0, %bb.ak ], [ %i.er, %bb.al ] ; 2 uses
  %i.er = add nuw nsw i32 %.0.i.i.i.i.i, 1        ; 2 uses
  %i.es = lshr i64 %.03.i.i.i.i.i, 4              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.es, 0
  br i1 %.not.i.i.i.i.i, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, label %bb.al, !llvm.loop !9

_ZN3fmt3v126detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit: ; preds = %bb.al
  %narrow.i.i.i = add nuw i32 %.0.i.i.i.i.i, 3
  %i.et = zext i32 %narrow.i.i.i to i64           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  store i64 %extract.t334, ptr %11, align 8, !tbaa !128
  store i32 %i.er, ptr %i.h, align 8, !tbaa !129
  %i.eu = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 noundef %i.et, i64 noundef %i.et, ptr noundef nonnull align 8 dereferenceable(12) %11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

bb.am:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit
  %.sroa.0170.8..sroa.0170.8..sroa.0170.8..sroa.2.0.copyload.i.i33 = inttoptr i64 %extract.t339 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  store ptr %.sroa.0.0.copyload.i, ptr %10, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  call void %.sroa.0170.8..sroa.0170.8..sroa.0170.8..sroa.2.0.copyload.i.i33(ptr noundef %.sroa.0170.0..sroa.0170.0..sroa.0170.0..sroa.0.0.copyload.i.i31, ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 8 dereferenceable(32) %10), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.h, %bb.k, %bb.j, %_ZNK3fmt3v127context3argEi.exit
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.209) #32
  unreachable

_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i53, %bb.aa, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i43, %bb.r, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i, %bb.o, %bb.m, %bb.p, %bb.s, %bb.ab, %_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit, %bb.ae, %bb.af, %bb.ag, %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, %bb.aj, %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit, %bb.am
  %i.ev = getelementptr inbounds nuw i8, ptr %.0232, i64 2 ; 2 uses
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit

bb.an:                                            ; preds = %bb.e
  %i.ew = getelementptr inbounds nuw i8, ptr %.0232, i64 2 ; 3 uses
  %.sroa.0.0.copyload.i.i68 = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.ex = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ew, ptr %.sroa.0.0.copyload.i.i68) ; 0 uses
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit

bb.ao:                                            ; preds = %bb.e
  %i.ey = load i32, ptr %i.c, align 8, !tbaa !107 ; 3 uses
  %i.ez = icmp slt i32 %i.ey, 0
  br i1 %i.ez, label %bb.ap, label %_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit69

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.214) #32
  unreachable

_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit69: ; preds = %bb.ao
  %i.fa = add nuw nsw i32 %i.ey, 1
  store i32 %i.fa, ptr %i.c, align 8, !tbaa !107
  br label %bb.bz

bb.aq:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  store ptr %2, ptr %15, align 8, !tbaa !561
  store i32 0, ptr %i.l, align 8, !tbaa !132
  %i.fb = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcRZNS1_23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S9_S9_OT0_E10id_adapterEES9_S9_S9_SB_(ptr noundef nonnull %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(12) %15) ; 6 uses
  %i.fc = load i32, ptr %i.l, align 8, !tbaa !132 ; 6 uses
  %.not.i = icmp eq ptr %i.fb, %i.a
  br i1 %.not.i, label %.thread201, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = load i8, ptr %i.fb, align 1, !tbaa !71
  switch i8 %i.fd, label %.thread201 [
    i8 125, label %bb.as
    i8 58, label %.thread204
  ]

bb.as:                                            ; preds = %bb.ar
  %i.fe = load i64, ptr %i.d, align 8, !tbaa !126, !noalias !562 ; 3 uses
  %i.ff = icmp sgt i64 %i.fe, -1
  br i1 %i.ff, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fg = trunc i64 %i.fe to i32
  %i.fh = icmp ult i32 %i.fc, %i.fg
  br i1 %i.fh, label %bb.au, label %_ZNK3fmt3v127context3argEi.exit71.thread

bb.au:                                            ; preds = %bb.at
  %i.fi = load ptr, ptr %i.e, align 8, !tbaa !71, !noalias !562
  %i.fj = sext i32 %i.fc to i64
  %i.fk = getelementptr inbounds [32 x i8], ptr %i.fi, i64 %i.fj ; 2 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %.sroa.21.0.copyload = load i32, ptr %.sroa.21.0..sroa_idx, align 16, !tbaa !124
  br label %_ZNK3fmt3v127context3argEi.exit71

bb.av:                                            ; preds = %bb.as
  %i.fl = icmp ugt i32 %i.fc, 14
  br i1 %i.fl, label %_ZNK3fmt3v127context3argEi.exit71.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fm = shl nuw nsw i32 %i.fc, 2
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = lshr i64 %i.fe, %i.fn
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = and i32 %i.fp, 15                       ; 2 uses
  %.not.i.i70 = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i70, label %_ZNK3fmt3v127context3argEi.exit71.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fr = load ptr, ptr %i.e, align 8, !tbaa !71, !noalias !562
  %i.fs = zext nneg i32 %i.fc to i64
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fr, i64 %i.fs
  br label %_ZNK3fmt3v127context3argEi.exit71

_ZNK3fmt3v127context3argEi.exit71:                ; preds = %bb.au, %bb.ax
  %.sroa.0149.0.copyload.sink373.in = phi ptr [ %i.fk, %bb.au ], [ %i.ft, %bb.ax ]
  %.sroa.21.0 = phi i32 [ %.sroa.21.0.copyload, %bb.au ], [ %i.fq, %bb.ax ]
  %.sroa.0149.0.copyload.sink373 = load i128, ptr %.sroa.0149.0.copyload.sink373.in, align 16, !tbaa !71 ; 12 uses
  %extract.t342 = trunc i128 %.sroa.0149.0.copyload.sink373 to i8
  %extract.t345 = trunc i128 %.sroa.0149.0.copyload.sink373 to i32 ; 5 uses
  %extract.t348 = trunc i128 %.sroa.0149.0.copyload.sink373 to i64 ; 10 uses
  %extract353 = lshr i128 %.sroa.0149.0.copyload.sink373, 64
  %extract.t354 = trunc nuw i128 %extract353 to i64 ; 2 uses
  %.sroa.0149.0..sroa.0149.0..sroa.0149.0..sroa.0.0.copyload.i.i = inttoptr i64 %extract.t348 to ptr ; 6 uses
  %.sroa.0.0.copyload.i72 = load ptr, ptr %i.b, align 8, !tbaa !94 ; 35 uses
  switch i32 %.sroa.21.0, label %_ZNK3fmt3v127context3argEi.exit71.thread [
    i32 15, label %bb.bx
    i32 1, label %bb.ay
    i32 2, label %bb.az
    i32 3, label %bb.bb
    i32 4, label %bb.bc
    i32 5, label %bb.be
    i32 6, label %bb.bf
    i32 7, label %bb.bm
    i32 8, label %bb.bn
    i32 9, label %bb.bp
    i32 10, label %bb.bq
    i32 11, label %bb.br
    i32 12, label %bb.bs
    i32 13, label %bb.bu
    i32 14, label %bb.bv
  ]

bb.ay:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.fu = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEiTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i72, i32 noundef %extract.t345) ; 0 uses
  br label %.thread207

bb.az:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.fv = or i32 %extract.t345, 1
  %i.fw = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fv, i1 true)
  %i.fx = xor i32 %i.fw, 31
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !97
  %i.gb = trunc i128 %.sroa.0149.0.copyload.sink373 to i64
  %i.gc = and i64 %i.gb, 4294967295
  %i.gd = add i64 %i.ga, %i.gc                    ; 2 uses
  %i.ge = lshr i64 %i.gd, 32
  %i.gf = trunc nuw i64 %i.ge to i32              ; 2 uses
  %i.gg = ashr i64 %i.gd, 32                      ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 8 ; 3 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !95 ; 2 uses
  %i.gj = add i64 %i.gg, %i.gi                    ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 16 ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !92
  %i.gm = icmp ugt i64 %i.gj, %i.gl
  br i1 %i.gm, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i79, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i75

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i79: ; preds = %bb.az
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !90
  call void %i.go(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i72, i64 noundef %i.gj), !inline_history !551
  %.pre.i.i.i80 = load i64, ptr %i.gh, align 8, !tbaa !95 ; 2 uses
  %.pre14.i.i.i81 = load i64, ptr %i.gk, align 8, !tbaa !92
  %.pre15.i.i.i82 = add i64 %.pre.i.i.i80, %i.gg  ; 2 uses
  %i.gp = icmp ult i64 %.pre14.i.i.i81, %.pre15.i.i.i82
  br i1 %i.gp, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i78, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i75

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i75: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i79, %bb.az
  %i.gq = phi i64 [ %.pre.i.i.i80, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i79 ], [ %i.gi, %bb.az ]
  %.pre-phi19.i.i.i76 = phi i64 [ %.pre15.i.i.i82, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i79 ], [ %i.gj, %bb.az ]
  store i64 %.pre-phi19.i.i.i76, ptr %i.gh, align 8, !tbaa !95
  %i.gr = load ptr, ptr %.sroa.0.0.copyload.i72, align 8, !tbaa !91 ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.gr, null
  br i1 %.not.i.i77, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i78, label %bb.ba

bb.ba:                                            ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i75
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %i.gt = call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i(ptr noundef nonnull %i.gs, i32 noundef %extract.t345, i32 noundef %i.gf) ; 0 uses
  br label %.thread207

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i78: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i75, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i79
  %i.gu = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.0.0.copyload.i72, i32 noundef %extract.t345, i32 noundef %i.gf) ; 0 uses
  br label %.thread207

bb.bb:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.gv = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEExTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i72, i64 noundef %extract.t348) ; 0 uses
  br label %.thread207

bb.bc:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.gw = or i64 %extract.t348, 1
  %i.gx = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.gw, i1 true)
  %i.gy = xor i64 %i.gx, 63
  %i.gz = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !71  ; 2 uses
  %i.hb = zext i8 %i.ha to i32
  %i.hc = zext i8 %i.ha to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.hc
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !97
  %i.hf = icmp ugt i64 %i.he, %extract.t348
  %.neg.i.i.i.i86 = sext i1 %i.hf to i32
  %i.hg = add nsw i32 %.neg.i.i.i.i86, %i.hb      ; 3 uses
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 8 ; 3 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !95 ; 2 uses
  %i.hk = add i64 %i.hj, %i.hh                    ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !92
  %i.hn = icmp ugt i64 %i.hk, %i.hm
  br i1 %i.hn, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i91, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i87

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i91: ; preds = %bb.bc
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !90
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i72, i64 noundef %i.hk), !inline_history !552
  %.pre.i.i.i92 = load i64, ptr %i.hi, align 8, !tbaa !95 ; 2 uses
  %.pre14.i.i.i93 = load i64, ptr %i.hl, align 8, !tbaa !92
  %.pre15.i.i.i94 = add i64 %.pre.i.i.i92, %i.hh  ; 2 uses
  %i.hq = icmp ult i64 %.pre14.i.i.i93, %.pre15.i.i.i94
  br i1 %i.hq, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i90, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i87

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i87: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i91, %bb.bc
  %i.hr = phi i64 [ %.pre.i.i.i92, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i91 ], [ %i.hj, %bb.bc ]
  %.pre-phi19.i.i.i88 = phi i64 [ %.pre15.i.i.i94, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i91 ], [ %i.hk, %bb.bc ]
  store i64 %.pre-phi19.i.i.i88, ptr %i.hi, align 8, !tbaa !95
  %i.hs = load ptr, ptr %.sroa.0.0.copyload.i72, align 8, !tbaa !91 ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i89, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i90, label %bb.bd

bb.bd:                                            ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i87
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  %i.hu = call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i(ptr noundef nonnull %i.ht, i64 noundef %extract.t348, i32 noundef %i.hg) ; 0 uses
  br label %.thread207

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i90: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i87, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i91
  %i.hv = call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.0.0.copyload.i72, i64 noundef %extract.t348, i32 noundef %i.hg) ; 0 uses
  br label %.thread207

bb.be:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.hw = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEnTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_(ptr %.sroa.0.0.copyload.i72, i128 noundef %.sroa.0149.0.copyload.sink373) ; 0 uses
  br label %.thread207

bb.bf:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.hx = icmp ult i128 %.sroa.0149.0.copyload.sink373, 10
  br i1 %i.hx, label %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101, label %.lr.ph.i.i.i.i98

.lr.ph.i.i.i.i98:                                 ; preds = %bb.bf, %bb.bl
  %.017.i.i.i.i99 = phi i32 [ %i.if, %bb.bl ], [ 1, %bb.bf ] ; 4 uses
  %.01116.i.i.i.i100 = phi i128 [ %i.ie, %bb.bl ], [ %.sroa.0149.0.copyload.sink373, %bb.bf ] ; 5 uses
  %i.hy = icmp ult i128 %.01116.i.i.i.i100, 100
  br i1 %i.hy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i.i.i.i98
  %i.hz = add nuw nsw i32 %.017.i.i.i.i99, 1
  br label %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101

bb.bh:                                            ; preds = %.lr.ph.i.i.i.i98
  %i.ia = icmp ult i128 %.01116.i.i.i.i100, 1000
  br i1 %i.ia, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ib = add nuw nsw i32 %.017.i.i.i.i99, 2
  br label %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101

bb.bj:                                            ; preds = %bb.bh
  %i.ic = icmp ult i128 %.01116.i.i.i.i100, 10000
  br i1 %i.ic, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.id = add nuw nsw i32 %.017.i.i.i.i99, 3
  br label %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101

bb.bl:                                            ; preds = %bb.bj
  %i.ie = udiv i128 %.01116.i.i.i.i100, 10000
  %i.if = add nuw nsw i32 %.017.i.i.i.i99, 4      ; 2 uses
  %i.ig = icmp ult i128 %.01116.i.i.i.i100, 100000
  br i1 %i.ig, label %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101, label %.lr.ph.i.i.i.i98, !llvm.loop !8

_ZN3fmt3v126detail12count_digitsEo.exit.i.i101:   ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.bf
  %.012.i.i.i.i102 = phi i32 [ %i.id, %bb.bk ], [ %i.hz, %bb.bg ], [ %i.ib, %bb.bi ], [ 1, %bb.bf ], [ %i.if, %bb.bl ] ; 3 uses
  %i.ih = sext i32 %.012.i.i.i.i102 to i64        ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 8 ; 3 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !95 ; 2 uses
  %i.ik = add i64 %i.ij, %i.ih                    ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 16 ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !92
  %i.in = icmp ugt i64 %i.ik, %i.im
  br i1 %i.in, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i107, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i103

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i107: ; preds = %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 24
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !90
  call void %i.ip(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i72, i64 noundef %i.ik), !inline_history !553
  %.pre.i.i.i108 = load i64, ptr %i.ii, align 8, !tbaa !95 ; 2 uses
  %.pre14.i.i.i109 = load i64, ptr %i.il, align 8, !tbaa !92
  %.pre15.i.i.i110 = add i64 %.pre.i.i.i108, %i.ih ; 2 uses
  %i.iq = icmp ult i64 %.pre14.i.i.i109, %.pre15.i.i.i110
  br i1 %i.iq, label %bb.by, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i103

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i103: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i107, %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101
  %i.ir = phi i64 [ %.pre.i.i.i108, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i107 ], [ %i.ij, %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101 ]
  %.pre-phi19.i.i.i104 = phi i64 [ %.pre15.i.i.i110, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i107 ], [ %i.ik, %_ZN3fmt3v126detail12count_digitsEo.exit.i.i101 ]
  store i64 %.pre-phi19.i.i.i104, ptr %i.ii, align 8, !tbaa !95
  %i.is = load ptr, ptr %.sroa.0.0.copyload.i72, align 8, !tbaa !91 ; 2 uses
  %.not.i.i105 = icmp eq ptr %i.is, null
  br i1 %.not.i.i105, label %bb.by, label %.split

.split:                                           ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i103
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ir
  %i.iu = call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i(ptr noundef nonnull %i.it, i128 noundef %.sroa.0149.0.copyload.sink373, i32 noundef %.012.i.i.i.i102) ; 0 uses
  %16 = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit

bb.bm:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.iv = trunc i128 %.sroa.0149.0.copyload.sink373 to i1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store i32 32768, ptr %8, align 4, !tbaa !110
  store i8 32, ptr %i.p, align 4, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i113, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.q, align 4, !tbaa !117
  %i.iw = select i1 %i.iv, ptr @.str.192, ptr @.str.193
  %i.ix = select i1 %i.iv, i64 4, i64 5           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store ptr %i.iw, ptr %7, align 8, !tbaa !104
  store i64 %i.ix, ptr %.sroa.2.0..sroa_idx.i.i.i114, align 8, !tbaa !97
  %i.iy = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %.sroa.0.0.copyload.i72, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %i.ix, i64 noundef %i.ix, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %.thread207

bb.bn:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 8 ; 4 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !95 ; 2 uses
  %i.jb = add i64 %i.ja, 1                        ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 16 ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !92
  %i.je = icmp ugt i64 %i.jb, %i.jd
  br i1 %i.je, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i117, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit123

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i117: ; preds = %bb.bn
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i72, i64 24 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !90
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i72, i64 noundef %i.jb), !inline_history !554
  %.pre.i.i118 = load i64, ptr %i.iz, align 8, !tbaa !95 ; 2 uses
  %.pre6.i.i119 = load i64, ptr %i.jc, align 8, !tbaa !92
  %.pre7.i.i120 = add i64 %.pre.i.i118, 1         ; 3 uses
  %i.jh = icmp ugt i64 %.pre7.i.i120, %.pre6.i.i119
  br i1 %i.jh, label %bb.bo, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit123

bb.bo:                                            ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i117
  %i.ji = load ptr, ptr %i.jf, align 8, !tbaa !90
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i72, i64 noundef %.pre7.i.i120), !inline_history !555
  %.pre.i.i.i.i121 = load i64, ptr %i.iz, align 8, !tbaa !95 ; 2 uses
  %.pre2.i.i.i.i122 = add i64 %.pre.i.i.i.i121, 1
  br label %_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit123

_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit123: ; preds = %bb.bn, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i117, %bb.bo
  %.pre-phi.i.i.i.i116 = phi i64 [ %.pre7.i.i120, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i117 ], [ %.pre2.i.i.i.i122, %bb.bo ], [ %i.jb, %bb.bn ]
  %i.jj = phi i64 [ %.pre.i.i118, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i117 ], [ %.pre.i.i.i.i121, %bb.bo ], [ %i.ja, %bb.bn ]
  %i.jk = load ptr, ptr %.sroa.0.0.copyload.i72, align 8, !tbaa !91
  store i64 %.pre-phi.i.i.i.i116, ptr %i.iz, align 8, !tbaa !95
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jj
  store i8 %extract.t342, ptr %i.jl, align 1, !tbaa !71
  br label %.thread207

bb.bp:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %.sroa.0149.0..sroa.0149.0..sroa.0149.0.158 = bitcast i32 %extract.t345 to float
  %i.jm = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %.sroa.0.0.copyload.i72, float noundef %.sroa.0149.0..sroa.0149.0..sroa.0149.0.158) ; 0 uses
  br label %.thread207

bb.bq:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %.sroa.0149.0..sroa.0149.0..sroa.0149.0.154 = bitcast i64 %extract.t348 to double
  %i.jn = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %.sroa.0.0.copyload.i72, double noundef %.sroa.0149.0..sroa.0149.0..sroa.0149.0.154) ; 0 uses
  br label %.thread207

bb.br:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %extract.t351 = trunc i128 %.sroa.0149.0.copyload.sink373 to i80
  %.sroa.0149.0..sroa.0149.0..sroa.0149.0.151 = bitcast i80 %extract.t351 to x86_fp80
  %i.jo = call ptr @_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEeTnNSt9enable_ifIXsr17is_floating_pointIT1_EE5valueEiE4typeELi0EEET0_S9_S6_NS0_12format_specsENS0_10locale_refE(ptr %.sroa.0.0.copyload.i72, x86_fp80 noundef %.sroa.0149.0..sroa.0149.0..sroa.0149.0.151, i64 137438986240, i64 -4294967296, ptr null) ; 0 uses
  br label %.thread207

bb.bs:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %.not.i.i127 = icmp eq i64 %extract.t348, 0
  br i1 %.not.i.i127, label %bb.bt, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit129

bb.bt:                                            ; preds = %bb.bs
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.208) #32
  unreachable

_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit129: ; preds = %bb.bs
  %i.jp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0149.0..sroa.0149.0..sroa.0149.0..sroa.0.0.copyload.i.i) #30
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0..sroa.0149.0..sroa.0149.0..sroa.0.0.copyload.i.i, i64 %i.jp
  %i.jr = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef nonnull %.sroa.0149.0..sroa.0149.0..sroa.0149.0..sroa.0.0.copyload.i.i, ptr noundef nonnull %i.jq, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %.thread207

bb.bu:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0149.0..sroa.0149.0..sroa.0149.0..sroa.0.0.copyload.i.i, i64 %extract.t354
  %i.jt = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0149.0..sroa.0149.0..sroa.0149.0..sroa.0.0.copyload.i.i, ptr noundef %i.js, ptr %.sroa.0.0.copyload.i72) ; 0 uses
  br label %.thread207

bb.bv:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i32 32768, ptr %6, align 4, !tbaa !110
  store i8 32, ptr %i.m, align 4, !tbaa !71
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %scevgep.i.i.i134, i8 0, i64 7, i1 false)
  store i32 -1, ptr %i.n, align 4, !tbaa !117
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %bb.bv
  %.03.i.i.i.i.i135 = phi i64 [ %extract.t348, %bb.bv ], [ %i.jv, %bb.bw ]
  %.0.i.i.i.i.i136 = phi i32 [ 0, %bb.bv ], [ %i.ju, %bb.bw ] ; 2 uses
  %i.ju = add nuw nsw i32 %.0.i.i.i.i.i136, 1     ; 2 uses
  %i.jv = lshr i64 %.03.i.i.i.i.i135, 4           ; 2 uses
  %.not.i.i.i.i.i137 = icmp eq i64 %i.jv, 0
  br i1 %.not.i.i.i.i.i137, label %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit139, label %bb.bw, !llvm.loop !9

_ZN3fmt3v126detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit139: ; preds = %bb.bw
  %narrow.i.i.i138 = add nuw i32 %.0.i.i.i.i.i136, 3
  %i.jw = zext i32 %narrow.i.i.i138 to i64        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i64 %extract.t348, ptr %5, align 8, !tbaa !128
  store i32 %i.ju, ptr %i.o, align 8, !tbaa !129
  %i.jx = call ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_9write_ptrIcS5_mEET0_S7_T1_PKNS0_12format_specsEEUlS5_E_EES8_S8_RSA_mmOT2_(ptr %.sroa.0.0.copyload.i72, ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef %i.jw, i64 noundef %i.jw, ptr noundef nonnull align 8 dereferenceable(12) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.thread207

bb.bx:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit71
  %.sroa.0149.8..sroa.0149.8..sroa.0149.8..sroa.2.0.copyload.i.i = inttoptr i64 %extract.t354 to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr %.sroa.0.0.copyload.i72, ptr %4, align 8, !tbaa !94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  call void %.sroa.0149.8..sroa.0149.8..sroa.0149.8..sroa.2.0.copyload.i.i(ptr noundef %.sroa.0149.0..sroa.0149.0..sroa.0149.0..sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(32) %4), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %.thread207

_ZNK3fmt3v127context3argEi.exit71.thread:         ; preds = %bb.at, %bb.aw, %bb.av, %_ZNK3fmt3v127context3argEi.exit71
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.209) #32
  unreachable

.thread204:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %bb.bz

.thread201:                                       ; preds = %bb.ar, %bb.aq
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.212) #32
  unreachable

.thread207:                                       ; preds = %bb.ay, %bb.bb, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i78, %bb.be, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i.i90, %bb.bm, %_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_.exit123, %bb.bp, %bb.bq, %bb.br, %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit129, %bb.bu, %_ZN3fmt3v126detail21default_arg_formatterIcEclIPKvTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS8_.exit139, %bb.bx, %bb.ba, %bb.bd
  %i.jy = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit

bb.by:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i107, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i103
  %17 = call ptr @_ZN3fmt3v126detail14format_decimalIcoNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.0.0.copyload.i72, i128 noundef %.sroa.0149.0.copyload.sink373, i32 noundef %.012.i.i.i.i102) ; 0 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.fb, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit

bb.bz:                                            ; preds = %.thread204, %_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit69
  %.039.i = phi ptr [ %i.fb, %.thread204 ], [ %i.s, %_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit69 ]
  %.037.i = phi i32 [ %i.fc, %.thread204 ], [ %i.ey, %_ZN3fmt3v126detail14format_handlerIcE9on_arg_idEv.exit69 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.039.i, i64 1
  %i.kb = call noundef ptr @_ZN3fmt3v126detail14format_handlerIcE15on_format_specsEiPKcS5_(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %.037.i, ptr noundef nonnull %i.ka, ptr noundef nonnull %i.a) ; 3 uses
  %i.kc = icmp eq ptr %i.kb, %i.a
  br i1 %i.kc, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kd = load i8, ptr %i.kb, align 1, !tbaa !71
  %.not47.i = icmp eq i8 %i.kd, 125
  br i1 %.not47.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.213) #32
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 1 ; 2 uses
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit

bb.cd:                                            ; preds = %bb.b
  %i.kf = icmp eq ptr %i.s, %i.a
  br i1 %i.kf, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kg = load i8, ptr %i.s, align 1, !tbaa !71
  %.not30 = icmp eq i8 %i.kg, 125
  br i1 %.not30, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.210) #32
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %.sroa.0.0.copyload.i.i146 = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.kh = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.024231, ptr noundef nonnull %i.s, ptr %.sroa.0.0.copyload.i.i146) ; 0 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0232, i64 2 ; 2 uses
  br label %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit

_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit: ; preds = %bb.by, %.split, %bb.cc, %bb.an, %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34, %.thread207, %bb.b, %bb.cg
  %.125 = phi ptr [ %.024231, %bb.b ], [ %i.ki, %bb.cg ], [ %i.ke, %bb.cc ], [ %i.jz, %bb.by ], [ %i.ev, %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34 ], [ %i.ew, %bb.an ], [ %i.jy, %.thread207 ], [ %16, %.split ] ; 2 uses
  %.1 = phi ptr [ %i.s, %bb.b ], [ %i.ki, %bb.cg ], [ %i.ke, %bb.cc ], [ %i.jz, %bb.by ], [ %i.ev, %_ZN3fmt3v126detail14format_handlerIcE20on_replacement_fieldEiPKc.exit34 ], [ %i.ew, %bb.an ], [ %i.jy, %.thread207 ], [ %16, %.split ] ; 2 uses
  %.not = icmp eq ptr %.1, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit, %bb.a
  %.024.lcssa = phi ptr [ %0, %bb.a ], [ %.125, %_ZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_.exit ]
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload.i.i147 = load ptr, ptr %i.kj, align 8, !tbaa !94
  %i.kk = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.024.lcssa, ptr noundef %i.a, ptr %.sroa.0.0.copyload.i.i147) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !94 ; 6 uses
  %i.a = or i32 %1, 1
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.c = xor i32 %i.b, 31
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !97
  %i.g = zext i32 %1 to i64
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = lshr i64 %i.h, 32
  %i.j = trunc nuw i64 %i.i to i32                ; 2 uses
  %i.k = ashr i64 %i.h, 32                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %i.n = add i64 %i.k, %i.m                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !92
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %i.n), !inline_history !563
  %.pre.i.i = load i64, ptr %i.l, align 8, !tbaa !95 ; 2 uses
  %.pre14.i.i = load i64, ptr %i.o, align 8, !tbaa !92
  %.pre15.i.i = add i64 %.pre.i.i, %i.k           ; 2 uses
  %i.t = icmp ult i64 %.pre14.i.i, %.pre15.i.i
  br i1 %i.t, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, %bb.a
  %i.u = phi i64 [ %.pre.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i ], [ %i.m, %bb.a ]
  %.pre-phi19.i.i = phi i64 [ %.pre15.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i ], [ %i.n, %bb.a ]
  store i64 %.pre-phi19.i.i, ptr %i.l, align 8, !tbaa !95
  %i.v = load ptr, ptr %.sroa.01.0.copyload, align 8, !tbaa !91 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %i.x = tail call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i(ptr noundef nonnull %i.w, i32 noundef %1, i32 noundef %i.j) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  %i.y = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.01.0.copyload, i32 noundef %1, i32 noundef %i.j) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEjTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit: ; preds = %bb.b, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !94 ; 6 uses
  %i.a = or i64 %1, 1
  %i.b = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.a, i1 true)
  %i.c = xor i64 %i.b, 63
  %i.d = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !71    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.g
  %i.i = load i64, ptr %i.h, align 8, !tbaa !97
  %i.j = icmp ult i64 %1, %i.i
  %.neg.i.i.i = sext i1 %i.j to i32
  %i.k = add nsw i32 %.neg.i.i.i, %i.f            ; 3 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !95   ; 2 uses
  %i.o = add i64 %i.n, %i.l                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !92
  %i.r = icmp ugt i64 %i.o, %i.q
  br i1 %i.r, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !90
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %i.o), !inline_history !564
  %.pre.i.i = load i64, ptr %i.m, align 8, !tbaa !95 ; 2 uses
  %.pre14.i.i = load i64, ptr %i.p, align 8, !tbaa !92
  %.pre15.i.i = add i64 %.pre.i.i, %i.l           ; 2 uses
  %i.u = icmp ult i64 %.pre14.i.i, %.pre15.i.i
  br i1 %i.u, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, %bb.a
  %i.v = phi i64 [ %.pre.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i ], [ %i.n, %bb.a ]
  %.pre-phi19.i.i = phi i64 [ %.pre15.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i ], [ %i.o, %bb.a ]
  store i64 %.pre-phi19.i.i, ptr %i.m, align 8, !tbaa !95
  %i.w = load ptr, ptr %.sroa.01.0.copyload, align 8, !tbaa !91 ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  %i.y = tail call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i(ptr noundef nonnull %i.x, i64 noundef %1, i32 noundef %i.k) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  %i.z = tail call ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.01.0.copyload, i64 noundef %1, i32 noundef %i.k) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEyTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit: ; preds = %bb.b, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail21default_arg_formatterIcEclIoTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, i128 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !94 ; 6 uses
  %i.a = icmp ult i128 %1, 10
  br i1 %i.a, label %_ZN3fmt3v126detail12count_digitsEo.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %bb.g
  %.017.i.i.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.01116.i.i.i = phi i128 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i128 %.01116.i.i.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.c = add nuw nsw i32 %.017.i.i.i, 1
  br label %_ZN3fmt3v126detail12count_digitsEo.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.d = icmp ult i128 %.01116.i.i.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i32 %.017.i.i.i, 2
  br label %_ZN3fmt3v126detail12count_digitsEo.exit.i

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i128 %.01116.i.i.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add nuw nsw i32 %.017.i.i.i, 3
  br label %_ZN3fmt3v126detail12count_digitsEo.exit.i

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i128 %.01116.i.i.i, 10000
  %i.i = add nuw nsw i32 %.017.i.i.i, 4           ; 2 uses
  %i.j = icmp ult i128 %.01116.i.i.i, 100000
  br i1 %i.j, label %_ZN3fmt3v126detail12count_digitsEo.exit.i, label %.lr.ph.i.i.i, !llvm.loop !8

_ZN3fmt3v126detail12count_digitsEo.exit.i:        ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.012.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ] ; 3 uses
  %i.k = sext i32 %.012.i.i.i to i64              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 8 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !95   ; 2 uses
  %i.n = add i64 %i.m, %i.k                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !92
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %_ZN3fmt3v126detail12count_digitsEo.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !90
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.0.copyload, i64 noundef %i.n), !inline_history !565
  %.pre.i.i = load i64, ptr %i.l, align 8, !tbaa !95 ; 2 uses
  %.pre14.i.i = load i64, ptr %i.o, align 8, !tbaa !92
  %.pre15.i.i = add i64 %.pre.i.i, %i.k           ; 2 uses
  %i.t = icmp ult i64 %.pre14.i.i, %.pre15.i.i
  br i1 %i.t, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, %_ZN3fmt3v126detail12count_digitsEo.exit.i
  %i.u = phi i64 [ %.pre.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i ], [ %i.m, %_ZN3fmt3v126detail12count_digitsEo.exit.i ]
  %.pre-phi19.i.i = phi i64 [ %.pre15.i.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i ], [ %i.n, %_ZN3fmt3v126detail12count_digitsEo.exit.i ]
  store i64 %.pre-phi19.i.i, ptr %i.l, align 8, !tbaa !95
  %i.v = load ptr, ptr %.sroa.01.0.copyload, align 8, !tbaa !91 ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.u
  %i.x = tail call noundef ptr @_ZN3fmt3v126detail17do_format_decimalIcoEEPT_S4_T0_i(ptr noundef nonnull %i.w, i128 noundef %1, i32 noundef %.012.i.i.i) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  %i.y = tail call ptr @_ZN3fmt3v126detail14format_decimalIcoNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %.sroa.01.0.copyload, i128 noundef %1, i32 noundef %.012.i.i.i) ; 0 uses
  br label %_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit

_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEoTnNSt9enable_ifIXaaaasr11is_integralIT1_EE5valuentsr3std7is_sameIS6_bEE5valuentsr3std7is_sameIS6_T_EE5valueEiE4typeELi0EEET0_SA_S6_.exit: ; preds = %bb.h, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.i
  ret void
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail19handle_dynamic_specINS0_7contextEEEvNS0_11arg_id_kindERiRKNS1_7arg_refINT_9char_typeEEERS7_:bb.a

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !noalias !749 ; 3 uses
  %i.x = icmp slt i64 %i.t, 0
  %.v.i.i.i = select i1 %i.x, i64 -32, i64 -16
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %.v.i.i.i ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !214, !noalias !749 ; 2 uses
  %.not14.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not14.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !215, !noalias !749
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.ac = add nuw i64 %.01215.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ac, %i.aa
  br i1 %exitcond.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.k, !llvm.loop !30

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.01215.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ac, %bb.j ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.01215.i.i.i ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !217, !noalias !749 ; 2 uses
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #30, !noalias !749 ; 2 uses
  %i.ag = tail call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %.sroa.2.0.copyload)
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr %.sroa.0.0.copyload, i64 %i.ag), !noalias !749
  %.not.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  %i.ah = icmp eq i64 %i.af, %.sroa.2.0.copyload
  %i.ai = select i1 %.not.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, label %bb.j

_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !218, !noalias !749 ; 6 uses
  %i.al = icmp sgt i32 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.l:                                             ; preds = %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i
  %i.am = icmp sgt i64 %i.t, -1
  br i1 %i.am, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = trunc i64 %i.t to i32
  %i.ao = icmp ult i32 %i.ak, %i.an
  br i1 %i.ao, label %bb.n, label %_ZNK3fmt3v127context3argEi.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = zext nneg i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.ap
  br label %_ZNK3fmt3v127context3argEi.exit

bb.o:                                             ; preds = %bb.l
  %i.ar = icmp samesign ugt i32 %i.ak, 14
  br i1 %i.ar, label %_ZNK3fmt3v127context3argEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = shl nuw nsw i32 %i.ak, 2
  %i.at = zext nneg i32 %i.as to i64
  %i.au = lshr i64 %i.t, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i.i, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split

_ZNK3fmt3v127context3argEi.exit:                  ; preds = %bb.n, %bb.d
  %storemerge.in = phi ptr [ %i.aq, %bb.n ], [ %i.j, %bb.d ] ; 2 uses
  %storemerge = load i128, ptr %storemerge.in, align 16, !tbaa !71 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc73 = trunc i128 %storemerge to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 = lshr i128 %storemerge, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc89 = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift88101 to i32
  %.sroa.010.sroa.11.0.extract.shift61 = lshr i128 %storemerge, 64
  %.sroa.010.sroa.11.0.extract.trunc62 = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift61 to i64
  %.sroa.23.0.in = getelementptr inbounds nuw i8, ptr %storemerge.in, i64 16
  %.sroa.23.0 = load i32, ptr %.sroa.23.0.in, align 16, !tbaa !124 ; 2 uses
  %.not = icmp eq i32 %.sroa.23.0, 0
  br i1 %.not, label %_ZNK3fmt3v127context3argEi.exit.thread, label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread:           ; preds = %bb.j, %bb.h, %bb.i, %_ZNK3fmt3v1217basic_format_argsINS0_7contextEE6get_idIcEEiNS0_17basic_string_viewIT_EE.exit.i.i, %bb.p, %bb.o, %bb.m, %bb.f, %bb.e, %bb.c, %_ZNK3fmt3v127context3argEi.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.209) #32
  unreachable

_ZNK3fmt3v127context3argEi.exit.thread37.sink.split: ; preds = %bb.p, %bb.g
  %.sink = phi i32 [ %i.a, %bb.g ], [ %i.ak, %bb.p ]
  %.sink107 = phi ptr [ %i.r, %bb.g ], [ %i.w, %bb.p ]
  %.sroa.23.039.ph = phi i32 [ %i.p, %bb.g ], [ %i.aw, %bb.p ]
  %i.ax = zext nneg i32 %.sink to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %.sink107, i64 %i.ax
  %.sroa.010.0.copyload25 = load i128, ptr %i.ay, align 16, !tbaa !71 ; 3 uses
  %.sroa.010.sroa.0.sroa.0.0.extract.trunc = trunc i128 %.sroa.010.0.copyload25 to i32
  %.sroa.010.sroa.0.sroa.11.0.extract.shift102 = lshr i128 %.sroa.010.0.copyload25, 32
  %.sroa.010.sroa.0.sroa.11.0.extract.trunc = trunc i128 %.sroa.010.sroa.0.sroa.11.0.extract.shift102 to i32
  %.sroa.010.sroa.11.0.extract.shift = lshr i128 %.sroa.010.0.copyload25, 64
  %.sroa.010.sroa.11.0.extract.trunc = trunc nuw i128 %.sroa.010.sroa.11.0.extract.shift to i64
  br label %_ZNK3fmt3v127context3argEi.exit.thread37

_ZNK3fmt3v127context3argEi.exit.thread37:         ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split, %_ZNK3fmt3v127context3argEi.exit
  %.sroa.010.sroa.0.sroa.11.0 = phi i32 [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc89, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 4 uses
  %.sroa.010.sroa.0.sroa.0.0 = phi i32 [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc73, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.0.sroa.0.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ] ; 7 uses
  %.sroa.010.sroa.11.0 = phi i64 [ %.sroa.010.sroa.11.0.extract.trunc62, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.010.sroa.11.0.extract.trunc, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  %.sroa.23.039 = phi i32 [ %.sroa.23.0, %_ZNK3fmt3v127context3argEi.exit ], [ %.sroa.23.039.ph, %_ZNK3fmt3v127context3argEi.exit.thread37.sink.split ]
  switch i32 %.sroa.23.039, label %bb.af [
    i32 15, label %bb.ae
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 4, label %bb.t
    i32 5, label %bb.u
    i32 6, label %bb.v
    i32 7, label %bb.w
    i32 8, label %bb.x
    i32 9, label %bb.y
    i32 10, label %bb.z
    i32 11, label %bb.aa
    i32 12, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
  ]

bb.q:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.az = icmp slt i32 %.sroa.010.sroa.0.sroa.0.0, 0
  %i.ba = zext nneg i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br i1 %i.az, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

bb.r:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %i.bb = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.s:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext74 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift75 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext74, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext63.a = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert65.a = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift75, %.sroa.010.sroa.0.sroa.0.0.insert.ext63.a
  %i.bc = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.010.sroa.0.sroa.0.0.insert.insert65.a, i64 -1)
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.t:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift, %.sroa.010.sroa.0.sroa.0.0.insert.ext
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.u:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext82 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift83 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext82, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext69 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert71 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift83, %.sroa.010.sroa.0.sroa.0.0.insert.ext69
  %.not103 = icmp sgt i64 %.sroa.010.sroa.11.0, -1
  br i1 %.not103, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread

bb.v:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  %.sroa.010.sroa.0.sroa.11.0.insert.ext78 = zext i32 %.sroa.010.sroa.0.sroa.11.0 to i64
  %.sroa.010.sroa.0.sroa.11.0.insert.shift79 = shl nuw i64 %.sroa.010.sroa.0.sroa.11.0.insert.ext78, 32
  %.sroa.010.sroa.0.sroa.0.0.insert.ext66 = zext i32 %.sroa.010.sroa.0.sroa.0.0 to i64
  %.sroa.010.sroa.0.sroa.0.0.insert.insert68 = or disjoint i64 %.sroa.010.sroa.0.sroa.11.0.insert.shift79, %.sroa.010.sroa.0.sroa.0.0.insert.ext66
  br label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit

bb.w:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.x:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.y:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.z:                                             ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.aa:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.ab:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.ac:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.ad:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.ae:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

bb.af:                                            ; preds = %_ZNK3fmt3v127context3argEi.exit.thread37
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.222) #32
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit: ; preds = %bb.u, %bb.r, %bb.s, %bb.t, %bb.v
  %.0.i = phi i64 [ %.sroa.010.sroa.0.sroa.0.0.insert.insert, %bb.t ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert71, %bb.u ], [ %.sroa.010.sroa.0.sroa.0.0.insert.insert68, %bb.v ], [ %i.bb, %bb.r ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bd = icmp ugt i64 %.0.i, 2147483647
  br i1 %i.bd, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread, label %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread: ; preds = %bb.u, %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.221) #32
  unreachable

_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42: ; preds = %bb.q, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit
  %.0.i44 = phi i64 [ %.0.i, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit ], [ %i.ba, %bb.q ]
  %i.be = trunc nuw nsw i64 %.0.i44 to i32
  store i32 %i.be, ptr %1, align 4, !tbaa !87
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %_ZNK3fmt3v1216basic_format_argINS0_7contextEE5visitINS0_6detail19dynamic_spec_getterEEEDTclfp_Li0EEEOT_.exit.thread42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i32 } @_ZN3fmt3v126detail18parse_dynamic_specIcEENS1_25parse_dynamic_spec_resultIT_EEPKS4_S7_RiRNS1_7arg_refIS4_EERNS0_13parse_contextIS4_EE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"struct.fmt::v12::detail::dynamic_spec_handler", align 8 ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !104
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.5)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #30
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 0, ptr %i.b, align 4, !tbaa !220
  %i.e = load i8, ptr %0, align 1, !tbaa !71      ; 2 uses
  %i.f = add i8 %i.e, -48
  %or.cond24 = icmp ult i8 %i.f, 10
  br i1 %or.cond24, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.g = call noundef i32 @_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %1, i32 noundef -1) #30 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.207) #32
  unreachable

bb.h:                                             ; preds = %bb.f
  store i32 %i.g, ptr %2, align 4, !tbaa !87
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !104
  br label %bb.s

bb.i:                                             ; preds = %bb.e
  %i.j = icmp eq i8 %i.e, 123
  br i1 %i.j, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %.not22 = icmp eq ptr %i.k, %1
  br i1 %.not22, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !71
  switch i8 %i.l, label %bb.n [
    i8 125, label %bb.l
    i8 58, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !107  ; 3 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.214) #32
  unreachable

_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit: ; preds = %bb.l
  %i.p = add nuw nsw i32 %i.n, 1
  store i32 %i.p, ptr %i.m, align 8, !tbaa !107
  store i32 %i.n, ptr %3, align 8
  store i32 1, ptr %i.b, align 4, !tbaa !220
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %4, ptr %5, align 8, !tbaa !750
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.q, align 8, !tbaa !751
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.r, align 8, !tbaa !108
  %i.s = call noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef nonnull %i.k, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit, %bb.n, %bb.j
  %i.t = phi ptr [ %i.k, %_ZN3fmt3v1213parse_contextIcE11next_arg_idEv.exit ], [ %i.s, %bb.n ], [ %i.k, %bb.j ] ; 3 uses
  %.not23 = icmp eq ptr %i.t, %1
  br i1 %.not23, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = load i8, ptr %i.t, align 1, !tbaa !71
  %i.v = icmp eq i8 %i.u, 125
  br i1 %i.v, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.sroa.3.0.pre = load i32, ptr %i.b, align 4, !tbaa !220
  br label %bb.s

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.i
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.211) #32
  unreachable

bb.s:                                             ; preds = %bb.h, %bb.q
  %.sroa.3.0 = phi i32 [ 0, %bb.h ], [ %.sroa.3.0.pre, %bb.q ]
  %.sroa.0.0 = phi ptr [ %i.i, %bb.h ], [ %i.w, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN3fmt3v126detail12parse_arg_idIcNS1_20dynamic_spec_handlerIcEEEEPKT_S7_S7_OT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = alloca ptr, align 8                      ; 5 uses
  store ptr %0, ptr %i.c, align 8, !tbaa !104
  %i.d = load i8, ptr %0, align 1, !tbaa !71      ; 4 uses
  %i.e = add i8 %i.d, -48
  %or.cond = icmp ult i8 %i.e, 10
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %.not28 = icmp eq i8 %i.d, 48
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call noundef i32 @_ZN3fmt3v126detail21parse_nonnegative_intIcEEiRPKT_S5_i(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef %1, i32 noundef 2147483647) #30
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !104
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.021 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.d ]
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i8, ptr %i.h, align 1, !tbaa !71
  switch i8 %i.j, label %bb.g [
    i8 125, label %bb.h
    i8 58, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.211) #32
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !754, !nonnull !83, !align !167
  store i32 %.021, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !755, !nonnull !83, !align !161
  store i32 1, ptr %i.n, align 4, !tbaa !220
  %i.o = load ptr, ptr %2, align 8, !tbaa !756, !nonnull !83, !align !167
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !107
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit

bb.i:                                             ; preds = %bb.h
  call void @_ZN3fmt3v1212report_errorEPKc(ptr noundef nonnull @.str.215) #32
  unreachable

_ZN3fmt3v126detail20dynamic_spec_handlerIcE8on_indexEi.exit: ; preds = %bb.h
  store i32 -1, ptr %i.p, align 8, !tbaa !107
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !104
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.t = and i8 %i.d, -33
  %i.u = add i8 %i.t, -65
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph93, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54
  %.292 = phi i32 [ %.1.lcssa, %.lr.ph93 ], [ %i.cm, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54 ]
  %i.ce = load i64, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = load i64, ptr %i.am, align 8, !tbaa !92
  %i.ch = icmp ugt i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.l, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54

bb.l:                                             ; preds = %bb.k
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !90
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cf), !inline_history !24
  %.pre.i52 = load i64, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.pre2.i53 = add i64 %.pre.i52, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54: ; preds = %bb.k, %bb.l
  %.pre-phi.i51 = phi i64 [ %i.cf, %bb.k ], [ %.pre2.i53, %bb.l ]
  %i.cj = phi i64 [ %i.ce, %bb.k ], [ %.pre.i52, %bb.l ]
  %i.ck = load ptr, ptr %3, align 8, !tbaa !91
  store i64 %.pre-phi.i51, ptr %i.aj, align 8, !tbaa !95
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 48, ptr %i.cl, align 1, !tbaa !71
  %i.cm = add i32 %.292, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cm, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !766

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit54, %bb.j
  %i.cn = select i1 %.not87, i8 112, i8 80
  %i.co = load i64, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %i.cp = add i64 %i.co, 1                        ; 3 uses
  %i.cq = load i64, ptr %i.am, align 8, !tbaa !92
  %i.cr = icmp ugt i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.m, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58

bb.m:                                             ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !90
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cp), !inline_history !24
  %.pre.i56 = load i64, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.pre2.i57 = add i64 %.pre.i56, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58: ; preds = %._crit_edge, %bb.m
  %.pre-phi.i55 = phi i64 [ %i.cp, %._crit_edge ], [ %.pre2.i57, %bb.m ]
  %i.cu = phi i64 [ %i.co, %._crit_edge ], [ %.pre.i56, %bb.m ]
  %i.cv = load ptr, ptr %3, align 8, !tbaa !91
  store i64 %.pre-phi.i55, ptr %i.aj, align 8, !tbaa !95
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store i8 %i.cn, ptr %i.cw, align 1, !tbaa !71
  %i.cx = icmp slt i32 %i.j, 0
  %i.cy = load i64, ptr %i.aj, align 8, !tbaa !95 ; 3 uses
  %i.cz = add i64 %i.cy, 1                        ; 5 uses
  %i.da = load i64, ptr %i.am, align 8, !tbaa !92
  %i.db = icmp ugt i64 %i.cz, %i.da               ; 2 uses
  br i1 %i.cx, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58
  br i1 %i.db, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !90
  call void %i.dd(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cz), !inline_history !24
  %.pre.i60 = load i64, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.pre2.i61 = add i64 %.pre.i60, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62: ; preds = %bb.n, %bb.o
  %.pre-phi.i59 = phi i64 [ %i.cz, %bb.n ], [ %.pre2.i61, %bb.o ]
  %i.de = phi i64 [ %i.cy, %bb.n ], [ %.pre.i60, %bb.o ]
  %i.df = load ptr, ptr %3, align 8, !tbaa !91
  store i64 %.pre-phi.i59, ptr %i.aj, align 8, !tbaa !95
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.de
  store i8 45, ptr %i.dg, align 1, !tbaa !71
  %i.dh = sub nsw i32 0, %i.j
  br label %bb.r

bb.p:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit58
  br i1 %i.db, label %bb.q, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !90
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cz), !inline_history !24
  %.pre.i64 = load i64, ptr %i.aj, align 8, !tbaa !95 ; 2 uses
  %.pre2.i65 = add i64 %.pre.i64, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66: ; preds = %bb.p, %bb.q
  %.pre-phi.i63 = phi i64 [ %i.cz, %bb.p ], [ %.pre2.i65, %bb.q ]
  %i.dk = phi i64 [ %i.cy, %bb.p ], [ %.pre.i64, %bb.q ]
  %i.dl = load ptr, ptr %3, align 8, !tbaa !91
  store i64 %.pre-phi.i63, ptr %i.aj, align 8, !tbaa !95
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dk
  store i8 43, ptr %i.dm, align 1, !tbaa !71
  br label %bb.r

bb.r:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62
  %.0 = phi i32 [ %i.dh, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit62 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit66 ] ; 3 uses
  %i.dn = or i32 %.0, 1
  %i.do = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.dn, i1 true)
  %i.dp = xor i32 %i.do, 31
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.dq
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !97
  %i.dt = zext nneg i32 %.0 to i64
  %i.du = add i64 %i.ds, %i.dt
  %i.dv = lshr i64 %i.du, 32
  %i.dw = trunc nuw i64 %i.dv to i32
  %i.dx = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.dw) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::basic_fp.89", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !110
  %i.c = and i32 %i.b, 7
  %i.d = icmp eq i32 %i.c, 2                      ; 5 uses
  %i.e = fcmp oeq double %0, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.f, %i.d
  br i1 %or.cond, label %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !92
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !90
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !24
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !95 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !91
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !71
  br label %bb.bd

_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit: ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !92   ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.e, label %_ZN3fmt3v126detail6fill_nIciEEPT_S4_T0_c.exit

bb.e:                                             ; preds = %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !90
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !25
  %.pre.i141 = load i64, ptr %i.s, align 8, !tbaa !92
  br label %_ZN3fmt3v126detail6fill_nIciEEPT_S4_T0_c.exit

_ZN3fmt3v126detail6fill_nIciEEPT_S4_T0_c.exit:    ; preds = %bb.e, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit
  %i.x = phi i64 [ %i.t, %_ZN3fmt3v126detail11to_unsignedIiEENSt13make_unsignedIT_E4typeES4_.exit ], [ %.pre.i141, %bb.e ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !95
  %i.aa = load ptr, ptr %4, align 8, !tbaa !91
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bd

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ac = bitcast double %0 to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 4503599627370495         ; 6 uses
  %i.ae = and i64 %i.ac, 9218868437227405312      ; 3 uses
  %i.af = lshr exact i64 %i.ae, 52
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %.not = icmp eq i64 %i.ae, 0                    ; 3 uses
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.ag, -1075
  %i.ai = shl nuw nsw i64 %i.ad, 1
  %i.aj = or disjoint i64 %i.ai, 9007199254740992
  br label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

bb.h:                                             ; preds = %bb.f
  %.not126 = icmp eq i64 %i.ad, 0
  br i1 %.not126, label %.split, label %.thread

.thread:                                          ; preds = %bb.h
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true) ; 2 uses
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = add nsw i64 %6, -10
  %9 = sub nuw nsw i32 -1063, %7
  %10 = shl i64 %i.ad, %8
  br label %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit

.split:                                           ; preds = %bb.h
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN17assertion_failureC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull @.str.224)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.split
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI17assertion_failure, ptr nonnull @_ZNSt11logic_errorD2Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.j
  %.sink = phi ptr [ %i.bq, %bb.n ], [ %i.ak, %bb.j ]
  %common.resume.op = phi { ptr, i32 } [ %i.br, %bb.n ], [ %i.al, %bb.j ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #30
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %.split
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit: ; preds = %.thread, %bb.g
  %.0109 = phi i64 [ %i.aj, %bb.g ], [ %10, %.thread ]
  %.0108 = phi i32 [ %i.ah, %bb.g ], [ %9, %.thread ] ; 2 uses
  %i.am = mul nsw i32 %.0108, 315653
  %i.an = ashr i32 %i.am, 20                      ; 2 uses
  %.neg129 = add nsw i32 %i.an, -2                ; 3 uses
  %i.ao = sub nsw i32 2, %i.an                    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, 1741647
  %i.aq = ashr i32 %i.ap, 19
  %i.ar = add nsw i32 %i.aq, %.0108
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl i64 %.0109, %i.as                   ; 2 uses
  %i.au = sext i32 %i.ao to i64
  %i.av = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.au ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4672
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.aw, align 16, !tbaa !97
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.av, i64 4680
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !97
  %i.ax = zext i64 %i.at to i128
  %i.ay = zext i64 %.sroa.2.0.copyload.i.i to i128
  %i.az = mul nuw i128 %i.ax, %i.ay               ; 2 uses
  %i.ba = lshr i128 %i.az, 64
  %i.bb = trunc nuw i128 %i.ba to i64
  %i.bc = trunc i128 %i.az to i64
  %i.bd = tail call noundef i64 @llvm.umulh.i64(i64 %i.at, i64 %.sroa.0.0.copyload.i.i)
  %i.be = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bc, i64 %i.bd) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0       ; 2 uses
  %i.bh = zext i1 %i.bf to i64
  %i.bi = add nuw i64 %i.bh, %i.bb                ; 3 uses
  %i.bj = icmp ne i64 %i.bg, 0                    ; 4 uses
  %i.bk = icmp ugt i64 %i.bi, 999999999999999999  ; 2 uses
  %i.bl = mul nuw i64 %i.bi, 10
  %.0107 = select i1 %i.bk, i64 %i.bi, i64 %i.bl  ; 3 uses
  %.0106 = select i1 %i.bk, i32 19, i32 18        ; 4 uses
  br i1 %i.d, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %i.bm = add nsw i32 %.0106, %.neg129            ; 3 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  %i.bo = sub nuw nsw i32 2147483647, %i.bm
  %i.bp = icmp sgt i32 %1, %i.bo
  %or.cond.i148 = select i1 %i.bn, i1 %i.bp, i1 false
  br i1 %or.cond.i148, label %bb.l, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.l:                                             ; preds = %bb.k
  %i.bq = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull @.str.207)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.k
  %i.bs = add nsw i32 %i.bm, %1
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit
  %.0198 = phi i32 [ %i.bs, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt3v126detail9dragonbox16floor_log10_pow2Ei.exit ] ; 20 uses
  %.not135 = icmp sgt i32 %.0106, %.0198
  br i1 %.not135, label %bb.p, label %.thread235

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp slt i32 %.0198, 1
  %i.bu = add nsw i32 %.0106, %.neg129            ; 2 uses
  br i1 %i.bt, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  store i32 %i.bu, ptr %i.a, align 4, !tbaa !87
  %i.bv = icmp slt i32 %.0198, 0
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.bw, align 8, !tbaa !95
  br label %.thread233

bb.s:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !92
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !90
  tail call void %i.cb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !25
  %.pre.i150 = load i64, ptr %i.bx, align 8, !tbaa !92
  %i.cc = icmp ne i64 %.pre.i150, 0
  %i.cd = zext i1 %i.cc to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151: ; preds = %bb.s, %bb.t
  %i.ce = phi i64 [ 1, %bb.s ], [ %i.cd, %bb.t ]
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !95
  %i.cg = zext i1 %i.bj to i64
  %i.ch = or i64 %.0107, %i.cg
  %i.ci = icmp ugt i64 %i.ch, 5000000000000000000
  %i.cj = load ptr, ptr %4, align 8, !tbaa !91    ; 2 uses
  br i1 %i.ci, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151
  store i8 49, ptr %i.cj, align 1, !tbaa !71
  br label %.thread233

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit151
  store i8 48, ptr %i.cj, align 1, !tbaa !71
  br label %.thread233

bb.w:                                             ; preds = %bb.p
  %i.ck = sub nsw i32 %i.bu, %.0198               ; 2 uses
  store i32 %i.ck, ptr %i.a, align 4, !tbaa !87
  %i.cl = tail call noundef i64 @llvm.umulh.i64(i64 %.0107, i64 7922816251426433760)
  %i.cm = lshr i64 %i.cl, 32                      ; 3 uses
  %.neg130 = mul i64 %i.cm, -10000000000
  %i.cn = add i64 %.neg130, %.0107                ; 5 uses
  %i.co = tail call i32 @llvm.umin.i32(i32 %.0198, i32 9) ; 3 uses
  %i.cp = load ptr, ptr %4, align 8, !tbaa !91    ; 6 uses
  %i.cq = and i32 %i.co, 1
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = mul nuw nsw i64 %i.cm, 720575941
  %i.cs = lshr i64 %i.cr, 24
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %i.cu = lshr i64 %i.ct, 32                      ; 2 uses
  %i.cv = trunc nuw nsw i64 %i.cu to i8
  %i.cw = add nuw nsw i8 %i.cv, 48
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !71
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cx = mul nuw nsw i64 %i.cm, 450359963
  %i.cy = lshr i64 %i.cx, 20
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %i.da = lshr i64 %i.cz, 32                      ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2
  store i16 %i.dd, ptr %i.cp, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0219 = phi i64 [ %i.cz, %bb.y ], [ %i.ct, %bb.x ] ; 2 uses
  %.0215.in = phi i64 [ %i.da, %bb.y ], [ %i.cu, %bb.x ]
  %.0.i = phi i32 [ 2, %bb.y ], [ 1, %bb.x ]      ; 2 uses
  %i.de = icmp samesign ugt i32 %.0198, %.0.i
  br i1 %i.de, label %.lr.ph.i, label %.thread282

.lr.ph.i:                                         ; preds = %bb.z
  %i.df = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.dg = zext nneg i32 %i.co to i64              ; 3 uses
  %i.dh = and i64 %.0219, 4294967295
  %i.di = mul nuw nsw i64 %i.dh, 100              ; 3 uses
  %i.dj = lshr i64 %i.di, 32                      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.df
  %i.dl = shl nuw nsw i64 %i.dj, 1
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2
  store i16 %i.dn, ptr %i.dk, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.df, 2   ; 2 uses
  %i.do = icmp samesign ult i64 %indvars.iv.next.i, %i.dg
  br i1 %i.do, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dp = and i64 %i.di, 4294967292
  %i.dq = mul nuw nsw i64 %i.dp, 100              ; 3 uses
  %i.dr = lshr i64 %i.dq, 32                      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i
  %i.dt = shl nuw nsw i64 %i.dr, 1
  %i.du = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2
  store i16 %i.dv, ptr %i.ds, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.df, 4 ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next.i.1, %i.dg
  br i1 %i.dw, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dx = and i64 %i.dq, 4294967280
  %i.dy = mul nuw nsw i64 %i.dx, 100              ; 3 uses
  %i.dz = lshr i64 %i.dy, 32                      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i.1
  %i.eb = shl nuw nsw i64 %i.dz, 1
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2
  store i16 %i.ed, ptr %i.ea, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.df, 6 ; 2 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next.i.2, %i.dg
  br i1 %i.ee, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ef = and i64 %i.dy, 4294967232
  %i.eg = mul nuw nsw i64 %i.ef, 100              ; 2 uses
  %i.eh = lshr i64 %i.eg, 32                      ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i.2
end_hunk_4
