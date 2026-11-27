Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/generate_real_test?download=true
inline.NumInlined: 2233
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(128) %i.mu) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit358

_ZN7testing7MessageD2Ev.exit358:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i357, %bb.fg, %bb.fd
  %.pn139.pn = phi { ptr, i32 } [ %i.mr, %bb.fd ], [ %.pn139, %bb.fg ], [ %.pn139, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i357 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %49) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #17
  br label %common.resume

bb.fh:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit350, %_ZN7testing7MessageD2Ev.exit355
  %i.my = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !48 ; 4 uses
  %.not.i.i359 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i359, label %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit364, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !21 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 16 ; 2 uses
  %i.nc = icmp eq ptr %i.na, %i.nb
  br i1 %i.nc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360: ; preds = %bb.fi
  %i.nd = load i64, ptr %i.nb, align 8, !tbaa !24
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.na, i64 noundef %i.ne) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i360
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef 32) #16
  br label %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit364

_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit364: ; preds = %bb.fh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #17
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %52)
  %i.nf = load i8, ptr %52, align 8, !tbaa !45, !range !46, !noundef !47
  %i.ng = trunc nuw i8 %i.nf to i1
  br i1 %i.ng, label %bb.fs, label %bb.fj

bb.fj:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit364
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.fk unwind label %bb.fo

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #17
  %i.nh = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !48 ; 2 uses
  %.not.i.i365 = icmp eq ptr %i.ni, null
  br i1 %.not.i.i365, label %_ZNK7testing15AssertionResult15failure_messageEv.exit366, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit366

_ZNK7testing15AssertionResult15failure_messageEv.exit366: ; preds = %bb.fl, %bb.fk
  %i.nk = phi ptr [ %i.nj, %bb.fl ], [ @.str.51, %bb.fk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 143, ptr noundef %i.nk)
          to label %bb.fm unwind label %bb.fp

bb.fm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit366
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.fn unwind label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #17
  %i.nl = load ptr, ptr %53, align 8, !tbaa !50   ; 3 uses
  %.not.i.i367 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i367, label %_ZN7testing7MessageD2Ev.exit369, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368: ; preds = %bb.fn
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !26
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  %i.no = load ptr, ptr %i.nn, align 8
  call void %i.no(ptr noundef nonnull align 8 dereferenceable(128) %i.nl) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit369

_ZN7testing7MessageD2Ev.exit369:                  ; preds = %bb.fn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i368
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #17
  br label %bb.fs

bb.fo:                                            ; preds = %bb.fj
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit372

bb.fp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit366
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fm
  %i.nr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #17
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.pn142 = phi { ptr, i32 } [ %i.nr, %bb.fq ], [ %i.nq, %bb.fp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #17
  %i.ns = load ptr, ptr %53, align 8, !tbaa !50   ; 3 uses
  %.not.i.i370 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i370, label %_ZN7testing7MessageD2Ev.exit372, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371: ; preds = %bb.fr
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !26
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8
  call void %i.nv(ptr noundef nonnull align 8 dereferenceable(128) %i.ns) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit372

_ZN7testing7MessageD2Ev.exit372:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371, %bb.fr, %bb.fo
  %.pn142.pn = phi { ptr, i32 } [ %i.np, %bb.fo ], [ %.pn142, %bb.fr ], [ %.pn142, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i371 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %52) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #17
  br label %common.resume

bb.fs:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit364, %_ZN7testing7MessageD2Ev.exit369
  %i.nw = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !48 ; 4 uses
  %.not.i.i373 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i373, label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378.peel, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !21 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nx, i64 16 ; 2 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374: ; preds = %bb.ft
  %i.ob = load i64, ptr %i.nz, align 8, !tbaa !24
  %i.oc = add i64 %i.ob, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.oc) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i374
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef 32) #16
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378.peel

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378.peel: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i375, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #17
  %i.od = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %55)
  %.pre = load i8, ptr %55, align 8, !tbaa !45, !range !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.oe = trunc nuw i8 %.pre to i1
  br i1 %i.oe, label %bb.fz, label %bb.fu

bb.fu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.fv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.fv:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #17
  %i.of = load ptr, ptr %i.od, align 8, !tbaa !48 ; 2 uses
  %.not.i.i379.peel = icmp eq ptr %i.of, null
  br i1 %.not.i.i379.peel, label %_ZNK7testing15AssertionResult15failure_messageEv.exit380.peel, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit380.peel

_ZNK7testing15AssertionResult15failure_messageEv.exit380.peel: ; preds = %bb.fw, %bb.fv
  %i.oh = phi ptr [ %i.og, %bb.fw ], [ @.str.51, %bb.fv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %57, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 148, ptr noundef %i.oh)
          to label %bb.fx unwind label %.loopexit.split-lp515.loopexit.split-lp.loopexit.split-lp

bb.fx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit380.peel
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.fy unwind label %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp

bb.fy:                                            ; preds = %bb.fx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  %i.oi = load ptr, ptr %56, align 8, !tbaa !50   ; 3 uses
  %.not.i.i381.peel = icmp eq ptr %i.oi, null
  br i1 %.not.i.i381.peel, label %_ZN7testing7MessageD2Ev.exit383.peel, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382.peel

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382.peel: ; preds = %bb.fy
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !26
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(128) %i.oi) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit383.peel

_ZN7testing7MessageD2Ev.exit383.peel:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382.peel, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #17
  br label %bb.fz

bb.fz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit383.peel, %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378.peel
  %i.om = load ptr, ptr %i.od, align 8, !tbaa !48 ; 5 uses
  %.not.i.i387.peel = icmp eq ptr %i.om, null
  br i1 %.not.i.i387.peel, label %.peel.next, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !21 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 16 ; 2 uses
  %i.op = icmp eq ptr %i.on, %i.oo
  br i1 %i.op, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i390.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388.peel: ; preds = %bb.ga
  %i.oq = load i64, ptr %i.oo, align 8, !tbaa !24
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.or) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i390.peel: ; preds = %bb.ga
  %73 = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %74 = load i64, ptr %73, align 8, !tbaa !22
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389.peel

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i390.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388.peel
  call void @_ZdlPvm(ptr noundef nonnull %i.om, i64 noundef 32) #16
  br label %.peel.next

.peel.next:                                       ; preds = %bb.fz, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  br label %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit"

.loopexit524:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.os = getelementptr inbounds nuw i8, ptr %i.c, i64 252
  store float 5.000000e-01, ptr %i.os, align 4, !tbaa !58
  %i.ot = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store float 2.500000e-01, ptr %i.ot, align 8, !tbaa !58
  %i.ou = getelementptr inbounds nuw i8, ptr %i.c, i64 244
  store float 1.250000e-01, ptr %i.ou, align 4, !tbaa !58
  %i.ov = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store float 6.250000e-02, ptr %i.ov, align 16, !tbaa !58
  %i.ow = getelementptr inbounds nuw i8, ptr %i.c, i64 236
  store float 3.125000e-02, ptr %i.ow, align 4, !tbaa !58
  %i.ox = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store float 1.562500e-02, ptr %i.ox, align 8, !tbaa !58
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 228
  store float 7.812500e-03, ptr %i.oy, align 4, !tbaa !58
  %i.oz = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store float 3.906250e-03, ptr %i.oz, align 16, !tbaa !58
  %i.pa = getelementptr inbounds nuw i8, ptr %i.c, i64 220
  store float f0x3B000000, ptr %i.pa, align 4, !tbaa !58
  %i.pb = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store float f0x3A800000, ptr %i.pb, align 8, !tbaa !58
  %i.pc = getelementptr inbounds nuw i8, ptr %i.c, i64 212
  store float f0x3A000000, ptr %i.pc, align 4, !tbaa !58
  %i.pd = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store float f0x39800000, ptr %i.pd, align 16, !tbaa !58
  %i.pe = getelementptr inbounds nuw i8, ptr %i.c, i64 204
  store float f0x39000000, ptr %i.pe, align 4, !tbaa !58
  %i.pf = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store float f0x38800000, ptr %i.pf, align 8, !tbaa !58
  %i.pg = getelementptr inbounds nuw i8, ptr %i.c, i64 196
  store float f0x38000000, ptr %i.pg, align 4, !tbaa !58
  %i.ph = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store float f0x37800000, ptr %i.ph, align 16, !tbaa !58
  %i.pi = getelementptr inbounds nuw i8, ptr %i.c, i64 188
  store float f0x37000000, ptr %i.pi, align 4, !tbaa !58
  %i.pj = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store float f0x36800000, ptr %i.pj, align 8, !tbaa !58
  %i.pk = getelementptr inbounds nuw i8, ptr %i.c, i64 180
  store float f0x36000000, ptr %i.pk, align 4, !tbaa !58
  %i.pl = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store float f0x35800000, ptr %i.pl, align 16, !tbaa !58
  %i.pm = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  store float f0x35000000, ptr %i.pm, align 4, !tbaa !58
  %i.pn = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store float f0x34800000, ptr %i.pn, align 8, !tbaa !58
  %i.po = getelementptr inbounds nuw i8, ptr %i.c, i64 164
  store float f0x34000000, ptr %i.po, align 4, !tbaa !58
  %i.pp = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store float f0x33800000, ptr %i.pp, align 16, !tbaa !58
  %i.pq = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store float f0x33000000, ptr %i.pq, align 4, !tbaa !58
  %i.pr = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store float f0x32800000, ptr %i.pr, align 8, !tbaa !58
  %i.ps = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  store float f0x32000000, ptr %i.ps, align 4, !tbaa !58
  %i.pt = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store float f0x31800000, ptr %i.pt, align 16, !tbaa !58
  %i.pu = getelementptr inbounds nuw i8, ptr %i.c, i64 140
  store float f0x31000000, ptr %i.pu, align 4, !tbaa !58
  %i.pv = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store float f0x30800000, ptr %i.pv, align 8, !tbaa !58
  %i.pw = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store float f0x30000000, ptr %i.pw, align 4, !tbaa !58
  %i.px = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store float f0x2F800000, ptr %i.px, align 16, !tbaa !58
  %i.py = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store float f0x2F000000, ptr %i.py, align 4, !tbaa !58
  %i.pz = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store float f0x2E800000, ptr %i.pz, align 8, !tbaa !58
  %i.qa = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  store float f0x2E000000, ptr %i.qa, align 4, !tbaa !58
  %i.qb = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store float f0x2D800000, ptr %i.qb, align 16, !tbaa !58
  %i.qc = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  store float f0x2D000000, ptr %i.qc, align 4, !tbaa !58
  %i.qd = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store float f0x2C800000, ptr %i.qd, align 8, !tbaa !58
  %i.qe = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  store float f0x2C000000, ptr %i.qe, align 4, !tbaa !58
  %i.qf = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store float f0x2B800000, ptr %i.qf, align 16, !tbaa !58
  %i.qg = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store float f0x2B000000, ptr %i.qg, align 4, !tbaa !58
  %i.qh = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store float f0x2A800000, ptr %i.qh, align 8, !tbaa !58
  %i.qi = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store float f0x2A000000, ptr %i.qi, align 4, !tbaa !58
  %i.qj = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store float f0x29800000, ptr %i.qj, align 16, !tbaa !58
  %i.qk = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store float f0x29000000, ptr %i.qk, align 4, !tbaa !58
  %i.ql = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store float f0x28800000, ptr %i.ql, align 8, !tbaa !58
  %i.qm = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store float f0x28000000, ptr %i.qm, align 4, !tbaa !58
  %i.qn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store float f0x27800000, ptr %i.qn, align 16, !tbaa !58
  %i.qo = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store float f0x27000000, ptr %i.qo, align 4, !tbaa !58
  %i.qp = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store float f0x26800000, ptr %i.qp, align 8, !tbaa !58
  %i.qq = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store float f0x26000000, ptr %i.qq, align 4, !tbaa !58
  %i.qr = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store float f0x25800000, ptr %i.qr, align 16, !tbaa !58
  %i.qs = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store float f0x25000000, ptr %i.qs, align 4, !tbaa !58
  %i.qt = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store float f0x24800000, ptr %i.qt, align 8, !tbaa !58
  %i.qu = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store float f0x24000000, ptr %i.qu, align 4, !tbaa !58
  %i.qv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store float f0x23800000, ptr %i.qv, align 16, !tbaa !58
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store float f0x23000000, ptr %i.qw, align 4, !tbaa !58
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store float f0x22800000, ptr %i.qx, align 8, !tbaa !58
  %i.qy = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float f0x22000000, ptr %i.qy, align 4, !tbaa !58
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store float f0x21800000, ptr %i.qz, align 16, !tbaa !58
  %i.ra = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float f0x21000000, ptr %i.ra, align 4, !tbaa !58
  %i.rb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float f0x20800000, ptr %i.rb, align 8, !tbaa !58
  %i.rc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float f0x20000000, ptr %i.rc, align 4, !tbaa !58
  store float f0x1F800000, ptr %i.c, align 16, !tbaa !58
  %i.rd = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %64, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  br label %bb.gm

"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit": ; preds = %.peel.next, %_ZN7testing15AssertionResultD2Ev.exit391
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit391 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ro = trunc nuw nsw i64 %indvars.iv to i32
  %i.rp = uitofp nneg i32 %i.ro to float
  %i.rq = fmul nnan float %i.rp, f0x1F800000      ; 2 uses
  store float %i.rq, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.rr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %indvars.iv, i1 true) ; 2 uses
  %i.rs = shl i64 %indvars.iv, %i.rr
  %i.rt = lshr i64 %i.rs, 40
  %i.ru = trunc nuw nsw i64 %i.rt to i32
  %i.rv = and i32 %i.ru, 8388607
  %i.rw = trunc nuw nsw i64 %i.rr to i32
  %i.rx = shl nuw nsw i32 %i.rw, 23
  %reass.sub = sub nsw i32 %i.rv, %i.rx
  %i.ry = add nsw i32 %reass.sub, 1056964608      ; 2 uses
  %i.rz = bitcast i32 %i.ry to float
  store i32 %i.ry, ptr %i.b, align 4, !tbaa !58
  %i.sa = fcmp oeq float %i.rq, %i.rz
  br i1 %i.sa, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit"
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %55)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378

bb.gc:                                            ; preds = %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit"
  call void @_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %55, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378: ; preds = %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.sb = load i8, ptr %55, align 8, !tbaa !45, !range !46, !noundef !47
  %i.sc = trunc nuw i8 %i.sb to i1
  br i1 %i.sc, label %bb.gj, label %bb.gd

bb.gd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.ge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #17
  %i.sd = load ptr, ptr %i.od, align 8, !tbaa !48 ; 2 uses
  %.not.i.i379 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i379, label %_ZNK7testing15AssertionResult15failure_messageEv.exit380, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  %i.acp = load ptr, ptr %i.aco, align 8
  call void %i.acp(ptr noundef nonnull align 8 dereferenceable(128) %i.acm) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit683

_ZN7testing7MessageD2Ev.exit683:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i682, %bb.ml, %bb.mi
  %.pn224.pn = phi { ptr, i32 } [ %i.acj, %bb.mi ], [ %.pn224, %bb.ml ], [ %.pn224, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i682 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %100) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #17
  br label %common.resume

bb.mm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIllTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit680
  %i.acq = getelementptr inbounds nuw i8, ptr %100, i64 8
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !48 ; 4 uses
  %.not.i.i684 = icmp eq ptr %i.acr, null
  br i1 %.not.i.i684, label %_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !21 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acr, i64 16 ; 2 uses
  %i.acu = icmp eq ptr %i.acs, %i.act
  br i1 %i.acu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i686, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i685

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i685: ; preds = %bb.mn
  %i.acv = load i64, ptr %i.act, align 8, !tbaa !24
  %i.acw = add i64 %i.acv, 1
  call void @_ZdlPvm(ptr noundef %i.acs, i64 noundef %i.acw) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i686

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i686: ; preds = %bb.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i685
  call void @_ZdlPvm(ptr noundef nonnull %i.acr, i64 noundef 32) #16
  br label %_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %bb.mm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i686
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %103) #17
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %103)
  %i.acx = load i8, ptr %103, align 8, !tbaa !45, !range !46, !noundef !47
  %i.acy = trunc nuw i8 %i.acx to i1
  br i1 %i.acy, label %bb.mx, label %bb.mo

bb.mo:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %104) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %104)
          to label %bb.mp unwind label %bb.mt

bb.mp:                                            ; preds = %bb.mo
  call void @llvm.lifetime.start.p0(ptr nonnull %105) #17
  %i.acz = getelementptr inbounds nuw i8, ptr %103, i64 8
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !48 ; 2 uses
  %.not.i.i689 = icmp eq ptr %i.ada, null
  br i1 %.not.i.i689, label %_ZNK7testing15AssertionResult15failure_messageEv.exit690, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.adb = load ptr, ptr %i.ada, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit690

_ZNK7testing15AssertionResult15failure_messageEv.exit690: ; preds = %bb.mq, %bb.mp
  %i.adc = phi ptr [ %i.adb, %bb.mq ], [ @.str.51, %bb.mp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %105, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 305, ptr noundef %i.adc)
          to label %bb.mr unwind label %bb.mu

bb.mr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit690
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(8) %104)
          to label %bb.ms unwind label %bb.mv

bb.ms:                                            ; preds = %bb.mr
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #17
  %i.add = load ptr, ptr %104, align 8, !tbaa !50 ; 3 uses
  %.not.i.i691 = icmp eq ptr %i.add, null
  br i1 %.not.i.i691, label %_ZN7testing7MessageD2Ev.exit693, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i692

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i692: ; preds = %bb.ms
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !26
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adg = load ptr, ptr %i.adf, align 8
  call void %i.adg(ptr noundef nonnull align 8 dereferenceable(128) %i.add) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit693

_ZN7testing7MessageD2Ev.exit693:                  ; preds = %bb.ms, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i692
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #17
  br label %bb.mx

bb.mt:                                            ; preds = %bb.mo
  %i.adh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit696

bb.mu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit690
  %i.adi = landingpad { ptr, i32 }
          cleanup
  br label %bb.mw

bb.mv:                                            ; preds = %bb.mr
  %i.adj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #17
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %bb.mu
  %.pn227 = phi { ptr, i32 } [ %i.adj, %bb.mv ], [ %i.adi, %bb.mu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #17
  %i.adk = load ptr, ptr %104, align 8, !tbaa !50 ; 3 uses
  %.not.i.i694 = icmp eq ptr %i.adk, null
  br i1 %.not.i.i694, label %_ZN7testing7MessageD2Ev.exit696, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i695

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i695: ; preds = %bb.mw
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !26
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 8
  %i.adn = load ptr, ptr %i.adm, align 8
  call void %i.adn(ptr noundef nonnull align 8 dereferenceable(128) %i.adk) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit696

_ZN7testing7MessageD2Ev.exit696:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i695, %bb.mw, %bb.mt
  %.pn227.pn = phi { ptr, i32 } [ %i.adh, %bb.mt ], [ %.pn227, %bb.mw ], [ %.pn227, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i695 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %103) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #17
  br label %common.resume

bb.mx:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIllEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit693
  %i.ado = getelementptr inbounds nuw i8, ptr %103, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !48 ; 4 uses
  %.not.i.i697 = icmp eq ptr %i.adp, null
  br i1 %.not.i.i697, label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702.peel, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !21 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adp, i64 16 ; 2 uses
  %i.ads = icmp eq ptr %i.adq, %i.adr
  br i1 %i.ads, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i698

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i698: ; preds = %bb.my
  %i.adt = load i64, ptr %i.adr, align 8, !tbaa !24
  %i.adu = add i64 %i.adt, 1
  call void @_ZdlPvm(ptr noundef %i.adq, i64 noundef %i.adu) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i699

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i699: ; preds = %bb.my, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i698
  call void @_ZdlPvm(ptr noundef nonnull %i.adp, i64 noundef 32) #16
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702.peel

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702.peel: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i699, %bb.mx
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #17
  %i.adv = getelementptr inbounds nuw i8, ptr %106, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %106)
  %.pre = load i8, ptr %106, align 8, !tbaa !45, !range !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.adw = trunc nuw i8 %.pre to i1
  br i1 %i.adw, label %bb.ne, label %bb.mz

bb.mz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.na unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.na:                                            ; preds = %bb.mz
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #17
  %i.adx = load ptr, ptr %i.adv, align 8, !tbaa !48 ; 2 uses
  %.not.i.i703.peel = icmp eq ptr %i.adx, null
  br i1 %.not.i.i703.peel, label %_ZNK7testing15AssertionResult15failure_messageEv.exit704.peel, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit704.peel

_ZNK7testing15AssertionResult15failure_messageEv.exit704.peel: ; preds = %bb.nb, %bb.na
  %i.adz = phi ptr [ %i.ady, %bb.nb ], [ @.str.51, %bb.na ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %108, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 310, ptr noundef %i.adz)
          to label %bb.nc unwind label %.loopexit.split-lp839.loopexit.split-lp.loopexit.split-lp

bb.nc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit704.peel
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.nd unwind label %.loopexit.split-lp844.loopexit.split-lp.loopexit.split-lp

bb.nd:                                            ; preds = %bb.nc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #17
  %i.aea = load ptr, ptr %107, align 8, !tbaa !50 ; 3 uses
  %.not.i.i705.peel = icmp eq ptr %i.aea, null
  br i1 %.not.i.i705.peel, label %_ZN7testing7MessageD2Ev.exit707.peel, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706.peel

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706.peel: ; preds = %bb.nd
  %i.aeb = load ptr, ptr %i.aea, align 8, !tbaa !26
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aed = load ptr, ptr %i.aec, align 8
  call void %i.aed(ptr noundef nonnull align 8 dereferenceable(128) %i.aea) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit707.peel

_ZN7testing7MessageD2Ev.exit707.peel:             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706.peel, %bb.nd
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #17
  br label %bb.ne

bb.ne:                                            ; preds = %_ZN7testing7MessageD2Ev.exit707.peel, %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702.peel
  %i.aee = load ptr, ptr %i.adv, align 8, !tbaa !48 ; 5 uses
  %.not.i.i711.peel = icmp eq ptr %i.aee, null
  br i1 %.not.i.i711.peel, label %.peel.next, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !21 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aee, i64 16 ; 2 uses
  %i.aeh = icmp eq ptr %i.aef, %i.aeg
  br i1 %i.aeh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i714.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712.peel: ; preds = %bb.nf
  %i.aei = load i64, ptr %i.aeg, align 8, !tbaa !24
  %i.aej = add i64 %i.aei, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aej) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i714.peel: ; preds = %bb.nf
  %124 = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %125 = load i64, ptr %124, align 8, !tbaa !22
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713.peel

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i714.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712.peel
  call void @_ZdlPvm(ptr noundef nonnull %i.aee, i64 noundef 32) #16
  br label %.peel.next

.peel.next:                                       ; preds = %bb.ne, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #17
  br label %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit"

.loopexit848:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit715
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.aek = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  store double 5.000000e-01, ptr %i.aek, align 8, !tbaa !61
  %i.ael = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store double 2.500000e-01, ptr %i.ael, align 16, !tbaa !61
  %i.aem = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  store double 1.250000e-01, ptr %i.aem, align 8, !tbaa !61
  %i.aen = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store double 6.250000e-02, ptr %i.aen, align 16, !tbaa !61
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store double 3.125000e-02, ptr %i.aeo, align 8, !tbaa !61
  %i.aep = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store double 1.562500e-02, ptr %i.aep, align 16, !tbaa !61
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  store double 7.812500e-03, ptr %i.aeq, align 8, !tbaa !61
  %i.aer = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  store double 3.906250e-03, ptr %i.aer, align 16, !tbaa !61
  %i.aes = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  store double f0x3F60000000000000, ptr %i.aes, align 8, !tbaa !61
  %i.aet = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  store double f0x3F50000000000000, ptr %i.aet, align 16, !tbaa !61
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store double f0x3F40000000000000, ptr %i.aeu, align 8, !tbaa !61
  %i.aev = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  store double f0x3F30000000000000, ptr %i.aev, align 16, !tbaa !61
  %i.aew = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  store double f0x3F20000000000000, ptr %i.aew, align 8, !tbaa !61
  %i.aex = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store double f0x3F10000000000000, ptr %i.aex, align 16, !tbaa !61
  %i.aey = getelementptr inbounds nuw i8, ptr %i.c, i64 392
  store double f0x3F00000000000000, ptr %i.aey, align 8, !tbaa !61
  %i.aez = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store double f0x3EF0000000000000, ptr %i.aez, align 16, !tbaa !61
  %i.afa = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store double f0x3EE0000000000000, ptr %i.afa, align 8, !tbaa !61
  %i.afb = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store double f0x3ED0000000000000, ptr %i.afb, align 16, !tbaa !61
  %i.afc = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  store double f0x3EC0000000000000, ptr %i.afc, align 8, !tbaa !61
  %i.afd = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store double f0x3EB0000000000000, ptr %i.afd, align 16, !tbaa !61
  %i.afe = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store double f0x3EA0000000000000, ptr %i.afe, align 8, !tbaa !61
  %i.aff = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store double f0x3E90000000000000, ptr %i.aff, align 16, !tbaa !61
  %i.afg = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store double f0x3E80000000000000, ptr %i.afg, align 8, !tbaa !61
  %i.afh = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  store double f0x3E70000000000000, ptr %i.afh, align 16, !tbaa !61
  %i.afi = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  store double f0x3E60000000000000, ptr %i.afi, align 8, !tbaa !61
  %i.afj = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store double f0x3E50000000000000, ptr %i.afj, align 16, !tbaa !61
  %i.afk = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store double f0x3E40000000000000, ptr %i.afk, align 8, !tbaa !61
  %i.afl = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  store double f0x3E30000000000000, ptr %i.afl, align 16, !tbaa !61
  %i.afm = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store double f0x3E20000000000000, ptr %i.afm, align 8, !tbaa !61
  %i.afn = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store double f0x3E10000000000000, ptr %i.afn, align 16, !tbaa !61
  %i.afo = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store double f0x3E00000000000000, ptr %i.afo, align 8, !tbaa !61
  %i.afp = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store double f0x3DF0000000000000, ptr %i.afp, align 16, !tbaa !61
  %i.afq = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  store double f0x3DE0000000000000, ptr %i.afq, align 8, !tbaa !61
  %i.afr = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  store double f0x3DD0000000000000, ptr %i.afr, align 16, !tbaa !61
  %i.afs = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store double f0x3DC0000000000000, ptr %i.afs, align 8, !tbaa !61
  %i.aft = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  store double f0x3DB0000000000000, ptr %i.aft, align 16, !tbaa !61
  %i.afu = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  store double f0x3DA0000000000000, ptr %i.afu, align 8, !tbaa !61
  %i.afv = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store double f0x3D90000000000000, ptr %i.afv, align 16, !tbaa !61
  %i.afw = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store double f0x3D80000000000000, ptr %i.afw, align 8, !tbaa !61
  %i.afx = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  store double f0x3D70000000000000, ptr %i.afx, align 16, !tbaa !61
  %i.afy = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store double f0x3D60000000000000, ptr %i.afy, align 8, !tbaa !61
  %i.afz = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store double f0x3D50000000000000, ptr %i.afz, align 16, !tbaa !61
  %i.aga = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  store double f0x3D40000000000000, ptr %i.aga, align 8, !tbaa !61
  %i.agb = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store double f0x3D30000000000000, ptr %i.agb, align 16, !tbaa !61
  %i.agc = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store double f0x3D20000000000000, ptr %i.agc, align 8, !tbaa !61
  %i.agd = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store double f0x3D10000000000000, ptr %i.agd, align 16, !tbaa !61
  %i.age = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store double f0x3D00000000000000, ptr %i.age, align 8, !tbaa !61
  %i.agf = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store double f0x3CF0000000000000, ptr %i.agf, align 16, !tbaa !61
  %i.agg = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store double f0x3CE0000000000000, ptr %i.agg, align 8, !tbaa !61
  %i.agh = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store double f0x3CD0000000000000, ptr %i.agh, align 16, !tbaa !61
  %i.agi = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store double f0x3CC0000000000000, ptr %i.agi, align 8, !tbaa !61
  %i.agj = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store double f0x3CB0000000000000, ptr %i.agj, align 16, !tbaa !61
  %i.agk = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store double f0x3CA0000000000000, ptr %i.agk, align 8, !tbaa !61
  %i.agl = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store double f0x3C90000000000000, ptr %i.agl, align 16, !tbaa !61
  %i.agm = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store double f0x3C80000000000000, ptr %i.agm, align 8, !tbaa !61
  %i.agn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double f0x3C70000000000000, ptr %i.agn, align 16, !tbaa !61
  %i.ago = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double f0x3C60000000000000, ptr %i.ago, align 8, !tbaa !61
  %i.agp = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double f0x3C50000000000000, ptr %i.agp, align 16, !tbaa !61
  %i.agq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double f0x3C40000000000000, ptr %i.agq, align 8, !tbaa !61
  %i.agr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double f0x3C30000000000000, ptr %i.agr, align 16, !tbaa !61
  %i.ags = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double f0x3C20000000000000, ptr %i.ags, align 8, !tbaa !61
  %i.agt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double f0x3C10000000000000, ptr %i.agt, align 16, !tbaa !61
  %i.agu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store double f0x3C00000000000000, ptr %i.agu, align 8, !tbaa !61
  store double f0x3BF0000000000000, ptr %i.c, align 16, !tbaa !61
  %i.agv = getelementptr inbounds nuw i8, ptr %109, i64 8 ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %115, i64 8 ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %118, i64 8 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ahf = getelementptr inbounds nuw i8, ptr %121, i64 8 ; 2 uses
  br label %bb.nr

"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit": ; preds = %.peel.next, %_ZN7testing15AssertionResultD2Ev.exit715
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit715 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ahg = trunc nuw nsw i64 %indvars.iv to i32
  %i.ahh = uitofp nneg i32 %i.ahg to double
  %i.ahi = fmul nnan double %i.ahh, f0x3BF0000000000000 ; 2 uses
  store double %i.ahi, ptr %i.a, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ahj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %indvars.iv, i1 true) ; 2 uses
  %i.ahk = shl i64 %indvars.iv, %i.ahj
  %i.ahl = lshr i64 %i.ahk, 11
  %i.ahm = and i64 %i.ahl, 4503599627370495
  %i.ahn = shl nuw nsw i64 %i.ahj, 52
  %reass.sub = sub nsw i64 %i.ahm, %i.ahn
  %i.aho = add nsw i64 %reass.sub, 4602678819172646912 ; 2 uses
  %i.ahp = bitcast i64 %i.aho to double
  store i64 %i.aho, ptr %i.b, align 8, !tbaa !61
  %i.ahq = fcmp oeq double %i.ahi, %i.ahp
  br i1 %i.ahq, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit"
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %106)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702

bb.nh:                                            ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit"
  call void @_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %106, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.163, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702: ; preds = %bb.ng, %bb.nh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ahr = load i8, ptr %106, align 8, !tbaa !45, !range !46, !noundef !47
  %i.ahs = trunc nuw i8 %i.ahr to i1
  br i1 %i.ahs, label %bb.no, label %bb.ni

bb.ni:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.nj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.nj:                                            ; preds = %bb.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #17
  %i.aht = load ptr, ptr %i.adv, align 8, !tbaa !48 ; 2 uses
  %.not.i.i703 = icmp eq ptr %i.aht, null
  br i1 %.not.i.i703, label %_ZNK7testing15AssertionResult15failure_messageEv.exit704, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit704

end_hunk_1
