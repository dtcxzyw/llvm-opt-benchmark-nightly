inline.NumInlined: 75479
inline.NumDeleted: 20342
loop-unroll.NumCompletelyUnrolled: 319
loop-unroll.NumRuntimeUnrolled: 204
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdiEEEJdiEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !717 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !723 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i32 %i.ep, %i.er
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.af, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdiEEEJdiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit

bb.af:                                            ; preds = %bb.ae
  %i.es = add i32 %i.ep, 63                       ; 2 uses
  %i.et = srem i32 %i.es, 64
  %i.eu = sub nsw i32 %i.es, %i.et                ; 6 uses
  %i.ev = and i32 %i.er, -64                      ; 6 uses
  %i.ew = icmp slt i32 %i.ev, %i.eu
  br i1 %i.ew, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.ex = ashr i32 %i.er, 6
  %i.ey = and i32 %i.er, 63
  %i.ez = zext nneg i32 %i.ey to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ez
  %i.fa = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.fb = sub nsw i32 %i.eu, %i.ep                ; 2 uses
  %i.fc = zext nneg i32 %i.fb to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.fc
  %i.fd = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.fe = sub nsw i32 64, %i.fb
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl i64 %i.fd, %i.ff
  %i.fh = and i64 %i.fg, %i.fa
  %i.fi = sext i32 %i.ex to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !366
  %i.fl = and i64 %i.fh, %i.fk                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdiEEEJdiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ag
  %i.fm = sext i32 %i.ev to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.val47, i64 %i.fm
  %i.fn = icmp eq i32 %.sroa.01.0.fr.i.i, 0
  %i.fo = icmp slt i32 %.sroa.01.0.fr.i.i, 0
  %i.fp = uitofp nneg i32 %.sroa.01.0.fr.i.i to double
  %i.fq = sitofp i32 %.sroa.01.0.fr.i.i to double
  %i.fr = tail call double @llvm.fabs.f64(double %.sroa.03.0.i) ; 2 uses
  %i.fs = fcmp ueq double %i.fr, +inf             ; 2 uses
  %i.ft = tail call double @llvm.trunc.f64(double %.sroa.03.0.i) ; 2 uses
  %i.fu = fsub double %.sroa.03.0.i, %i.ft        ; 2 uses
  %i.fv = fcmp oeq double %i.fu, 0.000000e+00
  %i.fw = fcmp olt double %i.fr, f0x42B0000000000000
  %i.fx = tail call double @llvm.round.f64(double %.sroa.03.0.i)
  %brmerge44.i = or i1 %i.fs, %i.fn
  %.sroa.03.0.mux45.i = select i1 %i.fs, double %.sroa.03.0.i, double %i.fx
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.040.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fl, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gm, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fy = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  br i1 %brmerge44.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fo, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fz = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fq) #37, !tbaa !3, !noalias !7185 ; 2 uses
  %i.ga = fmul double %.sroa.03.0.i, %i.fz
  %i.gb = tail call double @llvm.round.f64(double %i.ga)
  %i.gc = fdiv double %i.gb, %i.fz
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.fv, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gd = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fp) #37, !tbaa !3, !noalias !7185 ; 4 uses
  br i1 %i.fw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ge = fmul double %.sroa.03.0.i, %i.gd
  %i.gf = tail call double @llvm.round.f64(double %i.ge)
  %i.gg = fdiv double %i.gf, %i.gd
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.gh = fmul double %i.fu, %i.gd
  %i.gi = tail call double @llvm.round.f64(double %i.gh)
  %i.gj = fdiv double %i.gi, %i.gd
  %i.gk = fadd double %i.ft, %i.gj
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ah
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.03.0.mux45.i, %bb.ah ], [ %i.gc, %bb.aj ], [ %i.gk, %bb.an ], [ %.sroa.03.0.i, %bb.ak ], [ %i.gg, %bb.am ]
  %gep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fy
  store double %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1891
  %i.gl = add nsw i64 %.040.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gm = and i64 %i.gl, %.040.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gm, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdiEEEJdiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.ah, !llvm.loop !7188

bb.ao:                                            ; preds = %bb.af
  %.not32.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ep, %i.eu
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gn = sdiv i32 %i.ep, 64                      ; 2 uses
  %i.go = sub nsw i32 %i.eu, %i.ep                ; 2 uses
  %i.gp = zext nneg i32 %i.go to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.gp
  %i.gq = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gr = sub nsw i32 64, %i.go
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = shl i64 %i.gq, %i.gs
  %i.gu = sext i32 %i.gn to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.gu
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !366
  %i.gx = and i64 %i.gw, %i.gt                    ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gx, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ap
  %i.gy = shl nsw i32 %i.gn, 6
  %i.gz = sext i32 %i.gy to i64
  %invariant.gep.i43.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.val47, i64 %i.gz
  %i.ha = icmp eq i32 %.sroa.01.0.fr.i.i, 0
  %i.hb = icmp slt i32 %.sroa.01.0.fr.i.i, 0
  %i.hc = uitofp nneg i32 %.sroa.01.0.fr.i.i to double
  %i.hd = sitofp i32 %.sroa.01.0.fr.i.i to double
  %i.he = tail call double @llvm.fabs.f64(double %.sroa.03.0.i) ; 2 uses
  %i.hf = fcmp ueq double %i.he, +inf             ; 2 uses
  %i.hg = tail call double @llvm.trunc.f64(double %.sroa.03.0.i) ; 2 uses
  %i.hh = fsub double %.sroa.03.0.i, %i.hg        ; 2 uses
  %i.hi = fcmp oeq double %i.hh, 0.000000e+00
  %i.hj = fcmp olt double %i.he, f0x42B0000000000000
  %i.hk = tail call double @llvm.round.f64(double %.sroa.03.0.i)
  %brmerge46.i = or i1 %i.hf, %i.ha
  %.sroa.03.0.mux47.i = select i1 %i.hf, double %.sroa.03.0.i, double %i.hk
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i
  %.040.i44.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gx, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hz, %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hl = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.040.i44.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  br i1 %brmerge46.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.hb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hm = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.hd) #37, !tbaa !3, !noalias !7189 ; 2 uses
  %i.hn = fmul double %.sroa.03.0.i, %i.hm
  %i.ho = tail call double @llvm.round.f64(double %i.hn)
  %i.hp = fdiv double %i.ho, %i.hm
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  br i1 %i.hi, label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hq = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.hc) #37, !tbaa !3, !noalias !7189 ; 4 uses
  br i1 %i.hj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hr = fmul double %.sroa.03.0.i, %i.hq
  %i.hs = tail call double @llvm.round.f64(double %i.hr)
  %i.ht = fdiv double %i.hs, %i.hq
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.hu = fmul double %i.hh, %i.hq
  %i.hv = tail call double @llvm.round.f64(double %i.hu)
  %i.hw = fdiv double %i.hv, %i.hq
  %i.hx = fadd double %i.hg, %i.hw
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.at, %bb.as, %bb.aq
  %.2.i.i.i46.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.03.0.mux47.i, %bb.aq ], [ %i.hp, %bb.as ], [ %i.hx, %bb.aw ], [ %.sroa.03.0.i, %bb.at ], [ %i.ht, %bb.av ]
  %gep.i47.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i43.i.i.i.i.i.i.i.i.i.i.i, i64 %i.hl
  store double %.2.i.i.i46.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i47.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1891
  %i.hy = add i64 %.040.i44.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hz = and i64 %i.hy, %.040.i44.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i48.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not10.i48.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, !llvm.loop !7188

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i, %bb.ap, %bb.ao
  %i.ia = add nsw i32 %i.eu, 64                   ; 2 uses
  %.not3373.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ia, %i.ev
  br i1 %.not3373.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i
  %i.ib = icmp eq i32 %.sroa.01.0.fr.i.i, 0       ; 2 uses
  %i.ic = icmp slt i32 %.sroa.01.0.fr.i.i, 0      ; 2 uses
  %i.id = uitofp nneg i32 %.sroa.01.0.fr.i.i to double ; 2 uses
  %i.ie = sitofp i32 %.sroa.01.0.fr.i.i to double ; 2 uses
  %i.if = tail call double @llvm.fabs.f64(double %.sroa.03.0.i) ; 2 uses
  %i.ig = fcmp ueq double %i.if, +inf             ; 4 uses
  %i.ih = tail call double @llvm.trunc.f64(double %.sroa.03.0.i) ; 3 uses
  %i.ii = fsub double %.sroa.03.0.i, %i.ih        ; 3 uses
  %i.ij = fcmp oeq double %i.ii, 0.000000e+00     ; 2 uses
  %i.ik = fcmp olt double %i.if, f0x42B0000000000000 ; 2 uses
  %i.il = tail call double @llvm.round.f64(double %.sroa.03.0.i)
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i = select i1 %i.ig, double %.sroa.03.0.i, double %i.il ; 3 uses
  %brmerge48.i = or i1 %i.ig, %i.ib
  %16 = insertelement <2 x double> poison, double %i.ii, i64 0
  %17 = insertelement <2 x double> %16, double %.sroa.03.0.i, i64 1
  %broadcast.splatinsert589 = insertelement <4 x double> poison, double %.sroa.03.0.i, i64 0
  %broadcast.splat590 = shufflevector <4 x double> %broadcast.splatinsert589, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert559 = insertelement <4 x double> poison, double %.sroa.03.0.i, i64 0
  %broadcast.splat560 = shufflevector <4 x double> %broadcast.splatinsert559, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert499 = insertelement <4 x double> poison, double %.sroa.03.0.i, i64 0
  %broadcast.splat500 = shufflevector <4 x double> %broadcast.splatinsert499, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert469 = insertelement <4 x double> poison, double %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, i64 0
  %broadcast.splat470 = shufflevector <4 x double> %broadcast.splatinsert469, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.er, %i.ev
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdiEEEJdiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.bf

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.im = phi i32 [ %i.mo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ia, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.074.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.im, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.eu, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.in = sdiv i32 %.074.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !366 ; 2 uses
  switch i64 %i.iq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.ax
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.ir = shl nsw i32 %i.in, 6
  %i.is = sext i32 %i.ir to i64
  %invariant.gep.i52.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.val47, i64 %i.is
  br label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.it = shl nsw i32 %i.in, 6                    ; 2 uses
  %i.iu = add i32 %i.it, 64
  %i.iv = sext i32 %i.iu to i64                   ; 13 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i = add i32 %.074.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not95.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i, 64
  br i1 %.not95.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph94.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ax
  %i.iw = sext i32 %i.it to i64                   ; 40 uses
  br i1 %i.ib, label %iter.check462, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.i.i

iter.check462:                                    ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ix = or disjoint i64 %i.iw, 1
  %umax447 = tail call i64 @llvm.umax.i64(i64 %i.ix, i64 %i.iv) ; 2 uses
  %i.iy = sub i64 %umax447, %i.iw                 ; 3 uses
  %min.iters.check448 = icmp ult i64 %i.iy, 4
  br i1 %min.iters.check448, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader, label %vector.main.loop.iter.check449

vector.main.loop.iter.check449:                   ; preds = %iter.check462
  %min.iters.check450 = icmp ult i64 %i.iy, 16
  %n.mod.vf467 = and i64 %umax447, 1              ; 3 uses
  %n.vec468 = sub nuw i64 %i.iy, %n.mod.vf467     ; 3 uses
  %i.iz = add i64 %n.vec468, %i.iw                ; 2 uses
  br i1 %min.iters.check450, label %vec.epilog.vector.body471.preheader, label %vector.body456.preheader

vector.body456.preheader:                         ; preds = %vector.main.loop.iter.check449
  %invariant.gep709 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vector.body456

vec.epilog.vector.body471.preheader:              ; preds = %vector.main.loop.iter.check449
  %invariant.gep711 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vec.epilog.vector.body471

vector.body456:                                   ; preds = %vector.body456.preheader, %vector.body456
  %index457 = phi i64 [ %index.next458, %vector.body456 ], [ 0, %vector.body456.preheader ] ; 2 uses
  %gep710 = getelementptr [8 x i8], ptr %invariant.gep709, i64 %index457 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %gep710, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %gep710, i64 64
  %i.jc = getelementptr inbounds nuw i8, ptr %gep710, i64 96
  store <4 x double> %broadcast.splat470, ptr %gep710, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat470, ptr %i.ja, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat470, ptr %i.jb, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat470, ptr %i.jc, align 8, !tbaa !1891
  %index.next458 = add nuw i64 %index457, 16      ; 2 uses
  %i.jd = icmp eq i64 %index.next458, %n.vec468
  br i1 %i.jd, label %middle.block459, label %vector.body456, !llvm.loop !7192

middle.block459:                                  ; preds = %vector.body456
  %cmp.n460 = icmp eq i64 %n.mod.vf467, 0
  br i1 %cmp.n460, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader

vec.epilog.vector.body471:                        ; preds = %vec.epilog.vector.body471.preheader, %vec.epilog.vector.body471
  %index472 = phi i64 [ %index.next473, %vec.epilog.vector.body471 ], [ 0, %vec.epilog.vector.body471.preheader ] ; 2 uses
  %gep712 = getelementptr [8 x i8], ptr %invariant.gep711, i64 %index472
  store <4 x double> %broadcast.splat470, ptr %gep712, align 8, !tbaa !1891
  %index.next473 = add nuw i64 %index472, 4       ; 2 uses
  %i.je = icmp eq i64 %index.next473, %n.vec468
  br i1 %i.je, label %vec.epilog.middle.block474, label %vec.epilog.vector.body471, !llvm.loop !7193

vec.epilog.middle.block474:                       ; preds = %vec.epilog.vector.body471
  %cmp.n475 = icmp eq i64 %n.mod.vf467, 0
  br i1 %cmp.n475, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader: ; preds = %middle.block459, %iter.check462, %vec.epilog.middle.block474
  %.093.i.i.i.i.i.i.i.i.i.i.us.i.i.ph = phi i64 [ %i.iz, %middle.block459 ], [ %i.iw, %iter.check462 ], [ %i.iz, %vec.epilog.middle.block474 ]
  br label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i:        ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i
  %.093.i.i.i.i.i.i.i.i.i.i.us.i.i = phi i64 [ %i.jg, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i ], [ %.093.i.i.i.i.i.i.i.i.i.i.us.i.i.ph, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %.093.i.i.i.i.i.i.i.i.i.i.us.i.i
  store double %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, ptr %i.jf, align 8, !tbaa !1891
  %i.jg = add nuw i64 %.093.i.i.i.i.i.i.i.i.i.i.us.i.i, 1 ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.iv
  br i1 %i.jh, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7194

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.i.i:           ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ic, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.preheader.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.i

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.i: ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.i.i
  br i1 %i.ig, label %iter.check552, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.i

iter.check552:                                    ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.i
  %i.ji = or disjoint i64 %i.iw, 1
  %umax537 = tail call i64 @llvm.umax.i64(i64 %i.ji, i64 %i.iv) ; 2 uses
  %i.jj = sub i64 %umax537, %i.iw                 ; 3 uses
  %min.iters.check538 = icmp ult i64 %i.jj, 4
  br i1 %min.iters.check538, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader, label %vector.main.loop.iter.check539

vector.main.loop.iter.check539:                   ; preds = %iter.check552
  %min.iters.check540 = icmp ult i64 %i.jj, 16
  %n.mod.vf557 = and i64 %umax537, 1              ; 3 uses
  %n.vec558 = sub nuw i64 %i.jj, %n.mod.vf557     ; 3 uses
  %i.jk = add i64 %n.vec558, %i.iw                ; 2 uses
  br i1 %min.iters.check540, label %vec.epilog.vector.body561.preheader, label %vector.body546.preheader

vector.body546.preheader:                         ; preds = %vector.main.loop.iter.check539
  %invariant.gep697 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vector.body546

vec.epilog.vector.body561.preheader:              ; preds = %vector.main.loop.iter.check539
  %invariant.gep699 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vec.epilog.vector.body561

vector.body546:                                   ; preds = %vector.body546.preheader, %vector.body546
  %index547 = phi i64 [ %index.next548, %vector.body546 ], [ 0, %vector.body546.preheader ] ; 2 uses
  %gep698 = getelementptr [8 x i8], ptr %invariant.gep697, i64 %index547 ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %gep698, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %gep698, i64 64
  %i.jn = getelementptr inbounds nuw i8, ptr %gep698, i64 96
  store <4 x double> %broadcast.splat560, ptr %gep698, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat560, ptr %i.jl, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat560, ptr %i.jm, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat560, ptr %i.jn, align 8, !tbaa !1891
  %index.next548 = add nuw i64 %index547, 16      ; 2 uses
  %i.jo = icmp eq i64 %index.next548, %n.vec558
  br i1 %i.jo, label %middle.block549, label %vector.body546, !llvm.loop !7195

middle.block549:                                  ; preds = %vector.body546
  %cmp.n550 = icmp eq i64 %n.mod.vf557, 0
  br i1 %cmp.n550, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader

vec.epilog.vector.body561:                        ; preds = %vec.epilog.vector.body561.preheader, %vec.epilog.vector.body561
  %index562 = phi i64 [ %index.next563, %vec.epilog.vector.body561 ], [ 0, %vec.epilog.vector.body561.preheader ] ; 2 uses
  %gep700 = getelementptr [8 x i8], ptr %invariant.gep699, i64 %index562
  store <4 x double> %broadcast.splat560, ptr %gep700, align 8, !tbaa !1891
  %index.next563 = add nuw i64 %index562, 4       ; 2 uses
  %i.jp = icmp eq i64 %index.next563, %n.vec558
  br i1 %i.jp, label %vec.epilog.middle.block564, label %vec.epilog.vector.body561, !llvm.loop !7196

vec.epilog.middle.block564:                       ; preds = %vec.epilog.vector.body561
  %cmp.n565 = icmp eq i64 %n.mod.vf557, 0
  br i1 %cmp.n565, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader: ; preds = %middle.block549, %iter.check552, %vec.epilog.middle.block564
  %.093.i.i.i.i.i.i.i.i.i.i.i.us.i.ph = phi i64 [ %i.jk, %middle.block549 ], [ %i.iw, %iter.check552 ], [ %i.jk, %vec.epilog.middle.block564 ]
  br label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i:  ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i
  %.093.i.i.i.i.i.i.i.i.i.i.i.us.i = phi i64 [ %i.jr, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i ], [ %.093.i.i.i.i.i.i.i.i.i.i.i.us.i.ph, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %.093.i.i.i.i.i.i.i.i.i.i.i.us.i
  store double %.sroa.03.0.i, ptr %i.jq, align 8, !tbaa !1891
  %i.jr = add nuw i64 %.093.i.i.i.i.i.i.i.i.i.i.i.us.i, 1 ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.iv
  br i1 %i.js, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7197

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.i: ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.i
  br i1 %i.ij, label %iter.check582, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.split.i

iter.check582:                                    ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.i
  %i.jt = or disjoint i64 %i.iw, 1
  %umax567 = tail call i64 @llvm.umax.i64(i64 %i.jt, i64 %i.iv) ; 2 uses
  %i.ju = sub i64 %umax567, %i.iw                 ; 3 uses
  %min.iters.check568 = icmp ult i64 %i.ju, 4
  br i1 %min.iters.check568, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader, label %vector.main.loop.iter.check569

vector.main.loop.iter.check569:                   ; preds = %iter.check582
  %min.iters.check570 = icmp ult i64 %i.ju, 16
  %n.mod.vf587 = and i64 %umax567, 1              ; 3 uses
  %n.vec588 = sub nuw i64 %i.ju, %n.mod.vf587     ; 3 uses
  %i.jv = add i64 %n.vec588, %i.iw                ; 2 uses
  br i1 %min.iters.check570, label %vec.epilog.vector.body591.preheader, label %vector.body576.preheader

vector.body576.preheader:                         ; preds = %vector.main.loop.iter.check569
  %invariant.gep693 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vector.body576

vec.epilog.vector.body591.preheader:              ; preds = %vector.main.loop.iter.check569
  %invariant.gep695 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vec.epilog.vector.body591

vector.body576:                                   ; preds = %vector.body576.preheader, %vector.body576
  %index577 = phi i64 [ %index.next578, %vector.body576 ], [ 0, %vector.body576.preheader ] ; 2 uses
  %gep694 = getelementptr [8 x i8], ptr %invariant.gep693, i64 %index577 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %gep694, i64 32
  %i.jx = getelementptr inbounds nuw i8, ptr %gep694, i64 64
  %i.jy = getelementptr inbounds nuw i8, ptr %gep694, i64 96
  store <4 x double> %broadcast.splat590, ptr %gep694, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat590, ptr %i.jw, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat590, ptr %i.jx, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat590, ptr %i.jy, align 8, !tbaa !1891
  %index.next578 = add nuw i64 %index577, 16      ; 2 uses
  %i.jz = icmp eq i64 %index.next578, %n.vec588
  br i1 %i.jz, label %middle.block579, label %vector.body576, !llvm.loop !7198

middle.block579:                                  ; preds = %vector.body576
  %cmp.n580 = icmp eq i64 %n.mod.vf587, 0
  br i1 %cmp.n580, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader

vec.epilog.vector.body591:                        ; preds = %vec.epilog.vector.body591.preheader, %vec.epilog.vector.body591
  %index592 = phi i64 [ %index.next593, %vec.epilog.vector.body591 ], [ 0, %vec.epilog.vector.body591.preheader ] ; 2 uses
  %gep696 = getelementptr [8 x i8], ptr %invariant.gep695, i64 %index592
  store <4 x double> %broadcast.splat590, ptr %gep696, align 8, !tbaa !1891
  %index.next593 = add nuw i64 %index592, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next593, %n.vec588
  br i1 %i.ka, label %vec.epilog.middle.block594, label %vec.epilog.vector.body591, !llvm.loop !7199

vec.epilog.middle.block594:                       ; preds = %vec.epilog.vector.body591
  %cmp.n595 = icmp eq i64 %n.mod.vf587, 0
  br i1 %cmp.n595, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader: ; preds = %middle.block579, %iter.check582, %vec.epilog.middle.block594
  %.093.i.i.i.i.i.i.i.i.i.i.i.us37.i.ph = phi i64 [ %i.jv, %middle.block579 ], [ %i.iw, %iter.check582 ], [ %i.jv, %vec.epilog.middle.block594 ]
  br label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i: ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i
  %.093.i.i.i.i.i.i.i.i.i.i.i.us37.i = phi i64 [ %i.kc, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i ], [ %.093.i.i.i.i.i.i.i.i.i.i.i.us37.i.ph, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %.093.i.i.i.i.i.i.i.i.i.i.i.us37.i
  store double %.sroa.03.0.i, ptr %i.kb, align 8, !tbaa !1891
  %i.kc = add nuw i64 %.093.i.i.i.i.i.i.i.i.i.i.i.us37.i, 1 ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.iv
  br i1 %i.kd, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7200

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.split.i: ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.i
  %i.ke = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.id) #37, !tbaa !3, !noalias !7201
  %18 = insertelement <2 x double> poison, double %i.ke, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %20 = fmul <2 x double> %17, %19
  %21 = tail call <2 x double> @llvm.round.v2f64(<2 x double> %20)
  %22 = fdiv <2 x double> %21, %19                ; 3 uses
  %23 = extractelement <2 x double> %22, i64 0
  %24 = fadd double %i.ih, %23                    ; 2 uses
  %i.kf = or disjoint i64 %i.iw, 1
  %umax597 = tail call i64 @llvm.umax.i64(i64 %i.kf, i64 %i.iv) ; 3 uses
  %i.kg = sub i64 %umax597, %i.iw                 ; 5 uses
  %min.iters.check598 = icmp ult i64 %i.kg, 4     ; 2 uses
  br i1 %i.ik, label %iter.check612, label %iter.check642

iter.check642:                                    ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.split.i
  br i1 %min.iters.check598, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader, label %vector.main.loop.iter.check629

vector.main.loop.iter.check629:                   ; preds = %iter.check642
  %min.iters.check630 = icmp ult i64 %i.kg, 16
  %n.mod.vf647 = and i64 %umax597, 1              ; 3 uses
  %n.vec648 = sub nuw i64 %i.kg, %n.mod.vf647     ; 3 uses
  %i.kh = add i64 %n.vec648, %i.iw                ; 2 uses
  %broadcast.splatinsert649 = insertelement <4 x double> poison, double %24, i64 0
  %broadcast.splat650 = shufflevector <4 x double> %broadcast.splatinsert649, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check630, label %vec.epilog.vector.body651.preheader, label %vector.body636.preheader

vector.body636.preheader:                         ; preds = %vector.main.loop.iter.check629
  %invariant.gep685 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vector.body636

vec.epilog.vector.body651.preheader:              ; preds = %vector.main.loop.iter.check629
  %invariant.gep687 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vec.epilog.vector.body651

vector.body636:                                   ; preds = %vector.body636.preheader, %vector.body636
  %index637 = phi i64 [ %index.next638, %vector.body636 ], [ 0, %vector.body636.preheader ] ; 2 uses
  %gep686 = getelementptr [8 x i8], ptr %invariant.gep685, i64 %index637 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %gep686, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %gep686, i64 64
  %i.kk = getelementptr inbounds nuw i8, ptr %gep686, i64 96
  store <4 x double> %broadcast.splat650, ptr %gep686, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat650, ptr %i.ki, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat650, ptr %i.kj, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat650, ptr %i.kk, align 8, !tbaa !1891
  %index.next638 = add nuw i64 %index637, 16      ; 2 uses
  %i.kl = icmp eq i64 %index.next638, %n.vec648
  br i1 %i.kl, label %middle.block639, label %vector.body636, !llvm.loop !7204

middle.block639:                                  ; preds = %vector.body636
  %cmp.n640 = icmp eq i64 %n.mod.vf647, 0
  br i1 %cmp.n640, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader

vec.epilog.vector.body651:                        ; preds = %vec.epilog.vector.body651.preheader, %vec.epilog.vector.body651
  %index652 = phi i64 [ %index.next653, %vec.epilog.vector.body651 ], [ 0, %vec.epilog.vector.body651.preheader ] ; 2 uses
  %gep688 = getelementptr [8 x i8], ptr %invariant.gep687, i64 %index652
  store <4 x double> %broadcast.splat650, ptr %gep688, align 8, !tbaa !1891
  %index.next653 = add nuw i64 %index652, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next653, %n.vec648
  br i1 %i.km, label %vec.epilog.middle.block654, label %vec.epilog.vector.body651, !llvm.loop !7205

vec.epilog.middle.block654:                       ; preds = %vec.epilog.vector.body651
  %cmp.n655 = icmp eq i64 %n.mod.vf647, 0
  br i1 %cmp.n655, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader: ; preds = %middle.block639, %iter.check642, %vec.epilog.middle.block654
  %.093.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.kh, %middle.block639 ], [ %i.iw, %iter.check642 ], [ %i.kh, %vec.epilog.middle.block654 ]
  br label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i

iter.check612:                                    ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.split.i
  br i1 %min.iters.check598, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader, label %vector.main.loop.iter.check599

vector.main.loop.iter.check599:                   ; preds = %iter.check612
  %min.iters.check600 = icmp ult i64 %i.kg, 16
  %n.mod.vf617 = and i64 %umax597, 1              ; 3 uses
  %n.vec618 = sub nuw i64 %i.kg, %n.mod.vf617     ; 3 uses
  %i.kn = add i64 %n.vec618, %i.iw                ; 2 uses
  %broadcast.splat620 = shufflevector <2 x double> %22, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 5 uses
  br i1 %min.iters.check600, label %vec.epilog.vector.body621.preheader, label %vector.body606.preheader

vector.body606.preheader:                         ; preds = %vector.main.loop.iter.check599
  %invariant.gep689 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vector.body606

vec.epilog.vector.body621.preheader:              ; preds = %vector.main.loop.iter.check599
  %invariant.gep691 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vec.epilog.vector.body621

vector.body606:                                   ; preds = %vector.body606.preheader, %vector.body606
  %index607 = phi i64 [ %index.next608, %vector.body606 ], [ 0, %vector.body606.preheader ] ; 2 uses
  %gep690 = getelementptr [8 x i8], ptr %invariant.gep689, i64 %index607 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %gep690, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %gep690, i64 64
  %i.kq = getelementptr inbounds nuw i8, ptr %gep690, i64 96
  store <4 x double> %broadcast.splat620, ptr %gep690, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat620, ptr %i.ko, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat620, ptr %i.kp, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat620, ptr %i.kq, align 8, !tbaa !1891
  %index.next608 = add nuw i64 %index607, 16      ; 2 uses
  %i.kr = icmp eq i64 %index.next608, %n.vec618
  br i1 %i.kr, label %middle.block609, label %vector.body606, !llvm.loop !7206

middle.block609:                                  ; preds = %vector.body606
  %cmp.n610 = icmp eq i64 %n.mod.vf617, 0
  br i1 %cmp.n610, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621.preheader, %vec.epilog.vector.body621
  %index622 = phi i64 [ %index.next623, %vec.epilog.vector.body621 ], [ 0, %vec.epilog.vector.body621.preheader ] ; 2 uses
  %gep692 = getelementptr [8 x i8], ptr %invariant.gep691, i64 %index622
  store <4 x double> %broadcast.splat620, ptr %gep692, align 8, !tbaa !1891
  %index.next623 = add nuw i64 %index622, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next623, %n.vec618
  br i1 %i.ks, label %vec.epilog.middle.block624, label %vec.epilog.vector.body621, !llvm.loop !7207

vec.epilog.middle.block624:                       ; preds = %vec.epilog.vector.body621
  %cmp.n625 = icmp eq i64 %n.mod.vf617, 0
  br i1 %cmp.n625, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader: ; preds = %middle.block609, %iter.check612, %vec.epilog.middle.block624
  %.093.i.i.i.i.i.i.i.i.i.i.i.us41.i.ph = phi i64 [ %i.kn, %middle.block609 ], [ %i.iw, %iter.check612 ], [ %i.kn, %vec.epilog.middle.block624 ]
  %25 = extractelement <2 x double> %22, i64 1
  br label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i: ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i
  %.093.i.i.i.i.i.i.i.i.i.i.i.us41.i = phi i64 [ %i.ku, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i ], [ %.093.i.i.i.i.i.i.i.i.i.i.i.us41.i.ph, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %.093.i.i.i.i.i.i.i.i.i.i.i.us41.i
  store double %25, ptr %i.kt, align 8, !tbaa !1891
  %i.ku = add nuw i64 %.093.i.i.i.i.i.i.i.i.i.i.i.us41.i, 1 ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.iv
  br i1 %i.kv, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7208

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.preheader.i: ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.i.i
  br i1 %i.ig, label %iter.check492, label %iter.check522

iter.check492:                                    ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.preheader.i
  %i.kw = or disjoint i64 %i.iw, 1
  %umax477 = tail call i64 @llvm.umax.i64(i64 %i.kw, i64 %i.iv) ; 2 uses
  %i.kx = sub i64 %umax477, %i.iw                 ; 3 uses
  %min.iters.check478 = icmp ult i64 %i.kx, 4
  br i1 %min.iters.check478, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader, label %vector.main.loop.iter.check479

vector.main.loop.iter.check479:                   ; preds = %iter.check492
  %min.iters.check480 = icmp ult i64 %i.kx, 16
  %n.mod.vf497 = and i64 %umax477, 1              ; 3 uses
  %n.vec498 = sub nuw i64 %i.kx, %n.mod.vf497     ; 3 uses
  %i.ky = add i64 %n.vec498, %i.iw                ; 2 uses
  br i1 %min.iters.check480, label %vec.epilog.vector.body501.preheader, label %vector.body486.preheader

vector.body486.preheader:                         ; preds = %vector.main.loop.iter.check479
  %invariant.gep705 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vector.body486

vec.epilog.vector.body501.preheader:              ; preds = %vector.main.loop.iter.check479
  %invariant.gep707 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vec.epilog.vector.body501

vector.body486:                                   ; preds = %vector.body486.preheader, %vector.body486
  %index487 = phi i64 [ %index.next488, %vector.body486 ], [ 0, %vector.body486.preheader ] ; 2 uses
  %gep706 = getelementptr [8 x i8], ptr %invariant.gep705, i64 %index487 ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %gep706, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %gep706, i64 64
  %i.lb = getelementptr inbounds nuw i8, ptr %gep706, i64 96
  store <4 x double> %broadcast.splat500, ptr %gep706, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat500, ptr %i.kz, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat500, ptr %i.la, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat500, ptr %i.lb, align 8, !tbaa !1891
  %index.next488 = add nuw i64 %index487, 16      ; 2 uses
  %i.lc = icmp eq i64 %index.next488, %n.vec498
  br i1 %i.lc, label %middle.block489, label %vector.body486, !llvm.loop !7209

middle.block489:                                  ; preds = %vector.body486
  %cmp.n490 = icmp eq i64 %n.mod.vf497, 0
  br i1 %cmp.n490, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader

vec.epilog.vector.body501:                        ; preds = %vec.epilog.vector.body501.preheader, %vec.epilog.vector.body501
  %index502 = phi i64 [ %index.next503, %vec.epilog.vector.body501 ], [ 0, %vec.epilog.vector.body501.preheader ] ; 2 uses
  %gep708 = getelementptr [8 x i8], ptr %invariant.gep707, i64 %index502
  store <4 x double> %broadcast.splat500, ptr %gep708, align 8, !tbaa !1891
  %index.next503 = add nuw i64 %index502, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next503, %n.vec498
  br i1 %i.ld, label %vec.epilog.middle.block504, label %vec.epilog.vector.body501, !llvm.loop !7210

vec.epilog.middle.block504:                       ; preds = %vec.epilog.vector.body501
  %cmp.n505 = icmp eq i64 %n.mod.vf497, 0
  br i1 %cmp.n505, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader: ; preds = %middle.block489, %iter.check492, %vec.epilog.middle.block504
  %.093.i.i.i.i.i.i.i.i.i.i.us15.i.us.i.ph = phi i64 [ %i.ky, %middle.block489 ], [ %i.iw, %iter.check492 ], [ %i.ky, %vec.epilog.middle.block504 ]
  br label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i: ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i
  %.093.i.i.i.i.i.i.i.i.i.i.us15.i.us.i = phi i64 [ %i.lf, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i ], [ %.093.i.i.i.i.i.i.i.i.i.i.us15.i.us.i.ph, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader ] ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %.093.i.i.i.i.i.i.i.i.i.i.us15.i.us.i
  store double %.sroa.03.0.i, ptr %i.le, align 8, !tbaa !1891
  %i.lf = add nuw i64 %.093.i.i.i.i.i.i.i.i.i.i.us15.i.us.i, 1 ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.iv
  br i1 %i.lg, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7211

iter.check522:                                    ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.preheader.i
  %i.lh = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ie) #37, !tbaa !3, !noalias !7201 ; 2 uses
  %i.li = fmul double %.sroa.03.0.i, %i.lh
  %i.lj = tail call double @llvm.round.f64(double %i.li)
  %i.lk = fdiv double %i.lj, %i.lh                ; 2 uses
  %i.ll = or disjoint i64 %i.iw, 1
  %umax507 = tail call i64 @llvm.umax.i64(i64 %i.ll, i64 %i.iv) ; 2 uses
  %i.lm = sub i64 %umax507, %i.iw                 ; 3 uses
  %min.iters.check508 = icmp ult i64 %i.lm, 4
  br i1 %min.iters.check508, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader, label %vector.main.loop.iter.check509

vector.main.loop.iter.check509:                   ; preds = %iter.check522
  %min.iters.check510 = icmp ult i64 %i.lm, 16
  %n.mod.vf527 = and i64 %umax507, 1              ; 3 uses
  %n.vec528 = sub nuw i64 %i.lm, %n.mod.vf527     ; 3 uses
  %i.ln = add i64 %n.vec528, %i.iw                ; 2 uses
  %broadcast.splatinsert529 = insertelement <4 x double> poison, double %i.lk, i64 0
  %broadcast.splat530 = shufflevector <4 x double> %broadcast.splatinsert529, <4 x double> poison, <4 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check510, label %vec.epilog.vector.body531.preheader, label %vector.body516.preheader

vector.body516.preheader:                         ; preds = %vector.main.loop.iter.check509
  %invariant.gep701 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vector.body516

vec.epilog.vector.body531.preheader:              ; preds = %vector.main.loop.iter.check509
  %invariant.gep703 = getelementptr [8 x i8], ptr %.val47, i64 %i.iw
  br label %vec.epilog.vector.body531

vector.body516:                                   ; preds = %vector.body516.preheader, %vector.body516
  %index517 = phi i64 [ %index.next518, %vector.body516 ], [ 0, %vector.body516.preheader ] ; 2 uses
  %gep702 = getelementptr [8 x i8], ptr %invariant.gep701, i64 %index517 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %gep702, i64 32
  %i.lp = getelementptr inbounds nuw i8, ptr %gep702, i64 64
  %i.lq = getelementptr inbounds nuw i8, ptr %gep702, i64 96
  store <4 x double> %broadcast.splat530, ptr %gep702, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat530, ptr %i.lo, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat530, ptr %i.lp, align 8, !tbaa !1891
  store <4 x double> %broadcast.splat530, ptr %i.lq, align 8, !tbaa !1891
  %index.next518 = add nuw i64 %index517, 16      ; 2 uses
  %i.lr = icmp eq i64 %index.next518, %n.vec528
  br i1 %i.lr, label %middle.block519, label %vector.body516, !llvm.loop !7212

middle.block519:                                  ; preds = %vector.body516
  %cmp.n520 = icmp eq i64 %n.mod.vf527, 0
  br i1 %cmp.n520, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader

vec.epilog.vector.body531:                        ; preds = %vec.epilog.vector.body531.preheader, %vec.epilog.vector.body531
  %index532 = phi i64 [ %index.next533, %vec.epilog.vector.body531 ], [ 0, %vec.epilog.vector.body531.preheader ] ; 2 uses
  %gep704 = getelementptr [8 x i8], ptr %invariant.gep703, i64 %index532
  store <4 x double> %broadcast.splat530, ptr %gep704, align 8, !tbaa !1891
  %index.next533 = add nuw i64 %index532, 4       ; 2 uses
  %i.ls = icmp eq i64 %index.next533, %n.vec528
  br i1 %i.ls, label %vec.epilog.middle.block534, label %vec.epilog.vector.body531, !llvm.loop !7213

vec.epilog.middle.block534:                       ; preds = %vec.epilog.vector.body531
  %cmp.n535 = icmp eq i64 %n.mod.vf527, 0
  br i1 %cmp.n535, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader: ; preds = %middle.block519, %iter.check522, %vec.epilog.middle.block534
  %.093.i.i.i.i.i.i.i.i.i.i.us15.i.i.ph = phi i64 [ %i.ln, %middle.block519 ], [ %i.iw, %iter.check522 ], [ %i.ln, %vec.epilog.middle.block534 ]
  br label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i:  ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i
  %.093.i.i.i.i.i.i.i.i.i.i.us15.i.i = phi i64 [ %i.lu, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i ], [ %.093.i.i.i.i.i.i.i.i.i.i.us15.i.i.ph, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %.093.i.i.i.i.i.i.i.i.i.i.us15.i.i
  store double %i.lk, ptr %i.lt, align 8, !tbaa !1891
  %i.lu = add nuw i64 %.093.i.i.i.i.i.i.i.i.i.i.us15.i.i, 1 ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %i.iv
  br i1 %i.lv, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7214

.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i:     ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i
  %.093.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.lx, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i ], [ %.093.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.val47, i64 %.093.i.i.i.i.i.i.i.i.i.i.i.i
  store double %24, ptr %i.lw, align 8, !tbaa !1891
  %i.lx = add nuw i64 %.093.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ly = icmp ult i64 %i.lx, %i.iv
  br i1 %i.ly, label %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7215

bb.ay:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.01592.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mn, %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.lz = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01592.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  br i1 %brmerge48.i, label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.ic, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ma = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ie) #37, !tbaa !3, !noalias !7216 ; 2 uses
  %i.mb = fmul double %.sroa.03.0.i, %i.ma
  %i.mc = tail call double @llvm.round.f64(double %i.mb)
  %i.md = fdiv double %i.mc, %i.ma
  br label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  br i1 %i.ij, label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.me = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.id) #37, !tbaa !3, !noalias !7216 ; 4 uses
  br i1 %i.ik, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.mf = fmul double %.sroa.03.0.i, %i.me
  %i.mg = tail call double @llvm.round.f64(double %i.mf)
  %i.mh = fdiv double %i.mg, %i.me
  br label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.mi = fmul double %i.ii, %i.me
  %i.mj = tail call double @llvm.round.f64(double %i.mi)
  %i.mk = fdiv double %i.mj, %i.me
  %i.ml = fadd double %i.ih, %i.mk
  br label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.ay
  %.2.i.i.i53.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, %bb.ay ], [ %i.md, %bb.ba ], [ %i.ml, %bb.be ], [ %.sroa.03.0.i, %bb.bb ], [ %i.mh, %bb.bd ]
  %gep.i54.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i52.i.i.i.i.i.i.i.i.i.i.i, i64 %i.lz
  store double %.2.i.i.i53.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i54.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1891
  %i.mm = add i64 %.01592.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.mn = and i64 %i.mm, %.01592.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i55.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mn, 0
  br i1 %.not.i55.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay, !llvm.loop !7219

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJdiEEEJdiEEEE7iterateIJNS3_20ConstantVectorReaderIdEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.i, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i, %.lr.ph94.i.i.i.i.i.i.i.i.i.i.split.us.i.i, %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block639, %vec.epilog.middle.block654, %middle.block609, %vec.epilog.middle.block624, %middle.block579, %vec.epilog.middle.block594, %middle.block549, %vec.epilog.middle.block564, %middle.block519, %vec.epilog.middle.block534, %middle.block489, %vec.epilog.middle.block504, %middle.block459, %vec.epilog.middle.block474, %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.mo = add nsw i32 %i.im, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.mo, %i.ev
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7220

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.mp = ashr i32 %i.er, 6
  %i.mq = and i32 %i.er, 63
  %i.mr = zext nneg i32 %i.mq to i64
  %notmask.i56.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.mr
  %i.ms = xor i64 %notmask.i56.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.mt = sext i32 %i.mp to i64
  %i.mu = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.mt
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !366
  %i.mw = and i64 %i.mv, %i.ms                    ; 2 uses
  %.not.i57.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mw, 0
  br i1 %.not.i57.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdiEEEJdiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %.preheader.i58.i.i.i.i.i.i.i.i.i.i.i

.preheader.i58.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.bf
  %i.mx = sext i32 %i.ev to i64
  %invariant.gep.i64.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.val47, i64 %i.mx
  %i.my = icmp eq i32 %.sroa.01.0.fr.i.i, 0
  %i.mz = icmp slt i32 %.sroa.01.0.fr.i.i, 0
  %i.na = uitofp nneg i32 %.sroa.01.0.fr.i.i to double
  %i.nb = sitofp i32 %.sroa.01.0.fr.i.i to double
  %i.nc = tail call double @llvm.fabs.f64(double %.sroa.03.0.i) ; 2 uses
  %i.nd = fcmp ueq double %i.nc, +inf             ; 2 uses
  %i.ne = tail call double @llvm.trunc.f64(double %.sroa.03.0.i) ; 2 uses
  %i.nf = fsub double %.sroa.03.0.i, %i.ne        ; 2 uses
  %i.ng = fcmp oeq double %i.nf, 0.000000e+00
  %i.nh = fcmp olt double %i.nc, f0x42B0000000000000
  %i.ni = tail call double @llvm.round.f64(double %.sroa.03.0.i)
  %brmerge50.i = or i1 %i.nd, %i.my
  %.sroa.03.0.mux51.i = select i1 %i.nd, double %.sroa.03.0.i, double %i.ni
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i58.i.i.i.i.i.i.i.i.i.i.i
  %.040.i65.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mw, %.preheader.i58.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nx, %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.nj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.040.i65.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  br i1 %brmerge50.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.mz, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nk = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.nb) #37, !tbaa !3, !noalias !7221 ; 2 uses
  %i.nl = fmul double %.sroa.03.0.i, %i.nk
  %i.nm = tail call double @llvm.round.f64(double %i.nl)
  %i.nn = fdiv double %i.nm, %i.nk
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.ng, label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.no = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.na) #37, !tbaa !3, !noalias !7221 ; 4 uses
  br i1 %i.nh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.np = fmul double %.sroa.03.0.i, %i.no
  %i.nq = tail call double @llvm.round.f64(double %i.np)
  %i.nr = fdiv double %i.nq, %i.no
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ns = fmul double %i.nf, %i.no
  %i.nt = tail call double @llvm.round.f64(double %i.ns)
  %i.nu = fdiv double %i.nt, %i.no
  %i.nv = fadd double %i.ne, %i.nu
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.bg
  %.2.i.i.i67.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.03.0.mux51.i, %bb.bg ], [ %i.nn, %bb.bi ], [ %i.nv, %bb.bm ], [ %.sroa.03.0.i, %bb.bj ], [ %i.nr, %bb.bl ]
  %gep.i68.i.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i64.i.i.i.i.i.i.i.i.i.i.i, i64 %i.nj
  store double %.2.i.i.i67.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i68.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !1891
  %i.nw = add nsw i64 %.040.i65.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.nx = and i64 %i.nw, %.040.i65.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i69.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nx, 0
  br i1 %.not10.i69.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJdiEEEJdiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.bg, !llvm.loop !7188

bb.bn:                                            ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderIdEC2ERNS0_14ConstantVectorIdEE.exit.i
  %i.ny = getelementptr inbounds nuw i8, ptr %.val2.val.val.i.i, i64 128
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !1495 ; 6 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !716, !range !392, !noundef !393
  %i.od = trunc nuw i8 %i.oc to i1
  br i1 %i.od, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i48.i.i, label %bb.bo

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i48.i.i: ; preds = %bb.bn
  %.0.in.pre.i.i.i.i.i.i.i49.i.i = load i8, ptr %i.oa, align 4, !tbaa !365, !range !392
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i16.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.oe = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !717
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %bb.bp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !723 ; 6 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !724
  %i.ol = icmp eq i32 %i.oi, %i.ok
  br i1 %i.ol, label %bb.bq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.om = load ptr, ptr %1, align 8, !tbaa !725   ; 2 uses
  %.not.i.i7.i.i.i.i.i.i.i.i = icmp sgt i32 %i.oi, 0
  br i1 %.not.i.i7.i.i.i.i.i.i.i.i, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i

bb.br:                                            ; preds = %bb.bq
  %i.on = and i32 %i.oi, 2147483584               ; 3 uses
  %i.oo = zext nneg i32 %i.on to i64
  %.not37.i.i.not.i.i.i.i.i.i.i42.i.i400.not = icmp eq i32 %i.on, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i42.i.i400.not, label %.critedge.i.i.i.i.i.i.i.i.i43.i.i, label %.lr.ph402

bb.bs:                                            ; preds = %.lr.ph402
  %indvars.iv.next.i.i.i.i.i.i.i47.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i41.i.i401, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i42.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i47.i.i, %i.oo
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i42.i.i, label %.lr.ph402, label %.critedge.i.i.i.i.i.i.i.i.i43.i.i, !llvm.loop !726

.lr.ph402:                                        ; preds = %bb.br, %bb.bs
  %indvars.iv.i.i.i.i.i.i.i41.i.i401 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i47.i.i, %bb.bs ], [ 0, %bb.br ] ; 2 uses
  %i.op = lshr exact i64 %indvars.iv.i.i.i.i.i.i.i41.i.i401, 3
  %i.oq = getelementptr inbounds nuw i8, ptr %i.om, i64 %i.op
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !366
  %i.os = icmp eq i64 %i.or, -1
  br i1 %i.os, label %bb.bs, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i, !llvm.loop !726

.critedge.i.i.i.i.i.i.i.i.i43.i.i:                ; preds = %bb.bs, %bb.br
  %.not38.i.i.i.i.i.i.i.i.i44.i.i = icmp eq i32 %i.oi, %i.on
  br i1 %.not38.i.i.i.i.i.i.i.i.i44.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i, label %bb.bt

bb.bt:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i43.i.i
  %i.ot = lshr i32 %i.oi, 6
  %i.ou = and i32 %i.oi, 63
  %i.ov = zext nneg i32 %i.ou to i64
  %notmask.i40.i.i.i.i.i.i.i.i.i45.i.i = shl nsw i64 -1, %i.ov
  %i.ow = zext nneg i32 %i.ot to i64
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %i.ow
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !366
  %.demorgan.i.i.i.i.i.i.i46.i.i = or i64 %i.oy, %notmask.i40.i.i.i.i.i.i.i.i.i45.i.i
  %i.oz = icmp eq i64 %.demorgan.i.i.i.i.i.i.i46.i.i, -1
  %i.pa = zext i1 %i.oz to i16
  %i.pb = or disjoint i16 %i.pa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i: ; preds = %.lr.ph402, %bb.bt, %.critedge.i.i.i.i.i.i.i.i.i43.i.i, %bb.bq, %bb.bp, %bb.bo
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i15.i.i = phi i16 [ 256, %bb.bp ], [ 256, %bb.bo ], [ 257, %bb.bq ], [ 257, %.critedge.i.i.i.i.i.i.i.i.i43.i.i ], [ %i.pb, %bb.bt ], [ 256, %.lr.ph402 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i15.i.i, ptr %i.oa, align 4
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfiEEEJfiEEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EERKSI_IKNS0_4TypeEERNS1_7EvalCtxERSK_:bb.a
bb.af:                                            ; preds = %bb.ae
  %i.ey = add i32 %i.ev, 63                       ; 2 uses
  %i.ez = srem i32 %i.ey, 64
  %i.fa = sub nsw i32 %i.ey, %i.ez                ; 6 uses
  %i.fb = and i32 %i.ex, -64                      ; 6 uses
  %i.fc = icmp slt i32 %i.fb, %i.fa
  br i1 %i.fc, label %bb.ag, label %bb.ao

bb.ag:                                            ; preds = %bb.af
  %i.fd = ashr i32 %i.ex, 6
  %i.fe = and i32 %i.ex, 63
  %i.ff = zext nneg i32 %i.fe to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ff
  %i.fg = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.fh = sub nsw i32 %i.fa, %i.ev                ; 2 uses
  %i.fi = zext nneg i32 %i.fh to i64
  %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.fi
  %i.fj = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.fk = sub nsw i32 64, %i.fh
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = shl i64 %i.fj, %i.fl
  %i.fn = and i64 %i.fm, %i.fg
  %i.fo = sext i32 %i.fd to i64
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fo
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !366
  %i.fr = and i64 %i.fn, %i.fq                    ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfiEEEJfiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %bb.ag
  %i.fs = sext i32 %i.fb to i64
  %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.val47, i64 %i.fs
  %i.ft = icmp eq i32 %.sroa.01.0.fr.i.i, 0
  %i.fu = icmp slt i32 %.sroa.01.0.fr.i.i, 0
  %i.fv = uitofp nneg i32 %.sroa.01.0.fr.i.i to double
  %i.fw = sitofp i32 %.sroa.01.0.fr.i.i to double
  %i.fx = tail call float @llvm.fabs.f32(float %.sroa.03.0.i)
  %i.fy = fcmp ueq float %i.fx, +inf              ; 2 uses
  %i.fz = tail call float @llvm.trunc.f32(float %.sroa.03.0.i) ; 2 uses
  %i.ga = fsub float %.sroa.03.0.i, %i.fz         ; 2 uses
  %i.gb = fpext nnan float %i.ga to double
  %i.gc = fcmp oeq float %i.ga, 0.000000e+00
  %i.gd = fpext float %.sroa.03.0.i to double     ; 3 uses
  %i.ge = tail call double @llvm.fabs.f64(double %i.gd)
  %i.gf = fcmp olt double %i.ge, f0x42B0000000000000
  %i.gg = tail call float @llvm.round.f32(float %.sroa.03.0.i)
  %brmerge44.i = or i1 %i.fy, %i.ft
  %.sroa.03.0.mux45.i = select i1 %i.fy, float %.sroa.03.0.i, float %i.gg
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %.042.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gy, %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gh = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.042.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  br i1 %brmerge44.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gi = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fw) #37, !tbaa !3, !noalias !7525 ; 2 uses
  %i.gj = fmul double %i.gi, %i.gd
  %i.gk = tail call double @llvm.round.f64(double %i.gj)
  %i.gl = fdiv double %i.gk, %i.gi
  %i.gm = fptrunc double %i.gl to float
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  br i1 %i.gc, label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gn = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.fv) #37, !tbaa !3, !noalias !7525 ; 4 uses
  br i1 %i.gf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.go = fmul double %i.gn, %i.gd
  %i.gp = tail call double @llvm.round.f64(double %i.go)
  %i.gq = fdiv double %i.gp, %i.gn
  %i.gr = fptrunc double %i.gq to float
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.gs = fmul double %i.gn, %i.gb
  %i.gt = tail call double @llvm.round.f64(double %i.gs)
  %i.gu = fdiv double %i.gt, %i.gn
  %i.gv = fptrunc double %i.gu to float
  %i.gw = fadd float %i.fz, %i.gv
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.an, %bb.am, %bb.ak, %bb.aj, %bb.ah
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi float [ %.sroa.03.0.mux45.i, %bb.ah ], [ %i.gm, %bb.aj ], [ %i.gw, %bb.an ], [ %.sroa.03.0.i, %bb.ak ], [ %i.gr, %bb.am ]
  %gep.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.gh
  store float %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !2099
  %i.gx = add nsw i64 %.042.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gy = and i64 %i.gx, %.042.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfiEEEJfiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.ah, !llvm.loop !7528

bb.ao:                                            ; preds = %bb.af
  %.not32.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ev, %i.fa
  br i1 %.not32.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gz = sdiv i32 %i.ev, 64                      ; 2 uses
  %i.ha = sub nsw i32 %i.fa, %i.ev                ; 2 uses
  %i.hb = zext nneg i32 %i.ha to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.hb
  %i.hc = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.hd = sub nsw i32 64, %i.ha
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl i64 %i.hc, %i.he
  %i.hg = sext i32 %i.gz to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !366
  %i.hj = and i64 %i.hi, %i.hf                    ; 2 uses
  %.not.i36.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hj, 0
  br i1 %.not.i36.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i, label %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i

.preheader.i37.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.ap
  %i.hk = shl nsw i32 %i.gz, 6
  %i.hl = sext i32 %i.hk to i64
  %invariant.gep.i43.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.val47, i64 %i.hl
  %i.hm = icmp eq i32 %.sroa.01.0.fr.i.i, 0
  %i.hn = icmp slt i32 %.sroa.01.0.fr.i.i, 0
  %i.ho = uitofp nneg i32 %.sroa.01.0.fr.i.i to double
  %i.hp = sitofp i32 %.sroa.01.0.fr.i.i to double
  %i.hq = tail call float @llvm.fabs.f32(float %.sroa.03.0.i)
  %i.hr = fcmp ueq float %i.hq, +inf              ; 2 uses
  %i.hs = tail call float @llvm.trunc.f32(float %.sroa.03.0.i) ; 2 uses
  %i.ht = fsub float %.sroa.03.0.i, %i.hs         ; 2 uses
  %i.hu = fpext nnan float %i.ht to double
  %i.hv = fcmp oeq float %i.ht, 0.000000e+00
  %i.hw = fpext float %.sroa.03.0.i to double     ; 3 uses
  %i.hx = tail call double @llvm.fabs.f64(double %i.hw)
  %i.hy = fcmp olt double %i.hx, f0x42B0000000000000
  %i.hz = tail call float @llvm.round.f32(float %.sroa.03.0.i)
  %brmerge46.i = or i1 %i.hr, %i.hm
  %.sroa.03.0.mux47.i = select i1 %i.hr, float %.sroa.03.0.i, float %i.hz
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i
  %.042.i44.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hj, %.preheader.i37.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ir, %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ia = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.042.i44.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  br i1 %brmerge46.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.hn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ib = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.hp) #37, !tbaa !3, !noalias !7529 ; 2 uses
  %i.ic = fmul double %i.ib, %i.hw
  %i.id = tail call double @llvm.round.f64(double %i.ic)
  %i.ie = fdiv double %i.id, %i.ib
  %i.if = fptrunc double %i.ie to float
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  br i1 %i.hv, label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ig = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ho) #37, !tbaa !3, !noalias !7529 ; 4 uses
  br i1 %i.hy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ih = fmul double %i.ig, %i.hw
  %i.ii = tail call double @llvm.round.f64(double %i.ih)
  %i.ij = fdiv double %i.ii, %i.ig
  %i.ik = fptrunc double %i.ij to float
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.il = fmul double %i.ig, %i.hu
  %i.im = tail call double @llvm.round.f64(double %i.il)
  %i.in = fdiv double %i.im, %i.ig
  %i.io = fptrunc double %i.in to float
  %i.ip = fadd float %i.hs, %i.io
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aw, %bb.av, %bb.at, %bb.as, %bb.aq
  %.2.i.i.i46.i.i.i.i.i.i.i.i.i.i.i = phi float [ %.sroa.03.0.mux47.i, %bb.aq ], [ %i.if, %bb.as ], [ %i.ip, %bb.aw ], [ %.sroa.03.0.i, %bb.at ], [ %i.ik, %bb.av ]
  %gep.i47.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i43.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ia
  store float %.2.i.i.i46.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i47.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !2099
  %i.iq = add i64 %.042.i44.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ir = and i64 %i.iq, %.042.i44.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i48.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ir, 0
  br i1 %.not10.i48.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, !llvm.loop !7528

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i45.i.i.i.i.i.i.i.i.i.i.i, %bb.ap, %bb.ao
  %i.is = add nsw i32 %i.fa, 64                   ; 2 uses
  %.not3373.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.is, %i.fb
  br i1 %.not3373.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i:           ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i
  %i.it = icmp eq i32 %.sroa.01.0.fr.i.i, 0       ; 2 uses
  %i.iu = icmp slt i32 %.sroa.01.0.fr.i.i, 0      ; 2 uses
  %i.iv = uitofp nneg i32 %.sroa.01.0.fr.i.i to double ; 2 uses
  %i.iw = sitofp i32 %.sroa.01.0.fr.i.i to double ; 2 uses
  %i.ix = tail call float @llvm.fabs.f32(float %.sroa.03.0.i)
  %i.iy = fcmp ueq float %i.ix, +inf              ; 4 uses
  %i.iz = tail call float @llvm.trunc.f32(float %.sroa.03.0.i) ; 3 uses
  %i.ja = fsub float %.sroa.03.0.i, %i.iz         ; 2 uses
  %16 = fcmp oeq float %i.ja, 0.000000e+00        ; 2 uses
  %17 = insertelement <2 x float> poison, float %i.ja, i64 0
  %18 = insertelement <2 x float> %17, float %.sroa.03.0.i, i64 1
  %19 = fpext <2 x float> %18 to <2 x double>     ; 3 uses
  %20 = extractelement <2 x double> %19, i64 1    ; 4 uses
  %i.jb = tail call double @llvm.fabs.f64(double %20)
  %i.jc = fcmp olt double %i.jb, f0x42B0000000000000 ; 2 uses
  %i.jd = tail call float @llvm.round.f32(float %.sroa.03.0.i)
  %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i = select i1 %i.iy, float %.sroa.03.0.i, float %i.jd ; 3 uses
  %brmerge48.i = or i1 %i.iy, %i.it
  %broadcast.splatinsert547 = insertelement <8 x float> poison, float %.sroa.03.0.i, i64 0
  %broadcast.splat548 = shufflevector <8 x float> %broadcast.splatinsert547, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert517 = insertelement <8 x float> poison, float %.sroa.03.0.i, i64 0
  %broadcast.splat518 = shufflevector <8 x float> %broadcast.splatinsert517, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert457 = insertelement <8 x float> poison, float %.sroa.03.0.i, i64 0
  %broadcast.splat458 = shufflevector <8 x float> %broadcast.splatinsert457, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert427 = insertelement <8 x float> poison, float %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, i64 0
  %broadcast.splat428 = shufflevector <8 x float> %broadcast.splatinsert427, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %21 = extractelement <2 x double> %19, i64 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim.exit49.i.i.i.i.i.i.i.i.i.i.i
  %.not34.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ex, %i.fb
  br i1 %.not34.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfiEEEJfiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.bf

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.je = phi i32 [ %i.nl, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.074.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.je, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.jf = sdiv i32 %.074.i.i.i.i.i.i.i.i.i.i.i, 64 ; 3 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.jg
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !366 ; 2 uses
  switch i64 %i.ji, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 -1, label %bb.ax
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.jj = shl nsw i32 %i.jf, 6
  %i.jk = sext i32 %i.jj to i64
  %invariant.gep.i52.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.val47, i64 %i.jk
  br label %bb.ay

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = shl nsw i32 %i.jf, 6                    ; 2 uses
  %i.jm = add i32 %i.jl, 64
  %i.jn = sext i32 %i.jm to i64                   ; 13 uses
  %.0.off.i.i.i.i.i.i.i.i.i.i.i = add i32 %.074.i.i.i.i.i.i.i.i.i.i.i, 127
  %.not99.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i.i.i.i, 64
  br i1 %.not99.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph98.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ax
  %i.jo = sext i32 %i.jl to i64                   ; 40 uses
  br i1 %i.it, label %iter.check420, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.i.i

iter.check420:                                    ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jp = or disjoint i64 %i.jo, 1
  %umax405 = tail call i64 @llvm.umax.i64(i64 %i.jp, i64 %i.jn) ; 2 uses
  %i.jq = sub i64 %umax405, %i.jo                 ; 3 uses
  %min.iters.check406 = icmp ult i64 %i.jq, 8
  br i1 %min.iters.check406, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader, label %vector.main.loop.iter.check407

vector.main.loop.iter.check407:                   ; preds = %iter.check420
  %min.iters.check408 = icmp ult i64 %i.jq, 32
  %n.mod.vf425 = and i64 %umax405, 1              ; 3 uses
  %n.vec426 = sub nuw i64 %i.jq, %n.mod.vf425     ; 3 uses
  %i.jr = add i64 %n.vec426, %i.jo                ; 2 uses
  br i1 %min.iters.check408, label %vec.epilog.vector.body429.preheader, label %vector.body414.preheader

vector.body414.preheader:                         ; preds = %vector.main.loop.iter.check407
  %invariant.gep667 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vector.body414

vec.epilog.vector.body429.preheader:              ; preds = %vector.main.loop.iter.check407
  %invariant.gep669 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vec.epilog.vector.body429

vector.body414:                                   ; preds = %vector.body414.preheader, %vector.body414
  %index415 = phi i64 [ %index.next416, %vector.body414 ], [ 0, %vector.body414.preheader ] ; 2 uses
  %gep668 = getelementptr [4 x i8], ptr %invariant.gep667, i64 %index415 ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %gep668, i64 32
  %i.jt = getelementptr inbounds nuw i8, ptr %gep668, i64 64
  %i.ju = getelementptr inbounds nuw i8, ptr %gep668, i64 96
  store <8 x float> %broadcast.splat428, ptr %gep668, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat428, ptr %i.js, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat428, ptr %i.jt, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat428, ptr %i.ju, align 4, !tbaa !2099
  %index.next416 = add nuw i64 %index415, 32      ; 2 uses
  %i.jv = icmp eq i64 %index.next416, %n.vec426
  br i1 %i.jv, label %middle.block417, label %vector.body414, !llvm.loop !7532

middle.block417:                                  ; preds = %vector.body414
  %cmp.n418 = icmp eq i64 %n.mod.vf425, 0
  br i1 %cmp.n418, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader

vec.epilog.vector.body429:                        ; preds = %vec.epilog.vector.body429.preheader, %vec.epilog.vector.body429
  %index430 = phi i64 [ %index.next431, %vec.epilog.vector.body429 ], [ 0, %vec.epilog.vector.body429.preheader ] ; 2 uses
  %gep670 = getelementptr [4 x i8], ptr %invariant.gep669, i64 %index430
  store <8 x float> %broadcast.splat428, ptr %gep670, align 4, !tbaa !2099
  %index.next431 = add nuw i64 %index430, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next431, %n.vec426
  br i1 %i.jw, label %vec.epilog.middle.block432, label %vec.epilog.vector.body429, !llvm.loop !7533

vec.epilog.middle.block432:                       ; preds = %vec.epilog.vector.body429
  %cmp.n433 = icmp eq i64 %n.mod.vf425, 0
  br i1 %cmp.n433, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader: ; preds = %middle.block417, %iter.check420, %vec.epilog.middle.block432
  %.097.i.i.i.i.i.i.i.i.i.i.us.i.i.ph = phi i64 [ %i.jr, %middle.block417 ], [ %i.jo, %iter.check420 ], [ %i.jr, %vec.epilog.middle.block432 ]
  br label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i:        ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i
  %.097.i.i.i.i.i.i.i.i.i.i.us.i.i = phi i64 [ %i.jy, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i ], [ %.097.i.i.i.i.i.i.i.i.i.i.us.i.i.ph, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i.preheader ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.097.i.i.i.i.i.i.i.i.i.i.us.i.i
  store float %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, ptr %i.jx, align 4, !tbaa !2099
  %i.jy = add nuw i64 %.097.i.i.i.i.i.i.i.i.i.i.us.i.i, 1 ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jn
  br i1 %i.jz, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7534

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.i.i:           ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.iu, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.preheader.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.i

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.i: ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.i.i
  br i1 %i.iy, label %iter.check510, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.i

iter.check510:                                    ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.i
  %i.ka = or disjoint i64 %i.jo, 1
  %umax495 = tail call i64 @llvm.umax.i64(i64 %i.ka, i64 %i.jn) ; 2 uses
  %i.kb = sub i64 %umax495, %i.jo                 ; 3 uses
  %min.iters.check496 = icmp ult i64 %i.kb, 8
  br i1 %min.iters.check496, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader, label %vector.main.loop.iter.check497

vector.main.loop.iter.check497:                   ; preds = %iter.check510
  %min.iters.check498 = icmp ult i64 %i.kb, 32
  %n.mod.vf515 = and i64 %umax495, 1              ; 3 uses
  %n.vec516 = sub nuw i64 %i.kb, %n.mod.vf515     ; 3 uses
  %i.kc = add i64 %n.vec516, %i.jo                ; 2 uses
  br i1 %min.iters.check498, label %vec.epilog.vector.body519.preheader, label %vector.body504.preheader

vector.body504.preheader:                         ; preds = %vector.main.loop.iter.check497
  %invariant.gep655 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vector.body504

vec.epilog.vector.body519.preheader:              ; preds = %vector.main.loop.iter.check497
  %invariant.gep657 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vec.epilog.vector.body519

vector.body504:                                   ; preds = %vector.body504.preheader, %vector.body504
  %index505 = phi i64 [ %index.next506, %vector.body504 ], [ 0, %vector.body504.preheader ] ; 2 uses
  %gep656 = getelementptr [4 x i8], ptr %invariant.gep655, i64 %index505 ; 4 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %gep656, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %gep656, i64 64
  %i.kf = getelementptr inbounds nuw i8, ptr %gep656, i64 96
  store <8 x float> %broadcast.splat518, ptr %gep656, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat518, ptr %i.kd, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat518, ptr %i.ke, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat518, ptr %i.kf, align 4, !tbaa !2099
  %index.next506 = add nuw i64 %index505, 32      ; 2 uses
  %i.kg = icmp eq i64 %index.next506, %n.vec516
  br i1 %i.kg, label %middle.block507, label %vector.body504, !llvm.loop !7535

middle.block507:                                  ; preds = %vector.body504
  %cmp.n508 = icmp eq i64 %n.mod.vf515, 0
  br i1 %cmp.n508, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader

vec.epilog.vector.body519:                        ; preds = %vec.epilog.vector.body519.preheader, %vec.epilog.vector.body519
  %index520 = phi i64 [ %index.next521, %vec.epilog.vector.body519 ], [ 0, %vec.epilog.vector.body519.preheader ] ; 2 uses
  %gep658 = getelementptr [4 x i8], ptr %invariant.gep657, i64 %index520
  store <8 x float> %broadcast.splat518, ptr %gep658, align 4, !tbaa !2099
  %index.next521 = add nuw i64 %index520, 8       ; 2 uses
  %i.kh = icmp eq i64 %index.next521, %n.vec516
  br i1 %i.kh, label %vec.epilog.middle.block522, label %vec.epilog.vector.body519, !llvm.loop !7536

vec.epilog.middle.block522:                       ; preds = %vec.epilog.vector.body519
  %cmp.n523 = icmp eq i64 %n.mod.vf515, 0
  br i1 %cmp.n523, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader: ; preds = %middle.block507, %iter.check510, %vec.epilog.middle.block522
  %.097.i.i.i.i.i.i.i.i.i.i.i.us.i.ph = phi i64 [ %i.kc, %middle.block507 ], [ %i.jo, %iter.check510 ], [ %i.kc, %vec.epilog.middle.block522 ]
  br label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i:  ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i
  %.097.i.i.i.i.i.i.i.i.i.i.i.us.i = phi i64 [ %i.kj, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i ], [ %.097.i.i.i.i.i.i.i.i.i.i.i.us.i.ph, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i.preheader ] ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.097.i.i.i.i.i.i.i.i.i.i.i.us.i
  store float %.sroa.03.0.i, ptr %i.ki, align 4, !tbaa !2099
  %i.kj = add nuw i64 %.097.i.i.i.i.i.i.i.i.i.i.i.us.i, 1 ; 2 uses
  %i.kk = icmp ult i64 %i.kj, %i.jn
  br i1 %i.kk, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7537

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.i: ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.i
  br i1 %16, label %iter.check540, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.split.i

iter.check540:                                    ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.i
  %i.kl = or disjoint i64 %i.jo, 1
  %umax525 = tail call i64 @llvm.umax.i64(i64 %i.kl, i64 %i.jn) ; 2 uses
  %i.km = sub i64 %umax525, %i.jo                 ; 3 uses
  %min.iters.check526 = icmp ult i64 %i.km, 8
  br i1 %min.iters.check526, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader, label %vector.main.loop.iter.check527

vector.main.loop.iter.check527:                   ; preds = %iter.check540
  %min.iters.check528 = icmp ult i64 %i.km, 32
  %n.mod.vf545 = and i64 %umax525, 1              ; 3 uses
  %n.vec546 = sub nuw i64 %i.km, %n.mod.vf545     ; 3 uses
  %i.kn = add i64 %n.vec546, %i.jo                ; 2 uses
  br i1 %min.iters.check528, label %vec.epilog.vector.body549.preheader, label %vector.body534.preheader

vector.body534.preheader:                         ; preds = %vector.main.loop.iter.check527
  %invariant.gep651 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vector.body534

vec.epilog.vector.body549.preheader:              ; preds = %vector.main.loop.iter.check527
  %invariant.gep653 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vec.epilog.vector.body549

vector.body534:                                   ; preds = %vector.body534.preheader, %vector.body534
  %index535 = phi i64 [ %index.next536, %vector.body534 ], [ 0, %vector.body534.preheader ] ; 2 uses
  %gep652 = getelementptr [4 x i8], ptr %invariant.gep651, i64 %index535 ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %gep652, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %gep652, i64 64
  %i.kq = getelementptr inbounds nuw i8, ptr %gep652, i64 96
  store <8 x float> %broadcast.splat548, ptr %gep652, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat548, ptr %i.ko, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat548, ptr %i.kp, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat548, ptr %i.kq, align 4, !tbaa !2099
  %index.next536 = add nuw i64 %index535, 32      ; 2 uses
  %i.kr = icmp eq i64 %index.next536, %n.vec546
  br i1 %i.kr, label %middle.block537, label %vector.body534, !llvm.loop !7538

middle.block537:                                  ; preds = %vector.body534
  %cmp.n538 = icmp eq i64 %n.mod.vf545, 0
  br i1 %cmp.n538, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader

vec.epilog.vector.body549:                        ; preds = %vec.epilog.vector.body549.preheader, %vec.epilog.vector.body549
  %index550 = phi i64 [ %index.next551, %vec.epilog.vector.body549 ], [ 0, %vec.epilog.vector.body549.preheader ] ; 2 uses
  %gep654 = getelementptr [4 x i8], ptr %invariant.gep653, i64 %index550
  store <8 x float> %broadcast.splat548, ptr %gep654, align 4, !tbaa !2099
  %index.next551 = add nuw i64 %index550, 8       ; 2 uses
  %i.ks = icmp eq i64 %index.next551, %n.vec546
  br i1 %i.ks, label %vec.epilog.middle.block552, label %vec.epilog.vector.body549, !llvm.loop !7539

vec.epilog.middle.block552:                       ; preds = %vec.epilog.vector.body549
  %cmp.n553 = icmp eq i64 %n.mod.vf545, 0
  br i1 %cmp.n553, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader: ; preds = %middle.block537, %iter.check540, %vec.epilog.middle.block552
  %.097.i.i.i.i.i.i.i.i.i.i.i.us37.i.ph = phi i64 [ %i.kn, %middle.block537 ], [ %i.jo, %iter.check540 ], [ %i.kn, %vec.epilog.middle.block552 ]
  br label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i: ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i
  %.097.i.i.i.i.i.i.i.i.i.i.i.us37.i = phi i64 [ %i.ku, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i ], [ %.097.i.i.i.i.i.i.i.i.i.i.i.us37.i.ph, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i.preheader ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.097.i.i.i.i.i.i.i.i.i.i.i.us37.i
  store float %.sroa.03.0.i, ptr %i.kt, align 4, !tbaa !2099
  %i.ku = add nuw i64 %.097.i.i.i.i.i.i.i.i.i.i.i.us37.i, 1 ; 2 uses
  %i.kv = icmp ult i64 %i.ku, %i.jn
  br i1 %i.kv, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7540

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.split.i: ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.i
  %i.kw = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.iv) #37, !tbaa !3, !noalias !7541
  %22 = insertelement <2 x double> poison, double %i.kw, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %24 = fmul <2 x double> %23, %19
  %25 = tail call <2 x double> @llvm.round.v2f64(<2 x double> %24)
  %26 = fdiv <2 x double> %25, %23                ; 2 uses
  %27 = extractelement <2 x double> %26, i64 0
  %28 = fptrunc double %27 to float
  %29 = fadd float %i.iz, %28                     ; 2 uses
  %30 = extractelement <2 x double> %26, i64 1
  %i.kx = fptrunc double %30 to float             ; 2 uses
  %i.ky = or disjoint i64 %i.jo, 1
  %umax555 = tail call i64 @llvm.umax.i64(i64 %i.ky, i64 %i.jn) ; 3 uses
  %i.kz = sub i64 %umax555, %i.jo                 ; 5 uses
  %min.iters.check556 = icmp ult i64 %i.kz, 8     ; 2 uses
  br i1 %i.jc, label %iter.check570, label %iter.check600

iter.check600:                                    ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.split.i
  br i1 %min.iters.check556, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader, label %vector.main.loop.iter.check587

vector.main.loop.iter.check587:                   ; preds = %iter.check600
  %min.iters.check588 = icmp ult i64 %i.kz, 32
  %n.mod.vf605 = and i64 %umax555, 1              ; 3 uses
  %n.vec606 = sub nuw i64 %i.kz, %n.mod.vf605     ; 3 uses
  %i.la = add i64 %n.vec606, %i.jo                ; 2 uses
  %broadcast.splatinsert607 = insertelement <8 x float> poison, float %29, i64 0
  %broadcast.splat608 = shufflevector <8 x float> %broadcast.splatinsert607, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check588, label %vec.epilog.vector.body609.preheader, label %vector.body594.preheader

vector.body594.preheader:                         ; preds = %vector.main.loop.iter.check587
  %invariant.gep643 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vector.body594

vec.epilog.vector.body609.preheader:              ; preds = %vector.main.loop.iter.check587
  %invariant.gep645 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vec.epilog.vector.body609

vector.body594:                                   ; preds = %vector.body594.preheader, %vector.body594
  %index595 = phi i64 [ %index.next596, %vector.body594 ], [ 0, %vector.body594.preheader ] ; 2 uses
  %gep644 = getelementptr [4 x i8], ptr %invariant.gep643, i64 %index595 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %gep644, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %gep644, i64 64
  %i.ld = getelementptr inbounds nuw i8, ptr %gep644, i64 96
  store <8 x float> %broadcast.splat608, ptr %gep644, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat608, ptr %i.lb, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat608, ptr %i.lc, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat608, ptr %i.ld, align 4, !tbaa !2099
  %index.next596 = add nuw i64 %index595, 32      ; 2 uses
  %i.le = icmp eq i64 %index.next596, %n.vec606
  br i1 %i.le, label %middle.block597, label %vector.body594, !llvm.loop !7544

middle.block597:                                  ; preds = %vector.body594
  %cmp.n598 = icmp eq i64 %n.mod.vf605, 0
  br i1 %cmp.n598, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader

vec.epilog.vector.body609:                        ; preds = %vec.epilog.vector.body609.preheader, %vec.epilog.vector.body609
  %index610 = phi i64 [ %index.next611, %vec.epilog.vector.body609 ], [ 0, %vec.epilog.vector.body609.preheader ] ; 2 uses
  %gep646 = getelementptr [4 x i8], ptr %invariant.gep645, i64 %index610
  store <8 x float> %broadcast.splat608, ptr %gep646, align 4, !tbaa !2099
  %index.next611 = add nuw i64 %index610, 8       ; 2 uses
  %i.lf = icmp eq i64 %index.next611, %n.vec606
  br i1 %i.lf, label %vec.epilog.middle.block612, label %vec.epilog.vector.body609, !llvm.loop !7545

vec.epilog.middle.block612:                       ; preds = %vec.epilog.vector.body609
  %cmp.n613 = icmp eq i64 %n.mod.vf605, 0
  br i1 %cmp.n613, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader: ; preds = %middle.block597, %iter.check600, %vec.epilog.middle.block612
  %.097.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.la, %middle.block597 ], [ %i.jo, %iter.check600 ], [ %i.la, %vec.epilog.middle.block612 ]
  br label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i

iter.check570:                                    ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.preheader.split.split.i
  br i1 %min.iters.check556, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader, label %vector.main.loop.iter.check557

vector.main.loop.iter.check557:                   ; preds = %iter.check570
  %min.iters.check558 = icmp ult i64 %i.kz, 32
  %n.mod.vf575 = and i64 %umax555, 1              ; 3 uses
  %n.vec576 = sub nuw i64 %i.kz, %n.mod.vf575     ; 3 uses
  %i.lg = add i64 %n.vec576, %i.jo                ; 2 uses
  %broadcast.splatinsert577 = insertelement <8 x float> poison, float %i.kx, i64 0
  %broadcast.splat578 = shufflevector <8 x float> %broadcast.splatinsert577, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check558, label %vec.epilog.vector.body579.preheader, label %vector.body564.preheader

vector.body564.preheader:                         ; preds = %vector.main.loop.iter.check557
  %invariant.gep647 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vector.body564

vec.epilog.vector.body579.preheader:              ; preds = %vector.main.loop.iter.check557
  %invariant.gep649 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vec.epilog.vector.body579

vector.body564:                                   ; preds = %vector.body564.preheader, %vector.body564
  %index565 = phi i64 [ %index.next566, %vector.body564 ], [ 0, %vector.body564.preheader ] ; 2 uses
  %gep648 = getelementptr [4 x i8], ptr %invariant.gep647, i64 %index565 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %gep648, i64 32
  %i.li = getelementptr inbounds nuw i8, ptr %gep648, i64 64
  %i.lj = getelementptr inbounds nuw i8, ptr %gep648, i64 96
  store <8 x float> %broadcast.splat578, ptr %gep648, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat578, ptr %i.lh, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat578, ptr %i.li, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat578, ptr %i.lj, align 4, !tbaa !2099
  %index.next566 = add nuw i64 %index565, 32      ; 2 uses
  %i.lk = icmp eq i64 %index.next566, %n.vec576
  br i1 %i.lk, label %middle.block567, label %vector.body564, !llvm.loop !7546

middle.block567:                                  ; preds = %vector.body564
  %cmp.n568 = icmp eq i64 %n.mod.vf575, 0
  br i1 %cmp.n568, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader

vec.epilog.vector.body579:                        ; preds = %vec.epilog.vector.body579.preheader, %vec.epilog.vector.body579
  %index580 = phi i64 [ %index.next581, %vec.epilog.vector.body579 ], [ 0, %vec.epilog.vector.body579.preheader ] ; 2 uses
  %gep650 = getelementptr [4 x i8], ptr %invariant.gep649, i64 %index580
  store <8 x float> %broadcast.splat578, ptr %gep650, align 4, !tbaa !2099
  %index.next581 = add nuw i64 %index580, 8       ; 2 uses
  %i.ll = icmp eq i64 %index.next581, %n.vec576
  br i1 %i.ll, label %vec.epilog.middle.block582, label %vec.epilog.vector.body579, !llvm.loop !7547

vec.epilog.middle.block582:                       ; preds = %vec.epilog.vector.body579
  %cmp.n583 = icmp eq i64 %n.mod.vf575, 0
  br i1 %cmp.n583, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader: ; preds = %middle.block567, %iter.check570, %vec.epilog.middle.block582
  %.097.i.i.i.i.i.i.i.i.i.i.i.us41.i.ph = phi i64 [ %i.lg, %middle.block567 ], [ %i.jo, %iter.check570 ], [ %i.lg, %vec.epilog.middle.block582 ]
  br label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i: ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i
  %.097.i.i.i.i.i.i.i.i.i.i.i.us41.i = phi i64 [ %i.ln, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i ], [ %.097.i.i.i.i.i.i.i.i.i.i.i.us41.i.ph, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i.preheader ] ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.097.i.i.i.i.i.i.i.i.i.i.i.us41.i
  store float %i.kx, ptr %i.lm, align 4, !tbaa !2099
  %i.ln = add nuw i64 %.097.i.i.i.i.i.i.i.i.i.i.i.us41.i, 1 ; 2 uses
  %i.lo = icmp ult i64 %i.ln, %i.jn
  br i1 %i.lo, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7548

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.preheader.i: ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.i.i
  br i1 %i.iy, label %iter.check450, label %iter.check480

iter.check450:                                    ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.preheader.i
  %i.lp = or disjoint i64 %i.jo, 1
  %umax435 = tail call i64 @llvm.umax.i64(i64 %i.lp, i64 %i.jn) ; 2 uses
  %i.lq = sub i64 %umax435, %i.jo                 ; 3 uses
  %min.iters.check436 = icmp ult i64 %i.lq, 8
  br i1 %min.iters.check436, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader, label %vector.main.loop.iter.check437

vector.main.loop.iter.check437:                   ; preds = %iter.check450
  %min.iters.check438 = icmp ult i64 %i.lq, 32
  %n.mod.vf455 = and i64 %umax435, 1              ; 3 uses
  %n.vec456 = sub nuw i64 %i.lq, %n.mod.vf455     ; 3 uses
  %i.lr = add i64 %n.vec456, %i.jo                ; 2 uses
  br i1 %min.iters.check438, label %vec.epilog.vector.body459.preheader, label %vector.body444.preheader

vector.body444.preheader:                         ; preds = %vector.main.loop.iter.check437
  %invariant.gep663 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vector.body444

vec.epilog.vector.body459.preheader:              ; preds = %vector.main.loop.iter.check437
  %invariant.gep665 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vec.epilog.vector.body459

vector.body444:                                   ; preds = %vector.body444.preheader, %vector.body444
  %index445 = phi i64 [ %index.next446, %vector.body444 ], [ 0, %vector.body444.preheader ] ; 2 uses
  %gep664 = getelementptr [4 x i8], ptr %invariant.gep663, i64 %index445 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %gep664, i64 32
  %i.lt = getelementptr inbounds nuw i8, ptr %gep664, i64 64
  %i.lu = getelementptr inbounds nuw i8, ptr %gep664, i64 96
  store <8 x float> %broadcast.splat458, ptr %gep664, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat458, ptr %i.ls, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat458, ptr %i.lt, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat458, ptr %i.lu, align 4, !tbaa !2099
  %index.next446 = add nuw i64 %index445, 32      ; 2 uses
  %i.lv = icmp eq i64 %index.next446, %n.vec456
  br i1 %i.lv, label %middle.block447, label %vector.body444, !llvm.loop !7549

middle.block447:                                  ; preds = %vector.body444
  %cmp.n448 = icmp eq i64 %n.mod.vf455, 0
  br i1 %cmp.n448, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader

vec.epilog.vector.body459:                        ; preds = %vec.epilog.vector.body459.preheader, %vec.epilog.vector.body459
  %index460 = phi i64 [ %index.next461, %vec.epilog.vector.body459 ], [ 0, %vec.epilog.vector.body459.preheader ] ; 2 uses
  %gep666 = getelementptr [4 x i8], ptr %invariant.gep665, i64 %index460
  store <8 x float> %broadcast.splat458, ptr %gep666, align 4, !tbaa !2099
  %index.next461 = add nuw i64 %index460, 8       ; 2 uses
  %i.lw = icmp eq i64 %index.next461, %n.vec456
  br i1 %i.lw, label %vec.epilog.middle.block462, label %vec.epilog.vector.body459, !llvm.loop !7550

vec.epilog.middle.block462:                       ; preds = %vec.epilog.vector.body459
  %cmp.n463 = icmp eq i64 %n.mod.vf455, 0
  br i1 %cmp.n463, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader: ; preds = %middle.block447, %iter.check450, %vec.epilog.middle.block462
  %.097.i.i.i.i.i.i.i.i.i.i.us15.i.us.i.ph = phi i64 [ %i.lr, %middle.block447 ], [ %i.jo, %iter.check450 ], [ %i.lr, %vec.epilog.middle.block462 ]
  br label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i: ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i
  %.097.i.i.i.i.i.i.i.i.i.i.us15.i.us.i = phi i64 [ %i.ly, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i ], [ %.097.i.i.i.i.i.i.i.i.i.i.us15.i.us.i.ph, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i.preheader ] ; 2 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.097.i.i.i.i.i.i.i.i.i.i.us15.i.us.i
  store float %.sroa.03.0.i, ptr %i.lx, align 4, !tbaa !2099
  %i.ly = add nuw i64 %.097.i.i.i.i.i.i.i.i.i.i.us15.i.us.i, 1 ; 2 uses
  %i.lz = icmp ult i64 %i.ly, %i.jn
  br i1 %i.lz, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7551

iter.check480:                                    ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.preheader.i
  %i.ma = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.iw) #37, !tbaa !3, !noalias !7541 ; 2 uses
  %i.mb = fmul double %i.ma, %20
  %i.mc = tail call double @llvm.round.f64(double %i.mb)
  %i.md = fdiv double %i.mc, %i.ma
  %i.me = fptrunc double %i.md to float           ; 2 uses
  %i.mf = or disjoint i64 %i.jo, 1
  %umax465 = tail call i64 @llvm.umax.i64(i64 %i.mf, i64 %i.jn) ; 2 uses
  %i.mg = sub i64 %umax465, %i.jo                 ; 3 uses
  %min.iters.check466 = icmp ult i64 %i.mg, 8
  br i1 %min.iters.check466, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader, label %vector.main.loop.iter.check467

vector.main.loop.iter.check467:                   ; preds = %iter.check480
  %min.iters.check468 = icmp ult i64 %i.mg, 32
  %n.mod.vf485 = and i64 %umax465, 1              ; 3 uses
  %n.vec486 = sub nuw i64 %i.mg, %n.mod.vf485     ; 3 uses
  %i.mh = add i64 %n.vec486, %i.jo                ; 2 uses
  %broadcast.splatinsert487 = insertelement <8 x float> poison, float %i.me, i64 0
  %broadcast.splat488 = shufflevector <8 x float> %broadcast.splatinsert487, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  br i1 %min.iters.check468, label %vec.epilog.vector.body489.preheader, label %vector.body474.preheader

vector.body474.preheader:                         ; preds = %vector.main.loop.iter.check467
  %invariant.gep659 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vector.body474

vec.epilog.vector.body489.preheader:              ; preds = %vector.main.loop.iter.check467
  %invariant.gep661 = getelementptr [4 x i8], ptr %.val47, i64 %i.jo
  br label %vec.epilog.vector.body489

vector.body474:                                   ; preds = %vector.body474.preheader, %vector.body474
  %index475 = phi i64 [ %index.next476, %vector.body474 ], [ 0, %vector.body474.preheader ] ; 2 uses
  %gep660 = getelementptr [4 x i8], ptr %invariant.gep659, i64 %index475 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %gep660, i64 32
  %i.mj = getelementptr inbounds nuw i8, ptr %gep660, i64 64
  %i.mk = getelementptr inbounds nuw i8, ptr %gep660, i64 96
  store <8 x float> %broadcast.splat488, ptr %gep660, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat488, ptr %i.mi, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat488, ptr %i.mj, align 4, !tbaa !2099
  store <8 x float> %broadcast.splat488, ptr %i.mk, align 4, !tbaa !2099
  %index.next476 = add nuw i64 %index475, 32      ; 2 uses
  %i.ml = icmp eq i64 %index.next476, %n.vec486
  br i1 %i.ml, label %middle.block477, label %vector.body474, !llvm.loop !7552

middle.block477:                                  ; preds = %vector.body474
  %cmp.n478 = icmp eq i64 %n.mod.vf485, 0
  br i1 %cmp.n478, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader

vec.epilog.vector.body489:                        ; preds = %vec.epilog.vector.body489.preheader, %vec.epilog.vector.body489
  %index490 = phi i64 [ %index.next491, %vec.epilog.vector.body489 ], [ 0, %vec.epilog.vector.body489.preheader ] ; 2 uses
  %gep662 = getelementptr [4 x i8], ptr %invariant.gep661, i64 %index490
  store <8 x float> %broadcast.splat488, ptr %gep662, align 4, !tbaa !2099
  %index.next491 = add nuw i64 %index490, 8       ; 2 uses
  %i.mm = icmp eq i64 %index.next491, %n.vec486
  br i1 %i.mm, label %vec.epilog.middle.block492, label %vec.epilog.vector.body489, !llvm.loop !7553

vec.epilog.middle.block492:                       ; preds = %vec.epilog.vector.body489
  %cmp.n493 = icmp eq i64 %n.mod.vf485, 0
  br i1 %cmp.n493, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader: ; preds = %middle.block477, %iter.check480, %vec.epilog.middle.block492
  %.097.i.i.i.i.i.i.i.i.i.i.us15.i.i.ph = phi i64 [ %i.mh, %middle.block477 ], [ %i.jo, %iter.check480 ], [ %i.mh, %vec.epilog.middle.block492 ]
  br label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i:  ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i
  %.097.i.i.i.i.i.i.i.i.i.i.us15.i.i = phi i64 [ %i.mo, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i ], [ %.097.i.i.i.i.i.i.i.i.i.i.us15.i.i.ph, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i.preheader ] ; 2 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.097.i.i.i.i.i.i.i.i.i.i.us15.i.i
  store float %i.me, ptr %i.mn, align 4, !tbaa !2099
  %i.mo = add nuw i64 %.097.i.i.i.i.i.i.i.i.i.i.us15.i.i, 1 ; 2 uses
  %i.mp = icmp ult i64 %i.mo, %i.jn
  br i1 %i.mp, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7554

.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i:     ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i
  %.097.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.mr, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i ], [ %.097.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i.preheader ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.097.i.i.i.i.i.i.i.i.i.i.i.i
  store float %29, ptr %i.mq, align 4, !tbaa !2099
  %i.mr = add nuw i64 %.097.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ms = icmp ult i64 %i.mr, %i.jn
  br i1 %i.ms, label %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7555

bb.ay:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.01596.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ji, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nk, %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.mt = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.01596.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  br i1 %brmerge48.i, label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  br i1 %i.iu, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.mu = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.iw) #37, !tbaa !3, !noalias !7556 ; 2 uses
  %i.mv = fmul double %i.mu, %20
  %i.mw = tail call double @llvm.round.f64(double %i.mv)
  %i.mx = fdiv double %i.mw, %i.mu
  %i.my = fptrunc double %i.mx to float
  br label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i

bb.bb:                                            ; preds = %bb.az
  br i1 %16, label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.mz = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.iv) #37, !tbaa !3, !noalias !7556 ; 4 uses
  br i1 %i.jc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.na = fmul double %i.mz, %20
  %i.nb = tail call double @llvm.round.f64(double %i.na)
  %i.nc = fdiv double %i.nb, %i.mz
  %i.nd = fptrunc double %i.nc to float
  br label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.ne = fmul double %i.mz, %21
  %i.nf = tail call double @llvm.round.f64(double %i.ne)
  %i.ng = fdiv double %i.nf, %i.mz
  %i.nh = fptrunc double %i.ng to float
  %i.ni = fadd float %i.iz, %i.nh
  br label %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.ay
  %.2.i.i.i53.i.i.i.i.i.i.i.i.i.i.i = phi float [ %.2.i.i.i.i.i.i.i.i.i.i.i.i.i.us.i.i, %bb.ay ], [ %i.my, %bb.ba ], [ %i.ni, %bb.be ], [ %.sroa.03.0.i, %bb.bb ], [ %i.nd, %bb.bd ]
  %gep.i54.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i52.i.i.i.i.i.i.i.i.i.i.i, i64 %i.mt
  store float %.2.i.i.i53.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i54.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !2099
  %i.nj = add i64 %.01596.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.nk = and i64 %i.nj, %.01596.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i55.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nk, 0
  br i1 %.not.i55.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay, !llvm.loop !7559

_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS3_10VectorExecEEESC_fNS0_15ConstantCheckerIJfiEEEJfiEEEE7iterateIJNS3_20ConstantVectorReaderIfEENSJ_IiEEEEEvRNSH_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKNS0_17SelectivityVectorESR_EUlSR_E_EEvSW_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.i, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us40.i, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us36.i, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.i.us.i, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.i, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.split.us.i.us.i, %.lr.ph98.i.i.i.i.i.i.i.i.i.i.split.us.i.i, %_ZN8facebook5velox6StatusD2Ev.exit58.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block597, %vec.epilog.middle.block612, %middle.block567, %vec.epilog.middle.block582, %middle.block537, %vec.epilog.middle.block552, %middle.block507, %vec.epilog.middle.block522, %middle.block477, %vec.epilog.middle.block492, %middle.block447, %vec.epilog.middle.block462, %middle.block417, %vec.epilog.middle.block432, %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.nl = add nsw i32 %i.je, 64                   ; 2 uses
  %.not33.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.nl, %i.fb
  br i1 %.not33.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !7560

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.nm = ashr i32 %i.ex, 6
  %i.nn = and i32 %i.ex, 63
  %i.no = zext nneg i32 %i.nn to i64
  %notmask.i56.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.no
  %i.np = xor i64 %notmask.i56.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.nq = sext i32 %i.nm to i64
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.nq
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !366
  %i.nt = and i64 %i.ns, %i.np                    ; 2 uses
  %.not.i57.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.nt, 0
  br i1 %.not.i57.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfiEEEJfiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %.preheader.i58.i.i.i.i.i.i.i.i.i.i.i

.preheader.i58.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.bf
  %i.nu = sext i32 %i.fb to i64
  %invariant.gep.i64.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %.val47, i64 %i.nu
  %i.nv = icmp eq i32 %.sroa.01.0.fr.i.i, 0
  %i.nw = icmp slt i32 %.sroa.01.0.fr.i.i, 0
  %i.nx = uitofp nneg i32 %.sroa.01.0.fr.i.i to double
  %i.ny = sitofp i32 %.sroa.01.0.fr.i.i to double
  %i.nz = tail call float @llvm.fabs.f32(float %.sroa.03.0.i)
  %i.oa = fcmp ueq float %i.nz, +inf              ; 2 uses
  %i.ob = tail call float @llvm.trunc.f32(float %.sroa.03.0.i) ; 2 uses
  %i.oc = fsub float %.sroa.03.0.i, %i.ob         ; 2 uses
  %i.od = fpext nnan float %i.oc to double
  %i.oe = fcmp oeq float %i.oc, 0.000000e+00
  %i.of = fpext float %.sroa.03.0.i to double     ; 3 uses
  %i.og = tail call double @llvm.fabs.f64(double %i.of)
  %i.oh = fcmp olt double %i.og, f0x42B0000000000000
  %i.oi = tail call float @llvm.round.f32(float %.sroa.03.0.i)
  %brmerge50.i = or i1 %i.oa, %i.nv
  %.sroa.03.0.mux51.i = select i1 %i.oa, float %.sroa.03.0.i, float %i.oi
  br label %bb.bg

bb.bg:                                            ; preds = %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i58.i.i.i.i.i.i.i.i.i.i.i
  %.042.i65.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nt, %.preheader.i58.i.i.i.i.i.i.i.i.i.i.i ], [ %i.pa, %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.042.i65.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  br i1 %brmerge50.i, label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.nw, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ok = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.ny) #37, !tbaa !3, !noalias !7561 ; 2 uses
  %i.ol = fmul double %i.ok, %i.of
  %i.om = tail call double @llvm.round.f64(double %i.ol)
  %i.on = fdiv double %i.om, %i.ok
  %i.oo = fptrunc double %i.on to float
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.oe, label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.op = tail call noundef double @pow(double noundef 1.000000e+01, double noundef %i.nx) #37, !tbaa !3, !noalias !7561 ; 4 uses
  br i1 %i.oh, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.oq = fmul double %i.op, %i.of
  %i.or = tail call double @llvm.round.f64(double %i.oq)
  %i.os = fdiv double %i.or, %i.op
  %i.ot = fptrunc double %i.os to float
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bk
  %i.ou = fmul double %i.op, %i.od
  %i.ov = tail call double @llvm.round.f64(double %i.ou)
  %i.ow = fdiv double %i.ov, %i.op
  %i.ox = fptrunc double %i.ow to float
  %i.oy = fadd float %i.ob, %i.ox
  br label %_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox6StatusD2Ev.exit24.i66.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bm, %bb.bl, %bb.bj, %bb.bi, %bb.bg
  %.2.i.i.i67.i.i.i.i.i.i.i.i.i.i.i = phi float [ %.sroa.03.0.mux51.i, %bb.bg ], [ %i.oo, %bb.bi ], [ %i.oy, %bb.bm ], [ %.sroa.03.0.i, %bb.bj ], [ %i.ot, %bb.bl ]
  %gep.i68.i.i.i.i.i.i.i.i.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i64.i.i.i.i.i.i.i.i.i.i.i, i64 %i.oj
  store float %.2.i.i.i67.i.i.i.i.i.i.i.i.i.i.i, ptr %gep.i68.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !2099
  %i.oz = add nsw i64 %.042.i65.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.pa = and i64 %i.oz, %.042.i65.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not10.i69.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.pa, 0
  br i1 %.not10.i69.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfiEEEJfiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit, label %bb.bg, !llvm.loop !7528

bb.bn:                                            ; preds = %_ZN8facebook5velox4exec20ConstantVectorReaderIfEC2ERNS0_14ConstantVectorIfEE.exit.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.val2.val.val.i.i, i64 128
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !1495 ; 6 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !716, !range !392, !noundef !393
  %i.pg = trunc nuw i8 %i.pf to i1
  br i1 %i.pg, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i48.i.i, label %bb.bo

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i48.i.i: ; preds = %bb.bn
  %.0.in.pre.i.i.i.i.i.i.i49.i.i = load i8, ptr %i.pd, align 4, !tbaa !365, !range !392
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i16.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ph = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !717
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.bp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pl = load i32, ptr %i.pk, align 8, !tbaa !723 ; 6 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !724
  %i.po = icmp eq i32 %i.pl, %i.pn
  br i1 %i.po, label %bb.bq, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.pp = load ptr, ptr %1, align 8, !tbaa !725   ; 2 uses
  %.not.i.i7.i.i.i.i.i.i.i.i = icmp sgt i32 %i.pl, 0
  br i1 %.not.i.i7.i.i.i.i.i.i.i.i, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i

bb.br:                                            ; preds = %bb.bq
  %i.pq = and i32 %i.pl, 2147483584               ; 3 uses
  %i.pr = zext nneg i32 %i.pq to i64
  %.not37.i.i.not.i.i.i.i.i.i.i42.i.i358.not = icmp eq i32 %i.pq, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i42.i.i358.not, label %.critedge.i.i.i.i.i.i.i.i.i43.i.i, label %.lr.ph360

bb.bs:                                            ; preds = %.lr.ph360
  %indvars.iv.next.i.i.i.i.i.i.i47.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i41.i.i359, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i.i42.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i.i47.i.i, %i.pr
  br i1 %.not37.i.i.not.i.i.i.i.i.i.i42.i.i, label %.lr.ph360, label %.critedge.i.i.i.i.i.i.i.i.i43.i.i, !llvm.loop !726

.lr.ph360:                                        ; preds = %bb.br, %bb.bs
  %indvars.iv.i.i.i.i.i.i.i41.i.i359 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i47.i.i, %bb.bs ], [ 0, %bb.br ] ; 2 uses
  %i.ps = lshr exact i64 %indvars.iv.i.i.i.i.i.i.i41.i.i359, 3
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ps
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !366
  %i.pv = icmp eq i64 %i.pu, -1
  br i1 %i.pv, label %bb.bs, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i, !llvm.loop !726

.critedge.i.i.i.i.i.i.i.i.i43.i.i:                ; preds = %bb.bs, %bb.br
  %.not38.i.i.i.i.i.i.i.i.i44.i.i = icmp eq i32 %i.pl, %i.pq
  br i1 %.not38.i.i.i.i.i.i.i.i.i44.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i, label %bb.bt

bb.bt:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i.i43.i.i
  %i.pw = lshr i32 %i.pl, 6
  %i.px = and i32 %i.pl, 63
  %i.py = zext nneg i32 %i.px to i64
  %notmask.i40.i.i.i.i.i.i.i.i.i45.i.i = shl nsw i64 -1, %i.py
  %i.pz = zext nneg i32 %i.pw to i64
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.pz
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !366
  %.demorgan.i.i.i.i.i.i.i46.i.i = or i64 %i.qb, %notmask.i40.i.i.i.i.i.i.i.i.i45.i.i
  %i.qc = icmp eq i64 %.demorgan.i.i.i.i.i.i.i46.i.i, -1
  %i.qd = zext i1 %i.qc to i16
  %i.qe = or disjoint i16 %i.qd, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i: ; preds = %.lr.ph360, %bb.bt, %.critedge.i.i.i.i.i.i.i.i.i43.i.i, %bb.bq, %bb.bp, %bb.bo
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i15.i.i = phi i16 [ 256, %bb.bp ], [ 256, %bb.bo ], [ 257, %bb.bq ], [ 257, %.critedge.i.i.i.i.i.i.i.i.i43.i.i ], [ %i.qe, %bb.bt ], [ 256, %.lr.ph360 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i15.i.i, ptr %i.pd, align 4
  %i.qf = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i15.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i16.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i16.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i48.i.i
  %.0.in.i.i.i.i.i.i.i17.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i.i49.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i.i48.i.i ], [ %i.qf, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i.i14.i.i ]
  %.0.i.i.i.i.i.i.i18.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i.i17.i.i to i1
  br i1 %.0.i.i.i.i.i.i.i18.i.i, label %bb.bu, label %bb.cd

bb.bu:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i.i16.i.i
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !723 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !717 ; 2 uses
  %i.qk = icmp slt i32 %i.qj, %i.qh
  br i1 %i.qk, label %.lr.ph.i.i.i.i.i.i36.i.i, label %_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_113RoundFunctionINS1_10VectorExecEEES8_fNS0_15ConstantCheckerIJfiEEEJfiEEEE31unpackSpecializeForAllEncodingsILi0EJEEEvRNSD_12ApplyContextERKSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISK_EEDpRT0_.exit

.lr.ph.i.i.i.i.i.i36.i.i:                         ; preds = %bb.bu
  %i.ql = sext i32 %i.qj to i64
  %i.qm = tail call float @llvm.fabs.f32(float %.sroa.03.0.i)
  %i.qn = fcmp ueq float %i.qm, +inf
  %i.qo = tail call float @llvm.trunc.f32(float %.sroa.03.0.i) ; 2 uses
  %i.qp = fsub float %.sroa.03.0.i, %i.qo         ; 2 uses
  %i.qq = fpext nnan float %i.qp to double
  %i.qr = fcmp oeq float %i.qp, 0.000000e+00
  %i.qs = fpext float %.sroa.03.0.i to double     ; 3 uses
  %i.qt = tail call double @llvm.fabs.f64(double %i.qs)
  %i.qu = fcmp olt double %i.qt, f0x42B0000000000000
end_hunk_1
