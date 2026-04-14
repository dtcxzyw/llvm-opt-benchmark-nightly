inline.NumInlined: 29982
inline.NumDeleted: 10454
begin_hunk_0_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
.lr.ph.i79:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.jy = add nsw i64 %.0.i50, 1
  %.sroa.speculated.i80 = call i64 @llvm.smin.i64(i64 %i.at, i64 %i.jy) ; 2 uses
  %i.jz = and i64 %.sroa.speculated.i80, 63
  %notmask.i = shl nsw i64 -1, %i.jz
  %i.ka = xor i64 %notmask.i, -1
  %8 = sdiv i64 %.sroa.speculated.i80, 64
  %9 = add nsw i64 %8, 1
  %i.kb = load ptr, ptr %6, align 8, !noalias !6783 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 48
end_hunk_0
begin_hunk_1_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  br label %common.resume

bb.af:                                            ; preds = %bb.ba, %.lr.ph.i79
  %.079.i = phi i64 [ 0, %.lr.ph.i79 ], [ %i.si, %bb.ba ] ; 6 uses
  %.sroa.0.078.i = phi i64 [ %9, %.lr.ph.i79 ], [ %.sroa.0.2.i, %bb.ba ] ; 4 uses
  %.sroa.17.076.i = phi i64 [ -1, %.lr.ph.i79 ], [ %.sroa.17.1.i, %bb.ba ] ; 5 uses
  %.sroa.13.074.i = phi i64 [ %i.ka, %.lr.ph.i79 ], [ %.sroa.13.1.i, %bb.ba ] ; 5 uses
  %.sroa.10.073.i = phi i64 [ 0, %.lr.ph.i79 ], [ %.sroa.10.1.i, %bb.ba ] ; 12 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.079.i
  %11 = load i8, ptr %10, align 1, !tbaa !79, !noalias !6783 ; 12 uses
  %12 = lshr i64 %.079.i, 6                       ; 4 uses
  %13 = and i64 %.079.i, 63                       ; 4 uses
  %i.kh = icmp eq i64 %.sroa.0.078.i, 1
  br i1 %i.kh, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ki = icmp sgt i8 %11, -1
  br i1 %i.ki, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kj = zext nneg i8 %11 to i64
  %i.kk = mul nsw i64 %i.kf, %i.kj
  %i.kl = getelementptr [8 x i8], ptr %i.ke, i64 %i.kk
  %i.km = getelementptr [8 x i8], ptr %i.kl, i64 %.sroa.10.073.i
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ko = getelementptr inbounds nuw [2048 x i8], ptr %i.kb, i64 %.sroa.10.073.i ; 3 uses
  %i.kp = sext i8 %11 to i64                      ; 7 uses
  %i.kq = and i64 %i.kp, 127
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
end_hunk_1
begin_hunk_2_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, %.lr.ph.i.i.preheader.i.i.i, %.preheader.i.i.i.i.i, %bb.aj, %bb.ai, %bb.ah
  %.0.i.i.i = phi i64 [ %i.kn, %bb.ah ], [ 0, %bb.ai ], [ %i.kt, %bb.aj ], [ 0, %.preheader.i.i.i.i.i ], [ %i.lc, %.lr.ph.i.i.preheader.i.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i ], [ %i.ln, %.lr.ph.i.i.i.i.i ]
  %14 = and i64 %.sroa.17.076.i, %.0.i.i.i
  %i.lq = and i64 %14, %.sroa.13.074.i            ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.sroa.10.073.i ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !33 ; 2 uses
  %i.lt = xor i64 %i.ls, -1
  %i.lu = and i64 %i.lq, %i.lt                    ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  store i64 %i.lx, ptr %i.lr, align 8, !tbaa !33
  %i.ly = icmp ne i64 %i.lu, 0
  %i.lz = zext i1 %i.ly to i64
  %i.ma = shl nuw i64 %i.lz, %13
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %12 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !33
  %i.md = or i64 %i.ma, %i.mc
  store i64 %i.md, ptr %i.mb, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

bb.ak:                                            ; preds = %bb.af
  %.not.i.i = icmp eq i64 %.sroa.17.076.i, 0
  br i1 %.not.i.i, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.me = icmp sgt i8 %11, -1
  br i1 %i.me, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mf = zext nneg i8 %11 to i64
  %i.mg = mul nsw i64 %i.kf, %i.mf
  %i.mh = getelementptr [8 x i8], ptr %i.ke, i64 %i.mg
  %i.mi = getelementptr [8 x i8], ptr %i.mh, i64 %.sroa.10.073.i
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i

bb.an:                                            ; preds = %bb.al
  %i.mk = getelementptr inbounds nuw [2048 x i8], ptr %i.kb, i64 %.sroa.10.073.i ; 3 uses
  %i.ml = sext i8 %11 to i64                      ; 7 uses
  %i.mm = and i64 %i.ml, 127
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mk, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
end_hunk_3
begin_hunk_4_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i: ; preds = %.lr.ph.i.i.i71.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i, %.lr.ph.i.i.preheader.i67.i.i, %.preheader.i.i.i65.i.i, %bb.ao, %bb.an, %bb.am
  %.0.i72.i.i = phi i64 [ %i.mj, %bb.am ], [ 0, %bb.an ], [ %i.mp, %bb.ao ], [ 0, %.preheader.i.i.i65.i.i ], [ %i.my, %.lr.ph.i.i.preheader.i67.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i ], [ %i.nj, %.lr.ph.i.i.i71.i.i ]
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.sroa.10.073.i ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !33 ; 2 uses
  %i.no = xor i64 %i.nn, -1
  %i.np = and i64 %.0.i72.i.i, %i.no
  %i.nq = and i64 %i.np, %.sroa.17.076.i          ; 3 uses
  %.not61.i.i = icmp eq i64 %i.nq, 0
  br i1 %.not61.i.i, label %.thread.i.i, label %bb.ap

.thread.i.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i
  %i.nr = add nsw i64 %.sroa.10.073.i, 1
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i
end_hunk_4
begin_hunk_5_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %i.nt = and i64 %i.nq, %i.ns
  %i.nu = or i64 %i.nt, %i.nn
  store i64 %i.nu, ptr %i.nm, align 8, !tbaa !33
  %i.nv = shl nuw i64 1, %13
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %12 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !33
  %i.ny = or i64 %i.nx, %i.nv
  store i64 %i.ny, ptr %i.nw, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

bb.aq:                                            ; preds = %.thread.i.i, %bb.ak
  %.1.i.i = phi i64 [ %i.nr, %.thread.i.i ], [ %.sroa.10.073.i, %bb.ak ] ; 4 uses
  %i.nz = add i64 %.sroa.0.078.i, -1
  %i.oa = add i64 %i.nz, %.sroa.10.073.i          ; 5 uses
  %i.ob = icmp slt i64 %.1.i.i, %i.oa
  br i1 %i.ob, label %.lr.ph.i.i84, label %._crit_edge.i.i

.lr.ph.i.i84:                                     ; preds = %bb.aq
  %i.oc = icmp sgt i8 %11, -1
  %i.od = sext i8 %11 to i64                      ; 7 uses
  %i.oe = and i64 %i.od, 127
  %i.of = mul nsw i64 %i.od, 5
  %i.og = add nsw i64 %i.od, 1
  %i.oh = add nsw i64 %i.og, %i.of
  %i.oi = and i64 %i.oh, 127                      ; 2 uses
  %i.oj = zext nneg i8 %11 to i64
  %i.ok = mul nsw i64 %i.kf, %i.oj
  %i.ol = getelementptr [8 x i8], ptr %i.ke, i64 %i.ok
  br i1 %i.oc, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us.i.i, label %.lr.ph.split.i.i
end_hunk_5
begin_hunk_6_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %i.pv = and i64 %.us-phi12.i.i, %i.pu
  %i.pw = or i64 %i.pv, %.us-phi13.i.i
  store i64 %i.pw, ptr %i.pt, align 8, !tbaa !33
  %i.px = shl nuw i64 1, %13
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %12 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !33
  %i.qa = or i64 %i.pz, %i.px
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !33
end_hunk_6
begin_hunk_7_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.critedge.us.i.i, %bb.aq
  %.2.lcssa.i.i = phi i64 [ %.1.i.i, %bb.aq ], [ %i.oa, %.critedge.us.i.i ], [ %i.oa, %.critedge.i.i ] ; 3 uses
  %.not62.i.i = icmp eq i64 %.sroa.13.074.i, 0
  br i1 %.not62.i.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i
  %i.qc = icmp sgt i8 %11, -1
  br i1 %i.qc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qd = zext nneg i8 %11 to i64
  %i.qe = mul nsw i64 %i.kf, %i.qd
  %i.qf = getelementptr [8 x i8], ptr %i.ke, i64 %i.qe
  %i.qg = getelementptr [8 x i8], ptr %i.qf, i64 %.2.lcssa.i.i
end_hunk_7
begin_hunk_8_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

bb.au:                                            ; preds = %bb.as
  %i.qi = getelementptr inbounds nuw [2048 x i8], ptr %i.kb, i64 %.2.lcssa.i.i ; 3 uses
  %i.qj = sext i8 %11 to i64                      ; 7 uses
  %i.qk = and i64 %i.qj, 127
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
end_hunk_8
begin_hunk_9_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !33 ; 2 uses
  %i.rm = xor i64 %i.rl, -1
  %i.rn = and i64 %.0.i94.i.i, %i.rm
  %i.ro = and i64 %i.rn, %.sroa.13.074.i          ; 3 uses
  %i.rp = sub i64 0, %i.ro
  %i.rq = and i64 %i.ro, %i.rp
  %i.rr = or i64 %i.rq, %i.rl
  store i64 %i.rr, ptr %i.rk, align 8, !tbaa !33
  %i.rs = icmp ne i64 %i.ro, 0
  %i.rt = zext i1 %i.rs to i64
  %i.ru = shl nuw i64 %i.rt, %13
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %12 ; 2 uses
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !33
  %i.rx = or i64 %i.ru, %i.rw
  store i64 %i.rx, ptr %i.rv, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, %._crit_edge.i.i, %.split.us.i.i, %bb.ap, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i
  %i.ry = add nsw i64 %.079.i, %.0.i50            ; 2 uses
  %i.rz = add nsw i64 %i.ry, 1
  %i.sa = icmp slt i64 %i.rz, %i.at
  br i1 %i.sa, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %i.sb = shl i64 %.sroa.13.074.i, 1              ; 2 uses
  %i.sc = or disjoint i64 %i.sb, 1
  %i.sd = add nsw i64 %i.ry, 2
  %i.se = icmp slt i64 %i.sd, %i.at
  %i.sf = icmp eq i64 %i.sb, -2
  %or.cond.i83 = select i1 %i.se, i1 %i.sf, i1 false ; 2 uses
  %spec.select.i = select i1 %or.cond.i83, i64 0, i64 %i.sc
  %15 = zext i1 %or.cond.i83 to i64
  %spec.select51.i = add nsw i64 %.sroa.0.078.i, %15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %.sroa.13.1.i = phi i64 [ %.sroa.13.074.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ], [ %spec.select.i, %bb.aw ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.078.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ], [ %spec.select51.i, %bb.aw ] ; 3 uses
  %.not.i81 = icmp slt i64 %.079.i, %.0.i50
  br i1 %.not.i81, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.sg = shl i64 %.sroa.17.076.i, 1              ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %16 = add nsw i64 %.sroa.0.1.i, -1
  %17 = add nsw i64 %.sroa.10.073.i, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.10.1.i = phi i64 [ %.sroa.10.073.i, %bb.ax ], [ %17, %bb.az ], [ %.sroa.10.073.i, %bb.ay ]
  %.sroa.17.1.i = phi i64 [ %.sroa.17.076.i, %bb.ax ], [ -1, %bb.az ], [ %i.sg, %bb.ay ]
  %.sroa.0.2.i = phi i64 [ %.sroa.0.1.i, %bb.ax ], [ %16, %bb.az ], [ %.sroa.0.1.i, %bb.ay ]
  %i.si = add nuw nsw i64 %.079.i, 1              ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.si, %i.av
  br i1 %exitcond.not.i82, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit, label %bb.af, !llvm.loop !6787

end_hunk_9
