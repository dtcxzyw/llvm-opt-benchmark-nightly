inline.NumInlined: 2233
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.qv = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store float f0x23800000, ptr %i.qv, align 16, !tbaa !63
  %i.qw = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store float f0x23000000, ptr %i.qw, align 4, !tbaa !63
  %i.qx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store float f0x22800000, ptr %i.qx, align 8, !tbaa !63
  %i.qy = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store float f0x22000000, ptr %i.qy, align 4, !tbaa !63
  %i.qz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store float f0x21800000, ptr %i.qz, align 16, !tbaa !63
  %i.ra = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float f0x21000000, ptr %i.ra, align 4, !tbaa !63
  %i.rb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float f0x20800000, ptr %i.rb, align 8, !tbaa !63
  %i.rc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float f0x20000000, ptr %i.rc, align 4, !tbaa !63
  store float f0x1F800000, ptr %i.c, align 16, !tbaa !63
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
  br label %bb.gn

"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit": ; preds = %.peel.next, %_ZN7testing15AssertionResultD2Ev.exit391
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit391 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ro = trunc nuw nsw i64 %indvars.iv to i32
  %i.rp = uitofp nneg i32 %i.ro to float
  %i.rq = fmul nnan float %i.rp, f0x1F800000      ; 2 uses
  store float %i.rq, ptr %i.a, align 4, !tbaa !63
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
  store i32 %i.ry, ptr %i.b, align 4, !tbaa !63
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
  %i.sb = load i8, ptr %55, align 8, !tbaa !34, !range !44, !noundef !45
  %i.sc = trunc nuw i8 %i.sb to i1
  br i1 %i.sc, label %bb.gk, label %bb.gd

bb.gd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.ge unwind label %.loopexit

bb.ge:                                            ; preds = %bb.gd
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #17
  %i.sd = load ptr, ptr %i.od, align 8, !tbaa !46 ; 2 uses
  %.not.i.i379 = icmp eq ptr %i.sd, null
  br i1 %.not.i.i379, label %_ZNK7testing15AssertionResult15failure_messageEv.exit380, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit380

_ZNK7testing15AssertionResult15failure_messageEv.exit380: ; preds = %bb.gf, %bb.ge
  %i.sf = phi ptr [ %i.se, %bb.gf ], [ @.str.51, %bb.ge ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %57, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 148, ptr noundef %i.sf)
          to label %bb.gg unwind label %.loopexit514

bb.gg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit380
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.gh unwind label %.loopexit519

bb.gh:                                            ; preds = %bb.gg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  %i.sg = load ptr, ptr %56, align 8, !tbaa !47   ; 3 uses
  %.not.i.i381 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i381, label %_ZN7testing7MessageD2Ev.exit383, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382: ; preds = %bb.gh
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !23
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sj = load ptr, ptr %i.si, align 8
  call void %i.sj(ptr noundef nonnull align 8 dereferenceable(128) %i.sg) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit383

_ZN7testing7MessageD2Ev.exit383:                  ; preds = %bb.gh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #17
  br label %bb.gk

.loopexit:                                        ; preds = %bb.gd
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit386

.loopexit.split-lp:                               ; preds = %bb.fu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit386

.loopexit514:                                     ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit380
  %lpad.loopexit516 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.loopexit.split-lp515:                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit380.peel
  %lpad.loopexit.split-lp517 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

.loopexit519:                                     ; preds = %bb.gg
  %lpad.loopexit521 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

.loopexit.split-lp520:                            ; preds = %bb.fx
  %lpad.loopexit.split-lp522 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

bb.gi:                                            ; preds = %.loopexit.split-lp520, %.loopexit519
  %lpad.phi523 = phi { ptr, i32 } [ %lpad.loopexit521, %.loopexit519 ], [ %lpad.loopexit.split-lp522, %.loopexit.split-lp520 ]
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #17
  br label %bb.gj

bb.gj:                                            ; preds = %.loopexit514, %.loopexit.split-lp515, %bb.gi
  %.pn163 = phi { ptr, i32 } [ %lpad.phi523, %bb.gi ], [ %lpad.loopexit516, %.loopexit514 ], [ %lpad.loopexit.split-lp517, %.loopexit.split-lp515 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  %i.sk = load ptr, ptr %56, align 8, !tbaa !47   ; 3 uses
  %.not.i.i384 = icmp eq ptr %i.sk, null
  br i1 %.not.i.i384, label %_ZN7testing7MessageD2Ev.exit386, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385: ; preds = %bb.gj
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !23
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8
  call void %i.sn(ptr noundef nonnull align 8 dereferenceable(128) %i.sk) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit386

_ZN7testing7MessageD2Ev.exit386:                  ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385, %bb.gj
  %.pn163.pn = phi { ptr, i32 } [ %.pn163, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385 ], [ %.pn163, %bb.gj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %55) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  br label %common.resume

bb.gk:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378, %_ZN7testing7MessageD2Ev.exit383
  %i.so = load ptr, ptr %i.od, align 8, !tbaa !46 ; 4 uses
  %.not.i.i387 = icmp eq ptr %i.so, null
  br i1 %.not.i.i387, label %_ZN7testing15AssertionResultD2Ev.exit391, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !17 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388: ; preds = %bb.gl
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !22
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389: ; preds = %bb.gl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit391

_ZN7testing15AssertionResultD2Ev.exit391:         ; preds = %bb.gk, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.loopexit524, label %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit", !llvm.loop !83

bb.gm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void

bb.gn:                                            ; preds = %.loopexit524, %._crit_edge
  %indvars.iv553.a = phi i64 [ 0, %.loopexit524 ], [ %indvars.iv.next554.a, %._crit_edge ] ; 6 uses
  %indvars.iv551 = phi i64 [ 1, %.loopexit524 ], [ %indvars.iv.next552, %._crit_edge ] ; 2 uses
  %indvars.iv540 = phi i64 [ 4294967272, %.loopexit524 ], [ %indvars.iv.next541, %._crit_edge ] ; 2 uses
  %indvars.iv528 = phi i64 [ 4294967295, %.loopexit524 ], [ %indvars.iv.next529, %._crit_edge ] ; 3 uses
  %indvars559 = trunc i64 %indvars.iv528 to i32
  %umin = call i32 @llvm.umin.i32(i32 %indvars559, i32 22)
  %i.su = add nuw nsw i32 %umin, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.sv = shl nuw i64 1, %indvars.iv553.a         ; 2 uses
  %i.sw = trunc i64 %indvars.iv553.a to i32
  %i.sx = shl i32 %i.sw, 23
  %i.sy = add i32 %i.sx, 528482304                ; 2 uses
  %i.sz = bitcast i32 %i.sy to float
  store i32 %i.sy, ptr %i.d, align 4, !tbaa !63
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv553.a ; 9 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !63, !noalias !86
  %i.tc = fcmp oeq float %i.tb, %i.sz
  br i1 %i.tc, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394

bb.gp:                                            ; preds = %bb.gn
  call void @_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.ta)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394: ; preds = %bb.go, %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.td = load i8, ptr %58, align 8, !tbaa !34, !range !44, !noundef !45
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.gz, label %bb.gq

bb.gq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.gr unwind label %bb.gv

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #17
  %i.tf = load ptr, ptr %i.rd, align 8, !tbaa !46 ; 2 uses
  %.not.i.i395 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i395, label %_ZNK7testing15AssertionResult15failure_messageEv.exit396, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit396

_ZNK7testing15AssertionResult15failure_messageEv.exit396: ; preds = %bb.gs, %bb.gr
  %i.th = phi ptr [ %i.tg, %bb.gs ], [ @.str.51, %bb.gr ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 157, ptr noundef %i.th)
          to label %bb.gt unwind label %bb.gw

bb.gt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit396
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.gu unwind label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  %i.ti = load ptr, ptr %59, align 8, !tbaa !47   ; 3 uses
  %.not.i.i397 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i397, label %_ZN7testing7MessageD2Ev.exit399, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398: ; preds = %bb.gu
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !23
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(128) %i.ti) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit399

_ZN7testing7MessageD2Ev.exit399:                  ; preds = %bb.gu, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
  br label %bb.gz

bb.gv:                                            ; preds = %bb.gq
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit402

bb.gw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit396
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gy

bb.gx:                                            ; preds = %bb.gt
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #17
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw
  %.pn145 = phi { ptr, i32 } [ %i.to, %bb.gx ], [ %i.tn, %bb.gw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  %i.tp = load ptr, ptr %59, align 8, !tbaa !47   ; 3 uses
  %.not.i.i400 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i400, label %_ZN7testing7MessageD2Ev.exit402, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i401

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i401: ; preds = %bb.gy
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !23
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(128) %i.tp) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit402

_ZN7testing7MessageD2Ev.exit402:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i401, %bb.gy, %bb.gv
  %.pn145.pn = phi { ptr, i32 } [ %i.tm, %bb.gv ], [ %.pn145, %bb.gy ], [ %.pn145, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i401 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %58) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  br label %bb.jm

bb.gz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394, %_ZN7testing7MessageD2Ev.exit399
  %i.tt = load ptr, ptr %i.rd, align 8, !tbaa !46 ; 4 uses
  %.not.i.i403 = icmp eq ptr %i.tt, null
  br i1 %.not.i.i403, label %_ZN7testing15AssertionResultD2Ev.exit407, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !17 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 16 ; 2 uses
  %i.tw = icmp eq ptr %i.tu, %i.tv
  br i1 %i.tw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i404: ; preds = %bb.ha
  %i.tx = load i64, ptr %i.tv, align 8, !tbaa !22
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.ty) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405: ; preds = %bb.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i404
  call void @_ZdlPvm(ptr noundef nonnull %i.tt, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit407

_ZN7testing15AssertionResultD2Ev.exit407:         ; preds = %bb.gz, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  %.not = icmp eq i64 %indvars.iv553.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit407
  %wide.trip.count = zext nneg i32 %i.su to i64
  br label %.lr.ph

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit438
  %i.tz = icmp samesign ugt i64 %indvars.iv553.a, 23
  br i1 %i.tz, label %.lr.ph505, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7testing15AssertionResultD2Ev.exit438
  %indvars.iv532 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next533, %_ZN7testing15AssertionResultD2Ev.exit438 ]
  %indvars.iv530 = phi i64 [ %indvars.iv528, %.lr.ph.preheader ], [ %indvars.iv.next531, %_ZN7testing15AssertionResultD2Ev.exit438 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ua = load float, ptr %i.ta, align 4, !tbaa !63 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv530 ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !63
  %i.ud = fadd float %i.ua, %i.uc                 ; 2 uses
  store float %i.ud, ptr %i.e, align 4, !tbaa !63
  %i.ue = fcmp une float %i.ud, %i.ua
  br i1 %i.ue, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %.lr.ph
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %61)
  br label %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408

bb.hc:                                            ; preds = %.lr.ph
  call void @_ZN7testing8internal18CmpHelperOpFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %61, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.ta, ptr noundef nonnull @.str.96)
  br label %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408

_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408: ; preds = %bb.hb, %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.uf = load i8, ptr %61, align 8, !tbaa !34, !range !44, !noundef !45
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.hm, label %bb.hd

bb.hd:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.he unwind label %bb.hi

bb.he:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #17
  %i.uh = load ptr, ptr %i.re, align 8, !tbaa !46 ; 2 uses
  %.not.i.i409 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i409, label %_ZNK7testing15AssertionResult15failure_messageEv.exit410, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit410

_ZNK7testing15AssertionResult15failure_messageEv.exit410: ; preds = %bb.hf, %bb.he
  %i.uj = phi ptr [ %i.ui, %bb.hf ], [ @.str.51, %bb.he ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %63, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef %i.uj)
          to label %bb.hg unwind label %bb.hj

bb.hg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit410
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.hh unwind label %bb.hk

bb.hh:                                            ; preds = %bb.hg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  %i.uk = load ptr, ptr %62, align 8, !tbaa !47   ; 3 uses
  %.not.i.i411 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i411, label %_ZN7testing7MessageD2Ev.exit413, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412: ; preds = %bb.hh
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !23
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8
  call void %i.un(ptr noundef nonnull align 8 dereferenceable(128) %i.uk) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit413

_ZN7testing7MessageD2Ev.exit413:                  ; preds = %bb.hh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  br label %bb.hm

bb.hi:                                            ; preds = %bb.hd
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit416

bb.hj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit410
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hg
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #17
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.pn155 = phi { ptr, i32 } [ %i.uq, %bb.hk ], [ %i.up, %bb.hj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  %i.ur = load ptr, ptr %62, align 8, !tbaa !47   ; 3 uses
  %.not.i.i414 = icmp eq ptr %i.ur, null
  br i1 %.not.i.i414, label %_ZN7testing7MessageD2Ev.exit416, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415: ; preds = %bb.hl
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !23
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(128) %i.ur) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit416

_ZN7testing7MessageD2Ev.exit416:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415, %bb.hl, %bb.hi
  %.pn155.pn = phi { ptr, i32 } [ %i.uo, %bb.hi ], [ %.pn155, %bb.hl ], [ %.pn155, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  br label %bb.jm

bb.hm:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408, %_ZN7testing7MessageD2Ev.exit413
  %i.uv = load ptr, ptr %i.re, align 8, !tbaa !46 ; 4 uses
  %.not.i.i417 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i417, label %_ZN7testing15AssertionResultD2Ev.exit421, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !17 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 16 ; 2 uses
  %i.uy = icmp eq ptr %i.uw, %i.ux
  br i1 %i.uy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418: ; preds = %bb.hn
  %i.uz = load i64, ptr %i.ux, align 8, !tbaa !22
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.va) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419: ; preds = %bb.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418
  call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit421

_ZN7testing15AssertionResultD2Ev.exit421:         ; preds = %bb.hm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.vb = shl nuw i64 1, %indvars.iv530
  %i.vc = add i64 %i.vb, %i.sv                    ; 3 uses
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424", label %bb.ho

bb.ho:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit421
  %i.ve = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.vc, i1 true) ; 2 uses
  %i.vf = trunc nuw nsw i64 %i.ve to i32
  %i.vg = shl i64 %i.vc, %i.ve
  %i.vh = lshr i64 %i.vg, 40
  %i.vi = trunc nuw nsw i64 %i.vh to i32
  %i.vj = and i32 %i.vi, 8388607
  %i.vk = shl nuw nsw i32 %i.vf, 23
  %reass.sub509 = sub nsw i32 %i.vj, %i.vk
  %i.vl = add nsw i32 %reass.sub509, 1056964608
  %i.vm = bitcast i32 %i.vl to float
  br label %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424"

"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424": ; preds = %_ZN7testing15AssertionResultD2Ev.exit421, %bb.ho
  %.0.i.i423 = phi float [ %i.vm, %bb.ho ], [ 0.000000e+00, %_ZN7testing15AssertionResultD2Ev.exit421 ] ; 2 uses
  store float %.0.i.i423, ptr %i.f, align 4, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.vn = load float, ptr %i.ta, align 4, !tbaa !63
  %i.vo = load float, ptr %i.ub, align 4, !tbaa !63
  %i.vp = fadd float %i.vn, %i.vo                 ; 2 uses
  store float %i.vp, ptr %i.g, align 4, !tbaa !63
  %i.vq = fcmp oeq float %.0.i.i423, %i.vp
  br i1 %i.vq, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424"
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %64)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425

bb.hq:                                            ; preds = %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !91
  call void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f), !noalias !91
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !91
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.hs, !noalias !91

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %bb.hq
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %64, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.hr unwind label %bb.ht

bb.hr:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.vr = load ptr, ptr %6, align 8, !tbaa !17, !noalias !91 ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.rf
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.hr
  %i.vt = load i64, ptr %i.rf, align 8, !tbaa !22, !noalias !91
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !91
  %i.vv = load ptr, ptr %5, align 8, !tbaa !17, !noalias !91 ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.rg
  br i1 %i.vw, label %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.vx = load i64, ptr %i.rg, align 8, !tbaa !22, !noalias !91
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #16
  br label %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.hs:                                            ; preds = %bb.hq
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.ht:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.wa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wb = load ptr, ptr %6, align 8, !tbaa !17, !noalias !91 ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.rf
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.ht
  %i.wd = load i64, ptr %i.rf, align 8, !tbaa !22, !noalias !91
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.hs
  %.pn.i = phi { ptr, i32 } [ %i.vz, %bb.hs ], [ %i.wa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.wa, %bb.ht ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !91
  %i.wf = load ptr, ptr %5, align 8, !tbaa !17, !noalias !91 ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.rg
  br i1 %i.wg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.wh = load i64, ptr %i.rg, align 8, !tbaa !22, !noalias !91
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit171, %_ZN7testing7MessageD2Ev.exit181, %_ZN7testing7MessageD2Ev.exit195, %_ZN7testing7MessageD2Ev.exit209, %_ZN7testing7MessageD2Ev.exit223, %_ZN7testing7MessageD2Ev.exit236, %_ZN7testing7MessageD2Ev.exit249, %_ZN7testing7MessageD2Ev.exit262, %bb.jm, %_ZN7testing7MessageD2Ev.exit386, %_ZN7testing7MessageD2Ev.exit372, %_ZN7testing7MessageD2Ev.exit358, %_ZN7testing7MessageD2Ev.exit344, %_ZN7testing7MessageD2Ev.exit330, %_ZN7testing7MessageD2Ev.exit316, %_ZN7testing7MessageD2Ev.exit302, %_ZN7testing7MessageD2Ev.exit288, %_ZN7testing7MessageD2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %.pn.i471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473 ], [ %.pn.i485, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i487 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit171 ], [ %.pn118.pn, %_ZN7testing7MessageD2Ev.exit262 ], [ %.pn115.pn, %_ZN7testing7MessageD2Ev.exit249 ], [ %.pn112.pn, %_ZN7testing7MessageD2Ev.exit236 ], [ %.pn109.pn, %_ZN7testing7MessageD2Ev.exit223 ], [ %.pn106.pn, %_ZN7testing7MessageD2Ev.exit209 ], [ %.pn103.pn, %_ZN7testing7MessageD2Ev.exit195 ], [ %.pn100.pn, %_ZN7testing7MessageD2Ev.exit181 ], [ %.pn163.pn, %_ZN7testing7MessageD2Ev.exit386 ], [ %.pn158.pn.pn.pn, %bb.jm ], [ %.pn142.pn, %_ZN7testing7MessageD2Ev.exit372 ], [ %.pn139.pn, %_ZN7testing7MessageD2Ev.exit358 ], [ %.pn136.pn, %_ZN7testing7MessageD2Ev.exit344 ], [ %.pn133.pn, %_ZN7testing7MessageD2Ev.exit330 ], [ %.pn130.pn, %_ZN7testing7MessageD2Ev.exit316 ], [ %.pn127.pn, %_ZN7testing7MessageD2Ev.exit302 ], [ %.pn124.pn, %_ZN7testing7MessageD2Ev.exit288 ], [ %.pn121.pn, %_ZN7testing7MessageD2Ev.exit275 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !91
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !91
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425: ; preds = %bb.hp, %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.wj = load i8, ptr %64, align 8, !tbaa !34, !range !44, !noundef !45
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %bb.id, label %bb.hu

bb.hu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.hv unwind label %bb.hz

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #17
  %i.wl = load ptr, ptr %i.rh, align 8, !tbaa !46 ; 2 uses
  %.not.i.i426 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i426, label %_ZNK7testing15AssertionResult15failure_messageEv.exit427, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit427

_ZNK7testing15AssertionResult15failure_messageEv.exit427: ; preds = %bb.hw, %bb.hv
  %i.wn = phi ptr [ %i.wm, %bb.hw ], [ @.str.51, %bb.hv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 161, ptr noundef %i.wn)
          to label %bb.hx unwind label %bb.ia

bb.hx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit427
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.hy unwind label %bb.ib

bb.hy:                                            ; preds = %bb.hx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  %i.wo = load ptr, ptr %65, align 8, !tbaa !47   ; 3 uses
  %.not.i.i428 = icmp eq ptr %i.wo, null
  br i1 %.not.i.i428, label %_ZN7testing7MessageD2Ev.exit430, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429: ; preds = %bb.hy
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !23
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(128) %i.wo) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit430

_ZN7testing7MessageD2Ev.exit430:                  ; preds = %bb.hy, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  br label %bb.id

bb.hz:                                            ; preds = %bb.hu
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit433

bb.ia:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit427
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ic

bb.ib:                                            ; preds = %bb.hx
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #17
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.ia
  %.pn158 = phi { ptr, i32 } [ %i.wu, %bb.ib ], [ %i.wt, %bb.ia ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  %i.wv = load ptr, ptr %65, align 8, !tbaa !47   ; 3 uses
  %.not.i.i431 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i431, label %_ZN7testing7MessageD2Ev.exit433, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432: ; preds = %bb.ic
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !23
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8
  call void %i.wy(ptr noundef nonnull align 8 dereferenceable(128) %i.wv) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit433

_ZN7testing7MessageD2Ev.exit433:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432, %bb.ic, %bb.hz
  %.pn158.pn = phi { ptr, i32 } [ %i.ws, %bb.hz ], [ %.pn158, %bb.ic ], [ %.pn158, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  br label %bb.jm

bb.id:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425, %_ZN7testing7MessageD2Ev.exit430
  %i.wz = load ptr, ptr %i.rh, align 8, !tbaa !46 ; 4 uses
  %.not.i.i434 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i434, label %_ZN7testing15AssertionResultD2Ev.exit438, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !17 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i435: ; preds = %bb.ie
  %i.xd = load i64, ptr %i.xb, align 8, !tbaa !22
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xe) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i436

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i436: ; preds = %bb.ie, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i435
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit438

_ZN7testing15AssertionResultD2Ev.exit438:         ; preds = %bb.id, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i436
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %indvars.iv.next531 = add nsw i64 %indvars.iv530, -1
  %exitcond537.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count
  br i1 %exitcond537.not, label %.preheader, label %.lr.ph, !llvm.loop !94

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit469, %_ZN7testing15AssertionResultD2Ev.exit407, %.preheader
  %indvars.iv.next554.a = add nuw nsw i64 %indvars.iv553.a, 1 ; 2 uses
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1
  %indvars.iv.next541 = add nuw nsw i64 %indvars.iv540, 1
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1
  %exitcond558.not = icmp eq i64 %indvars.iv.next554.a, 64
  br i1 %exitcond558.not, label %bb.gm, label %bb.gn, !llvm.loop !95

.lr.ph505:                                        ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit469
  %indvars.iv542.a = phi i64 [ %indvars.iv.next543.a, %_ZN7testing15AssertionResultD2Ev.exit469 ], [ 24, %.preheader ]
  %indvars.iv540.a = phi i64 [ %indvars.iv.next541.a, %_ZN7testing15AssertionResultD2Ev.exit469 ], [ %indvars.iv540, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.xf = load float, ptr %i.ta, align 4, !tbaa !63 ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv540.a
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !63
  %i.xi = fadd float %i.xf, %i.xh                 ; 2 uses
  store float %i.xi, ptr %i.h, align 4, !tbaa !63
  %i.xj = fcmp oeq float %i.xi, %i.xf
  br i1 %i.xj, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %.lr.ph505
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %67)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439

bb.ig:                                            ; preds = %.lr.ph505
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !96
  call void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !noalias !96
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !96
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ta)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i475 unwind label %bb.ii, !noalias !96

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i475: ; preds = %bb.ig
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %67, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.ih unwind label %bb.ij

bb.ih:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i475
  %i.xk = load ptr, ptr %4, align 8, !tbaa !17, !noalias !96 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.ri
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478: ; preds = %bb.ih
  %i.xm = load i64, ptr %i.ri, align 8, !tbaa !22, !noalias !96
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xn) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479: ; preds = %bb.ih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !96
  %i.xo = load ptr, ptr %3, align 8, !tbaa !17, !noalias !96 ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.rj
  br i1 %i.xp, label %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i480: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479
  %i.xq = load i64, ptr %i.rj, align 8, !tbaa !22, !noalias !96
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #16
  br label %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit483

bb.ii:                                            ; preds = %bb.ig
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470

bb.ij:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i475
  %i.xt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xu = load ptr, ptr %4, align 8, !tbaa !17, !noalias !96 ; 2 uses
  %i.xv = icmp eq ptr %i.xu, %i.ri
  br i1 %i.xv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i476: ; preds = %bb.ij
  %i.xw = load i64, ptr %i.ri, align 8, !tbaa !22, !noalias !96
  %i.xx = add i64 %i.xw, 1
  call void @_ZdlPvm(ptr noundef %i.xu, i64 noundef %i.xx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470: ; preds = %bb.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i476, %bb.ii
  %.pn.i471 = phi { ptr, i32 } [ %i.xs, %bb.ii ], [ %i.xt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i476 ], [ %i.xt, %bb.ij ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !96
  %i.xy = load ptr, ptr %3, align 8, !tbaa !17, !noalias !96 ; 2 uses
  %i.xz = icmp eq ptr %i.xy, %i.rj
  br i1 %i.xz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470
  %i.ya = load i64, ptr %i.rj, align 8, !tbaa !22, !noalias !96
  %i.yb = add i64 %i.ya, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i472
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !96
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i480
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !96
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439: ; preds = %bb.if, %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  %i.yc = load i8, ptr %67, align 8, !tbaa !34, !range !44, !noundef !45
  %i.yd = trunc nuw i8 %i.yc to i1
  br i1 %i.yd, label %bb.it, label %bb.ik

bb.ik:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.il unwind label %bb.ip

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #17
  %i.ye = load ptr, ptr %i.rk, align 8, !tbaa !46 ; 2 uses
  %.not.i.i440 = icmp eq ptr %i.ye, null
  br i1 %.not.i.i440, label %_ZNK7testing15AssertionResult15failure_messageEv.exit441, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit441

_ZNK7testing15AssertionResult15failure_messageEv.exit441: ; preds = %bb.im, %bb.il
  %i.yg = phi ptr [ %i.yf, %bb.im ], [ @.str.51, %bb.il ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %69, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 164, ptr noundef %i.yg)
          to label %bb.in unwind label %bb.iq

bb.in:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit441
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.io unwind label %bb.ir

bb.io:                                            ; preds = %bb.in
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #17
  %i.yh = load ptr, ptr %68, align 8, !tbaa !47   ; 3 uses
  %.not.i.i442 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i442, label %_ZN7testing7MessageD2Ev.exit444, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443: ; preds = %bb.io
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !23
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yk = load ptr, ptr %i.yj, align 8
  call void %i.yk(ptr noundef nonnull align 8 dereferenceable(128) %i.yh) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit444

_ZN7testing7MessageD2Ev.exit444:                  ; preds = %bb.io, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  br label %bb.it

bb.ip:                                            ; preds = %bb.ik
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit447

bb.iq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit441
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

bb.ir:                                            ; preds = %bb.in
  %i.yn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #17
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.pn148 = phi { ptr, i32 } [ %i.yn, %bb.ir ], [ %i.ym, %bb.iq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #17
  %i.yo = load ptr, ptr %68, align 8, !tbaa !47   ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.yo, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.is
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !23
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(128) %i.yo) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446, %bb.is, %bb.ip
  %.pn148.pn = phi { ptr, i32 } [ %i.yl, %bb.ip ], [ %.pn148, %bb.is ], [ %.pn148, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  br label %bb.jm

bb.it:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439, %_ZN7testing7MessageD2Ev.exit444
  %i.ys = load ptr, ptr %i.rk, align 8, !tbaa !46 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i448, label %_ZN7testing15AssertionResultD2Ev.exit452, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !17 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 16 ; 2 uses
  %i.yv = icmp eq ptr %i.yt, %i.yu
  br i1 %i.yv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.iu
  %i.yw = load i64, ptr %i.yu, align 8, !tbaa !22
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yt, i64 noundef %i.yx) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.iu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.ys, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit452

_ZN7testing15AssertionResultD2Ev.exit452:         ; preds = %bb.it, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  %i.yy = shl nuw i64 1, %indvars.iv540.a
  %i.yz = add i64 %i.yy, %i.sv                    ; 3 uses
  %i.za = icmp eq i64 %i.yz, 0
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.agm = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store double f0x3C80000000000000, ptr %i.agm, align 8, !tbaa !73
  %i.agn = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double f0x3C70000000000000, ptr %i.agn, align 16, !tbaa !73
  %i.ago = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double f0x3C60000000000000, ptr %i.ago, align 8, !tbaa !73
  %i.agp = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double f0x3C50000000000000, ptr %i.agp, align 16, !tbaa !73
  %i.agq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double f0x3C40000000000000, ptr %i.agq, align 8, !tbaa !73
  %i.agr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double f0x3C30000000000000, ptr %i.agr, align 16, !tbaa !73
  %i.ags = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double f0x3C20000000000000, ptr %i.ags, align 8, !tbaa !73
  %i.agt = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double f0x3C10000000000000, ptr %i.agt, align 16, !tbaa !73
  %i.agu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store double f0x3C00000000000000, ptr %i.agu, align 8, !tbaa !73
  store double f0x3BF0000000000000, ptr %i.c, align 16, !tbaa !73
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
  br label %bb.ns

"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit": ; preds = %.peel.next, %_ZN7testing15AssertionResultD2Ev.exit715
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit715 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %106) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ahg = trunc nuw nsw i64 %indvars.iv to i32
  %i.ahh = uitofp nneg i32 %i.ahg to double
  %i.ahi = fmul nnan double %i.ahh, f0x3BF0000000000000 ; 2 uses
  store double %i.ahi, ptr %i.a, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ahj = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %indvars.iv, i1 true) ; 2 uses
  %i.ahk = shl i64 %indvars.iv, %i.ahj
  %i.ahl = lshr i64 %i.ahk, 11
  %i.ahm = and i64 %i.ahl, 4503599627370495
  %i.ahn = shl nuw nsw i64 %i.ahj, 52
  %reass.sub = sub nsw i64 %i.ahm, %i.ahn
  %i.aho = add nsw i64 %reass.sub, 4602678819172646912 ; 2 uses
  %i.ahp = bitcast i64 %i.aho to double
  store i64 %i.aho, ptr %i.b, align 8, !tbaa !73
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
  %i.ahr = load i8, ptr %106, align 8, !tbaa !34, !range !44, !noundef !45
  %i.ahs = trunc nuw i8 %i.ahr to i1
  br i1 %i.ahs, label %bb.np, label %bb.ni

bb.ni:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.nj unwind label %.loopexit

bb.nj:                                            ; preds = %bb.ni
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #17
  %i.aht = load ptr, ptr %i.adv, align 8, !tbaa !46 ; 2 uses
  %.not.i.i703 = icmp eq ptr %i.aht, null
  br i1 %.not.i.i703, label %_ZNK7testing15AssertionResult15failure_messageEv.exit704, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit704

_ZNK7testing15AssertionResult15failure_messageEv.exit704: ; preds = %bb.nk, %bb.nj
  %i.ahv = phi ptr [ %i.ahu, %bb.nk ], [ @.str.51, %bb.nj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %108, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 310, ptr noundef %i.ahv)
          to label %bb.nl unwind label %.loopexit838

bb.nl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit704
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.nm unwind label %.loopexit843

bb.nm:                                            ; preds = %bb.nl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #17
  %i.ahw = load ptr, ptr %107, align 8, !tbaa !47 ; 3 uses
  %.not.i.i705 = icmp eq ptr %i.ahw, null
  br i1 %.not.i.i705, label %_ZN7testing7MessageD2Ev.exit707, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706: ; preds = %bb.nm
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !23
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.ahz = load ptr, ptr %i.ahy, align 8
  call void %i.ahz(ptr noundef nonnull align 8 dereferenceable(128) %i.ahw) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit707

_ZN7testing7MessageD2Ev.exit707:                  ; preds = %bb.nm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #17
  br label %bb.np

.loopexit:                                        ; preds = %bb.ni
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit710

.loopexit.split-lp:                               ; preds = %bb.mz
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit710

.loopexit838:                                     ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit704
  %lpad.loopexit840 = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

.loopexit.split-lp839:                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit704.peel
  %lpad.loopexit.split-lp841 = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

.loopexit843:                                     ; preds = %bb.nl
  %lpad.loopexit845 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

.loopexit.split-lp844:                            ; preds = %bb.nc
  %lpad.loopexit.split-lp846 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

bb.nn:                                            ; preds = %.loopexit.split-lp844, %.loopexit843
  %lpad.phi847 = phi { ptr, i32 } [ %lpad.loopexit845, %.loopexit843 ], [ %lpad.loopexit.split-lp846, %.loopexit.split-lp844 ]
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #17
  br label %bb.no

bb.no:                                            ; preds = %.loopexit838, %.loopexit.split-lp839, %bb.nn
  %.pn248 = phi { ptr, i32 } [ %lpad.phi847, %bb.nn ], [ %lpad.loopexit840, %.loopexit838 ], [ %lpad.loopexit.split-lp841, %.loopexit.split-lp839 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #17
  %i.aia = load ptr, ptr %107, align 8, !tbaa !47 ; 3 uses
  %.not.i.i708 = icmp eq ptr %i.aia, null
  br i1 %.not.i.i708, label %_ZN7testing7MessageD2Ev.exit710, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709: ; preds = %bb.no
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !23
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8
  call void %i.aid(ptr noundef nonnull align 8 dereferenceable(128) %i.aia) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit710

_ZN7testing7MessageD2Ev.exit710:                  ; preds = %.loopexit, %.loopexit.split-lp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709, %bb.no
  %.pn248.pn = phi { ptr, i32 } [ %.pn248, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709 ], [ %.pn248, %bb.no ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #17
  br label %common.resume

bb.np:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702, %_ZN7testing7MessageD2Ev.exit707
  %i.aie = load ptr, ptr %i.adv, align 8, !tbaa !46 ; 4 uses
  %.not.i.i711 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i711, label %_ZN7testing15AssertionResultD2Ev.exit715, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !17 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 16 ; 2 uses
  %i.aih = icmp eq ptr %i.aif, %i.aig
  br i1 %i.aih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712: ; preds = %bb.nq
  %i.aii = load i64, ptr %i.aig, align 8, !tbaa !22
  %i.aij = add i64 %i.aii, 1
  call void @_ZdlPvm(ptr noundef %i.aif, i64 noundef %i.aij) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713: ; preds = %bb.nq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712
  call void @_ZdlPvm(ptr noundef nonnull %i.aie, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit715

_ZN7testing15AssertionResultD2Ev.exit715:         ; preds = %bb.np, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.loopexit848, label %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit", !llvm.loop !116

bb.nr:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void

bb.ns:                                            ; preds = %.loopexit848, %._crit_edge
  %indvars.iv877.a = phi i64 [ 0, %.loopexit848 ], [ %indvars.iv.next878.a, %._crit_edge ] ; 6 uses
  %indvars.iv875 = phi i64 [ 1, %.loopexit848 ], [ %indvars.iv.next876, %._crit_edge ] ; 2 uses
  %indvars.iv864 = phi i64 [ 4294967243, %.loopexit848 ], [ %indvars.iv.next865, %._crit_edge ] ; 2 uses
  %indvars.iv852 = phi i64 [ 4294967295, %.loopexit848 ], [ %indvars.iv.next853, %._crit_edge ] ; 3 uses
  %indvars883 = trunc i64 %indvars.iv852 to i32
  %umin = call i32 @llvm.umin.i32(i32 %indvars883, i32 51)
  %i.aik = add nuw nsw i32 %umin, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.ail = shl nuw i64 1, %indvars.iv877.a        ; 2 uses
  %i.aim = shl i64 %indvars.iv877.a, 52
  %i.ain = add i64 %i.aim, 4318952042648305664    ; 2 uses
  %i.aio = bitcast i64 %i.ain to double
  store i64 %i.ain, ptr %i.d, align 8, !tbaa !73
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv877.a ; 9 uses
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !73, !noalias !117
  %i.air = fcmp oeq double %i.aiq, %i.aio
  br i1 %i.air, label %bb.nt, label %bb.nu

bb.nt:                                            ; preds = %bb.ns
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %109)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718

bb.nu:                                            ; preds = %bb.ns
  call void @_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %109, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.aip)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718: ; preds = %bb.nt, %bb.nu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.ais = load i8, ptr %109, align 8, !tbaa !34, !range !44, !noundef !45
  %i.ait = trunc nuw i8 %i.ais to i1
  br i1 %i.ait, label %bb.oe, label %bb.nv

bb.nv:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %110)
          to label %bb.nw unwind label %bb.oa

bb.nw:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #17
  %i.aiu = load ptr, ptr %i.agv, align 8, !tbaa !46 ; 2 uses
  %.not.i.i719 = icmp eq ptr %i.aiu, null
  br i1 %.not.i.i719, label %_ZNK7testing15AssertionResult15failure_messageEv.exit720, label %bb.nx

bb.nx:                                            ; preds = %bb.nw
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit720

_ZNK7testing15AssertionResult15failure_messageEv.exit720: ; preds = %bb.nx, %bb.nw
  %i.aiw = phi ptr [ %i.aiv, %bb.nx ], [ @.str.51, %bb.nw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %111, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 319, ptr noundef %i.aiw)
          to label %bb.ny unwind label %bb.ob

bb.ny:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit720
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull align 8 dereferenceable(8) %110)
          to label %bb.nz unwind label %bb.oc

bb.nz:                                            ; preds = %bb.ny
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #17
  %i.aix = load ptr, ptr %110, align 8, !tbaa !47 ; 3 uses
  %.not.i.i721 = icmp eq ptr %i.aix, null
  br i1 %.not.i.i721, label %_ZN7testing7MessageD2Ev.exit723, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i722

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i722: ; preds = %bb.nz
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !23
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.aja = load ptr, ptr %i.aiz, align 8
  call void %i.aja(ptr noundef nonnull align 8 dereferenceable(128) %i.aix) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit723

_ZN7testing7MessageD2Ev.exit723:                  ; preds = %bb.nz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i722
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #17
  br label %bb.oe

bb.oa:                                            ; preds = %bb.nv
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit726

bb.ob:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit720
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %bb.od

bb.oc:                                            ; preds = %bb.ny
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #17
  br label %bb.od

bb.od:                                            ; preds = %bb.oc, %bb.ob
  %.pn230 = phi { ptr, i32 } [ %i.ajd, %bb.oc ], [ %i.ajc, %bb.ob ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #17
  %i.aje = load ptr, ptr %110, align 8, !tbaa !47 ; 3 uses
  %.not.i.i724 = icmp eq ptr %i.aje, null
  br i1 %.not.i.i724, label %_ZN7testing7MessageD2Ev.exit726, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i725

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i725: ; preds = %bb.od
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !23
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajh = load ptr, ptr %i.ajg, align 8
  call void %i.ajh(ptr noundef nonnull align 8 dereferenceable(128) %i.aje) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit726

_ZN7testing7MessageD2Ev.exit726:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i725, %bb.od, %bb.oa
  %.pn230.pn = phi { ptr, i32 } [ %i.ajb, %bb.oa ], [ %.pn230, %bb.od ], [ %.pn230, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i725 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %109) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #17
  br label %bb.qr

bb.oe:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718, %_ZN7testing7MessageD2Ev.exit723
  %i.aji = load ptr, ptr %i.agv, align 8, !tbaa !46 ; 4 uses
  %.not.i.i727 = icmp eq ptr %i.aji, null
  br i1 %.not.i.i727, label %_ZN7testing15AssertionResultD2Ev.exit731, label %bb.of

bb.of:                                            ; preds = %bb.oe
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !17 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 16 ; 2 uses
  %i.ajl = icmp eq ptr %i.ajj, %i.ajk
  br i1 %i.ajl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i728

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i728: ; preds = %bb.of
  %i.ajm = load i64, ptr %i.ajk, align 8, !tbaa !22
  %i.ajn = add i64 %i.ajm, 1
  call void @_ZdlPvm(ptr noundef %i.ajj, i64 noundef %i.ajn) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729: ; preds = %bb.of, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i728
  call void @_ZdlPvm(ptr noundef nonnull %i.aji, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit731

_ZN7testing15AssertionResultD2Ev.exit731:         ; preds = %bb.oe, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #17
  %.not = icmp eq i64 %indvars.iv877.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit731
  %wide.trip.count = zext nneg i32 %i.aik to i64
  br label %.lr.ph

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit762
  %i.ajo = icmp samesign ugt i64 %indvars.iv877.a, 52
  br i1 %i.ajo, label %.lr.ph829, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7testing15AssertionResultD2Ev.exit762
  %indvars.iv856 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next857, %_ZN7testing15AssertionResultD2Ev.exit762 ]
  %indvars.iv854 = phi i64 [ %indvars.iv852, %.lr.ph.preheader ], [ %indvars.iv.next855, %_ZN7testing15AssertionResultD2Ev.exit762 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ajp = load double, ptr %i.aip, align 8, !tbaa !73 ; 2 uses
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv854 ; 2 uses
  %i.ajr = load double, ptr %i.ajq, align 8, !tbaa !73
  %i.ajs = fadd double %i.ajp, %i.ajr             ; 2 uses
  store double %i.ajs, ptr %i.e, align 8, !tbaa !73
  %i.ajt = fcmp une double %i.ajs, %i.ajp
  br i1 %i.ajt, label %bb.og, label %bb.oh

bb.og:                                            ; preds = %.lr.ph
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %112)
  br label %_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732

bb.oh:                                            ; preds = %.lr.ph
  call void @_ZN7testing8internal18CmpHelperOpFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %112, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.aip, ptr noundef nonnull @.str.96)
  br label %_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732

_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732: ; preds = %bb.og, %bb.oh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.aju = load i8, ptr %112, align 8, !tbaa !34, !range !44, !noundef !45
  %i.ajv = trunc nuw i8 %i.aju to i1
  br i1 %i.ajv, label %bb.or, label %bb.oi

bb.oi:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %113)
          to label %bb.oj unwind label %bb.on

bb.oj:                                            ; preds = %bb.oi
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #17
  %i.ajw = load ptr, ptr %i.agw, align 8, !tbaa !46 ; 2 uses
  %.not.i.i733 = icmp eq ptr %i.ajw, null
  br i1 %.not.i.i733, label %_ZNK7testing15AssertionResult15failure_messageEv.exit734, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit734

_ZNK7testing15AssertionResult15failure_messageEv.exit734: ; preds = %bb.ok, %bb.oj
  %i.ajy = phi ptr [ %i.ajx, %bb.ok ], [ @.str.51, %bb.oj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 321, ptr noundef %i.ajy)
          to label %bb.ol unwind label %bb.oo

bb.ol:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit734
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef nonnull align 8 dereferenceable(8) %113)
          to label %bb.om unwind label %bb.op

bb.om:                                            ; preds = %bb.ol
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %114) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #17
  %i.ajz = load ptr, ptr %113, align 8, !tbaa !47 ; 3 uses
  %.not.i.i735 = icmp eq ptr %i.ajz, null
  br i1 %.not.i.i735, label %_ZN7testing7MessageD2Ev.exit737, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i736

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i736: ; preds = %bb.om
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !23
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8
  call void %i.akc(ptr noundef nonnull align 8 dereferenceable(128) %i.ajz) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit737

_ZN7testing7MessageD2Ev.exit737:                  ; preds = %bb.om, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i736
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #17
  br label %bb.or

bb.on:                                            ; preds = %bb.oi
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit740

bb.oo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit734
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %bb.oq

bb.op:                                            ; preds = %bb.ol
  %i.akf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %114) #17
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.oo
  %.pn240 = phi { ptr, i32 } [ %i.akf, %bb.op ], [ %i.ake, %bb.oo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #17
  %i.akg = load ptr, ptr %113, align 8, !tbaa !47 ; 3 uses
  %.not.i.i738 = icmp eq ptr %i.akg, null
  br i1 %.not.i.i738, label %_ZN7testing7MessageD2Ev.exit740, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i739

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i739: ; preds = %bb.oq
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !23
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %i.akj = load ptr, ptr %i.aki, align 8
  call void %i.akj(ptr noundef nonnull align 8 dereferenceable(128) %i.akg) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit740

_ZN7testing7MessageD2Ev.exit740:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i739, %bb.oq, %bb.on
  %.pn240.pn = phi { ptr, i32 } [ %i.akd, %bb.on ], [ %.pn240, %bb.oq ], [ %.pn240, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i739 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %112) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #17
  br label %bb.qr

bb.or:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732, %_ZN7testing7MessageD2Ev.exit737
  %i.akk = load ptr, ptr %i.agw, align 8, !tbaa !46 ; 4 uses
  %.not.i.i741 = icmp eq ptr %i.akk, null
  br i1 %.not.i.i741, label %_ZN7testing15AssertionResultD2Ev.exit745, label %bb.os

bb.os:                                            ; preds = %bb.or
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !17 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akk, i64 16 ; 2 uses
  %i.akn = icmp eq ptr %i.akl, %i.akm
  br i1 %i.akn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i743, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i742

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i742: ; preds = %bb.os
  %i.ako = load i64, ptr %i.akm, align 8, !tbaa !22
  %i.akp = add i64 %i.ako, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.akp) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i743

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i743: ; preds = %bb.os, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i742
  call void @_ZdlPvm(ptr noundef nonnull %i.akk, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit745

_ZN7testing15AssertionResultD2Ev.exit745:         ; preds = %bb.or, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i743
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.akq = shl nuw i64 1, %indvars.iv854
  %i.akr = add i64 %i.akq, %i.ail                 ; 3 uses
  %i.aks = icmp eq i64 %i.akr, 0
  br i1 %i.aks, label %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748", label %bb.ot

bb.ot:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit745
  %i.akt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.akr, i1 true) ; 2 uses
  %i.aku = shl i64 %i.akr, %i.akt
  %i.akv = lshr i64 %i.aku, 11
  %i.akw = and i64 %i.akv, 4503599627370495
  %i.akx = shl nuw nsw i64 %i.akt, 52
  %reass.sub833 = sub nsw i64 %i.akw, %i.akx
  %i.aky = add nsw i64 %reass.sub833, 4602678819172646912
  %i.akz = bitcast i64 %i.aky to double
  br label %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748"

"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748": ; preds = %_ZN7testing15AssertionResultD2Ev.exit745, %bb.ot
  %.0.i.i747 = phi double [ %i.akz, %bb.ot ], [ 0.000000e+00, %_ZN7testing15AssertionResultD2Ev.exit745 ] ; 2 uses
  store double %.0.i.i747, ptr %i.f, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.ala = load double, ptr %i.aip, align 8, !tbaa !73
  %i.alb = load double, ptr %i.ajq, align 8, !tbaa !73
  %i.alc = fadd double %i.ala, %i.alb             ; 2 uses
  store double %i.alc, ptr %i.g, align 8, !tbaa !73
  %i.ald = fcmp oeq double %.0.i.i747, %i.alc
  br i1 %i.ald, label %bb.ou, label %bb.ov

bb.ou:                                            ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748"
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %115)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749

bb.ov:                                            ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !122
  call void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !122
  invoke void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.ox, !noalias !122

_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %bb.ov
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %115, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.86, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.ow unwind label %bb.oy

bb.ow:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ale = load ptr, ptr %6, align 8, !tbaa !17, !noalias !122 ; 2 uses
  %i.alf = icmp eq ptr %i.ale, %i.agx
  br i1 %i.alf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ow
  %i.alg = load i64, ptr %i.agx, align 8, !tbaa !22, !noalias !122
  %i.alh = add i64 %i.alg, 1
  call void @_ZdlPvm(ptr noundef %i.ale, i64 noundef %i.alh) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ow, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !122
  %i.ali = load ptr, ptr %5, align 8, !tbaa !17, !noalias !122 ; 2 uses
  %i.alj = icmp eq ptr %i.ali, %i.agy
  br i1 %i.alj, label %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.alk = load i64, ptr %i.agy, align 8, !tbaa !22, !noalias !122
  %i.all = add i64 %i.alk, 1
  call void @_ZdlPvm(ptr noundef %i.ali, i64 noundef %i.all) #16
  br label %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.ox:                                            ; preds = %bb.ov
  %i.alm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.oy:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.aln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alo = load ptr, ptr %6, align 8, !tbaa !17, !noalias !122 ; 2 uses
  %i.alp = icmp eq ptr %i.alo, %i.agx
  br i1 %i.alp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.oy
  %i.alq = load i64, ptr %i.agx, align 8, !tbaa !22, !noalias !122
  %i.alr = add i64 %i.alq, 1
  call void @_ZdlPvm(ptr noundef %i.alo, i64 noundef %i.alr) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.oy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.ox
  %.pn.i = phi { ptr, i32 } [ %i.alm, %bb.ox ], [ %i.aln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.aln, %bb.oy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !122
  %i.als = load ptr, ptr %5, align 8, !tbaa !17, !noalias !122 ; 2 uses
  %i.alt = icmp eq ptr %i.als, %i.agy
  br i1 %i.alt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.alu = load i64, ptr %i.agy, align 8, !tbaa !22, !noalias !122
  %i.alv = add i64 %i.alu, 1
  call void @_ZdlPvm(ptr noundef %i.als, i64 noundef %i.alv) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit256, %_ZN7testing7MessageD2Ev.exit266, %_ZN7testing7MessageD2Ev.exit280, %_ZN7testing7MessageD2Ev.exit294, %_ZN7testing7MessageD2Ev.exit308, %_ZN7testing7MessageD2Ev.exit322, %_ZN7testing7MessageD2Ev.exit336, %_ZN7testing7MessageD2Ev.exit350, %_ZN7testing7MessageD2Ev.exit363, %_ZN7testing7MessageD2Ev.exit376, %_ZN7testing7MessageD2Ev.exit390, %_ZN7testing7MessageD2Ev.exit404, %_ZN7testing7MessageD2Ev.exit418, %_ZN7testing7MessageD2Ev.exit432, %_ZN7testing7MessageD2Ev.exit446, %_ZN7testing7MessageD2Ev.exit460, %_ZN7testing7MessageD2Ev.exit474, %_ZN7testing7MessageD2Ev.exit488, %_ZN7testing7MessageD2Ev.exit502, %_ZN7testing7MessageD2Ev.exit516, %_ZN7testing7MessageD2Ev.exit530, %_ZN7testing7MessageD2Ev.exit544, %_ZN7testing7MessageD2Ev.exit558, %_ZN7testing7MessageD2Ev.exit572, %_ZN7testing7MessageD2Ev.exit586, %_ZN7testing7MessageD2Ev.exit600, %_ZN7testing7MessageD2Ev.exit614, %_ZN7testing7MessageD2Ev.exit628, %_ZN7testing7MessageD2Ev.exit642, %_ZN7testing7MessageD2Ev.exit656, %_ZN7testing7MessageD2Ev.exit670, %bb.qr, %_ZN7testing7MessageD2Ev.exit710, %_ZN7testing7MessageD2Ev.exit696, %_ZN7testing7MessageD2Ev.exit683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i811, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %.pn.i795, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797 ], [ %.pn.i809, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i811 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit256 ], [ %.pn221.pn, %_ZN7testing7MessageD2Ev.exit670 ], [ %.pn218.pn, %_ZN7testing7MessageD2Ev.exit656 ], [ %.pn215.pn, %_ZN7testing7MessageD2Ev.exit642 ], [ %.pn212.pn, %_ZN7testing7MessageD2Ev.exit628 ], [ %.pn209.pn, %_ZN7testing7MessageD2Ev.exit614 ], [ %.pn206.pn, %_ZN7testing7MessageD2Ev.exit600 ], [ %.pn203.pn, %_ZN7testing7MessageD2Ev.exit586 ], [ %.pn200.pn, %_ZN7testing7MessageD2Ev.exit572 ], [ %.pn197.pn, %_ZN7testing7MessageD2Ev.exit558 ], [ %.pn194.pn, %_ZN7testing7MessageD2Ev.exit544 ], [ %.pn191.pn, %_ZN7testing7MessageD2Ev.exit530 ], [ %.pn188.pn, %_ZN7testing7MessageD2Ev.exit516 ], [ %.pn185.pn, %_ZN7testing7MessageD2Ev.exit502 ], [ %.pn182.pn, %_ZN7testing7MessageD2Ev.exit488 ], [ %.pn179.pn, %_ZN7testing7MessageD2Ev.exit474 ], [ %.pn176.pn, %_ZN7testing7MessageD2Ev.exit460 ], [ %.pn173.pn, %_ZN7testing7MessageD2Ev.exit446 ], [ %.pn170.pn, %_ZN7testing7MessageD2Ev.exit432 ], [ %.pn167.pn, %_ZN7testing7MessageD2Ev.exit418 ], [ %.pn164.pn, %_ZN7testing7MessageD2Ev.exit404 ], [ %.pn161.pn, %_ZN7testing7MessageD2Ev.exit390 ], [ %.pn158.pn, %_ZN7testing7MessageD2Ev.exit376 ], [ %.pn155.pn, %_ZN7testing7MessageD2Ev.exit363 ], [ %.pn152.pn, %_ZN7testing7MessageD2Ev.exit350 ], [ %.pn149.pn, %_ZN7testing7MessageD2Ev.exit336 ], [ %.pn146.pn, %_ZN7testing7MessageD2Ev.exit322 ], [ %.pn143.pn, %_ZN7testing7MessageD2Ev.exit308 ], [ %.pn140.pn, %_ZN7testing7MessageD2Ev.exit294 ], [ %.pn137.pn, %_ZN7testing7MessageD2Ev.exit280 ], [ %.pn134.pn, %_ZN7testing7MessageD2Ev.exit266 ], [ %.pn248.pn, %_ZN7testing7MessageD2Ev.exit710 ], [ %.pn243.pn.pn.pn, %bb.qr ], [ %.pn227.pn, %_ZN7testing7MessageD2Ev.exit696 ], [ %.pn224.pn, %_ZN7testing7MessageD2Ev.exit683 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !122
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !122
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749: ; preds = %bb.ou, %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.alw = load i8, ptr %115, align 8, !tbaa !34, !range !44, !noundef !45
  %i.alx = trunc nuw i8 %i.alw to i1
  br i1 %i.alx, label %bb.pi, label %bb.oz

bb.oz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %bb.pa unwind label %bb.pe

bb.pa:                                            ; preds = %bb.oz
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #17
  %i.aly = load ptr, ptr %i.agz, align 8, !tbaa !46 ; 2 uses
  %.not.i.i750 = icmp eq ptr %i.aly, null
  br i1 %.not.i.i750, label %_ZNK7testing15AssertionResult15failure_messageEv.exit751, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit751

_ZNK7testing15AssertionResult15failure_messageEv.exit751: ; preds = %bb.pb, %bb.pa
  %i.ama = phi ptr [ %i.alz, %bb.pb ], [ @.str.51, %bb.pa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %117, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 323, ptr noundef %i.ama)
          to label %bb.pc unwind label %bb.pf

bb.pc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit751
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %bb.pd unwind label %bb.pg

bb.pd:                                            ; preds = %bb.pc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %117) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #17
  %i.amb = load ptr, ptr %116, align 8, !tbaa !47 ; 3 uses
  %.not.i.i752 = icmp eq ptr %i.amb, null
  br i1 %.not.i.i752, label %_ZN7testing7MessageD2Ev.exit754, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i753

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i753: ; preds = %bb.pd
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !23
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 8
  %i.ame = load ptr, ptr %i.amd, align 8
  call void %i.ame(ptr noundef nonnull align 8 dereferenceable(128) %i.amb) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit754

_ZN7testing7MessageD2Ev.exit754:                  ; preds = %bb.pd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i753
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #17
  br label %bb.pi

bb.pe:                                            ; preds = %bb.oz
  %i.amf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit757

bb.pf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit751
  %i.amg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ph

bb.pg:                                            ; preds = %bb.pc
  %i.amh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %117) #17
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %.pn243 = phi { ptr, i32 } [ %i.amh, %bb.pg ], [ %i.amg, %bb.pf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #17
  %i.ami = load ptr, ptr %116, align 8, !tbaa !47 ; 3 uses
  %.not.i.i755 = icmp eq ptr %i.ami, null
  br i1 %.not.i.i755, label %_ZN7testing7MessageD2Ev.exit757, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756: ; preds = %bb.ph
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !23
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %i.aml = load ptr, ptr %i.amk, align 8
  call void %i.aml(ptr noundef nonnull align 8 dereferenceable(128) %i.ami) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit757

_ZN7testing7MessageD2Ev.exit757:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756, %bb.ph, %bb.pe
  %.pn243.pn = phi { ptr, i32 } [ %i.amf, %bb.pe ], [ %.pn243, %bb.ph ], [ %.pn243, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %115) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #17
  br label %bb.qr

bb.pi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749, %_ZN7testing7MessageD2Ev.exit754
  %i.amm = load ptr, ptr %i.agz, align 8, !tbaa !46 ; 4 uses
  %.not.i.i758 = icmp eq ptr %i.amm, null
  br i1 %.not.i.i758, label %_ZN7testing15AssertionResultD2Ev.exit762, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !17 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 16 ; 2 uses
  %i.amp = icmp eq ptr %i.amn, %i.amo
  br i1 %i.amp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759: ; preds = %bb.pj
  %i.amq = load i64, ptr %i.amo, align 8, !tbaa !22
  %i.amr = add i64 %i.amq, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amr) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760: ; preds = %bb.pj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759
  call void @_ZdlPvm(ptr noundef nonnull %i.amm, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit762

_ZN7testing15AssertionResultD2Ev.exit762:         ; preds = %bb.pi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #17
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -1
  %exitcond861.not = icmp eq i64 %indvars.iv.next857, %wide.trip.count
  br i1 %exitcond861.not, label %.preheader, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit793, %_ZN7testing15AssertionResultD2Ev.exit731, %.preheader
  %indvars.iv.next878.a = add nuw nsw i64 %indvars.iv877.a, 1 ; 2 uses
  %indvars.iv.next853 = add nuw nsw i64 %indvars.iv852, 1
  %indvars.iv.next865 = add nuw nsw i64 %indvars.iv864, 1
  %indvars.iv.next876 = add nuw nsw i64 %indvars.iv875, 1
  %exitcond882.not = icmp eq i64 %indvars.iv.next878.a, 64
  br i1 %exitcond882.not, label %bb.nr, label %bb.ns, !llvm.loop !126

.lr.ph829:                                        ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit793
  %indvars.iv866.a = phi i64 [ %indvars.iv.next867.a, %_ZN7testing15AssertionResultD2Ev.exit793 ], [ 53, %.preheader ]
  %indvars.iv864.a = phi i64 [ %indvars.iv.next865.a, %_ZN7testing15AssertionResultD2Ev.exit793 ], [ %indvars.iv864, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.ams = load double, ptr %i.aip, align 8, !tbaa !73 ; 2 uses
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv864.a
  %i.amu = load double, ptr %i.amt, align 8, !tbaa !73
  %i.amv = fadd double %i.ams, %i.amu             ; 2 uses
  store double %i.amv, ptr %i.h, align 8, !tbaa !73
  %i.amw = fcmp oeq double %i.amv, %i.ams
  br i1 %i.amw, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %.lr.ph829
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %118)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763

bb.pl:                                            ; preds = %.lr.ph829
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !127
  call void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !127
  invoke void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.aip)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i799 unwind label %bb.pn, !noalias !127

_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i799: ; preds = %bb.pl
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %118, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.pm unwind label %bb.po

bb.pm:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i799
  %i.amx = load ptr, ptr %4, align 8, !tbaa !17, !noalias !127 ; 2 uses
  %i.amy = icmp eq ptr %i.amx, %i.aha
  br i1 %i.amy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i802

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i802: ; preds = %bb.pm
  %i.amz = load i64, ptr %i.aha, align 8, !tbaa !22, !noalias !127
  %i.ana = add i64 %i.amz, 1
  call void @_ZdlPvm(ptr noundef %i.amx, i64 noundef %i.ana) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803: ; preds = %bb.pm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i802
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !127
  %i.anb = load ptr, ptr %3, align 8, !tbaa !17, !noalias !127 ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.ahb
  br i1 %i.anc, label %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit807, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i804

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i804: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803
  %i.and = load i64, ptr %i.ahb, align 8, !tbaa !22, !noalias !127
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.ane) #16
  br label %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit807

bb.pn:                                            ; preds = %bb.pl
  %i.anf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794

bb.po:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i799
  %i.ang = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anh = load ptr, ptr %4, align 8, !tbaa !17, !noalias !127 ; 2 uses
  %i.ani = icmp eq ptr %i.anh, %i.aha
  br i1 %i.ani, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i800

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i800: ; preds = %bb.po
  %i.anj = load i64, ptr %i.aha, align 8, !tbaa !22, !noalias !127
  %i.ank = add i64 %i.anj, 1
  call void @_ZdlPvm(ptr noundef %i.anh, i64 noundef %i.ank) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794: ; preds = %bb.po, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i800, %bb.pn
  %.pn.i795 = phi { ptr, i32 } [ %i.anf, %bb.pn ], [ %i.ang, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i800 ], [ %i.ang, %bb.po ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !127
  %i.anl = load ptr, ptr %3, align 8, !tbaa !17, !noalias !127 ; 2 uses
  %i.anm = icmp eq ptr %i.anl, %i.ahb
  br i1 %i.anm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i796

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i796: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794
  %i.ann = load i64, ptr %i.ahb, align 8, !tbaa !22, !noalias !127
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %i.anl, i64 noundef %i.ano) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i796
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !127
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit807: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i804
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !127
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763: ; preds = %bb.pk, %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  %i.anp = load i8, ptr %118, align 8, !tbaa !34, !range !44, !noundef !45
  %i.anq = trunc nuw i8 %i.anp to i1
  br i1 %i.anq, label %bb.py, label %bb.pp

bb.pp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %bb.pq unwind label %bb.pu

bb.pq:                                            ; preds = %bb.pp
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #17
  %i.anr = load ptr, ptr %i.ahc, align 8, !tbaa !46 ; 2 uses
  %.not.i.i764 = icmp eq ptr %i.anr, null
  br i1 %.not.i.i764, label %_ZNK7testing15AssertionResult15failure_messageEv.exit765, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !17
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit765

_ZNK7testing15AssertionResult15failure_messageEv.exit765: ; preds = %bb.pr, %bb.pq
  %i.ant = phi ptr [ %i.ans, %bb.pr ], [ @.str.51, %bb.pq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %120, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 326, ptr noundef %i.ant)
          to label %bb.ps unwind label %bb.pv

bb.ps:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit765
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %bb.pt unwind label %bb.pw

bb.pt:                                            ; preds = %bb.ps
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %120) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #17
  %i.anu = load ptr, ptr %119, align 8, !tbaa !47 ; 3 uses
  %.not.i.i766 = icmp eq ptr %i.anu, null
  br i1 %.not.i.i766, label %_ZN7testing7MessageD2Ev.exit768, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767: ; preds = %bb.pt
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !23
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8
  call void %i.anx(ptr noundef nonnull align 8 dereferenceable(128) %i.anu) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit768

_ZN7testing7MessageD2Ev.exit768:                  ; preds = %bb.pt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #17
  br label %bb.py

bb.pu:                                            ; preds = %bb.pp
  %i.any = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit771

bb.pv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit765
  %i.anz = landingpad { ptr, i32 }
          cleanup
  br label %bb.px

bb.pw:                                            ; preds = %bb.ps
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %120) #17
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %bb.pv
  %.pn233 = phi { ptr, i32 } [ %i.aoa, %bb.pw ], [ %i.anz, %bb.pv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #17
  %i.aob = load ptr, ptr %119, align 8, !tbaa !47 ; 3 uses
  %.not.i.i769 = icmp eq ptr %i.aob, null
  br i1 %.not.i.i769, label %_ZN7testing7MessageD2Ev.exit771, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i770

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i770: ; preds = %bb.px
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !23
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8
  %i.aoe = load ptr, ptr %i.aod, align 8
  call void %i.aoe(ptr noundef nonnull align 8 dereferenceable(128) %i.aob) #17, !inline_history !49
  br label %_ZN7testing7MessageD2Ev.exit771

_ZN7testing7MessageD2Ev.exit771:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i770, %bb.px, %bb.pu
  %.pn233.pn = phi { ptr, i32 } [ %i.any, %bb.pu ], [ %.pn233, %bb.px ], [ %.pn233, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i770 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %118) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #17
  br label %bb.qr

bb.py:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763, %_ZN7testing7MessageD2Ev.exit768
  %i.aof = load ptr, ptr %i.ahc, align 8, !tbaa !46 ; 4 uses
  %.not.i.i772 = icmp eq ptr %i.aof, null
  br i1 %.not.i.i772, label %_ZN7testing15AssertionResultD2Ev.exit776, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !17 ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aof, i64 16 ; 2 uses
  %i.aoi = icmp eq ptr %i.aog, %i.aoh
  br i1 %i.aoi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i774, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i773

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i773: ; preds = %bb.pz
  %i.aoj = load i64, ptr %i.aoh, align 8, !tbaa !22
  %i.aok = add i64 %i.aoj, 1
  call void @_ZdlPvm(ptr noundef %i.aog, i64 noundef %i.aok) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i774

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i774: ; preds = %bb.pz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i773
  call void @_ZdlPvm(ptr noundef nonnull %i.aof, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit776

_ZN7testing15AssertionResultD2Ev.exit776:         ; preds = %bb.py, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i774
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  %i.aol = shl nuw i64 1, %indvars.iv864.a
  %i.aom = add i64 %i.aol, %i.ail                 ; 3 uses
  %i.aon = icmp eq i64 %i.aom, 0
end_hunk_1
