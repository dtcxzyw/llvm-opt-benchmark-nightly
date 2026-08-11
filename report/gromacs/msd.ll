inline.NumInlined: 1761
inline.NumDeleted: 968
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3gmx15analysismodules3Msd12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a
  %i.df = shl nuw nsw i64 %i.de, 3
  %i.dg = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #28 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.cy ; 2 uses
  store double %i.cl, ptr %i.dh, align 8, !tbaa !91
  %i.di = icmp sgt i64 %i.cy, 0
  br i1 %i.di, label %bb.aw, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i119

bb.aw:                                            ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i119

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i119: ; preds = %bb.aw, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i116
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.not.i17.i.i.i120 = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i120, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i121, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i119
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.cy) #24
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i121

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i121: ; preds = %bb.ax, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i119
  store ptr %i.dg, ptr %i.cp, align 8, !tbaa !30
  store ptr %i.dj, ptr %i.cq, align 8, !tbaa !258
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.de
  store ptr %i.dk, ptr %i.cs, align 8, !tbaa !33
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit122

_ZNSt6vectorIdSaIdEE9push_backEOd.exit122:        ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i121, %bb.at, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load ptr, ptr %i.dl, align 8, !tbaa !260 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val99 = load ptr, ptr %i.dm, align 8, !tbaa !260 ; 2 uses
  %.not280 = icmp eq ptr %.val, %.val99
  br i1 %.not280, label %._crit_edge283, label %.lr.ph282

.lr.ph282:                                        ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit122
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.ed = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 3 uses
  br label %bb.ay

._crit_edge283:                                   ; preds = %bb.cs, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit122
  ret void

bb.ay:                                            ; preds = %.lr.ph282, %bb.cs
  %.sroa.0205.0281 = phi ptr [ %.val, %.lr.ph282 ], [ %i.tl, %bb.cs ] ; 21 uses
  %i.ee = load ptr, ptr %.sroa.0205.0281, align 8, !tbaa !261, !nonnull !180, !align !274
  %i.ef = call ptr @_ZN3gmx28TrajectoryAnalysisModuleData17parallelSelectionERKNS_9SelectionE(ptr noundef nonnull align 8 dereferenceable(8) %i.ee) ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 56 ; 8 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 104 ; 2 uses
  %.val.i = load ptr, ptr %i.eh, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 112
  %.val26.i = load ptr, ptr %i.ei, align 8
  %i.ej = icmp eq ptr %.val.i, %.val26.i
  br i1 %i.ej, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !275 ; 8 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 112
  %i.en = load i32, ptr %i.em, align 8, !tbaa !198 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %.not.i.i.i = icmp eq ptr %i.el, null
  %.idx.i = mul nsw i64 %i.eo, 12                 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx.i
  %.not10.i28.i = icmp eq i32 %i.en, 0
  %.not10.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not10.i28.i
  br i1 %.not10.i.i, label %"_ZSt9transformIN3gmx12ArrayRefIterIA3_KfEEN9__gnu_cxx17__normal_iteratorIPNS0_11BasicVectorIdEESt6vectorIS8_SaIS8_EEEEZNS0_15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS0_9SelectionEP5t_pbcE3$_0ET0_T_SO_SN_T1_.exit.i", label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.az
  %i.eq = load ptr, ptr %i.eg, align 8, !tbaa !237 ; 6 uses
  %i.er = add nsw i64 %.idx.i, -12                ; 2 uses
  %i.es = udiv i64 %i.er, 12
  %i.et = add nuw nsw i64 %i.es, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.er, 84
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader.i
  %scevgep = getelementptr i8, ptr %i.eq, i64 24
  %i.eu = add nsw i64 %.idx.i, -12
  %i.ev = udiv i64 %i.eu, 12                      ; 2 uses
  %i.ew = mul i64 %i.ev, 24
  %scevgep358 = getelementptr i8, ptr %scevgep, i64 %i.ew
  %scevgep359 = getelementptr i8, ptr %i.el, i64 12
  %i.ex = mul nuw i64 %i.ev, 12
  %scevgep360 = getelementptr i8, ptr %scevgep359, i64 %i.ex
  %bound0 = icmp ult ptr %i.eq, %scevgep360
  %bound1 = icmp ult ptr %i.el, %scevgep358
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.et, 4611686018427387900     ; 4 uses
  %i.ey = mul i64 %n.vec, 12
  %i.ez = getelementptr i8, ptr %i.el, i64 %i.ey
  %i.fa = mul i64 %n.vec, 24
  %i.fb = getelementptr i8, ptr %i.eq, i64 %i.fa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fc = mul i64 %index, 12
  %next.gep = getelementptr i8, ptr %i.el, i64 %i.fc
  %i.fd = mul i64 %index, 24
  %next.gep361 = getelementptr i8, ptr %i.eq, i64 %i.fd
  %wide.vec = load <12 x float>, ptr %next.gep, align 4, !tbaa !223, !alias.scope !276 ; 3 uses
  %strided.vec = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec362 = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec363 = shufflevector <12 x float> %wide.vec, <12 x float> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.fe = fpext <4 x float> %strided.vec to <4 x double>
  %i.ff = fpext <4 x float> %strided.vec362 to <4 x double>
  %i.fg = fpext <4 x float> %strided.vec363 to <4 x double>
  %i.fh = shufflevector <4 x double> %i.fe, <4 x double> %i.ff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fi = shufflevector <4 x double> %i.fg, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <8 x double> %i.fh, <8 x double> %i.fi, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec, ptr %next.gep361, align 8, !alias.scope !279, !noalias !276
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.et, %n.vec
  br i1 %cmp.n, label %"_ZSt9transformIN3gmx12ArrayRefIterIA3_KfEEN9__gnu_cxx17__normal_iteratorIPNS0_11BasicVectorIdEESt6vectorIS8_SaIS8_EEEEZNS0_15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS0_9SelectionEP5t_pbcE3$_0ET0_T_SO_SN_T1_.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader.i, %middle.block
  %.sroa.08.012.i.i.ph = phi ptr [ %i.el, %vector.memcheck ], [ %i.el, %.lr.ph.i.preheader.i ], [ %i.ez, %middle.block ]
  %.sroa.06.011.i.i.ph = phi ptr [ %i.eq, %vector.memcheck ], [ %i.eq, %.lr.ph.i.preheader.i ], [ %i.fb, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.08.012.i.i = phi ptr [ %i.fp, %.lr.ph.i.i ], [ %.sroa.08.012.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.06.011.i.i = phi ptr [ %i.fq, %.lr.ph.i.i ], [ %.sroa.06.011.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 8
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !223
  %i.fm = fpext float %i.fl to double
  %i.fn = load <2 x float>, ptr %.sroa.08.012.i.i, align 4, !tbaa !223
  %i.fo = fpext <2 x float> %i.fn to <2 x double>
  store <2 x double> %i.fo, ptr %.sroa.06.011.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i, i64 16
  store double %i.fm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !17
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i, i64 12 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i, i64 24
  %.not.i.i123 = icmp eq ptr %i.fp, %i.ep
  br i1 %.not.i.i123, label %"_ZSt9transformIN3gmx12ArrayRefIterIA3_KfEEN9__gnu_cxx17__normal_iteratorIPNS0_11BasicVectorIdEESt6vectorIS8_SaIS8_EEEEZNS0_15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS0_9SelectionEP5t_pbcE3$_0ET0_T_SO_SN_T1_.exit.i", label %.lr.ph.i.i, !llvm.loop !282

bb.ba:                                            ; preds = %bb.ay
  %i.fr = load ptr, ptr %i.eg, align 8, !tbaa !237 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 64 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !237 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.fr, %i.ft
  br i1 %.not5.i.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIdEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_.exit.i, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.ba
  %i.fu = ptrtoaddr ptr %i.ft to i64
  %i.fv = ptrtoaddr ptr %i.fr to i64
  %reass.sub = sub i64 %i.fu, %i.fv
  %reass.sub.fr = freeze i64 %reass.sub           ; 2 uses
  %i.fw = add i64 %reass.sub.fr, -24
  %i.fx = urem i64 %i.fw, 24
  %i.fy = sub i64 %reass.sub.fr, %i.fx
  call void @llvm.memset.p0.i64(ptr align 8 %i.fr, i8 0, i64 %i.fy, i1 false)
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIdEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_.exit.i

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIdEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.ba
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ef, i64 216
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !207
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ef, i64 112 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !198
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIdEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_.exit.i
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 120
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  br label %bb.bb

._crit_edge.i:                                    ; preds = %bb.bb, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIdEESt6vectorIS4_SaIS4_EEEES4_EvT_SA_RKT0_.exit.i
  %i.gg = load ptr, ptr %i.eg, align 8, !tbaa !237 ; 11 uses
  %i.gh = ptrtoaddr ptr %i.gg to i64              ; 4 uses
  %i.gi = load ptr, ptr %i.fs, align 8, !tbaa !237 ; 3 uses
  %i.gj = ptrtoaddr ptr %i.gi to i64              ; 4 uses
  %.not10.i34.i = icmp eq ptr %i.gg, %i.gi
  br i1 %.not10.i34.i, label %"_ZSt9transformIN3gmx12ArrayRefIterIA3_KfEEN9__gnu_cxx17__normal_iteratorIPNS0_11BasicVectorIdEESt6vectorIS8_SaIS8_EEEEZNS0_15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS0_9SelectionEP5t_pbcE3$_0ET0_T_SO_SN_T1_.exit.i", label %.lr.ph.i35.preheader.i

.lr.ph.i35.preheader.i:                           ; preds = %._crit_edge.i
  %.val27.i = load ptr, ptr %i.eh, align 8        ; 7 uses
  %28 = sub i64 %i.gj, %i.gh
  %29 = mul i64 %28, 768614336404564651
  %30 = add i64 %29, -8                           ; 2 uses
  %i.gk = lshr i64 %30, 3
  %i.gl = add nuw nsw i64 %i.gk, 1                ; 2 uses
  %min.iters.check375 = icmp ult i64 %30, 160
  br i1 %min.iters.check375, label %.lr.ph.i35.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.i35.preheader.i
  %i.gm = sub i64 %i.gj, %i.gh
  %i.gn = and i64 %i.gm, 7
  %ident.check = icmp ne i64 %i.gn, 0
  %i.go = add i64 %i.gj, -24
  %i.gp = sub i64 %i.go, %i.gh
  %i.gq = mul i64 %i.gp, 768614336404564651
  %i.gr = lshr i64 %i.gq, 3
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gr, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gs = getelementptr i8, ptr %i.gg, i64 %mul.result
  %i.gt = icmp ult ptr %i.gs, %i.gg
  %i.gu = or i1 %i.gt, %mul.overflow
  %i.gv = or i1 %ident.check, %i.gu
  br i1 %i.gv, label %.lr.ph.i35.i.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %vector.scevcheck
  %scevgep366 = getelementptr i8, ptr %i.gg, i64 24
  %i.gw = add i64 %i.gj, -24
  %i.gx = sub i64 %i.gw, %i.gh
  %i.gy = mul i64 %i.gx, 768614336404564651
  %i.gz = lshr i64 %i.gy, 3                       ; 2 uses
  %i.ha = mul i64 %i.gz, 24
  %scevgep367 = getelementptr i8, ptr %scevgep366, i64 %i.ha
  %scevgep368 = getelementptr i8, ptr %.val27.i, i64 8
  %scevgep369 = getelementptr i8, ptr %.val27.i, i64 16
  %i.hb = mul i64 %i.gz, 48
  %scevgep370 = getelementptr i8, ptr %scevgep369, i64 %i.hb
  %bound0371 = icmp ult ptr %i.gg, %scevgep370
  %bound1372 = icmp ult ptr %scevgep368, %scevgep367
  %found.conflict373 = and i1 %bound0371, %bound1372
  br i1 %found.conflict373, label %.lr.ph.i35.i.preheader, label %vector.ph376

vector.ph376:                                     ; preds = %vector.memcheck365
  %i.hc = and i64 %i.gl, 3                        ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 0
  %i.he = select i1 %i.hd, i64 4, i64 %i.hc
  %n.vec377 = sub nsw i64 %i.gl, %i.he            ; 3 uses
  %i.hf = mul i64 %n.vec377, 24
  %i.hg = getelementptr i8, ptr %i.gg, i64 %i.hf
  %i.hh = mul i64 %n.vec377, 48
  %i.hi = getelementptr i8, ptr %.val27.i, i64 %i.hh
  br label %vector.body378

vector.body378:                                   ; preds = %vector.body378, %vector.ph376
  %index379 = phi i64 [ 0, %vector.ph376 ], [ %index.next386, %vector.body378 ] ; 2 uses
  %pointer.phi = phi ptr [ %.val27.i, %vector.ph376 ], [ %ptr.ind, %vector.body378 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi, <4 x i64> <i64 0, i64 48, i64 96, i64 144>
  %i.hj = mul i64 %index379, 24
  %next.gep380 = getelementptr i8, ptr %i.gg, i64 %i.hj ; 2 uses
  %wide.gep = getelementptr i8, <4 x ptr> %vector.gep, i64 8
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !91, !alias.scope !283, !noalias !286
  %i.hk = fdiv <4 x double> splat (double 1.000000e+00), %wide.masked.gather ; 3 uses
  %wide.vec381 = load <12 x double>, ptr %next.gep380, align 8, !tbaa !91, !alias.scope !289, !noalias !291 ; 3 uses
  %strided.vec382 = shufflevector <12 x double> %wide.vec381, <12 x double> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  %strided.vec383 = shufflevector <12 x double> %wide.vec381, <12 x double> poison, <4 x i32> <i32 1, i32 4, i32 7, i32 10>
  %strided.vec384 = shufflevector <12 x double> %wide.vec381, <12 x double> poison, <4 x i32> <i32 2, i32 5, i32 8, i32 11>
  %i.hl = fmul <4 x double> %i.hk, %strided.vec382
  %i.hm = fmul <4 x double> %i.hk, %strided.vec383
  %i.hn = fmul <4 x double> %i.hk, %strided.vec384
  %i.ho = shufflevector <4 x double> %i.hl, <4 x double> %i.hm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hp = shufflevector <4 x double> %i.hn, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec385 = shufflevector <8 x double> %i.ho, <8 x double> %i.hp, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x double> %interleaved.vec385, ptr %next.gep380, align 8, !alias.scope !289, !noalias !283
  %index.next386 = add nuw i64 %index379, 4       ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 192
  %i.hq = icmp eq i64 %index.next386, %n.vec377
  br i1 %i.hq, label %.lr.ph.i35.i.preheader, label %vector.body378, !llvm.loop !298

.lr.ph.i35.i.preheader:                           ; preds = %vector.body378, %vector.memcheck365, %vector.scevcheck, %.lr.ph.i35.preheader.i
  %.sroa.07.013.i.i.ph = phi ptr [ %i.gg, %vector.memcheck365 ], [ %i.gg, %vector.scevcheck ], [ %i.gg, %.lr.ph.i35.preheader.i ], [ %i.hg, %vector.body378 ]
  %.sroa.05.012.i.i.ph = phi ptr [ %.val27.i, %vector.memcheck365 ], [ %.val27.i, %vector.scevcheck ], [ %.val27.i, %.lr.ph.i35.preheader.i ], [ %i.hi, %vector.body378 ]
  br label %.lr.ph.i35.i

.lr.ph.i35.i:                                     ; preds = %.lr.ph.i35.i.preheader, %.lr.ph.i35.i
  %.sroa.07.013.i.i = phi ptr [ %i.ia, %.lr.ph.i35.i ], [ %.sroa.07.013.i.i.ph, %.lr.ph.i35.i.preheader ] ; 4 uses
  %.sroa.05.012.i.i = phi ptr [ %i.ib, %.lr.ph.i35.i ], [ %.sroa.05.012.i.i.ph, %.lr.ph.i35.i.preheader ] ; 2 uses
  %i.hr = getelementptr i8, ptr %.sroa.05.012.i.i, i64 8
  %.val1.i.i = load double, ptr %i.hr, align 8, !tbaa !91, !noalias !286
  %i.hs = fdiv double 1.000000e+00, %.val1.i.i    ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i.i, i64 16 ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !91, !noalias !291
  %i.hv = fmul double %i.hs, %i.hu
  %i.hw = load <2 x double>, ptr %.sroa.07.013.i.i, align 8, !tbaa !91, !noalias !291
  %i.hx = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hy, %i.hw
  store <2 x double> %i.hz, ptr %.sroa.07.013.i.i, align 8
  store double %i.hv, ptr %i.ht, align 8, !tbaa !17
  %i.ia = getelementptr i8, ptr %.sroa.07.013.i.i, i64 24 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.05.012.i.i, i64 48
  %.not.i37.i = icmp eq ptr %i.ia, %i.gi
  br i1 %.not.i37.i, label %"_ZSt9transformIN3gmx12ArrayRefIterIA3_KfEEN9__gnu_cxx17__normal_iteratorIPNS0_11BasicVectorIdEESt6vectorIS8_SaIS8_EEEEZNS0_15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS0_9SelectionEP5t_pbcE3$_0ET0_T_SO_SN_T1_.exit.i", label %.lr.ph.i35.i, !llvm.loop !299

bb.bb:                                            ; preds = %bb.bb, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bb ] ; 4 uses
  %i.ic = load i64, ptr %i.ge, align 8
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !168
  %i.ig = load ptr, ptr %i.gf, align 8, !tbaa !275
  %i.ih = getelementptr inbounds nuw [12 x i8], ptr %i.ig, i64 %indvars.iv.i ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !223
  %i.ik = fpext float %i.ij to double
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv.i
  %i.im = load float, ptr %i.il, align 4, !tbaa !223
  %i.in = fpext float %i.im to double             ; 2 uses
  %i.io = fmul double %i.ik, %i.in
  %i.ip = sext i32 %i.if to i64
  %i.iq = load ptr, ptr %i.eg, align 8, !tbaa !232
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.ip ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16 ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !91, !noalias !300
  %i.iu = fadd double %i.io, %i.it
  %i.iv = load <2 x float>, ptr %i.ih, align 4, !tbaa !223
  %i.iw = fpext <2 x float> %i.iv to <2 x double>
  %i.ix = insertelement <2 x double> poison, double %i.in, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.iy, %i.iw
  %i.ja = load <2 x double>, ptr %i.ir, align 8, !tbaa !91, !noalias !300
  %i.jb = fadd <2 x double> %i.ja, %i.iz
  store <2 x double> %i.jb, ptr %i.ir, align 8
  store double %i.iu, ptr %i.is, align 8, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jc = load i32, ptr %i.gb, align 8, !tbaa !198
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next.i, %i.jd
  br i1 %i.je, label %bb.bb, label %._crit_edge.i, !llvm.loop !303

"_ZSt9transformIN3gmx12ArrayRefIterIA3_KfEEN9__gnu_cxx17__normal_iteratorIPNS0_11BasicVectorIdEESt6vectorIS8_SaIS8_EEEEZNS0_15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS0_9SelectionEP5t_pbcE3$_0ET0_T_SO_SN_T1_.exit.i": ; preds = %.lr.ph.i35.i, %.lr.ph.i.i, %middle.block, %._crit_edge.i, %bb.az
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 136 ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 8, !tbaa !304, !range !170, !noundef !180
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %"_ZSt9transformIN3gmx12ArrayRefIterIA3_KfEEN9__gnu_cxx17__normal_iteratorIPNS0_11BasicVectorIdEESt6vectorIS8_SaIS8_EEEEZNS0_15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS0_9SelectionEP5t_pbcE3$_0ET0_T_SO_SN_T1_.exit.i"
  %i.ji = load ptr, ptr %i.eg, align 8, !tbaa !232 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 64
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !235 ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.ji, %i.jk
  br i1 %.not13.i.i.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS_9SelectionEP5t_pbc.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bc
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 80
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !232
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i.i.i
  %.sroa.011.016.i.i.i = phi ptr [ %i.ji, %.lr.ph.i.i.i ], [ %i.jt, %bb.bd ] ; 4 uses
  %.sroa.09.015.i.i.i = phi ptr [ %i.jm, %.lr.ph.i.i.i ], [ %i.ju, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.011.016.i.i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.09.015.i.i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !305
  call void @_Z8pbc_dx_dPK5t_pbcPKdS3_Pd(ptr noundef %3, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %9, ptr noundef nonnull %i.a), !noalias !305
  %i.jn = load double, ptr %i.dn, align 16, !tbaa !91, !noalias !305
  %i.jo = load double, ptr %i.do, align 16, !tbaa !91, !noalias !308
  %i.jp = fadd double %i.jn, %i.jo
  %i.jq = load <2 x double>, ptr %i.a, align 16, !tbaa !91, !noalias !305
  %i.jr = load <2 x double>, ptr %9, align 16, !tbaa !91, !noalias !308
  %i.js = fadd <2 x double> %i.jq, %i.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  store <2 x double> %i.js, ptr %.sroa.011.016.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i.i, i64 16
  store double %i.jp, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !17
  %i.jt = getelementptr i8, ptr %.sroa.011.016.i.i.i, i64 24 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.09.015.i.i.i, i64 24
  %.not.i.i38.i = icmp eq ptr %i.jt, %i.jk
  br i1 %.not.i.i38.i, label %_ZN3gmx15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS_9SelectionEP5t_pbc.exit, label %bb.bd, !llvm.loop !311

bb.be:                                            ; preds = %"_ZSt9transformIN3gmx12ArrayRefIterIA3_KfEEN9__gnu_cxx17__normal_iteratorIPNS0_11BasicVectorIdEESt6vectorIS8_SaIS8_EEEEZNS0_15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS0_9SelectionEP5t_pbcE3$_0ET0_T_SO_SN_T1_.exit.i"
  store i8 1, ptr %i.jf, align 8, !tbaa !304
  br label %_ZN3gmx15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS_9SelectionEP5t_pbc.exit

_ZN3gmx15analysismodules12_GLOBAL__N_120MsdCoordinateManager16buildCoordinatesERKNS_9SelectionEP5t_pbc.exit: ; preds = %bb.bd, %bb.bc, %bb.be
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 80
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 64 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 72
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !236
  %i.jz = load ptr, ptr %i.jv, align 8, !tbaa !232
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 88
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0205.0281, i64 96
  %i.kc = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !237
  %i.kd = load ptr, ptr %i.jw, align 8, !tbaa !235 ; 2 uses
  %i.ke = load ptr, ptr %i.eg, align 8, !tbaa !232 ; 7 uses
  store ptr %i.jz, ptr %i.eg, align 8, !tbaa !232
  %i.kf = load <2 x ptr>, ptr %i.ka, align 8, !tbaa !237
  %i.kg = shufflevector <2 x ptr> %i.kc, <2 x ptr> %i.kf, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x ptr> %i.kg, ptr %i.jw, align 8, !tbaa !237
  store ptr %i.jy, ptr %i.kb, align 8, !tbaa !236
end_hunk_0
