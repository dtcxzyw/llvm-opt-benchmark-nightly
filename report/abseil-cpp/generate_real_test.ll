Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/generate_real_test?download=true
inline.NumInlined: 2233
inline.NumDeleted: 350
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
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
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit380

_ZNK7testing15AssertionResult15failure_messageEv.exit380: ; preds = %bb.gf, %bb.ge
  %i.sf = phi ptr [ %i.se, %bb.gf ], [ @.str.51, %bb.ge ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %57, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 148, ptr noundef %i.sf)
          to label %bb.gg unwind label %.loopexit.split-lp515.loopexit.split-lp.loopexit.split-lp

bb.gg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit380
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.gh unwind label %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp

bb.gh:                                            ; preds = %bb.gg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  %i.sg = load ptr, ptr %56, align 8, !tbaa !50   ; 3 uses
  %.not.i.i381 = icmp eq ptr %i.sg, null
  br i1 %.not.i.i381, label %_ZN7testing7MessageD2Ev.exit383, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382: ; preds = %bb.gh
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !26
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sj = load ptr, ptr %i.si, align 8
  call void %i.sj(ptr noundef nonnull align 8 dereferenceable(128) %i.sg) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit383

_ZN7testing7MessageD2Ev.exit383:                  ; preds = %bb.gh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i382
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #17
  br label %bb.gj

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gd, %bb.fu
  %lpad.loopexit.split-lp727.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit386

.loopexit.split-lp515.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit380, %_ZNK7testing15AssertionResult15failure_messageEv.exit380.peel
  %lpad.loopexit.split-lp729 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gi

.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.gg, %bb.fx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #17
  br label %bb.gi

bb.gi:                                            ; preds = %.loopexit.split-lp515.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp
  %.pn163 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp520.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp729, %.loopexit.split-lp515.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #17
  %i.sk = load ptr, ptr %56, align 8, !tbaa !50   ; 3 uses
  %.not.i.i384 = icmp eq ptr %i.sk, null
  br i1 %.not.i.i384, label %_ZN7testing7MessageD2Ev.exit386, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385: ; preds = %bb.gi
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !26
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8
  call void %i.sn(ptr noundef nonnull align 8 dereferenceable(128) %i.sk) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit386

_ZN7testing7MessageD2Ev.exit386:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385, %bb.gi
  %.pn163.pn = phi { ptr, i32 } [ %.pn163, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i385 ], [ %.pn163, %bb.gi ], [ %lpad.loopexit.split-lp727.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %55) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  br label %common.resume

bb.gj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit378, %_ZN7testing7MessageD2Ev.exit383
  %i.so = load ptr, ptr %i.od, align 8, !tbaa !48 ; 4 uses
  %.not.i.i387 = icmp eq ptr %i.so, null
  br i1 %.not.i.i387, label %_ZN7testing15AssertionResultD2Ev.exit391, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !21 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 2 uses
  %i.sr = icmp eq ptr %i.sp, %i.sq
  br i1 %i.sr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388: ; preds = %bb.gk
  %i.ss = load i64, ptr %i.sq, align 8, !tbaa !24
  %i.st = add i64 %i.ss, 1
  call void @_ZdlPvm(ptr noundef %i.sp, i64 noundef %i.st) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389: ; preds = %bb.gk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i388
  call void @_ZdlPvm(ptr noundef nonnull %i.so, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit391

_ZN7testing15AssertionResultD2Ev.exit391:         ; preds = %bb.gj, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i389
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.loopexit524, label %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit", !llvm.loop !90

bb.gl:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void

bb.gm:                                            ; preds = %.loopexit524, %._crit_edge
  %indvars.iv553 = phi i64 [ 0, %.loopexit524 ], [ %indvars.iv.next554, %._crit_edge ] ; 6 uses
  %indvars.iv551 = phi i64 [ 1, %.loopexit524 ], [ %indvars.iv.next552, %._crit_edge ] ; 2 uses
  %indvars.iv538 = phi i32 [ -24, %.loopexit524 ], [ %indvars.iv.next539, %._crit_edge ] ; 2 uses
  %indvars.iv528.a = phi i32 [ -1, %.loopexit524 ], [ %indvars.iv.next529, %._crit_edge ] ; 3 uses
  %73 = zext i32 %indvars.iv538 to i64
  %74 = zext i32 %indvars.iv528.a to i64
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv528.a, i32 22)
  %i.su = add nuw nsw i32 %umin, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.sv = shl nuw i64 1, %indvars.iv553           ; 2 uses
  %i.sw = trunc i64 %indvars.iv553 to i32
  %i.sx = shl i32 %i.sw, 23
  %i.sy = add i32 %i.sx, 528482304                ; 2 uses
  %i.sz = bitcast i32 %i.sy to float
  store i32 %i.sy, ptr %i.d, align 4, !tbaa !58
  %i.ta = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv553 ; 9 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !58, !noalias !108
  %i.tc = fcmp oeq float %i.tb, %i.sz
  br i1 %i.tc, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394

bb.go:                                            ; preds = %bb.gm
  call void @_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %58, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.ta)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394: ; preds = %bb.gn, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.td = load i8, ptr %58, align 8, !tbaa !45, !range !46, !noundef !47
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.gy, label %bb.gp

bb.gp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.gq unwind label %bb.gu

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #17
  %i.tf = load ptr, ptr %i.rd, align 8, !tbaa !48 ; 2 uses
  %.not.i.i395 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i395, label %_ZNK7testing15AssertionResult15failure_messageEv.exit396, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit396

_ZNK7testing15AssertionResult15failure_messageEv.exit396: ; preds = %bb.gr, %bb.gq
  %i.th = phi ptr [ %i.tg, %bb.gr ], [ @.str.51, %bb.gq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 157, ptr noundef %i.th)
          to label %bb.gs unwind label %bb.gv

bb.gs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit396
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.gt unwind label %bb.gw

bb.gt:                                            ; preds = %bb.gs
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  %i.ti = load ptr, ptr %59, align 8, !tbaa !50   ; 3 uses
  %.not.i.i397 = icmp eq ptr %i.ti, null
  br i1 %.not.i.i397, label %_ZN7testing7MessageD2Ev.exit399, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398: ; preds = %bb.gt
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !26
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tl = load ptr, ptr %i.tk, align 8
  call void %i.tl(ptr noundef nonnull align 8 dereferenceable(128) %i.ti) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit399

_ZN7testing7MessageD2Ev.exit399:                  ; preds = %bb.gt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
  br label %bb.gy

bb.gu:                                            ; preds = %bb.gp
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit402

bb.gv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit396
  %i.tn = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gs
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #17
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.pn145 = phi { ptr, i32 } [ %i.to, %bb.gw ], [ %i.tn, %bb.gv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #17
  %i.tp = load ptr, ptr %59, align 8, !tbaa !50   ; 3 uses
  %.not.i.i400 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i400, label %_ZN7testing7MessageD2Ev.exit402, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i401

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i401: ; preds = %bb.gx
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !26
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.ts = load ptr, ptr %i.tr, align 8
  call void %i.ts(ptr noundef nonnull align 8 dereferenceable(128) %i.tp) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit402

_ZN7testing7MessageD2Ev.exit402:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i401, %bb.gx, %bb.gu
  %.pn145.pn = phi { ptr, i32 } [ %i.tm, %bb.gu ], [ %.pn145, %bb.gx ], [ %.pn145, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i401 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %58) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  br label %bb.jl

bb.gy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit394, %_ZN7testing7MessageD2Ev.exit399
  %i.tt = load ptr, ptr %i.rd, align 8, !tbaa !48 ; 4 uses
  %.not.i.i403 = icmp eq ptr %i.tt, null
  br i1 %.not.i.i403, label %_ZN7testing15AssertionResultD2Ev.exit407, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.tu = load ptr, ptr %i.tt, align 8, !tbaa !21 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 16 ; 2 uses
  %i.tw = icmp eq ptr %i.tu, %i.tv
  br i1 %i.tw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i404

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i404: ; preds = %bb.gz
  %i.tx = load i64, ptr %i.tv, align 8, !tbaa !24
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.ty) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i404
  call void @_ZdlPvm(ptr noundef nonnull %i.tt, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit407

_ZN7testing15AssertionResultD2Ev.exit407:         ; preds = %bb.gy, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #17
  %.not = icmp eq i64 %indvars.iv553, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit407
  %wide.trip.count = zext nneg i32 %i.su to i64
  br label %.lr.ph

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit438
  %i.tz = icmp samesign ugt i64 %indvars.iv553, 23
  br i1 %i.tz, label %.lr.ph505, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7testing15AssertionResultD2Ev.exit438
  %indvars.iv532 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next533, %_ZN7testing15AssertionResultD2Ev.exit438 ]
  %indvars.iv530 = phi i64 [ %74, %.lr.ph.preheader ], [ %indvars.iv.next531, %_ZN7testing15AssertionResultD2Ev.exit438 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ua = load float, ptr %i.ta, align 4, !tbaa !58 ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv530 ; 2 uses
  %i.uc = load float, ptr %i.ub, align 4, !tbaa !58
  %i.ud = fadd float %i.ua, %i.uc                 ; 2 uses
  store float %i.ud, ptr %i.e, align 4, !tbaa !58
  %i.ue = fcmp une float %i.ud, %i.ua
  br i1 %i.ue, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %.lr.ph
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %61)
  br label %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408

bb.hb:                                            ; preds = %.lr.ph
  call void @_ZN7testing8internal18CmpHelperOpFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %61, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.ta, ptr noundef nonnull @.str.96)
  br label %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408

_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408: ; preds = %bb.ha, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.uf = load i8, ptr %61, align 8, !tbaa !45, !range !46, !noundef !47
  %i.ug = trunc nuw i8 %i.uf to i1
  br i1 %i.ug, label %bb.hl, label %bb.hc

bb.hc:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.hd unwind label %bb.hh

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #17
  %i.uh = load ptr, ptr %i.re, align 8, !tbaa !48 ; 2 uses
  %.not.i.i409 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i409, label %_ZNK7testing15AssertionResult15failure_messageEv.exit410, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit410

_ZNK7testing15AssertionResult15failure_messageEv.exit410: ; preds = %bb.he, %bb.hd
  %i.uj = phi ptr [ %i.ui, %bb.he ], [ @.str.51, %bb.hd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %63, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef %i.uj)
          to label %bb.hf unwind label %bb.hi

bb.hf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit410
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %bb.hg unwind label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  %i.uk = load ptr, ptr %62, align 8, !tbaa !50   ; 3 uses
  %.not.i.i411 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i411, label %_ZN7testing7MessageD2Ev.exit413, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412: ; preds = %bb.hg
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !26
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8
  call void %i.un(ptr noundef nonnull align 8 dereferenceable(128) %i.uk) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit413

_ZN7testing7MessageD2Ev.exit413:                  ; preds = %bb.hg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i412
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  br label %bb.hl

bb.hh:                                            ; preds = %bb.hc
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit416

bb.hi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit410
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hf
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #17
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.pn155 = phi { ptr, i32 } [ %i.uq, %bb.hj ], [ %i.up, %bb.hi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #17
  %i.ur = load ptr, ptr %62, align 8, !tbaa !50   ; 3 uses
  %.not.i.i414 = icmp eq ptr %i.ur, null
  br i1 %.not.i.i414, label %_ZN7testing7MessageD2Ev.exit416, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415: ; preds = %bb.hk
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !26
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dereferenceable(128) %i.ur) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit416

_ZN7testing7MessageD2Ev.exit416:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415, %bb.hk, %bb.hh
  %.pn155.pn = phi { ptr, i32 } [ %i.uo, %bb.hh ], [ %.pn155, %bb.hk ], [ %.pn155, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %61) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  br label %bb.jl

bb.hl:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit408, %_ZN7testing7MessageD2Ev.exit413
  %i.uv = load ptr, ptr %i.re, align 8, !tbaa !48 ; 4 uses
  %.not.i.i417 = icmp eq ptr %i.uv, null
  br i1 %.not.i.i417, label %_ZN7testing15AssertionResultD2Ev.exit421, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !21 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 16 ; 2 uses
  %i.uy = icmp eq ptr %i.uw, %i.ux
  br i1 %i.uy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418: ; preds = %bb.hm
  %i.uz = load i64, ptr %i.ux, align 8, !tbaa !24
  %i.va = add i64 %i.uz, 1
  call void @_ZdlPvm(ptr noundef %i.uw, i64 noundef %i.va) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419: ; preds = %bb.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i418
  call void @_ZdlPvm(ptr noundef nonnull %i.uv, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit421

_ZN7testing15AssertionResultD2Ev.exit421:         ; preds = %bb.hl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.vb = shl nuw i64 1, %indvars.iv530
  %i.vc = add i64 %i.vb, %i.sv                    ; 3 uses
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424", label %bb.hn

bb.hn:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit421
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

"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424": ; preds = %_ZN7testing15AssertionResultD2Ev.exit421, %bb.hn
  %.0.i.i423 = phi float [ %i.vm, %bb.hn ], [ 0.000000e+00, %_ZN7testing15AssertionResultD2Ev.exit421 ] ; 2 uses
  store float %.0.i.i423, ptr %i.f, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.vn = load float, ptr %i.ta, align 4, !tbaa !58
  %i.vo = load float, ptr %i.ub, align 4, !tbaa !58
  %i.vp = fadd float %i.vn, %i.vo                 ; 2 uses
  store float %i.vp, ptr %i.g, align 4, !tbaa !58
  %i.vq = fcmp oeq float %.0.i.i423, %i.vp
  br i1 %i.vq, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424"
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %64)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425

bb.hp:                                            ; preds = %"_ZZN12_GLOBAL__N_136GenerateRealTest_U64ToFloatTest_Test8TestBodyEvENK3$_0clEm.exit424"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !109
  call void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 4 dereferenceable(4) %i.f), !noalias !109
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !109
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.hr, !noalias !109

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %bb.hp
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %64, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.hq unwind label %bb.hs

bb.hq:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.vr = load ptr, ptr %6, align 8, !tbaa !21, !noalias !109 ; 2 uses
  %i.vs = icmp eq ptr %i.vr, %i.rf
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.hq
  %i.vt = load i64, ptr %i.rf, align 8, !tbaa !24, !noalias !109
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vr, i64 noundef %i.vu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.hq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !109
  %i.vv = load ptr, ptr %5, align 8, !tbaa !21, !noalias !109 ; 2 uses
  %i.vw = icmp eq ptr %i.vv, %i.rg
  br i1 %i.vw, label %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.vx = load i64, ptr %i.rg, align 8, !tbaa !24, !noalias !109
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vv, i64 noundef %i.vy) #16
  br label %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.hr:                                            ; preds = %bb.hp
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.hs:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.wa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wb = load ptr, ptr %6, align 8, !tbaa !21, !noalias !109 ; 2 uses
  %i.wc = icmp eq ptr %i.wb, %i.rf
  br i1 %i.wc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.hs
  %i.wd = load i64, ptr %i.rf, align 8, !tbaa !24, !noalias !109
  %i.we = add i64 %i.wd, 1
  call void @_ZdlPvm(ptr noundef %i.wb, i64 noundef %i.we) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.hs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.hr
  %.pn.i = phi { ptr, i32 } [ %i.vz, %bb.hr ], [ %i.wa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.wa, %bb.hs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !109
  %i.wf = load ptr, ptr %5, align 8, !tbaa !21, !noalias !109 ; 2 uses
  %i.wg = icmp eq ptr %i.wf, %i.rg
  br i1 %i.wg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.wh = load i64, ptr %i.rg, align 8, !tbaa !24, !noalias !109
  %i.wi = add i64 %i.wh, 1
  call void @_ZdlPvm(ptr noundef %i.wf, i64 noundef %i.wi) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit171, %_ZN7testing7MessageD2Ev.exit181, %_ZN7testing7MessageD2Ev.exit195, %_ZN7testing7MessageD2Ev.exit209, %_ZN7testing7MessageD2Ev.exit223, %_ZN7testing7MessageD2Ev.exit236, %_ZN7testing7MessageD2Ev.exit249, %_ZN7testing7MessageD2Ev.exit262, %bb.jl, %_ZN7testing7MessageD2Ev.exit386, %_ZN7testing7MessageD2Ev.exit372, %_ZN7testing7MessageD2Ev.exit358, %_ZN7testing7MessageD2Ev.exit344, %_ZN7testing7MessageD2Ev.exit330, %_ZN7testing7MessageD2Ev.exit316, %_ZN7testing7MessageD2Ev.exit302, %_ZN7testing7MessageD2Ev.exit288, %_ZN7testing7MessageD2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %.pn.i471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473 ], [ %.pn.i485, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i487 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit171 ], [ %.pn118.pn, %_ZN7testing7MessageD2Ev.exit262 ], [ %.pn115.pn, %_ZN7testing7MessageD2Ev.exit249 ], [ %.pn112.pn, %_ZN7testing7MessageD2Ev.exit236 ], [ %.pn109.pn, %_ZN7testing7MessageD2Ev.exit223 ], [ %.pn106.pn, %_ZN7testing7MessageD2Ev.exit209 ], [ %.pn103.pn, %_ZN7testing7MessageD2Ev.exit195 ], [ %.pn100.pn, %_ZN7testing7MessageD2Ev.exit181 ], [ %.pn163.pn, %_ZN7testing7MessageD2Ev.exit386 ], [ %.pn158.pn.pn.pn, %bb.jl ], [ %.pn142.pn, %_ZN7testing7MessageD2Ev.exit372 ], [ %.pn139.pn, %_ZN7testing7MessageD2Ev.exit358 ], [ %.pn136.pn, %_ZN7testing7MessageD2Ev.exit344 ], [ %.pn133.pn, %_ZN7testing7MessageD2Ev.exit330 ], [ %.pn130.pn, %_ZN7testing7MessageD2Ev.exit316 ], [ %.pn127.pn, %_ZN7testing7MessageD2Ev.exit302 ], [ %.pn124.pn, %_ZN7testing7MessageD2Ev.exit288 ], [ %.pn121.pn, %_ZN7testing7MessageD2Ev.exit275 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !109
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !109
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425: ; preds = %bb.ho, %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.wj = load i8, ptr %64, align 8, !tbaa !45, !range !46, !noundef !47
  %i.wk = trunc nuw i8 %i.wj to i1
  br i1 %i.wk, label %bb.ic, label %bb.ht

bb.ht:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.hu unwind label %bb.hy

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #17
  %i.wl = load ptr, ptr %i.rh, align 8, !tbaa !48 ; 2 uses
  %.not.i.i426 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i426, label %_ZNK7testing15AssertionResult15failure_messageEv.exit427, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit427

_ZNK7testing15AssertionResult15failure_messageEv.exit427: ; preds = %bb.hv, %bb.hu
  %i.wn = phi ptr [ %i.wm, %bb.hv ], [ @.str.51, %bb.hu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %66, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 161, ptr noundef %i.wn)
          to label %bb.hw unwind label %bb.hz

bb.hw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit427
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(8) %65)
          to label %bb.hx unwind label %bb.ia

bb.hx:                                            ; preds = %bb.hw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  %i.wo = load ptr, ptr %65, align 8, !tbaa !50   ; 3 uses
  %.not.i.i428 = icmp eq ptr %i.wo, null
  br i1 %.not.i.i428, label %_ZN7testing7MessageD2Ev.exit430, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429: ; preds = %bb.hx
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !26
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(128) %i.wo) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit430

_ZN7testing7MessageD2Ev.exit430:                  ; preds = %bb.hx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i429
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  br label %bb.ic

bb.hy:                                            ; preds = %bb.ht
  %i.ws = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit433

bb.hz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit427
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ib

bb.ia:                                            ; preds = %bb.hw
  %i.wu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #17
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.pn158 = phi { ptr, i32 } [ %i.wu, %bb.ia ], [ %i.wt, %bb.hz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #17
  %i.wv = load ptr, ptr %65, align 8, !tbaa !50   ; 3 uses
  %.not.i.i431 = icmp eq ptr %i.wv, null
  br i1 %.not.i.i431, label %_ZN7testing7MessageD2Ev.exit433, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432: ; preds = %bb.ib
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !26
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  %i.wy = load ptr, ptr %i.wx, align 8
  call void %i.wy(ptr noundef nonnull align 8 dereferenceable(128) %i.wv) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit433

_ZN7testing7MessageD2Ev.exit433:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432, %bb.ib, %bb.hy
  %.pn158.pn = phi { ptr, i32 } [ %i.ws, %bb.hy ], [ %.pn158, %bb.ib ], [ %.pn158, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i432 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %64) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  br label %bb.jl

bb.ic:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit425, %_ZN7testing7MessageD2Ev.exit430
  %i.wz = load ptr, ptr %i.rh, align 8, !tbaa !48 ; 4 uses
  %.not.i.i434 = icmp eq ptr %i.wz, null
  br i1 %.not.i.i434, label %_ZN7testing15AssertionResultD2Ev.exit438, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !21 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xc = icmp eq ptr %i.xa, %i.xb
  br i1 %i.xc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i436, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i435: ; preds = %bb.id
  %i.xd = load i64, ptr %i.xb, align 8, !tbaa !24
  %i.xe = add i64 %i.xd, 1
  call void @_ZdlPvm(ptr noundef %i.xa, i64 noundef %i.xe) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i436

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i436: ; preds = %bb.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i435
  call void @_ZdlPvm(ptr noundef nonnull %i.wz, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit438

_ZN7testing15AssertionResultD2Ev.exit438:         ; preds = %bb.ic, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i436
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #17
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %indvars.iv.next531 = add nsw i64 %indvars.iv530, -1
  %exitcond537.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count
  br i1 %exitcond537.not, label %.preheader, label %.lr.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit469, %_ZN7testing15AssertionResultD2Ev.exit407, %.preheader
  %indvars.iv.next554 = add nuw nsw i64 %indvars.iv553, 1 ; 2 uses
  %indvars.iv.next529 = add nsw i32 %indvars.iv528.a, 1
  %indvars.iv.next539 = add nsw i32 %indvars.iv538, 1
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1
  %exitcond558.not = icmp eq i64 %indvars.iv.next554, 64
  br i1 %exitcond558.not, label %bb.gl, label %bb.gm, !llvm.loop !98

.lr.ph505:                                        ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit469
  %indvars.iv542 = phi i64 [ %indvars.iv.next543, %_ZN7testing15AssertionResultD2Ev.exit469 ], [ 24, %.preheader ]
  %indvars.iv540 = phi i64 [ %indvars.iv.next541, %_ZN7testing15AssertionResultD2Ev.exit469 ], [ %73, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.xf = load float, ptr %i.ta, align 4, !tbaa !58 ; 2 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv540
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !58
  %i.xi = fadd float %i.xf, %i.xh                 ; 2 uses
  store float %i.xi, ptr %i.h, align 4, !tbaa !58
  %i.xj = fcmp oeq float %i.xi, %i.xf
  br i1 %i.xj, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %.lr.ph505
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %67)
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439

bb.if:                                            ; preds = %.lr.ph505
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !110
  call void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.h), !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !110
  invoke void @_ZN7testing13PrintToStringIfEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ta)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i475 unwind label %bb.ih, !noalias !110

_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i475: ; preds = %bb.if
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %67, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.ig unwind label %bb.ii

bb.ig:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i475
  %i.xk = load ptr, ptr %4, align 8, !tbaa !21, !noalias !110 ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.ri
  br i1 %i.xl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478: ; preds = %bb.ig
  %i.xm = load i64, ptr %i.ri, align 8, !tbaa !24, !noalias !110
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %i.xk, i64 noundef %i.xn) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479: ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i478
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !110
  %i.xo = load ptr, ptr %3, align 8, !tbaa !21, !noalias !110 ; 2 uses
  %i.xp = icmp eq ptr %i.xo, %i.rj
  br i1 %i.xp, label %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i480

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i480: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479
  %i.xq = load i64, ptr %i.rj, align 8, !tbaa !24, !noalias !110
  %i.xr = add i64 %i.xq, 1
  call void @_ZdlPvm(ptr noundef %i.xo, i64 noundef %i.xr) #16
  br label %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit483

bb.ih:                                            ; preds = %bb.if
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470

bb.ii:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIffEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i475
  %i.xt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xu = load ptr, ptr %4, align 8, !tbaa !21, !noalias !110 ; 2 uses
  %i.xv = icmp eq ptr %i.xu, %i.ri
  br i1 %i.xv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i476

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i476: ; preds = %bb.ii
  %i.xw = load i64, ptr %i.ri, align 8, !tbaa !24, !noalias !110
  %i.xx = add i64 %i.xw, 1
  call void @_ZdlPvm(ptr noundef %i.xu, i64 noundef %i.xx) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470: ; preds = %bb.ii, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i476, %bb.ih
  %.pn.i471 = phi { ptr, i32 } [ %i.xs, %bb.ih ], [ %i.xt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i476 ], [ %i.xt, %bb.ii ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !110
  %i.xy = load ptr, ptr %3, align 8, !tbaa !21, !noalias !110 ; 2 uses
  %i.xz = icmp eq ptr %i.xy, %i.rj
  br i1 %i.xz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i472

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i472: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470
  %i.ya = load i64, ptr %i.rj, align 8, !tbaa !24, !noalias !110
  %i.yb = add i64 %i.ya, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yb) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i473: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i470, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i472
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !110
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i480
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !110
  br label %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439

_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439: ; preds = %bb.ie, %_ZN7testing8internal18CmpHelperEQFailureIffEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  %i.yc = load i8, ptr %67, align 8, !tbaa !45, !range !46, !noundef !47
  %i.yd = trunc nuw i8 %i.yc to i1
  br i1 %i.yd, label %bb.is, label %bb.ij

bb.ij:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.ik unwind label %bb.io

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #17
  %i.ye = load ptr, ptr %i.rk, align 8, !tbaa !48 ; 2 uses
  %.not.i.i440 = icmp eq ptr %i.ye, null
  br i1 %.not.i.i440, label %_ZNK7testing15AssertionResult15failure_messageEv.exit441, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit441

_ZNK7testing15AssertionResult15failure_messageEv.exit441: ; preds = %bb.il, %bb.ik
  %i.yg = phi ptr [ %i.yf, %bb.il ], [ @.str.51, %bb.ik ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %69, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 164, ptr noundef %i.yg)
          to label %bb.im unwind label %bb.ip

bb.im:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit441
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %bb.in unwind label %bb.iq

bb.in:                                            ; preds = %bb.im
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #17
  %i.yh = load ptr, ptr %68, align 8, !tbaa !50   ; 3 uses
  %.not.i.i442 = icmp eq ptr %i.yh, null
  br i1 %.not.i.i442, label %_ZN7testing7MessageD2Ev.exit444, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443: ; preds = %bb.in
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !26
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  %i.yk = load ptr, ptr %i.yj, align 8
  call void %i.yk(ptr noundef nonnull align 8 dereferenceable(128) %i.yh) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit444

_ZN7testing7MessageD2Ev.exit444:                  ; preds = %bb.in, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i443
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  br label %bb.is

bb.io:                                            ; preds = %bb.ij
  %i.yl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit447

bb.ip:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit441
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %bb.ir

bb.iq:                                            ; preds = %bb.im
  %i.yn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #17
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %.pn148 = phi { ptr, i32 } [ %i.yn, %bb.iq ], [ %i.ym, %bb.ip ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #17
  %i.yo = load ptr, ptr %68, align 8, !tbaa !50   ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.yo, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.ir
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !26
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8
  call void %i.yr(ptr noundef nonnull align 8 dereferenceable(128) %i.yo) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446, %bb.ir, %bb.io
  %.pn148.pn = phi { ptr, i32 } [ %i.yl, %bb.io ], [ %.pn148, %bb.ir ], [ %.pn148, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %67) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  br label %bb.jl

bb.is:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIffTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit439, %_ZN7testing7MessageD2Ev.exit444
  %i.ys = load ptr, ptr %i.rk, align 8, !tbaa !48 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.ys, null
  br i1 %.not.i.i448, label %_ZN7testing15AssertionResultD2Ev.exit452, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.yt = load ptr, ptr %i.ys, align 8, !tbaa !21 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 16 ; 2 uses
  %i.yv = icmp eq ptr %i.yt, %i.yu
  br i1 %i.yv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.it
  %i.yw = load i64, ptr %i.yu, align 8, !tbaa !24
  %i.yx = add i64 %i.yw, 1
  call void @_ZdlPvm(ptr noundef %i.yt, i64 noundef %i.yx) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.it, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.ys, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit452

_ZN7testing15AssertionResultD2Ev.exit452:         ; preds = %bb.is, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  %i.yy = shl nuw i64 1, %indvars.iv540
  %i.yz = add i64 %i.yy, %i.sv                    ; 3 uses
  %i.za = icmp eq i64 %i.yz, 0
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
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

_ZNK7testing15AssertionResult15failure_messageEv.exit704: ; preds = %bb.nk, %bb.nj
  %i.ahv = phi ptr [ %i.ahu, %bb.nk ], [ @.str.51, %bb.nj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %108, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 310, ptr noundef %i.ahv)
          to label %bb.nl unwind label %.loopexit.split-lp839.loopexit.split-lp.loopexit.split-lp

bb.nl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit704
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull align 8 dereferenceable(8) %107)
          to label %bb.nm unwind label %.loopexit.split-lp844.loopexit.split-lp.loopexit.split-lp

bb.nm:                                            ; preds = %bb.nl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #17
  %i.ahw = load ptr, ptr %107, align 8, !tbaa !50 ; 3 uses
  %.not.i.i705 = icmp eq ptr %i.ahw, null
  br i1 %.not.i.i705, label %_ZN7testing7MessageD2Ev.exit707, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706: ; preds = %bb.nm
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !26
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8
  %i.ahz = load ptr, ptr %i.ahy, align 8
  call void %i.ahz(ptr noundef nonnull align 8 dereferenceable(128) %i.ahw) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit707

_ZN7testing7MessageD2Ev.exit707:                  ; preds = %bb.nm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i706
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #17
  br label %bb.no

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ni, %bb.mz
  %lpad.loopexit.split-lp1153.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit710

.loopexit.split-lp839.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit704, %_ZNK7testing15AssertionResult15failure_messageEv.exit704.peel
  %lpad.loopexit.split-lp1155 = landingpad { ptr, i32 }
          cleanup
  br label %bb.nn

.loopexit.split-lp844.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.nl, %bb.nc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #17
  br label %bb.nn

bb.nn:                                            ; preds = %.loopexit.split-lp839.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp844.loopexit.split-lp.loopexit.split-lp
  %.pn248 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp844.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1155, %.loopexit.split-lp839.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #17
  %i.aia = load ptr, ptr %107, align 8, !tbaa !50 ; 3 uses
  %.not.i.i708 = icmp eq ptr %i.aia, null
  br i1 %.not.i.i708, label %_ZN7testing7MessageD2Ev.exit710, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709: ; preds = %bb.nn
  %i.aib = load ptr, ptr %i.aia, align 8, !tbaa !26
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8
  call void %i.aid(ptr noundef nonnull align 8 dereferenceable(128) %i.aia) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit710

_ZN7testing7MessageD2Ev.exit710:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709, %bb.nn
  %.pn248.pn = phi { ptr, i32 } [ %.pn248, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i709 ], [ %.pn248, %bb.nn ], [ %lpad.loopexit.split-lp1153.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %106) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #17
  br label %common.resume

bb.no:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit702, %_ZN7testing7MessageD2Ev.exit707
  %i.aie = load ptr, ptr %i.adv, align 8, !tbaa !48 ; 4 uses
  %.not.i.i711 = icmp eq ptr %i.aie, null
  br i1 %.not.i.i711, label %_ZN7testing15AssertionResultD2Ev.exit715, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !21 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 16 ; 2 uses
  %i.aih = icmp eq ptr %i.aif, %i.aig
  br i1 %i.aih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712: ; preds = %bb.np
  %i.aii = load i64, ptr %i.aig, align 8, !tbaa !24
  %i.aij = add i64 %i.aii, 1
  call void @_ZdlPvm(ptr noundef %i.aif, i64 noundef %i.aij) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713: ; preds = %bb.np, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i712
  call void @_ZdlPvm(ptr noundef nonnull %i.aie, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit715

_ZN7testing15AssertionResultD2Ev.exit715:         ; preds = %bb.no, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i713
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.loopexit848, label %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit", !llvm.loop !116

bb.nq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret void

bb.nr:                                            ; preds = %.loopexit848, %._crit_edge
  %indvars.iv877 = phi i64 [ 0, %.loopexit848 ], [ %indvars.iv.next878, %._crit_edge ] ; 6 uses
  %indvars.iv875 = phi i64 [ 1, %.loopexit848 ], [ %indvars.iv.next876, %._crit_edge ] ; 2 uses
  %indvars.iv862 = phi i32 [ -53, %.loopexit848 ], [ %indvars.iv.next863, %._crit_edge ] ; 2 uses
  %indvars.iv852.a = phi i32 [ -1, %.loopexit848 ], [ %indvars.iv.next853, %._crit_edge ] ; 3 uses
  %124 = zext i32 %indvars.iv862 to i64
  %125 = zext i32 %indvars.iv852.a to i64
  %umin = call i32 @llvm.umin.i32(i32 %indvars.iv852.a, i32 51)
  %i.aik = add nuw nsw i32 %umin, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.ail = shl nuw i64 1, %indvars.iv877          ; 2 uses
  %i.aim = shl i64 %indvars.iv877, 52
  %i.ain = add i64 %i.aim, 4318952042648305664    ; 2 uses
  %i.aio = bitcast i64 %i.ain to double
  store i64 %i.ain, ptr %i.d, align 8, !tbaa !61
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv877 ; 9 uses
  %i.aiq = load double, ptr %i.aip, align 8, !tbaa !61, !noalias !134
  %i.air = fcmp oeq double %i.aiq, %i.aio
  br i1 %i.air, label %bb.ns, label %bb.nt

bb.ns:                                            ; preds = %bb.nr
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %109)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718

bb.nt:                                            ; preds = %bb.nr
  call void @_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %109, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.aip)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718: ; preds = %bb.ns, %bb.nt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  %i.ais = load i8, ptr %109, align 8, !tbaa !45, !range !46, !noundef !47
  %i.ait = trunc nuw i8 %i.ais to i1
  br i1 %i.ait, label %bb.od, label %bb.nu

bb.nu:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %110)
          to label %bb.nv unwind label %bb.nz

bb.nv:                                            ; preds = %bb.nu
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #17
  %i.aiu = load ptr, ptr %i.agv, align 8, !tbaa !48 ; 2 uses
  %.not.i.i719 = icmp eq ptr %i.aiu, null
  br i1 %.not.i.i719, label %_ZNK7testing15AssertionResult15failure_messageEv.exit720, label %bb.nw

bb.nw:                                            ; preds = %bb.nv
  %i.aiv = load ptr, ptr %i.aiu, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit720

_ZNK7testing15AssertionResult15failure_messageEv.exit720: ; preds = %bb.nw, %bb.nv
  %i.aiw = phi ptr [ %i.aiv, %bb.nw ], [ @.str.51, %bb.nv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %111, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 319, ptr noundef %i.aiw)
          to label %bb.nx unwind label %bb.oa

bb.nx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit720
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull align 8 dereferenceable(8) %110)
          to label %bb.ny unwind label %bb.ob

bb.ny:                                            ; preds = %bb.nx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #17
  %i.aix = load ptr, ptr %110, align 8, !tbaa !50 ; 3 uses
  %.not.i.i721 = icmp eq ptr %i.aix, null
  br i1 %.not.i.i721, label %_ZN7testing7MessageD2Ev.exit723, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i722

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i722: ; preds = %bb.ny
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !26
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 8
  %i.aja = load ptr, ptr %i.aiz, align 8
  call void %i.aja(ptr noundef nonnull align 8 dereferenceable(128) %i.aix) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit723

_ZN7testing7MessageD2Ev.exit723:                  ; preds = %bb.ny, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i722
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #17
  br label %bb.od

bb.nz:                                            ; preds = %bb.nu
  %i.ajb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit726

bb.oa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit720
  %i.ajc = landingpad { ptr, i32 }
          cleanup
  br label %bb.oc

bb.ob:                                            ; preds = %bb.nx
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #17
  br label %bb.oc

bb.oc:                                            ; preds = %bb.ob, %bb.oa
  %.pn230 = phi { ptr, i32 } [ %i.ajd, %bb.ob ], [ %i.ajc, %bb.oa ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #17
  %i.aje = load ptr, ptr %110, align 8, !tbaa !50 ; 3 uses
  %.not.i.i724 = icmp eq ptr %i.aje, null
  br i1 %.not.i.i724, label %_ZN7testing7MessageD2Ev.exit726, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i725

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i725: ; preds = %bb.oc
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !26
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %i.ajh = load ptr, ptr %i.ajg, align 8
  call void %i.ajh(ptr noundef nonnull align 8 dereferenceable(128) %i.aje) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit726

_ZN7testing7MessageD2Ev.exit726:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i725, %bb.oc, %bb.nz
  %.pn230.pn = phi { ptr, i32 } [ %i.ajb, %bb.nz ], [ %.pn230, %bb.oc ], [ %.pn230, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i725 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %109) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #17
  br label %bb.qq

bb.od:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit718, %_ZN7testing7MessageD2Ev.exit723
  %i.aji = load ptr, ptr %i.agv, align 8, !tbaa !48 ; 4 uses
  %.not.i.i727 = icmp eq ptr %i.aji, null
  br i1 %.not.i.i727, label %_ZN7testing15AssertionResultD2Ev.exit731, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !21 ; 2 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aji, i64 16 ; 2 uses
  %i.ajl = icmp eq ptr %i.ajj, %i.ajk
  br i1 %i.ajl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i728

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i728: ; preds = %bb.oe
  %i.ajm = load i64, ptr %i.ajk, align 8, !tbaa !24
  %i.ajn = add i64 %i.ajm, 1
  call void @_ZdlPvm(ptr noundef %i.ajj, i64 noundef %i.ajn) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729: ; preds = %bb.oe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i728
  call void @_ZdlPvm(ptr noundef nonnull %i.aji, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit731

_ZN7testing15AssertionResultD2Ev.exit731:         ; preds = %bb.od, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i729
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #17
  %.not = icmp eq i64 %indvars.iv877, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7testing15AssertionResultD2Ev.exit731
  %wide.trip.count = zext nneg i32 %i.aik to i64
  br label %.lr.ph

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit762
  %i.ajo = icmp samesign ugt i64 %indvars.iv877, 52
  br i1 %i.ajo, label %.lr.ph829, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN7testing15AssertionResultD2Ev.exit762
  %indvars.iv856 = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next857, %_ZN7testing15AssertionResultD2Ev.exit762 ]
  %indvars.iv854 = phi i64 [ %125, %.lr.ph.preheader ], [ %indvars.iv.next855, %_ZN7testing15AssertionResultD2Ev.exit762 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.ajp = load double, ptr %i.aip, align 8, !tbaa !61 ; 2 uses
  %i.ajq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv854 ; 2 uses
  %i.ajr = load double, ptr %i.ajq, align 8, !tbaa !61
  %i.ajs = fadd double %i.ajp, %i.ajr             ; 2 uses
  store double %i.ajs, ptr %i.e, align 8, !tbaa !61
  %i.ajt = fcmp une double %i.ajs, %i.ajp
  br i1 %i.ajt, label %bb.of, label %bb.og

bb.of:                                            ; preds = %.lr.ph
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %112)
  br label %_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732

bb.og:                                            ; preds = %.lr.ph
  call void @_ZN7testing8internal18CmpHelperOpFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %112, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.aip, ptr noundef nonnull @.str.96)
  br label %_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732

_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732: ; preds = %bb.of, %bb.og
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.aju = load i8, ptr %112, align 8, !tbaa !45, !range !46, !noundef !47
  %i.ajv = trunc nuw i8 %i.aju to i1
  br i1 %i.ajv, label %bb.oq, label %bb.oh

bb.oh:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %113)
          to label %bb.oi unwind label %bb.om

bb.oi:                                            ; preds = %bb.oh
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #17
  %i.ajw = load ptr, ptr %i.agw, align 8, !tbaa !48 ; 2 uses
  %.not.i.i733 = icmp eq ptr %i.ajw, null
  br i1 %.not.i.i733, label %_ZNK7testing15AssertionResult15failure_messageEv.exit734, label %bb.oj

bb.oj:                                            ; preds = %bb.oi
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit734

_ZNK7testing15AssertionResult15failure_messageEv.exit734: ; preds = %bb.oj, %bb.oi
  %i.ajy = phi ptr [ %i.ajx, %bb.oj ], [ @.str.51, %bb.oi ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 321, ptr noundef %i.ajy)
          to label %bb.ok unwind label %bb.on

bb.ok:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit734
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef nonnull align 8 dereferenceable(8) %113)
          to label %bb.ol unwind label %bb.oo

bb.ol:                                            ; preds = %bb.ok
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %114) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #17
  %i.ajz = load ptr, ptr %113, align 8, !tbaa !50 ; 3 uses
  %.not.i.i735 = icmp eq ptr %i.ajz, null
  br i1 %.not.i.i735, label %_ZN7testing7MessageD2Ev.exit737, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i736

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i736: ; preds = %bb.ol
  %i.aka = load ptr, ptr %i.ajz, align 8, !tbaa !26
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 8
  %i.akc = load ptr, ptr %i.akb, align 8
  call void %i.akc(ptr noundef nonnull align 8 dereferenceable(128) %i.ajz) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit737

_ZN7testing7MessageD2Ev.exit737:                  ; preds = %bb.ol, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i736
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #17
  br label %bb.oq

bb.om:                                            ; preds = %bb.oh
  %i.akd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit740

bb.on:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit734
  %i.ake = landingpad { ptr, i32 }
          cleanup
  br label %bb.op

bb.oo:                                            ; preds = %bb.ok
  %i.akf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %114) #17
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %.pn240 = phi { ptr, i32 } [ %i.akf, %bb.oo ], [ %i.ake, %bb.on ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #17
  %i.akg = load ptr, ptr %113, align 8, !tbaa !50 ; 3 uses
  %.not.i.i738 = icmp eq ptr %i.akg, null
  br i1 %.not.i.i738, label %_ZN7testing7MessageD2Ev.exit740, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i739

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i739: ; preds = %bb.op
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !26
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 8
  %i.akj = load ptr, ptr %i.aki, align 8
  call void %i.akj(ptr noundef nonnull align 8 dereferenceable(128) %i.akg) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit740

_ZN7testing7MessageD2Ev.exit740:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i739, %bb.op, %bb.om
  %.pn240.pn = phi { ptr, i32 } [ %i.akd, %bb.om ], [ %.pn240, %bb.op ], [ %.pn240, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i739 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %112) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #17
  br label %bb.qq

bb.oq:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit732, %_ZN7testing7MessageD2Ev.exit737
  %i.akk = load ptr, ptr %i.agw, align 8, !tbaa !48 ; 4 uses
  %.not.i.i741 = icmp eq ptr %i.akk, null
  br i1 %.not.i.i741, label %_ZN7testing15AssertionResultD2Ev.exit745, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !21 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akk, i64 16 ; 2 uses
  %i.akn = icmp eq ptr %i.akl, %i.akm
  br i1 %i.akn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i743, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i742

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i742: ; preds = %bb.or
  %i.ako = load i64, ptr %i.akm, align 8, !tbaa !24
  %i.akp = add i64 %i.ako, 1
  call void @_ZdlPvm(ptr noundef %i.akl, i64 noundef %i.akp) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i743

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i743: ; preds = %bb.or, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i742
  call void @_ZdlPvm(ptr noundef nonnull %i.akk, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit745

_ZN7testing15AssertionResultD2Ev.exit745:         ; preds = %bb.oq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i743
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.akq = shl nuw i64 1, %indvars.iv854
  %i.akr = add i64 %i.akq, %i.ail                 ; 3 uses
  %i.aks = icmp eq i64 %i.akr, 0
  br i1 %i.aks, label %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748", label %bb.os

bb.os:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit745
  %i.akt = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.akr, i1 true) ; 2 uses
  %i.aku = shl i64 %i.akr, %i.akt
  %i.akv = lshr i64 %i.aku, 11
  %i.akw = and i64 %i.akv, 4503599627370495
  %i.akx = shl nuw nsw i64 %i.akt, 52
  %reass.sub833 = sub nsw i64 %i.akw, %i.akx
  %i.aky = add nsw i64 %reass.sub833, 4602678819172646912
  %i.akz = bitcast i64 %i.aky to double
  br label %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748"

"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748": ; preds = %_ZN7testing15AssertionResultD2Ev.exit745, %bb.os
  %.0.i.i747 = phi double [ %i.akz, %bb.os ], [ 0.000000e+00, %_ZN7testing15AssertionResultD2Ev.exit745 ] ; 2 uses
  store double %.0.i.i747, ptr %i.f, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.ala = load double, ptr %i.aip, align 8, !tbaa !61
  %i.alb = load double, ptr %i.ajq, align 8, !tbaa !61
  %i.alc = fadd double %i.ala, %i.alb             ; 2 uses
  store double %i.alc, ptr %i.g, align 8, !tbaa !61
  %i.ald = fcmp oeq double %.0.i.i747, %i.alc
  br i1 %i.ald, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748"
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %115)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749

bb.ou:                                            ; preds = %"_ZZN12_GLOBAL__N_137GenerateRealTest_U64ToDoubleTest_Test8TestBodyEvENK3$_0clEm.exit748"
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !135
  call void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.f), !noalias !135
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17, !noalias !135
  invoke void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.ow, !noalias !135

_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %bb.ou
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %115, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.86, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.ov unwind label %bb.ox

bb.ov:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ale = load ptr, ptr %6, align 8, !tbaa !21, !noalias !135 ; 2 uses
  %i.alf = icmp eq ptr %i.ale, %i.agx
  br i1 %i.alf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ov
  %i.alg = load i64, ptr %i.agx, align 8, !tbaa !24, !noalias !135
  %i.alh = add i64 %i.alg, 1
  call void @_ZdlPvm(ptr noundef %i.ale, i64 noundef %i.alh) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ov, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !135
  %i.ali = load ptr, ptr %5, align 8, !tbaa !21, !noalias !135 ; 2 uses
  %i.alj = icmp eq ptr %i.ali, %i.agy
  br i1 %i.alj, label %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.alk = load i64, ptr %i.agy, align 8, !tbaa !24, !noalias !135
  %i.all = add i64 %i.alk, 1
  call void @_ZdlPvm(ptr noundef %i.ali, i64 noundef %i.all) #16
  br label %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit

bb.ow:                                            ; preds = %bb.ou
  %i.alm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.ox:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.aln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.alo = load ptr, ptr %6, align 8, !tbaa !21, !noalias !135 ; 2 uses
  %i.alp = icmp eq ptr %i.alo, %i.agx
  br i1 %i.alp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.ox
  %i.alq = load i64, ptr %i.agx, align 8, !tbaa !24, !noalias !135
  %i.alr = add i64 %i.alq, 1
  call void @_ZdlPvm(ptr noundef %i.alo, i64 noundef %i.alr) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.ox, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.ow
  %.pn.i = phi { ptr, i32 } [ %i.alm, %bb.ow ], [ %i.aln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.aln, %bb.ox ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17, !noalias !135
  %i.als = load ptr, ptr %5, align 8, !tbaa !21, !noalias !135 ; 2 uses
  %i.alt = icmp eq ptr %i.als, %i.agy
  br i1 %i.alt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.alu = load i64, ptr %i.agy, align 8, !tbaa !24, !noalias !135
  %i.alv = add i64 %i.alu, 1
  call void @_ZdlPvm(ptr noundef %i.als, i64 noundef %i.alv) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

common.resume:                                    ; preds = %_ZN7testing7MessageD2Ev.exit256, %_ZN7testing7MessageD2Ev.exit266, %_ZN7testing7MessageD2Ev.exit280, %_ZN7testing7MessageD2Ev.exit294, %_ZN7testing7MessageD2Ev.exit308, %_ZN7testing7MessageD2Ev.exit322, %_ZN7testing7MessageD2Ev.exit336, %_ZN7testing7MessageD2Ev.exit350, %_ZN7testing7MessageD2Ev.exit363, %_ZN7testing7MessageD2Ev.exit376, %_ZN7testing7MessageD2Ev.exit390, %_ZN7testing7MessageD2Ev.exit404, %_ZN7testing7MessageD2Ev.exit418, %_ZN7testing7MessageD2Ev.exit432, %_ZN7testing7MessageD2Ev.exit446, %_ZN7testing7MessageD2Ev.exit460, %_ZN7testing7MessageD2Ev.exit474, %_ZN7testing7MessageD2Ev.exit488, %_ZN7testing7MessageD2Ev.exit502, %_ZN7testing7MessageD2Ev.exit516, %_ZN7testing7MessageD2Ev.exit530, %_ZN7testing7MessageD2Ev.exit544, %_ZN7testing7MessageD2Ev.exit558, %_ZN7testing7MessageD2Ev.exit572, %_ZN7testing7MessageD2Ev.exit586, %_ZN7testing7MessageD2Ev.exit600, %_ZN7testing7MessageD2Ev.exit614, %_ZN7testing7MessageD2Ev.exit628, %_ZN7testing7MessageD2Ev.exit642, %_ZN7testing7MessageD2Ev.exit656, %_ZN7testing7MessageD2Ev.exit670, %bb.qq, %_ZN7testing7MessageD2Ev.exit710, %_ZN7testing7MessageD2Ev.exit696, %_ZN7testing7MessageD2Ev.exit683, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i811, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ], [ %.pn.i795, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797 ], [ %.pn.i809, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i811 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit256 ], [ %.pn221.pn, %_ZN7testing7MessageD2Ev.exit670 ], [ %.pn218.pn, %_ZN7testing7MessageD2Ev.exit656 ], [ %.pn215.pn, %_ZN7testing7MessageD2Ev.exit642 ], [ %.pn212.pn, %_ZN7testing7MessageD2Ev.exit628 ], [ %.pn209.pn, %_ZN7testing7MessageD2Ev.exit614 ], [ %.pn206.pn, %_ZN7testing7MessageD2Ev.exit600 ], [ %.pn203.pn, %_ZN7testing7MessageD2Ev.exit586 ], [ %.pn200.pn, %_ZN7testing7MessageD2Ev.exit572 ], [ %.pn197.pn, %_ZN7testing7MessageD2Ev.exit558 ], [ %.pn194.pn, %_ZN7testing7MessageD2Ev.exit544 ], [ %.pn191.pn, %_ZN7testing7MessageD2Ev.exit530 ], [ %.pn188.pn, %_ZN7testing7MessageD2Ev.exit516 ], [ %.pn185.pn, %_ZN7testing7MessageD2Ev.exit502 ], [ %.pn182.pn, %_ZN7testing7MessageD2Ev.exit488 ], [ %.pn179.pn, %_ZN7testing7MessageD2Ev.exit474 ], [ %.pn176.pn, %_ZN7testing7MessageD2Ev.exit460 ], [ %.pn173.pn, %_ZN7testing7MessageD2Ev.exit446 ], [ %.pn170.pn, %_ZN7testing7MessageD2Ev.exit432 ], [ %.pn167.pn, %_ZN7testing7MessageD2Ev.exit418 ], [ %.pn164.pn, %_ZN7testing7MessageD2Ev.exit404 ], [ %.pn161.pn, %_ZN7testing7MessageD2Ev.exit390 ], [ %.pn158.pn, %_ZN7testing7MessageD2Ev.exit376 ], [ %.pn155.pn, %_ZN7testing7MessageD2Ev.exit363 ], [ %.pn152.pn, %_ZN7testing7MessageD2Ev.exit350 ], [ %.pn149.pn, %_ZN7testing7MessageD2Ev.exit336 ], [ %.pn146.pn, %_ZN7testing7MessageD2Ev.exit322 ], [ %.pn143.pn, %_ZN7testing7MessageD2Ev.exit308 ], [ %.pn140.pn, %_ZN7testing7MessageD2Ev.exit294 ], [ %.pn137.pn, %_ZN7testing7MessageD2Ev.exit280 ], [ %.pn134.pn, %_ZN7testing7MessageD2Ev.exit266 ], [ %.pn248.pn, %_ZN7testing7MessageD2Ev.exit710 ], [ %.pn243.pn.pn.pn, %bb.qq ], [ %.pn227.pn, %_ZN7testing7MessageD2Ev.exit696 ], [ %.pn224.pn, %_ZN7testing7MessageD2Ev.exit683 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !135
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !135
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749: ; preds = %bb.ot, %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  %i.alw = load i8, ptr %115, align 8, !tbaa !45, !range !46, !noundef !47
  %i.alx = trunc nuw i8 %i.alw to i1
  br i1 %i.alx, label %bb.ph, label %bb.oy

bb.oy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %bb.oz unwind label %bb.pd

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #17
  %i.aly = load ptr, ptr %i.agz, align 8, !tbaa !48 ; 2 uses
  %.not.i.i750 = icmp eq ptr %i.aly, null
  br i1 %.not.i.i750, label %_ZNK7testing15AssertionResult15failure_messageEv.exit751, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit751

_ZNK7testing15AssertionResult15failure_messageEv.exit751: ; preds = %bb.pa, %bb.oz
  %i.ama = phi ptr [ %i.alz, %bb.pa ], [ @.str.51, %bb.oz ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %117, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 323, ptr noundef %i.ama)
          to label %bb.pb unwind label %bb.pe

bb.pb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit751
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull align 8 dereferenceable(8) %116)
          to label %bb.pc unwind label %bb.pf

bb.pc:                                            ; preds = %bb.pb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %117) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #17
  %i.amb = load ptr, ptr %116, align 8, !tbaa !50 ; 3 uses
  %.not.i.i752 = icmp eq ptr %i.amb, null
  br i1 %.not.i.i752, label %_ZN7testing7MessageD2Ev.exit754, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i753

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i753: ; preds = %bb.pc
  %i.amc = load ptr, ptr %i.amb, align 8, !tbaa !26
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 8
  %i.ame = load ptr, ptr %i.amd, align 8
  call void %i.ame(ptr noundef nonnull align 8 dereferenceable(128) %i.amb) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit754

_ZN7testing7MessageD2Ev.exit754:                  ; preds = %bb.pc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i753
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #17
  br label %bb.ph

bb.pd:                                            ; preds = %bb.oy
  %i.amf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit757

bb.pe:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit751
  %i.amg = landingpad { ptr, i32 }
          cleanup
  br label %bb.pg

bb.pf:                                            ; preds = %bb.pb
  %i.amh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %117) #17
  br label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %bb.pe
  %.pn243 = phi { ptr, i32 } [ %i.amh, %bb.pf ], [ %i.amg, %bb.pe ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #17
  %i.ami = load ptr, ptr %116, align 8, !tbaa !50 ; 3 uses
  %.not.i.i755 = icmp eq ptr %i.ami, null
  br i1 %.not.i.i755, label %_ZN7testing7MessageD2Ev.exit757, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756: ; preds = %bb.pg
  %i.amj = load ptr, ptr %i.ami, align 8, !tbaa !26
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 8
  %i.aml = load ptr, ptr %i.amk, align 8
  call void %i.aml(ptr noundef nonnull align 8 dereferenceable(128) %i.ami) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit757

_ZN7testing7MessageD2Ev.exit757:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756, %bb.pg, %bb.pd
  %.pn243.pn = phi { ptr, i32 } [ %i.amf, %bb.pd ], [ %.pn243, %bb.pg ], [ %.pn243, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i756 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %115) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #17
  br label %bb.qq

bb.ph:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit749, %_ZN7testing7MessageD2Ev.exit754
  %i.amm = load ptr, ptr %i.agz, align 8, !tbaa !48 ; 4 uses
  %.not.i.i758 = icmp eq ptr %i.amm, null
  br i1 %.not.i.i758, label %_ZN7testing15AssertionResultD2Ev.exit762, label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.amn = load ptr, ptr %i.amm, align 8, !tbaa !21 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amm, i64 16 ; 2 uses
  %i.amp = icmp eq ptr %i.amn, %i.amo
  br i1 %i.amp, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759: ; preds = %bb.pi
  %i.amq = load i64, ptr %i.amo, align 8, !tbaa !24
  %i.amr = add i64 %i.amq, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amr) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760: ; preds = %bb.pi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i759
  call void @_ZdlPvm(ptr noundef nonnull %i.amm, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit762

_ZN7testing15AssertionResultD2Ev.exit762:         ; preds = %bb.ph, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i760
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #17
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %indvars.iv.next855 = add nsw i64 %indvars.iv854, -1
  %exitcond861.not = icmp eq i64 %indvars.iv.next857, %wide.trip.count
  br i1 %exitcond861.not, label %.preheader, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit793, %_ZN7testing15AssertionResultD2Ev.exit731, %.preheader
  %indvars.iv.next878 = add nuw nsw i64 %indvars.iv877, 1 ; 2 uses
  %indvars.iv.next853 = add nsw i32 %indvars.iv852.a, 1
  %indvars.iv.next863 = add nsw i32 %indvars.iv862, 1
  %indvars.iv.next876 = add nuw nsw i64 %indvars.iv875, 1
  %exitcond882.not = icmp eq i64 %indvars.iv.next878, 64
  br i1 %exitcond882.not, label %bb.nq, label %bb.nr, !llvm.loop !124

.lr.ph829:                                        ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit793
  %indvars.iv866 = phi i64 [ %indvars.iv.next867, %_ZN7testing15AssertionResultD2Ev.exit793 ], [ 53, %.preheader ]
  %indvars.iv864 = phi i64 [ %indvars.iv.next865, %_ZN7testing15AssertionResultD2Ev.exit793 ], [ %124, %.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.ams = load double, ptr %i.aip, align 8, !tbaa !61 ; 2 uses
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv864
  %i.amu = load double, ptr %i.amt, align 8, !tbaa !61
  %i.amv = fadd double %i.ams, %i.amu             ; 2 uses
  store double %i.amv, ptr %i.h, align 8, !tbaa !61
  %i.amw = fcmp oeq double %i.amv, %i.ams
  br i1 %i.amw, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %.lr.ph829
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %118)
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763

bb.pk:                                            ; preds = %.lr.ph829
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !136
  call void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !136
  invoke void @_ZN7testing13PrintToStringIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.aip)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i799 unwind label %bb.pm, !noalias !136

_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i799: ; preds = %bb.pk
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %118, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.85, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.pl unwind label %bb.pn

bb.pl:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i799
  %i.amx = load ptr, ptr %4, align 8, !tbaa !21, !noalias !136 ; 2 uses
  %i.amy = icmp eq ptr %i.amx, %i.aha
  br i1 %i.amy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i802

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i802: ; preds = %bb.pl
  %i.amz = load i64, ptr %i.aha, align 8, !tbaa !24, !noalias !136
  %i.ana = add i64 %i.amz, 1
  call void @_ZdlPvm(ptr noundef %i.amx, i64 noundef %i.ana) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803: ; preds = %bb.pl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i802
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !136
  %i.anb = load ptr, ptr %3, align 8, !tbaa !21, !noalias !136 ; 2 uses
  %i.anc = icmp eq ptr %i.anb, %i.ahb
  br i1 %i.anc, label %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit807, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i804

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i804: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803
  %i.and = load i64, ptr %i.ahb, align 8, !tbaa !24, !noalias !136
  %i.ane = add i64 %i.and, 1
  call void @_ZdlPvm(ptr noundef %i.anb, i64 noundef %i.ane) #16
  br label %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit807

bb.pm:                                            ; preds = %bb.pk
  %i.anf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794

bb.pn:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIddEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i799
  %i.ang = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.anh = load ptr, ptr %4, align 8, !tbaa !21, !noalias !136 ; 2 uses
  %i.ani = icmp eq ptr %i.anh, %i.aha
  br i1 %i.ani, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i800

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i800: ; preds = %bb.pn
  %i.anj = load i64, ptr %i.aha, align 8, !tbaa !24, !noalias !136
  %i.ank = add i64 %i.anj, 1
  call void @_ZdlPvm(ptr noundef %i.anh, i64 noundef %i.ank) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794: ; preds = %bb.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i800, %bb.pm
  %.pn.i795 = phi { ptr, i32 } [ %i.anf, %bb.pm ], [ %i.ang, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i800 ], [ %i.ang, %bb.pn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !136
  %i.anl = load ptr, ptr %3, align 8, !tbaa !21, !noalias !136 ; 2 uses
  %i.anm = icmp eq ptr %i.anl, %i.ahb
  br i1 %i.anm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i796

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i796: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794
  %i.ann = load i64, ptr %i.ahb, align 8, !tbaa !24, !noalias !136
  %i.ano = add i64 %i.ann, 1
  call void @_ZdlPvm(ptr noundef %i.anl, i64 noundef %i.ano) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i797: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i794, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i796
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !136
  br label %common.resume

_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit807: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i803, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i804
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !136
  br label %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763

_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763: ; preds = %bb.pj, %_ZN7testing8internal18CmpHelperEQFailureIddEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  %i.anp = load i8, ptr %118, align 8, !tbaa !45, !range !46, !noundef !47
  %i.anq = trunc nuw i8 %i.anp to i1
  br i1 %i.anq, label %bb.px, label %bb.po

bb.po:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %bb.pp unwind label %bb.pt

bb.pp:                                            ; preds = %bb.po
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #17
  %i.anr = load ptr, ptr %i.ahc, align 8, !tbaa !48 ; 2 uses
  %.not.i.i764 = icmp eq ptr %i.anr, null
  br i1 %.not.i.i764, label %_ZNK7testing15AssertionResult15failure_messageEv.exit765, label %bb.pq

bb.pq:                                            ; preds = %bb.pp
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !21
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit765

_ZNK7testing15AssertionResult15failure_messageEv.exit765: ; preds = %bb.pq, %bb.pp
  %i.ant = phi ptr [ %i.ans, %bb.pq ], [ @.str.51, %bb.pp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %120, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 326, ptr noundef %i.ant)
          to label %bb.pr unwind label %bb.pu

bb.pr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit765
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %bb.ps unwind label %bb.pv

bb.ps:                                            ; preds = %bb.pr
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %120) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #17
  %i.anu = load ptr, ptr %119, align 8, !tbaa !50 ; 3 uses
  %.not.i.i766 = icmp eq ptr %i.anu, null
  br i1 %.not.i.i766, label %_ZN7testing7MessageD2Ev.exit768, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767: ; preds = %bb.ps
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !26
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8
  call void %i.anx(ptr noundef nonnull align 8 dereferenceable(128) %i.anu) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit768

_ZN7testing7MessageD2Ev.exit768:                  ; preds = %bb.ps, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i767
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #17
  br label %bb.px

bb.pt:                                            ; preds = %bb.po
  %i.any = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit771

bb.pu:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit765
  %i.anz = landingpad { ptr, i32 }
          cleanup
  br label %bb.pw

bb.pv:                                            ; preds = %bb.pr
  %i.aoa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %120) #17
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu
  %.pn233 = phi { ptr, i32 } [ %i.aoa, %bb.pv ], [ %i.anz, %bb.pu ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #17
  %i.aob = load ptr, ptr %119, align 8, !tbaa !50 ; 3 uses
  %.not.i.i769 = icmp eq ptr %i.aob, null
  br i1 %.not.i.i769, label %_ZN7testing7MessageD2Ev.exit771, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i770

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i770: ; preds = %bb.pw
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !26
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoc, i64 8
  %i.aoe = load ptr, ptr %i.aod, align 8
  call void %i.aoe(ptr noundef nonnull align 8 dereferenceable(128) %i.aob) #17, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit771

_ZN7testing7MessageD2Ev.exit771:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i770, %bb.pw, %bb.pt
  %.pn233.pn = phi { ptr, i32 } [ %i.any, %bb.pt ], [ %.pn233, %bb.pw ], [ %.pn233, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i770 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %118) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #17
  br label %bb.qq

bb.px:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIddTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit763, %_ZN7testing7MessageD2Ev.exit768
  %i.aof = load ptr, ptr %i.ahc, align 8, !tbaa !48 ; 4 uses
  %.not.i.i772 = icmp eq ptr %i.aof, null
  br i1 %.not.i.i772, label %_ZN7testing15AssertionResultD2Ev.exit776, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !21 ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aof, i64 16 ; 2 uses
  %i.aoi = icmp eq ptr %i.aog, %i.aoh
  br i1 %i.aoi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i774, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i773

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i773: ; preds = %bb.py
  %i.aoj = load i64, ptr %i.aoh, align 8, !tbaa !24
  %i.aok = add i64 %i.aoj, 1
  call void @_ZdlPvm(ptr noundef %i.aog, i64 noundef %i.aok) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i774

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i774: ; preds = %bb.py, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i773
  call void @_ZdlPvm(ptr noundef nonnull %i.aof, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit776

_ZN7testing15AssertionResultD2Ev.exit776:         ; preds = %bb.px, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i774
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #17
  %i.aol = shl nuw i64 1, %indvars.iv864
  %i.aom = add i64 %i.aol, %i.ail                 ; 3 uses
  %i.aon = icmp eq i64 %i.aom, 0
end_hunk_1
