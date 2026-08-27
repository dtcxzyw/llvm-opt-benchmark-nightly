Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dpm_cascade?download=true
inline.NumInlined: 753
inline.NumDeleted: 305
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dpm10DPMCascade7processERSt6vectorIS2_IdSaIdEESaIS4_EE:bb.a
  %i.ee = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ee, %i.dt
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !120

_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN2cv3MatESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !114
  br label %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %._crit_edge451.split
  %i.ef = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.dr, %._crit_edge451.split ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !121
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #20
  br label %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN2cv3MatESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.el = load ptr, ptr %4, align 8, !tbaa !22    ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !19 ; 2 uses
  %.not4.i.i.i173 = icmp eq ptr %i.el, %i.en
  br i1 %.not4.i.i.i173, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i174

.lr.ph.i.i.i174:                                  ; preds = %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.05.i.i.i175 = phi ptr [ %i.eu, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i ], [ %i.el, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.eo = load ptr, ptr %.05.i.i.i175, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i.i.i.i176 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i.i.i176, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i174
  %i.ep = getelementptr inbounds nuw i8, ptr %.05.i.i.i175, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !91
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = sub i64 %i.er, %i.es
  call void @_ZdlPvm(ptr noundef nonnull %i.eo, i64 noundef %i.et) #20
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i:  ; preds = %bb.aa, %.lr.ph.i.i.i174
  %i.eu = getelementptr inbounds nuw i8, ptr %.05.i.i.i175, i64 24 ; 2 uses
  %.not.i.i.i177 = icmp eq ptr %i.eu, %i.en
  br i1 %.not.i.i.i177, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i174, !llvm.loop !92

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i
  %.pr.i178 = load ptr, ptr %4, align 8, !tbaa !22
  br label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit
  %i.ev = phi ptr [ %.pr.i178, %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.el, %_ZNSt6vectorIS_IN2cv3MatESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i179 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i1.i179, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !122
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.fa) #20
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not4.i.i.i180 = icmp eq ptr %.sroa.0361.0590, %.0.lcssa.i.i.i.i.i594
  br i1 %.not4.i.i.i180, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i188, label %.lr.ph.i.i.i181

.lr.ph.i.i.i181:                                  ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i184
  %.05.i.i.i182 = phi ptr [ %i.fh, %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i184 ], [ %.sroa.0361.0590, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.fb = load ptr, ptr %.05.i.i.i182, align 8, !tbaa !72 ; 3 uses
  %.not.i.i.i.i.i.i.i183 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i.i.i.i183, label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i184, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i181
  %i.fc = getelementptr inbounds nuw i8, ptr %.05.i.i.i182, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !91
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fb to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.fg) #20
  br label %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i184

_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i184: ; preds = %bb.ac, %.lr.ph.i.i.i181
  %i.fh = getelementptr inbounds nuw i8, ptr %.05.i.i.i182, i64 24 ; 2 uses
  %.not.i.i.i185 = icmp eq ptr %i.fh, %.0.lcssa.i.i.i.i.i594
  br i1 %.not.i.i.i185, label %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i188, label %.lr.ph.i.i.i181, !llvm.loop !92

_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i188: ; preds = %_ZSt8_DestroyISt6vectorIdSaIdEEEvPT_.exit.i.i.i184, %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit
  %.not.i.i1.i189 = icmp eq ptr %.sroa.0361.0590, null
  br i1 %.not.i.i1.i189, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit190, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i188
  %i.fi = ptrtoint ptr %.sroa.0361.0590 to i64
  %i.fj = sub i64 %.sink.i592, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0361.0590, i64 noundef %i.fj) #20
  br label %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit190

_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit190:      ; preds = %_ZSt8_DestroyIPSt6vectorIdSaIdEES2_EvT_S4_RSaIT0_E.exit.i188, %bb.ad
  %.not.i.i.i191 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i191, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit190
  %i.fk = ptrtoint ptr %i.y to i64
  %i.fl = ptrtoint ptr %i.z to i64
  %i.fm = sub i64 %i.fk, %i.fl
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.fm) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev.exit190, %bb.ae
  %.not.i.i.i.i192 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i192, label %_ZN2cv3dpm16PyramidParameterD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.i) #20
  br label %_ZN2cv3dpm16PyramidParameterD2Ev.exit

_ZN2cv3dpm16PyramidParameterD2Ev.exit:            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.af
  ret void

bb.ag:                                            ; preds = %._crit_edge
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.ah:                                            ; preds = %bb.x
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

._crit_edge449:                                   ; preds = %._crit_edge446
  %i.fp = load i32, ptr %i.at, align 4, !tbaa !112
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next473, %i.fq
  br i1 %i.fr, label %.preheader, label %._crit_edge451.split, !llvm.loop !123

bb.ai:                                            ; preds = %.preheader, %._crit_edge446
  %indvars.iv466 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next467, %._crit_edge446 ] ; 7 uses
  %i.fs = add nsw i64 %indvars.iv466, %i.dl       ; 4 uses
  %i.ft = load ptr, ptr %i.cc, align 8, !tbaa !124
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv472
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !125
  %i.fw = fpext float %i.fv to double
  %i.fx = load ptr, ptr %4, align 8, !tbaa !22
  %i.fy = getelementptr inbounds nuw [24 x i8], ptr %i.fx, i64 %indvars.iv472
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !72
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fs
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !74
  %i.gc = fadd double %i.gb, %i.fw                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.gd = load ptr, ptr %5, align 8, !tbaa !114
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %indvars.iv472
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw [208 x i8], ptr %i.gf, i64 %i.fs
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %i.gg)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gh = load i32, ptr %i.cd, align 4, !tbaa !88 ; 2 uses
  %i.gi = sub nsw i32 %i.gh, %i.ci
  %i.gj = icmp sgt i32 %i.gi, %i.ci
  br i1 %i.gj, label %.lr.ph445, label %._crit_edge446

.lr.ph445:                                        ; preds = %bb.aj
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.fs
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv466
  %.pre476 = load i32, ptr %i.cm, align 8, !tbaa !89
  %i.gm = trunc nuw nsw i64 %indvars.iv466 to i32
  br label %bb.al

._crit_edge446:                                   ; preds = %._crit_edge442, %bb.aj
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next467, %wide.trip.count470
  br i1 %exitcond471.not, label %._crit_edge449, label %bb.ai, !llvm.loop !126

bb.ak:                                            ; preds = %bb.ai
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.al:                                            ; preds = %.lr.ph445, %._crit_edge442
  %i.go = phi i32 [ %i.gh, %.lr.ph445 ], [ %i.hb, %._crit_edge442 ]
  %i.gp = phi i32 [ %.pre476, %.lr.ph445 ], [ %i.hc, %._crit_edge442 ] ; 2 uses
  %indvars.iv463 = phi i64 [ %i.dk, %.lr.ph445 ], [ %indvars.iv.next464, %._crit_edge442 ] ; 5 uses
  %i.gq = sub nsw i32 %i.gp, %i.cl
  %i.gr = icmp sgt i32 %i.gq, %i.cl
  br i1 %i.gr, label %.lr.ph441, label %._crit_edge442

.lr.ph441:                                        ; preds = %bb.al
  %i.gs = trunc i64 %indvars.iv463 to i32
  %i.gt = sub i32 %i.gs, %i.dm
  %i.gu = sitofp i32 %i.gt to double
  %indvars.iv463.tr = trunc i64 %indvars.iv463 to i32
  %i.gv = shl i32 %indvars.iv463.tr, 1            ; 2 uses
  %i.gw = sub i32 %i.gv, %i.dm
  %i.gx = insertelement <2 x double> poison, double %i.gu, i64 0
  %i.gy = insertelement <2 x i32> poison, i32 %i.gv, i64 0
  %i.gz = trunc i64 %indvars.iv463 to i32
  %i.ha = insertelement <2 x i32> poison, i32 %i.gw, i64 0
  br label %bb.am

._crit_edge442.loopexit:                          ; preds = %._crit_edge430.thread
  %.pre478 = load i32, ptr %i.cd, align 4, !tbaa !88
  br label %._crit_edge442

._crit_edge442:                                   ; preds = %._crit_edge442.loopexit, %bb.al
  %i.hb = phi i32 [ %.pre478, %._crit_edge442.loopexit ], [ %i.go, %bb.al ] ; 2 uses
  %i.hc = phi i32 [ %i.uz, %._crit_edge442.loopexit ], [ %i.gp, %bb.al ]
  %indvars.iv.next464 = add nsw i64 %indvars.iv463, 1 ; 2 uses
  %i.hd = sub nsw i32 %i.hb, %i.ci
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next464, %i.he
  br i1 %i.hf, label %bb.al, label %._crit_edge446, !llvm.loop !127

bb.am:                                            ; preds = %.lr.ph441, %._crit_edge430.thread
  %indvars.iv460 = phi i64 [ %i.dj, %.lr.ph441 ], [ %indvars.iv.next461, %._crit_edge430.thread ] ; 6 uses
  %i.hg = load i32, ptr %i.cn, align 4, !tbaa !128
  %i.hh = icmp slt i32 %i.hg, 2
  %i.hi = load ptr, ptr %i.co, align 8, !tbaa !129
  %i.hj = load i64, ptr %i.cp, align 8
  %i.hk = mul i64 %i.hj, %indvars.iv460
  %.sink.idx.i = select i1 %i.hh, i64 0, i64 %i.hk
  %.sink.i193 = getelementptr inbounds nuw i8, ptr %i.hi, i64 %.sink.idx.i
  %i.hl = getelementptr inbounds [8 x i8], ptr %.sink.i193, i64 %indvars.iv463
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !74
  %i.hn = fadd double %i.gc, %i.hm                ; 2 uses
  %i.ho = fsub double %i.hn, %i.gc
  %i.hp = load ptr, ptr %i.do, align 8, !tbaa !72
  store double %i.ho, ptr %i.hp, align 8, !tbaa !74
  %i.hq = load ptr, ptr %i.cq, align 8, !tbaa !26
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv472
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !86 ; 2 uses
  %i.ht = shl i32 %i.hs, 1
  %i.hu = add i32 %i.ht, 2                        ; 2 uses
  %i.hv = icmp sgt i32 %i.hs, -1
  br i1 %i.hv, label %.lr.ph429, label %._crit_edge430.thread

.lr.ph429:                                        ; preds = %bb.am
  %smax = call i32 @llvm.smax.i32(i32 %i.hu, i32 2) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64
  %indvars.iv460.tr = trunc i64 %indvars.iv460 to i32
  %i.hw = shl i32 %indvars.iv460.tr, 1
  %i.hx = insertelement <2 x i32> %i.gy, i32 %i.hw, i64 1
  %i.hy = trunc i64 %indvars.iv460 to i32
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph429, %bb.aw
  %indvars.iv454 = phi i64 [ 1, %.lr.ph429 ], [ %indvars.iv.next455, %bb.aw ] ; 5 uses
  %.0384426 = phi double [ %i.hn, %.lr.ph429 ], [ %.1.ph, %bb.aw ] ; 4 uses
  %i.hz = load ptr, ptr %i.cr, align 8, !tbaa !22
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.hz, i64 %indvars.iv472
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !72
  %.idx = shl i64 %indvars.iv454, 4
  %i.ic = getelementptr i8, ptr %i.ib, i64 %.idx  ; 2 uses
  %i.id = getelementptr i8, ptr %i.ic, i64 -8
  %i.ie = load double, ptr %i.id, align 8, !tbaa !74
  %i.if = fcmp olt double %.0384426, %i.ie
  br i1 %i.if, label %._crit_edge430.split.loop.exit601, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ig = load ptr, ptr %i.cq, align 8, !tbaa !26
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv472
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !86
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp sle i64 %indvars.iv454, %i.ij      ; 5 uses
  %i.il = load ptr, ptr %i.cs, align 8, !tbaa !130
  %i.im = getelementptr inbounds nuw [24 x i8], ptr %i.il, i64 %indvars.iv472
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !26
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv454
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !86 ; 2 uses
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %.invoke, label %bb.ar

.invoke:                                          ; preds = %bb.ao
  %. = select i1 %i.ik, ptr %i.cw, ptr %i.aa
  %.618.v = select i1 %i.ik, i64 848, i64 408
  %.618 = getelementptr inbounds nuw i8, ptr %0, i64 %.618.v
  %.619.v = select i1 %i.ik, i64 816, i64 328
  %.619 = getelementptr inbounds nuw i8, ptr %0, i64 %.619.v
  %i.ir = load i32, ptr %.619, align 8, !tbaa !86
  %.pn608 = load ptr, ptr %.618, align 8, !tbaa !18
  %i.is = getelementptr inbounds nuw [208 x i8], ptr %.pn608, i64 %indvars.iv472
  %.pn607 = load ptr, ptr %., align 8, !tbaa !18
  %i.it = getelementptr inbounds nuw [208 x i8], ptr %.pn607, i64 %i.fs
  %i.iu = invoke noundef double @_ZN2cv3dpm17ConvolutionEngine8convolveERKNS_3MatES4_iii(ptr noundef nonnull align 1 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(208) %i.it, ptr noundef nonnull align 8 dereferenceable(208) %i.is, i32 noundef %i.ir, i32 noundef %i.gz, i32 noundef %i.hy)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %.invoke
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.aq:                                            ; preds = %.invoke
  %i.iw = load ptr, ptr %i.do, align 8, !tbaa !72
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !74
  %i.iy = fsub double %i.iu, %i.ix
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ao
  %i.iz = load ptr, ptr %i.ct, align 8, !tbaa !130
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %i.iz, i64 %indvars.iv472
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !26
  %i.jc = sext i32 %i.ip to i64                   ; 2 uses
  %i.jd = getelementptr [4 x i8], ptr %i.jb, i64 %i.jc
  %i.je = getelementptr i8, ptr %i.jd, i64 -4
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !86 ; 2 uses
  %i.jg = sext i32 %i.jf to i64
  %i.jh = load ptr, ptr %i.cu, align 8, !tbaa !22
  %i.ji = getelementptr inbounds nuw [24 x i8], ptr %i.jh, i64 %i.jg
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !72
  %i.jk = load <2 x double>, ptr %i.jj, align 8, !tbaa !74
  %i.jl = fptosi <2 x double> %i.jk to <2 x i32>
  %i.jm = add nsw <2 x i32> %i.hx, %i.jl          ; 2 uses
  %i.jn = load double, ptr %i.ic, align 8, !tbaa !74
  %i.jo = fsub double %i.jn, %.0384426
  %i.jp = extractelement <2 x i32> %i.jm, i64 0
  %i.jq = extractelement <2 x i32> %i.jm, i64 1
  %i.jr = invoke noundef double @_ZN2cv3dpm10DPMCascade16computePartScoreEiiiibd(ptr noundef nonnull align 8 dereferenceable(1033) %0, i32 noundef %i.gm, i32 noundef %i.jf, i32 noundef %i.jp, i32 noundef %i.jq, i1 noundef zeroext %i.ik, double noundef %i.jo)
          to label %bb.as unwind label %bb.au     ; 3 uses

bb.as:                                            ; preds = %bb.ar
  %i.js = load ptr, ptr %i.do, align 8, !tbaa !72
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %i.jc ; 2 uses
  br i1 %i.ik, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  store double %i.jr, ptr %i.jt, align 8, !tbaa !74
  br label %bb.aw

bb.au:                                            ; preds = %bb.ar
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.av:                                            ; preds = %bb.as
  %i.jv = load double, ptr %i.jt, align 8, !tbaa !74
  %i.jw = fsub double %i.jr, %i.jv
  br label %bb.aw

bb.aw:                                            ; preds = %bb.at, %bb.av, %bb.aq
  %.pn389 = phi double [ %i.jr, %bb.at ], [ %i.jw, %bb.av ], [ %i.iy, %bb.aq ]
  %.1.ph = fadd double %.0384426, %.pn389         ; 2 uses
  %indvars.iv.next455 = add nuw nsw i64 %indvars.iv454, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next455, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge430, label %bb.an, !llvm.loop !131

._crit_edge430.split.loop.exit601:                ; preds = %bb.an
  %i.jx = trunc nuw nsw i64 %indvars.iv454 to i32
  br label %._crit_edge430

._crit_edge430:                                   ; preds = %bb.aw, %._crit_edge430.split.loop.exit601
  %.0384.lcssa.ph = phi double [ %.0384426, %._crit_edge430.split.loop.exit601 ], [ %.1.ph, %bb.aw ] ; 3 uses
  %.0128.lcssa.ph = phi i32 [ %i.jx, %._crit_edge430.split.loop.exit601 ], [ %smax, %bb.aw ]
  %i.jy = icmp eq i32 %.0128.lcssa.ph, %i.hu
  br i1 %i.jy, label %bb.ax, label %._crit_edge430.thread

bb.ax:                                            ; preds = %._crit_edge430
  %i.jz = load float, ptr %i.cx, align 8, !tbaa !132
  %i.ka = fpext float %i.jz to double
  %i.kb = fcmp ult double %.0384.lcssa.ph, %i.ka
  br i1 %i.kb, label %._crit_edge430.thread, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.kc = load i32, ptr %i.cy, align 8, !tbaa !133
  %i.kd = sitofp i32 %i.kc to double
  %i.ke = load double, ptr %i.gk, align 8, !tbaa !74
  %i.kf = fdiv double %i.kd, %i.ke
  %i.kg = trunc i64 %indvars.iv460 to i32
  %i.kh = sub i32 %i.kg, %i.dn
  %i.ki = sitofp i32 %i.kh to double
  %i.kj = load ptr, ptr %i.cz, align 8, !tbaa !134
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %indvars.iv472
  %i.kl = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kn = insertelement <2 x double> %i.gx, double %i.ki, i64 1
  %i.ko = fmul <2 x double> %i.km, %i.kn          ; 3 uses
  %i.kp = load <2 x i32>, ptr %i.kk, align 4, !tbaa !86
  %i.kq = sitofp <2 x i32> %i.kp to <2 x double>
  %i.kr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> %i.km, <2 x double> %i.ko)
  %i.ks = fadd <2 x double> %i.kr, splat (double -1.000000e+00) ; 2 uses
  %i.kt = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21
          to label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i198 unwind label %.loopexit391 ; 6 uses

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i198: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i
  %i.ku = extractelement <2 x double> %i.ko, i64 0
  store double %i.ku, ptr %i.kt, align 8, !tbaa !74
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  store ptr %i.kt, ptr %7, align 8, !tbaa !72
  store ptr %i.kv, ptr %i.da, align 8, !tbaa !71
  store ptr %i.kv, ptr %i.db, align 8, !tbaa !91
  %i.kw = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21
          to label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit206 unwind label %.loopexit391 ; 8 uses

_ZNSt6vectorIdSaIdEE9push_backERKd.exit206:       ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i198
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.kz = extractelement <2 x double> %i.ko, i64 1
  store double %i.kz, ptr %i.ky, align 8, !tbaa !74
  %i.la = load i64, ptr %i.kt, align 8
  store i64 %i.la, ptr %i.kw, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.lc = load ptr, ptr %i.db, align 8, !tbaa !91
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = sub i64 %i.ld, %i.kx
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.le) #20
  store ptr %i.kw, ptr %7, align 8, !tbaa !72
  store ptr %i.lb, ptr %i.da, align 8, !tbaa !71
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  store ptr %i.lf, ptr %i.db, align 8, !tbaa !91
  %i.lg = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21
          to label %.noexc215 unwind label %.loopexit391 ; 8 uses

.noexc215:                                        ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit206
  %i.lh = ptrtoint ptr %i.kw to i64
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.lj = extractelement <2 x double> %i.ks, i64 0
  store double %i.lj, ptr %i.li, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i64 16, i1 false)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 24 ; 2 uses
  %i.ll = load ptr, ptr %i.db, align 8, !tbaa !91
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = sub i64 %i.lm, %i.lh
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef %i.ln) #20
  store ptr %i.lg, ptr %7, align 8, !tbaa !72
  store ptr %i.lk, ptr %i.da, align 8, !tbaa !71
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 3 uses
  store ptr %i.lo, ptr %i.db, align 8, !tbaa !91
  %i.lp = extractelement <2 x double> %i.ks, i64 1
  store double %i.lp, ptr %i.lk, align 8, !tbaa !74
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lg, i64 32 ; 3 uses
  store ptr %i.lq, ptr %i.da, align 8, !tbaa !71
  %i.lr = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ls = getelementptr inbounds nuw [208 x i8], ptr %i.lr, i64 %indvars.iv466
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !88
  %i.lv = sdiv i32 %i.lu, 32
  %i.lw = load ptr, ptr %i.cq, align 8, !tbaa !26
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %indvars.iv472
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !86
  %i.lz = icmp sgt i32 %i.ly, 0
  br i1 %i.lz, label %.lr.ph436, label %._crit_edge437

.lr.ph436:                                        ; preds = %.noexc215
  %i.ma = load i32, ptr %i.cy, align 8, !tbaa !133
  %i.mb = sitofp i32 %i.ma to double
  %i.mc = load double, ptr %i.gl, align 8, !tbaa !74
  %i.md = fdiv double %i.mb, %i.mc
  %indvars.iv460.tr583 = trunc i64 %indvars.iv460 to i32
  %i.me = shl i32 %indvars.iv460.tr583, 1
  %i.mf = sub i32 %i.me, %i.dn
  %i.mg = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mi = insertelement <2 x i32> %i.ha, i32 %i.mf, i64 1
  br label %bb.bc

._crit_edge437:                                   ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270, %.noexc215
  %i.mj = phi ptr [ %i.lg, %.noexc215 ], [ %i.so, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270 ] ; 4 uses
  %i.mk = phi ptr [ %i.lo, %.noexc215 ], [ %i.sn, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270 ] ; 3 uses
  %i.ml = phi ptr [ %i.lq, %.noexc215 ], [ %i.sp, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270 ] ; 3 uses
  %.not.i.i227 = icmp eq ptr %i.ml, %i.mk
  br i1 %.not.i.i227, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge437
  store double %i.dq, ptr %i.ml, align 8, !tbaa !74
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 2 uses
  store ptr %i.mm, ptr %i.da, align 8, !tbaa !71
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.az:                                            ; preds = %._crit_edge437
  %i.mn = ptrtoint ptr %i.mk to i64
  %i.mo = ptrtoint ptr %i.mj to i64               ; 2 uses
  %i.mp = sub i64 %i.mn, %i.mo                    ; 5 uses
  %i.mq = icmp eq i64 %i.mp, 9223372036854775800
  br i1 %i.mq, label %bb.ba, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.noexc229 unwind label %.loopexit.split-lp397

.noexc229:                                        ; preds = %bb.ba
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.az
  %i.mr = ashr exact i64 %i.mp, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.mr, i64 1)
  %i.ms = add nsw i64 %.sroa.speculated.i.i.i.i, %i.mr ; 2 uses
  %i.mt = icmp ult i64 %i.ms, %i.mr
  %i.mu = call i64 @llvm.umin.i64(i64 %i.ms, i64 1152921504606846975)
  %i.mv = select i1 %i.mt, i64 1152921504606846975, i64 %i.mu ; 3 uses
  %.not.i.i.i.i228 = icmp ne i64 %i.mv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i228)
  %i.mw = shl nuw nsw i64 %i.mv, 3
  %i.mx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mw) #21
          to label %.noexc230 unwind label %.loopexit396 ; 5 uses

.noexc230:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.my = getelementptr inbounds i8, ptr %i.mx, i64 %i.mp ; 2 uses
  store double %i.dq, ptr %i.my, align 8, !tbaa !74
  %i.mz = icmp sgt i64 %i.mp, 0
  br i1 %i.mz, label %bb.bb, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

bb.bb:                                            ; preds = %.noexc230
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mx, ptr align 8 %i.mj, i64 %i.mp, i1 false)
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.bb, %.noexc230
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.nb = load ptr, ptr %i.db, align 8, !tbaa !91
  %i.nc = ptrtoint ptr %i.nb to i64
  %i.nd = sub i64 %i.nc, %i.mo
  call void @_ZdlPvm(ptr noundef nonnull %i.mj, i64 noundef %i.nd) #20
  store ptr %i.mx, ptr %7, align 8, !tbaa !72
  store ptr %i.na, ptr %i.da, align 8, !tbaa !71
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.mv ; 2 uses
  store ptr %i.ne, ptr %i.db, align 8, !tbaa !91
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

.loopexit391:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i198, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit206
  %lpad.loopexit393 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bc:                                            ; preds = %.lr.ph436, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270
  %i.nf = phi ptr [ %i.lo, %.lr.ph436 ], [ %i.sn, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270 ] ; 3 uses
  %i.ng = phi ptr [ %i.lg, %.lr.ph436 ], [ %i.so, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270 ] ; 4 uses
  %i.nh = phi ptr [ %i.lq, %.lr.ph436 ], [ %i.sp, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270 ] ; 3 uses
  %indvars.iv457 = phi i64 [ 0, %.lr.ph436 ], [ %indvars.iv.next458, %_ZNSt6vectorIdSaIdEE9push_backERKd.exit270 ] ; 3 uses
  %i.ni = load ptr, ptr %i.ct, align 8, !tbaa !130
  %i.nj = getelementptr inbounds nuw [24 x i8], ptr %i.ni, i64 %indvars.iv472
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !26
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv457
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !86 ; 2 uses
  %i.nn = sext i32 %i.nm to i64
  %i.no = load ptr, ptr %i.cu, align 8, !tbaa !22
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %i.no, i64 %i.nn
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !72
  %i.nr = load ptr, ptr %i.dc, align 8, !tbaa !26
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv466
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !86
  %i.nu = load ptr, ptr %i.dd, align 8, !tbaa !26
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.nu, i64 %indvars.iv466
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !86
  %i.nx = mul nsw i32 %i.nw, %i.nm
  %i.ny = load <2 x double>, ptr %i.nq, align 8, !tbaa !74
  %i.nz = fptosi <2 x double> %i.ny to <2 x i32>
  %i.oa = add <2 x i32> %i.mi, %i.nz              ; 2 uses
  %i.ob = extractelement <2 x i32> %i.oa, i64 1
  %i.oc = mul nsw i32 %i.ob, %i.lv
  %i.od = extractelement <2 x i32> %i.oa, i64 0
  %i.oe = add i32 %i.od, %i.nt
  %i.of = add i32 %i.oe, %i.oc
  %i.og = add i32 %i.of, %i.nx
  %i.oh = sext i32 %i.og to i64                   ; 2 uses
  %i.oi = load ptr, ptr %i.de, align 8, !tbaa !26
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %i.oh
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !86
  %i.ol = load ptr, ptr %i.df, align 8, !tbaa !26
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %i.oh
  %i.on = load i32, ptr %i.om, align 4, !tbaa !86
  %i.oo = load ptr, ptr %i.dg, align 8, !tbaa !134
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %indvars.iv457
  %i.oq = insertelement <2 x i32> poison, i32 %i.ok, i64 0
  %i.or = insertelement <2 x i32> %i.oq, i32 %i.on, i64 1
  %i.os = sub <2 x i32> %i.or, %i.b
  %i.ot = sitofp <2 x i32> %i.os to <2 x double>
  %i.ou = fmul <2 x double> %i.mh, %i.ot          ; 5 uses
  %i.ov = load <2 x i32>, ptr %i.op, align 4, !tbaa !86
  %i.ow = sitofp <2 x i32> %i.ov to <2 x double>
  %i.ox = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ow, <2 x double> %i.mh, <2 x double> %i.ou) ; 2 uses
  %i.oy = extractelement <2 x double> %i.ox, i64 0
  %i.oz = fadd double %i.oy, -1.000000e+00        ; 2 uses
  %i.pa = extractelement <2 x double> %i.ox, i64 1
  %i.pb = fadd double %i.pa, -1.000000e+00        ; 2 uses
  %.not.i231 = icmp eq ptr %i.nh, %i.nf
  br i1 %.not.i231, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pc = extractelement <2 x double> %i.ou, i64 0
  store double %i.pc, ptr %i.nh, align 8, !tbaa !74
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  store ptr %i.pd, ptr %i.da, align 8, !tbaa !71
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit240

bb.be:                                            ; preds = %bb.bc
  %i.pe = ptrtoint ptr %i.nf to i64
  %i.pf = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.pg = sub i64 %i.pe, %i.pf                    ; 5 uses
  %i.ph = icmp eq i64 %i.pg, 9223372036854775800
  br i1 %i.ph, label %.invoke605, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i232

.invoke605:                                       ; preds = %bb.bn, %bb.bk, %bb.bh, %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #19
          to label %.cont606 unwind label %.loopexit.split-lp

.cont606:                                         ; preds = %.invoke605
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i232: ; preds = %bb.be
  %i.pi = ashr exact i64 %i.pg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i233 = call i64 @llvm.umax.i64(i64 %i.pi, i64 1)
  %i.pj = add nsw i64 %.sroa.speculated.i.i.i233, %i.pi ; 2 uses
  %i.pk = icmp ult i64 %i.pj, %i.pi
  %i.pl = call i64 @llvm.umin.i64(i64 %i.pj, i64 1152921504606846975)
  %i.pm = select i1 %i.pk, i64 1152921504606846975, i64 %i.pl ; 3 uses
  %.not.i.i.i234 = icmp ne i64 %i.pm, 0
  call void @llvm.assume(i1 %.not.i.i.i234)
  %i.pn = shl nuw nsw i64 %i.pm, 3
  %i.po = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pn) #21
          to label %.noexc239 unwind label %.loopexit ; 5 uses

.noexc239:                                        ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i232
  %i.pp = getelementptr inbounds i8, ptr %i.po, i64 %i.pg ; 2 uses
  %i.pq = extractelement <2 x double> %i.ou, i64 0
  store double %i.pq, ptr %i.pp, align 8, !tbaa !74
  %i.pr = icmp sgt i64 %i.pg, 0
  br i1 %i.pr, label %bb.bf, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i237

bb.bf:                                            ; preds = %.noexc239
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.po, ptr align 8 %i.ng, i64 %i.pg, i1 false)
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i237

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i237: ; preds = %bb.bf, %.noexc239
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 2 uses
  %i.pt = load ptr, ptr %i.db, align 8, !tbaa !91
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = sub i64 %i.pu, %i.pf
  call void @_ZdlPvm(ptr noundef nonnull %i.ng, i64 noundef %i.pv) #20
  store ptr %i.po, ptr %7, align 8, !tbaa !72
  store ptr %i.ps, ptr %i.da, align 8, !tbaa !71
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.pm ; 2 uses
  store ptr %i.pw, ptr %i.db, align 8, !tbaa !91
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit240

_ZNSt6vectorIdSaIdEE9push_backERKd.exit240:       ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i237, %bb.bd
  %i.px = phi ptr [ %i.pw, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i237 ], [ %i.nf, %bb.bd ] ; 3 uses
  %i.py = phi ptr [ %i.ps, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i237 ], [ %i.pd, %bb.bd ] ; 3 uses
  %i.pz = phi ptr [ %i.po, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJRKdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i237 ], [ %i.ng, %bb.bd ] ; 4 uses
  %.not.i241 = icmp eq ptr %i.py, %i.px
  br i1 %.not.i241, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit240
  %i.qa = extractelement <2 x double> %i.ou, i64 1
  store double %i.qa, ptr %i.py, align 8, !tbaa !74
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  store ptr %i.qb, ptr %i.da, align 8, !tbaa !71
  br label %_ZNSt6vectorIdSaIdEE9push_backERKd.exit250

bb.bh:                                            ; preds = %_ZNSt6vectorIdSaIdEE9push_backERKd.exit240
  %i.qc = ptrtoint ptr %i.px to i64
end_hunk_0
