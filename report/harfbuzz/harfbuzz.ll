Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/harfbuzz?download=true
inline.NumInlined: 35466
inline.NumDeleted: 12449
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 271
loop-unroll.NumUnrolled: 468
begin_hunk_0_@_ZL24hb_ot_tags_from_languagePKcS0_PjS1_:bb.a
  br i1 %i.agp, label %bb.jx, label %.lr.ph.i.i.i132.preheader, !prof !266

bb.jx:                                            ; preds = %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124
  %i.agq = zext nneg i32 %i.ago to i64
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr @_ZL19ot_languages3_multi, i64 %i.agq
  %i.ags = load i32, ptr %i.agr, align 8, !tbaa !1428
  %i.agt = icmp eq i32 %i.ags, %.019.i
  br i1 %i.agt, label %.critedge9, label %.lr.ph.i.i.i132.preheader, !prof !266

.lr.ph.i.i.i132.preheader:                        ; preds = %bb.jx, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit124
  br label %.lr.ph.i.i.i132

.lr.ph.i.i.i132:                                  ; preds = %.lr.ph.i.i.i132.preheader, %bb.kb
  %.0203.i.i.i133 = phi i32 [ %.2.i.i.i137, %bb.kb ], [ 136, %.lr.ph.i.i.i132.preheader ] ; 2 uses
  %.0212.i.i.i134 = phi i32 [ %.223.i.i.i136, %bb.kb ], [ 0, %.lr.ph.i.i.i132.preheader ] ; 2 uses
  %i.agu = add i32 %.0212.i.i.i134, %.0203.i.i.i133
  %i.agv = lshr i32 %i.agu, 1                     ; 4 uses
  %i.agw = zext nneg i32 %i.agv to i64
  %i.agx = shl nuw nsw i64 %i.agw, 3
  %i.agy = getelementptr inbounds nuw i8, ptr @_ZL19ot_languages3_multi, i64 %i.agx
  %i.agz = load i32, ptr %i.agy, align 8, !tbaa !1428 ; 2 uses
  %i.aha = icmp ult i32 %.019.i, %i.agz
  br i1 %i.aha, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %.lr.ph.i.i.i132
  %i.ahb = add nsw i32 %i.agv, -1
  br label %bb.kb

bb.jz:                                            ; preds = %.lr.ph.i.i.i132
  %.not28.i.i.i135 = icmp eq i32 %.019.i, %i.agz
  br i1 %.not28.i.i.i135, label %.critedge9, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.ahc = add nuw nsw i32 %i.agv, 1
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jy
  %.223.i.i.i136 = phi i32 [ %i.ahc, %bb.ka ], [ %.0212.i.i.i134, %bb.jy ] ; 2 uses
  %.2.i.i.i137 = phi i32 [ %.0203.i.i.i133, %bb.ka ], [ %i.ahb, %bb.jy ] ; 2 uses
  %.not.not.i.i.i138 = icmp sgt i32 %.223.i.i.i136, %.2.i.i.i137
  br i1 %.not.not.i.i.i138, label %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %.lr.ph.i.i.i132, !llvm.loop !3062

.critedge9:                                       ; preds = %bb.jz, %bb.jx
  %.0204 = phi i32 [ %i.ago, %bb.jx ], [ %i.agv, %bb.jz ] ; 2 uses
  store atomic i32 %.0204, ptr @_ZZL24hb_ot_tags_from_languagePKcS0_PjS1_E20last_tag_idx_3_multi.0 monotonic, align 4
  %i.ahd = load i32, ptr %2, align 4, !tbaa !322
  %.not249 = icmp eq i32 %i.ahd, 0
  br i1 %.not249, label %.critedge106, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge9
  %i.ahe = zext nneg i32 %.0204 to i64
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr @_ZL19ot_languages3_multi, i64 %i.ahe ; 2 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 6
  %i.ahh = load i8, ptr %i.ahg, align 2, !tbaa !1429 ; 2 uses
  %i.ahi = zext i8 %i.ahh to i32
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 4
  %wide.trip.count = zext i8 %i.ahh to i64
  %i.ahk = load i16, ptr %i.ahj, align 4, !tbaa !1430
  %i.ahl = zext i16 %i.ahk to i64
  %invariant.gep = getelementptr inbounds [4 x i8], ptr @_ZL26ot_languages3_multi_values, i64 %i.ahl
  br label %bb.kd

bb.kc:                                            ; preds = %bb.kd
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge106, label %bb.kd, !llvm.loop !3063

bb.kd:                                            ; preds = %.lr.ph, %bb.kc
  %indvars.iv312 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.kc ] ; 3 uses
  %gep = getelementptr inbounds [4 x i8], ptr %invariant.gep, i64 %indvars.iv312
  %i.ahm = load i32, ptr %gep, align 4, !tbaa !322
  %i.ahn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv312
  store i32 %i.ahm, ptr %i.ahn, align 4, !tbaa !322
  %indvars.iv.next = add nuw nsw i64 %indvars.iv312, 1 ; 4 uses
  %i.aho = load i32, ptr %2, align 4, !tbaa !322
  %i.ahp = zext i32 %i.aho to i64
  %i.ahq = icmp samesign ult i64 %indvars.iv.next, %i.ahp
  br i1 %i.ahq, label %bb.kc, label %.critedge11.loopexit.split.loop.exit, !llvm.loop !3063

.critedge11.loopexit.split.loop.exit:             ; preds = %bb.kd
  %indvars.le = trunc nuw i64 %indvars.iv.next to i32
  br label %.critedge106

_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.kb, %bb.kg
  %.0152.i = phi i32 [ %.2.i, %bb.kg ], [ 162, %bb.kb ] ; 2 uses
  %.0161.i = phi i32 [ %.218.i, %bb.kg ], [ 0, %bb.kb ] ; 3 uses
  %i.ahr = sub nuw i32 %.0152.i, %.0161.i
  %i.ahs = lshr i32 %i.ahr, 1
  %i.aht = add i32 %i.ahs, %.0161.i               ; 3 uses
  %i.ahu = zext i32 %i.aht to i64
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr @_ZL21ot_languages3_blocked, i64 %i.ahu
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !322 ; 2 uses
  %i.ahx = icmp ult i32 %.019.i, %i.ahw
  br i1 %i.ahx, label %bb.kg, label %bb.ke

bb.ke:                                            ; preds = %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %i.ahy = icmp ugt i32 %.019.i, %i.ahw
  br i1 %i.ahy, label %bb.kf, label %.critedge106

bb.kf:                                            ; preds = %bb.ke
  %i.ahz = add nuw i32 %i.aht, 1
  br label %bb.kg

bb.kg:                                            ; preds = %bb.kf, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %.218.i = phi i32 [ %.0161.i, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %i.ahz, %bb.kf ] ; 2 uses
  %.2.i = phi i32 [ %i.aht, %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %.0152.i, %bb.kf ] ; 2 uses
  %i.aia = icmp ult i32 %.218.i, %.2.i
  br i1 %i.aia, label %_ZNK17hb_sorted_array_tIK12LangTagRangeE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit, label %_ZL9bfind_tagPKjjj.exit, !llvm.loop !3064

_ZL9bfind_tagPKjjj.exit:                          ; preds = %bb.kg
  %i.aib = and i32 %.019.i, -538976257
  store i32 %i.aib, ptr %3, align 4, !tbaa !322
  br label %.critedge106

_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit: ; preds = %bb.jm, %hb_tag_from_string.exit.thread, %hb_tag_from_string.exit
  br i1 %.not, label %bb.ki, label %bb.kh

bb.kh:                                            ; preds = %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %i.aic = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.181) #64
  %i.aid = getelementptr inbounds nuw i8, ptr %.181, i64 %i.aic
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit
  %.079 = phi ptr [ %i.acy, %_ZNK17hb_sorted_array_tIK7LangTagE5bfindIjEEbRKT_Pj14hb_not_found_tj.exit ], [ %i.aid, %bb.kh ]
  %i.aie = ptrtoint ptr %.079 to i64
  %i.aif = sub i64 %i.aie, %.pre-phi
  %i.aig = icmp eq i64 %i.aif, 3
  br i1 %i.aig, label %bb.kj, label %.critedge106

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.aih = load i8, ptr %.181, align 1, !tbaa !278 ; 2 uses
  %.not.i142 = icmp eq i8 %i.aih, 0
  br i1 %.not.i142, label %hb_tag_from_string.exit154, label %.preheader.1

.preheader.1:                                     ; preds = %bb.kj
  store i8 %i.aih, ptr %i.a, align 1, !tbaa !278
  %i.aii = getelementptr inbounds nuw i8, ptr %.181, i64 1
  %i.aij = load i8, ptr %i.aii, align 1, !tbaa !278 ; 2 uses
  %.not23.i144.1 = icmp eq i8 %i.aij, 0
  br i1 %.not23.i144.1, label %.lr.ph.preheader.i150, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.aik = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.aij, ptr %i.aik, align 1, !tbaa !278
  %i.ail = getelementptr inbounds nuw i8, ptr %.181, i64 2
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !278 ; 2 uses
  %.not23.i144.2 = icmp eq i8 %i.aim, 0
  br i1 %.not23.i144.2, label %.lr.ph.preheader.i150, label %.lr.ph.preheader.i150.loopexit

.lr.ph.preheader.i150.loopexit:                   ; preds = %.preheader.2
  %i.ain = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.aim, ptr %i.ain, align 1, !tbaa !278
  br label %.lr.ph.preheader.i150

.lr.ph.preheader.i150:                            ; preds = %.preheader.1, %.preheader.2, %.lr.ph.preheader.i150.loopexit
  %.0.lcssa.i148230 = phi i32 [ 3, %.lr.ph.preheader.i150.loopexit ], [ 2, %.preheader.2 ], [ 1, %.preheader.1 ] ; 2 uses
  %i.aio = zext nneg i32 %.0.lcssa.i148230 to i64
  %scevgep.i151 = getelementptr i8, ptr %i.a, i64 %i.aio
  %narrow.i152 = sub nuw nsw i32 4, %.0.lcssa.i148230
  %i.aip = zext nneg i32 %narrow.i152 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i151, i8 32, i64 range(i64 0, 5) %i.aip, i1 false), !tbaa !278
  %i.aiq = load i8, ptr %i.a, align 1, !tbaa !278
  %i.air = zext i8 %i.aiq to i32
  %i.ais = shl nuw i32 %i.air, 24
  %i.ait = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.aiu = load i8, ptr %i.ait, align 1, !tbaa !278
  %i.aiv = zext i8 %i.aiu to i32
  %i.aiw = shl nuw nsw i32 %i.aiv, 16
  %i.aix = or disjoint i32 %i.aiw, %i.ais
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !278
  %i.aja = zext i8 %i.aiz to i32
  %i.ajb = shl nuw nsw i32 %i.aja, 8
  %i.ajc = or disjoint i32 %i.aix, %i.ajb
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.aje = load i8, ptr %i.ajd, align 1, !tbaa !278
  %i.ajf = zext i8 %i.aje to i32
  %.masked = and i32 %i.ajc, -538976512
  %i.ajg = or disjoint i32 %.masked, %i.ajf
  br label %hb_tag_from_string.exit154

hb_tag_from_string.exit154:                       ; preds = %bb.kj, %.lr.ph.preheader.i150
  %.019.i141 = phi i32 [ %i.ajg, %.lr.ph.preheader.i150 ], [ 0, %bb.kj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  store i32 %.019.i141, ptr %3, align 4, !tbaa !322
  br label %.critedge106

.critedge106:                                     ; preds = %bb.ke, %bb.kc, %bb.ki, %.critedge9, %.critedge11.loopexit.split.loop.exit, %bb.jw, %.critedge7, %.critedge3, %.critedge5.loopexit, %bb.ir, %bb.ip, %.preheader1643.1.i, %.preheader1643.preheader.i, %bb.in, %bb.il, %bb.ik, %bb.ij, %bb.ig, %bb.if, %bb.ie, %.preheader1644.i, %bb.id, %bb.ia, %bb.hx, %bb.hv, %.preheader1641.1.i, %.preheader1641.preheader.i, %bb.ht, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %.preheader1642.i, %bb.hn, %bb.hk, %bb.hi, %.preheader1639.1.i, %.preheader1639.preheader.i, %bb.hg, %bb.he, %bb.hd, %bb.hc, %bb.hb, %.preheader1640.i, %bb.ha, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.1.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.preheader.preheader.i, %bb.gw, %bb.gu, %bb.gt, %bb.gr, %.preheader1637.1.i, %.preheader1637.preheader.i, %bb.gp, %bb.gn, %bb.gm, %bb.gl, %bb.gk, %.preheader1638.i, %bb.gj, %bb.gg, %bb.ge, %bb.gc, %.preheader1635.1.i, %.preheader1635.preheader.i, %bb.ga, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %.preheader1636.i, %bb.fu, %bb.fr, %bb.fp, %.preheader1633.1.i, %.preheader1633.preheader.i, %bb.fn, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %.preheader1634.i, %bb.fg, %bb.fd, %bb.fb, %bb.ez, %.preheader1632.1.i, %.preheader1632.preheader.i, %bb.ex, %bb.ev, %.preheader1628.1.i, %.preheader1628.preheader.i, %bb.et, %bb.er, %bb.ep, %.preheader1627.1.i, %.preheader1627.preheader.i, %bb.en, %bb.el, %bb.ej, %.preheader1626.1.i, %.preheader1626.preheader.i, %bb.eh, %bb.ef, %bb.ee, %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %.preheader1629.i, %bb.dx, %bb.dw, %bb.dv, %.preheader1630.i, %bb.du, %bb.dt, %bb.ds, %.preheader1631.i, %bb.dr, %bb.do, %bb.dm, %.preheader1624.1.i, %.preheader1624.preheader.i, %bb.dk, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.de, %.preheader1625.i, %bb.dd, %bb.da, %bb.cy, %.preheader1615.1.i, %.preheader1615.preheader.i, %bb.cw, %bb.cu, %bb.cs, %.preheader1614.1.i, %.preheader1614.preheader.i, %bb.cq, %bb.co, %bb.cm, %.preheader1613.1.i, %.preheader1613.preheader.i, %bb.ck, %bb.ci, %bb.cg, %.preheader1612.1.i, %.preheader1612.preheader.i, %bb.ce, %bb.cc, %bb.ca, %.preheader1611.1.i, %.preheader1611.preheader.i, %bb.by, %bb.bw, %bb.bu, %.preheader1610.1.i, %.preheader1610.preheader.i, %bb.bs, %bb.bq, %bb.bo, %.preheader1609.1.i, %.preheader1609.preheader.i, %bb.bm, %bb.bk, %bb.bi, %.preheader.1.i, %.preheader.preheader.i, %bb.bg, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.preheader1616.i, %bb.am, %bb.al, %bb.ak, %.preheader1617.i, %bb.aj, %bb.ai, %bb.ah, %.preheader1618.i, %bb.ag, %bb.af, %bb.ae, %.preheader1619.i, %bb.ad, %bb.ac, %bb.ab, %.preheader1620.i, %bb.aa, %bb.z, %bb.y, %.preheader1621.i, %bb.x, %bb.w, %bb.v, %.preheader1622.i, %bb.u, %bb.t, %bb.s, %.preheader1623.i, %bb.r, %bb.o, %bb.l, %_ZL14subtag_matchesPKcS0_S0_j.exit, %_ZL14subtag_matchesPKcS0_S0_j.exit165, %_ZL14subtag_matchesPKcS0_S0_j.exit173, %_ZL14subtag_matchesPKcS0_S0_j.exit181, %_ZL14subtag_matchesPKcS0_S0_j.exit1058.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1050.i, %_ZL14subtag_matchesPKcS0_S0_j.exit1042.i, %_ZL14subtag_matchesPKcS0_S0_j.exit.i, %_ZL9bfind_tagPKjjj.exit, %hb_tag_from_string.exit154
  %.078.lcssa.sink = phi i32 [ 1, %.preheader1643.1.i ], [ 0, %.critedge7 ], [ 0, %bb.ki ], [ 1, %_ZL9bfind_tagPKjjj.exit ], [ %.078.lcssa.ph, %.critedge5.loopexit ], [ %i.ahi, %bb.kc ], [ 1, %hb_tag_from_string.exit154 ], [ 1, %bb.l ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit165 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit173 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit181 ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1058.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1050.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1042.i ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit.i ], [ 1, %bb.ir ], [ 1, %bb.ie ], [ 1, %bb.in ], [ 1, %bb.il ], [ 1, %bb.ik ], [ 1, %bb.ij ], [ 1, %bb.ig ], [ 1, %.preheader1641.1.i ], [ 1, %bb.id ], [ 1, %bb.ia ], [ 1, %bb.hx ], [ 1, %bb.ho ], [ 1, %bb.ht ], [ 1, %bb.hr ], [ 1, %bb.hq ], [ 1, %.preheader1639.1.i ], [ 1, %bb.hn ], [ 1, %bb.hk ], [ 1, %bb.hb ], [ 1, %bb.hg ], [ 1, %bb.he ], [ 1, %bb.hd ], [ 1, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.i ], [ 1, %bb.ha ], [ 1, %.preheader1637.1.i ], [ 1, %bb.gw ], [ 1, %bb.gu ], [ 1, %bb.gt ], [ 1, %bb.gk ], [ 1, %bb.gp ], [ 1, %bb.gn ], [ 1, %bb.gm ], [ 1, %.preheader1635.1.i ], [ 1, %bb.gj ], [ 1, %bb.gg ], [ 1, %bb.ge ], [ 1, %bb.fv ], [ 1, %bb.ga ], [ 1, %bb.fy ], [ 1, %bb.fx ], [ 1, %.preheader1633.1.i ], [ 1, %bb.fu ], [ 1, %bb.fr ], [ 1, %bb.fh ], [ 1, %bb.fn ], [ 1, %bb.fl ], [ 1, %bb.fk ], [ 1, %bb.fj ], [ 1, %.preheader1632.1.i ], [ 1, %bb.fg ], [ 1, %bb.fd ], [ 1, %bb.fb ], [ 1, %.preheader1628.1.i ], [ 1, %bb.ex ], [ 1, %.preheader1627.1.i ], [ 1, %bb.et ], [ 1, %bb.er ], [ 1, %.preheader1626.1.i ], [ 1, %bb.en ], [ 1, %bb.el ], [ 1, %bb.dy ], [ 1, %bb.eh ], [ 1, %bb.ef ], [ 1, %bb.ee ], [ 1, %bb.ed ], [ 1, %bb.ec ], [ 1, %bb.eb ], [ 1, %bb.ea ], [ 1, %bb.dv ], [ 1, %bb.dx ], [ 1, %bb.ds ], [ 1, %bb.du ], [ 1, %.preheader1624.1.i ], [ 1, %bb.dr ], [ 1, %bb.do ], [ 1, %bb.de ], [ 1, %bb.dk ], [ 1, %bb.di ], [ 1, %bb.dh ], [ 1, %bb.dg ], [ 1, %.preheader1615.1.i ], [ 1, %bb.dd ], [ 1, %bb.da ], [ 1, %.preheader1614.1.i ], [ 1, %bb.cw ], [ 1, %bb.cu ], [ 1, %.preheader1613.1.i ], [ 1, %bb.cq ], [ 1, %bb.co ], [ 1, %.preheader1612.1.i ], [ 1, %bb.ck ], [ 1, %bb.ci ], [ 1, %.preheader1611.1.i ], [ 1, %bb.ce ], [ 1, %bb.cc ], [ 1, %.preheader1610.1.i ], [ 1, %bb.by ], [ 1, %bb.bw ], [ 1, %.preheader1609.1.i ], [ 1, %bb.bs ], [ 1, %bb.bq ], [ 1, %.preheader.1.i ], [ 1, %bb.bm ], [ 1, %bb.bk ], [ 1, %bb.an ], [ 1, %bb.bg ], [ 1, %bb.be ], [ 1, %bb.bd ], [ 1, %bb.bc ], [ 1, %bb.bb ], [ 1, %bb.ba ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ], [ 1, %bb.av ], [ 1, %bb.au ], [ 1, %bb.at ], [ 1, %bb.as ], [ 1, %bb.ar ], [ 1, %bb.aq ], [ 1, %bb.ap ], [ 1, %bb.ak ], [ 1, %bb.am ], [ 1, %bb.ah ], [ 1, %bb.aj ], [ 1, %bb.ae ], [ 1, %bb.ag ], [ 1, %bb.ab ], [ 1, %bb.ad ], [ 1, %bb.y ], [ 1, %bb.aa ], [ 1, %bb.v ], [ 1, %bb.x ], [ 1, %bb.s ], [ 1, %bb.u ], [ 1, %bb.o ], [ 1, %bb.r ], [ 2, %bb.t ], [ 0, %.preheader1623.i ], [ 2, %bb.w ], [ 0, %.preheader1622.i ], [ 2, %bb.z ], [ 0, %.preheader1621.i ], [ 2, %bb.ac ], [ 0, %.preheader1620.i ], [ 2, %bb.af ], [ 0, %.preheader1619.i ], [ 2, %bb.ai ], [ 0, %.preheader1618.i ], [ 2, %bb.al ], [ 0, %.preheader1617.i ], [ 2, %bb.ao ], [ 0, %.preheader1616.i ], [ 2, %bb.bi ], [ 0, %.preheader.preheader.i ], [ 2, %bb.bo ], [ 0, %.preheader1609.preheader.i ], [ 2, %bb.bu ], [ 0, %.preheader1610.preheader.i ], [ 2, %bb.ca ], [ 0, %.preheader1611.preheader.i ], [ 2, %bb.cg ], [ 0, %.preheader1612.preheader.i ], [ 2, %bb.cm ], [ 0, %.preheader1613.preheader.i ], [ 2, %bb.cs ], [ 0, %.preheader1614.preheader.i ], [ 2, %bb.cy ], [ 0, %.preheader1615.preheader.i ], [ 2, %bb.df ], [ 0, %.preheader1625.i ], [ 2, %bb.dm ], [ 0, %.preheader1624.preheader.i ], [ 2, %bb.dt ], [ 0, %.preheader1631.i ], [ 2, %bb.dw ], [ 0, %.preheader1630.i ], [ 2, %bb.dz ], [ 0, %.preheader1629.i ], [ 2, %bb.ej ], [ 0, %.preheader1626.preheader.i ], [ 2, %bb.ep ], [ 0, %.preheader1627.preheader.i ], [ 2, %bb.ev ], [ 0, %.preheader1628.preheader.i ], [ 2, %bb.ez ], [ 0, %.preheader1632.preheader.i ], [ 2, %bb.fi ], [ 0, %.preheader1634.i ], [ 2, %bb.fp ], [ 0, %.preheader1633.preheader.i ], [ 2, %bb.fw ], [ 0, %.preheader1636.i ], [ 2, %bb.gc ], [ 0, %.preheader1635.preheader.i ], [ 2, %bb.gl ], [ 0, %.preheader1638.i ], [ 2, %bb.gr ], [ 0, %.preheader1637.preheader.i ], [ 2, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.1.i ], [ 0, %_ZL14subtag_matchesPKcS0_S0_j.exit1249.preheader.preheader.i ], [ 2, %bb.hc ], [ 0, %.preheader1640.i ], [ 2, %bb.hi ], [ 0, %.preheader1639.preheader.i ], [ 2, %bb.hp ], [ 0, %.preheader1642.i ], [ 2, %bb.hv ], [ 0, %.preheader1641.preheader.i ], [ 2, %bb.if ], [ 0, %.preheader1644.i ], [ 2, %bb.ip ], [ 0, %.preheader1643.preheader.i ], [ 0, %.critedge3 ], [ 1, %bb.jw ], [ 0, %.critedge9 ], [ %indvars.le, %.critedge11.loopexit.split.loop.exit ], [ 0, %bb.ke ]
  store i32 %.078.lcssa.sink, ptr %2, align 4, !tbaa !322
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_ot_tag_to_language(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 7 uses
  %i.c = alloca [64 x i8], align 16               ; 6 uses
  %i.d = alloca [20 x i8], align 16               ; 12 uses
  %1 = icmp eq i32 %0, 1684434036
  br i1 %1, label %hb_language_from_string.exit, label %2

2:                                                ; preds = %bb.a
  switch i32 %0, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader [
    i32 1095521312, label %bb.b
    i32 1095782472, label %bb.c
    i32 1095912224, label %bb.d
    i32 1096042528, label %bb.e
    i32 1111642656, label %bb.f
    i32 1112099616, label %bb.g
    i32 1112820512, label %bb.h
    i32 1129336864, label %bb.i
    i32 1129468448, label %bb.j
    i32 1145524768, label %bb.k
    i32 1145981728, label %bb.l
    i32 1146243360, label %bb.m
    i32 1196379680, label %bb.n
    i32 1213022496, label %bb.o
    i32 1213025824, label %bb.p
    i32 1213088800, label %bb.q
    i32 1213809952, label %bb.r
    i32 1229078816, label %bb.s
    i32 1229606688, label %bb.t
    i32 1230000200, label %bb.u
    i32 1230132256, label %bb.v
    i32 1246316832, label %bb.w
    i32 1262570528, label %bb.x
    i32 1262961952, label %bb.y
    i32 1263487008, label %bb.z
    i32 1263487776, label %bb.aa
    i32 1263553568, label %bb.ab
    i32 1263685152, label %bb.ac
    i32 1263880480, label %bb.ad
    i32 1280131360, label %bb.ae
    i32 1280657440, label %bb.af
    i32 1296127776, label %bb.ag
    i32 1296849184, label %bb.ah
    i32 1296976672, label %bb.ai
    i32 1297042464, label %bb.aj
    i32 1297043028, label %bb.ak
    i32 1297698336, label %bb.al
    i32 1312901152, label %bb.am
    i32 1313428256, label %bb.an
    i32 1313821216, label %bb.ao
    i32 1346851360, label %bb.ap
    i32 1347571488, label %bb.aq
    i32 1364543520, label %bb.ar
    i32 1364609312, label %bb.as
    i32 1364674592, label %bb.at
    i32 1380010528, label %bb.au
    i32 1380928800, label %bb.av
    i32 1380931872, label %bb.aw
    i32 1397178656, label %bb.ax
    i32 1397899808, label %bb.ay
    i32 1398297632, label %bb.az
    i32 1398362656, label %bb.ba
    i32 1398362693, label %bb.bb
    i32 1398362698, label %bb.bc
    i32 1398362702, label %bb.bd
    i32 1414350880, label %bb.be
    i32 1414480928, label %bb.bf
    i32 1464095776, label %bb.bg
    i32 1465470496, label %bb.bh
    i32 1514686496, label %bb.bi
    i32 1514689312, label %bb.bj
    i32 1514689568, label %bb.bk
    i32 1514689613, label %bb.bl
    i32 1515864352, label %bb.bm
  ]

bb.b:                                             ; preds = %2
  %i.e = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.295) ; 2 uses
  %.not11.i.i = icmp eq ptr %i.e, null
  br i1 %.not11.i.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.c:                                             ; preds = %2
  %i.f = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.296) ; 2 uses
  %.not11.i1.i = icmp eq ptr %i.f, null
  br i1 %.not11.i1.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.d:                                             ; preds = %2
  %i.g = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.297) ; 2 uses
  %.not11.i4.i = icmp eq ptr %i.g, null
  br i1 %.not11.i4.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.e:                                             ; preds = %2
  %i.h = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.298) ; 2 uses
  %.not11.i7.i = icmp eq ptr %i.h, null
  br i1 %.not11.i7.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.f:                                             ; preds = %2
  %i.i = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.299) ; 2 uses
  %.not11.i10.i = icmp eq ptr %i.i, null
  br i1 %.not11.i10.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.g:                                             ; preds = %2
  %i.j = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.300) ; 2 uses
  %.not11.i13.i = icmp eq ptr %i.j, null
  br i1 %.not11.i13.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.h:                                             ; preds = %2
  %i.k = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.301) ; 2 uses
  %.not11.i16.i = icmp eq ptr %i.k, null
  br i1 %.not11.i16.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.i:                                             ; preds = %2
  %i.l = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.302) ; 2 uses
  %.not11.i19.i = icmp eq ptr %i.l, null
  br i1 %.not11.i19.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.j:                                             ; preds = %2
  %i.m = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.303) ; 2 uses
  %.not11.i22.i = icmp eq ptr %i.m, null
  br i1 %.not11.i22.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.k:                                             ; preds = %2
  %i.n = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.304) ; 2 uses
  %.not11.i25.i = icmp eq ptr %i.n, null
  br i1 %.not11.i25.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.l:                                             ; preds = %2
  %i.o = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.305) ; 2 uses
  %.not11.i28.i = icmp eq ptr %i.o, null
  br i1 %.not11.i28.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.m:                                             ; preds = %2
  %i.p = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.306) ; 2 uses
  %.not11.i31.i = icmp eq ptr %i.p, null
  br i1 %.not11.i31.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.n:                                             ; preds = %2
  %i.q = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.307) ; 2 uses
  %.not11.i34.i = icmp eq ptr %i.q, null
  br i1 %.not11.i34.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.o:                                             ; preds = %2
  %i.r = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.308) ; 2 uses
  %.not11.i37.i = icmp eq ptr %i.r, null
  br i1 %.not11.i37.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.p:                                             ; preds = %2
  %i.s = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.309) ; 2 uses
  %.not11.i40.i = icmp eq ptr %i.s, null
  br i1 %.not11.i40.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.q:                                             ; preds = %2
  %i.t = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.310) ; 2 uses
  %.not11.i43.i = icmp eq ptr %i.t, null
  br i1 %.not11.i43.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.r:                                             ; preds = %2
  %i.u = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.311) ; 2 uses
  %.not11.i46.i = icmp eq ptr %i.u, null
  br i1 %.not11.i46.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.s:                                             ; preds = %2
  %i.v = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.312) ; 2 uses
  %.not11.i49.i = icmp eq ptr %i.v, null
  br i1 %.not11.i49.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.t:                                             ; preds = %2
  %i.w = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.313) ; 2 uses
  %.not11.i52.i = icmp eq ptr %i.w, null
  br i1 %.not11.i52.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.u:                                             ; preds = %2
  %i.x = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.314) ; 2 uses
  %.not11.i55.i = icmp eq ptr %i.x, null
  br i1 %.not11.i55.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.v:                                             ; preds = %2
  %i.y = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.315) ; 2 uses
  %.not11.i58.i = icmp eq ptr %i.y, null
  br i1 %.not11.i58.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.w:                                             ; preds = %2
  %i.z = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.316) ; 2 uses
  %.not11.i61.i = icmp eq ptr %i.z, null
  br i1 %.not11.i61.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.x:                                             ; preds = %2
  %i.aa = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.317) ; 2 uses
  %.not11.i64.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i64.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.y:                                             ; preds = %2
  %i.ab = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.318) ; 2 uses
  %.not11.i67.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i67.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.z:                                             ; preds = %2
  %i.ac = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.319) ; 2 uses
  %.not11.i70.i = icmp eq ptr %i.ac, null
  br i1 %.not11.i70.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.aa:                                            ; preds = %2
  %i.ad = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.320) ; 2 uses
  %.not11.i73.i = icmp eq ptr %i.ad, null
  br i1 %.not11.i73.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ab:                                            ; preds = %2
  %i.ae = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.321) ; 2 uses
  %.not11.i76.i = icmp eq ptr %i.ae, null
  br i1 %.not11.i76.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ac:                                            ; preds = %2
  %i.af = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.322) ; 2 uses
  %.not11.i79.i = icmp eq ptr %i.af, null
  br i1 %.not11.i79.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ad:                                            ; preds = %2
  %i.ag = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.323) ; 2 uses
  %.not11.i82.i = icmp eq ptr %i.ag, null
  br i1 %.not11.i82.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ae:                                            ; preds = %2
  %i.ah = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.324) ; 2 uses
  %.not11.i85.i = icmp eq ptr %i.ah, null
  br i1 %.not11.i85.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.af:                                            ; preds = %2
  %i.ai = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.325) ; 2 uses
  %.not11.i88.i = icmp eq ptr %i.ai, null
  br i1 %.not11.i88.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ag:                                            ; preds = %2
  %i.aj = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.326) ; 2 uses
  %.not11.i91.i = icmp eq ptr %i.aj, null
  br i1 %.not11.i91.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ah:                                            ; preds = %2
  %i.ak = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.327) ; 2 uses
  %.not11.i94.i = icmp eq ptr %i.ak, null
  br i1 %.not11.i94.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ai:                                            ; preds = %2
  %i.al = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.328) ; 2 uses
  %.not11.i97.i = icmp eq ptr %i.al, null
  br i1 %.not11.i97.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.aj:                                            ; preds = %2
  %i.am = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.329) ; 2 uses
  %.not11.i100.i = icmp eq ptr %i.am, null
  br i1 %.not11.i100.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ak:                                            ; preds = %2
  %i.an = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.330) ; 2 uses
  %.not11.i103.i = icmp eq ptr %i.an, null
  br i1 %.not11.i103.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.al:                                            ; preds = %2
  %i.ao = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.331) ; 2 uses
  %.not11.i106.i = icmp eq ptr %i.ao, null
  br i1 %.not11.i106.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.am:                                            ; preds = %2
  %i.ap = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.332) ; 2 uses
  %.not11.i109.i = icmp eq ptr %i.ap, null
  br i1 %.not11.i109.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.an:                                            ; preds = %2
  %i.aq = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.333) ; 2 uses
  %.not11.i112.i = icmp eq ptr %i.aq, null
  br i1 %.not11.i112.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ao:                                            ; preds = %2
  %i.ar = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.334) ; 2 uses
  %.not11.i115.i = icmp eq ptr %i.ar, null
  br i1 %.not11.i115.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ap:                                            ; preds = %2
  %i.as = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.335) ; 2 uses
  %.not11.i118.i = icmp eq ptr %i.as, null
  br i1 %.not11.i118.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.aq:                                            ; preds = %2
  %i.at = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.336) ; 2 uses
  %.not11.i121.i = icmp eq ptr %i.at, null
  br i1 %.not11.i121.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ar:                                            ; preds = %2
  %i.au = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.337) ; 2 uses
  %.not11.i124.i = icmp eq ptr %i.au, null
  br i1 %.not11.i124.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.as:                                            ; preds = %2
  %i.av = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.338) ; 2 uses
  %.not11.i127.i = icmp eq ptr %i.av, null
  br i1 %.not11.i127.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.at:                                            ; preds = %2
  %i.aw = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.339) ; 2 uses
  %.not11.i130.i = icmp eq ptr %i.aw, null
  br i1 %.not11.i130.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.au:                                            ; preds = %2
  %i.ax = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.340) ; 2 uses
  %.not11.i133.i = icmp eq ptr %i.ax, null
  br i1 %.not11.i133.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.av:                                            ; preds = %2
  %i.ay = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.341) ; 2 uses
  %.not11.i136.i = icmp eq ptr %i.ay, null
  br i1 %.not11.i136.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.aw:                                            ; preds = %2
  %i.az = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.342) ; 2 uses
  %.not11.i139.i = icmp eq ptr %i.az, null
  br i1 %.not11.i139.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ax:                                            ; preds = %2
  %i.ba = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.343) ; 2 uses
  %.not11.i142.i = icmp eq ptr %i.ba, null
  br i1 %.not11.i142.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ay:                                            ; preds = %2
  %i.bb = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.344) ; 2 uses
  %.not11.i145.i = icmp eq ptr %i.bb, null
  br i1 %.not11.i145.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.az:                                            ; preds = %2
  %i.bc = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.345) ; 2 uses
  %.not11.i148.i = icmp eq ptr %i.bc, null
  br i1 %.not11.i148.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.ba:                                            ; preds = %2
  %i.bd = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.346) ; 2 uses
  %.not11.i151.i = icmp eq ptr %i.bd, null
  br i1 %.not11.i151.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bb:                                            ; preds = %2
  %i.be = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.347) ; 2 uses
  %.not11.i154.i = icmp eq ptr %i.be, null
  br i1 %.not11.i154.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bc:                                            ; preds = %2
  %i.bf = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.348) ; 2 uses
  %.not11.i157.i = icmp eq ptr %i.bf, null
  br i1 %.not11.i157.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bd:                                            ; preds = %2
  %i.bg = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.349) ; 2 uses
  %.not11.i160.i = icmp eq ptr %i.bg, null
  br i1 %.not11.i160.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.be:                                            ; preds = %2
  %i.bh = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.350) ; 2 uses
  %.not11.i163.i = icmp eq ptr %i.bh, null
  br i1 %.not11.i163.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bf:                                            ; preds = %2
  %i.bi = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.351) ; 2 uses
  %.not11.i166.i = icmp eq ptr %i.bi, null
  br i1 %.not11.i166.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bg:                                            ; preds = %2
  %i.bj = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.352) ; 2 uses
  %.not11.i169.i = icmp eq ptr %i.bj, null
  br i1 %.not11.i169.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bh:                                            ; preds = %2
  %i.bk = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.353) ; 2 uses
  %.not11.i172.i = icmp eq ptr %i.bk, null
  br i1 %.not11.i172.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bi:                                            ; preds = %2
  %i.bl = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.354) ; 2 uses
  %.not11.i175.i = icmp eq ptr %i.bl, null
  br i1 %.not11.i175.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bj:                                            ; preds = %2
  %i.bm = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.355) ; 2 uses
  %.not11.i178.i = icmp eq ptr %i.bm, null
  br i1 %.not11.i178.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bk:                                            ; preds = %2
  %i.bn = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.356) ; 2 uses
  %.not11.i181.i = icmp eq ptr %i.bn, null
  br i1 %.not11.i181.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bl:                                            ; preds = %2
  %i.bo = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.357) ; 2 uses
  %.not11.i184.i = icmp eq ptr %i.bo, null
  br i1 %.not11.i184.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

bb.bm:                                            ; preds = %2
  %i.bp = tail call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef @.str.358) ; 2 uses
  %.not11.i187.i = icmp eq ptr %i.bp, null
  br i1 %.not11.i187.i, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit, !prof !265

_ZL31hb_ot_ambiguous_tag_to_languagej.exit:       ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm
  %.sink254.i = phi ptr [ %i.bo, %bb.bl ], [ %i.bn, %bb.bk ], [ %i.bm, %bb.bj ], [ %i.bl, %bb.bi ], [ %i.bk, %bb.bh ], [ %i.bj, %bb.bg ], [ %i.bi, %bb.bf ], [ %i.bh, %bb.be ], [ %i.bg, %bb.bd ], [ %i.bf, %bb.bc ], [ %i.be, %bb.bb ], [ %i.bd, %bb.ba ], [ %i.bc, %bb.az ], [ %i.bb, %bb.ay ], [ %i.ba, %bb.ax ], [ %i.az, %bb.aw ], [ %i.ay, %bb.av ], [ %i.ax, %bb.au ], [ %i.aw, %bb.at ], [ %i.av, %bb.as ], [ %i.au, %bb.ar ], [ %i.at, %bb.aq ], [ %i.as, %bb.ap ], [ %i.ar, %bb.ao ], [ %i.aq, %bb.an ], [ %i.ap, %bb.am ], [ %i.ao, %bb.al ], [ %i.an, %bb.ak ], [ %i.am, %bb.aj ], [ %i.al, %bb.ai ], [ %i.ak, %bb.ah ], [ %i.aj, %bb.ag ], [ %i.ai, %bb.af ], [ %i.ah, %bb.ae ], [ %i.ag, %bb.ad ], [ %i.af, %bb.ac ], [ %i.ae, %bb.ab ], [ %i.ad, %bb.aa ], [ %i.ac, %bb.z ], [ %i.ab, %bb.y ], [ %i.aa, %bb.x ], [ %i.z, %bb.w ], [ %i.y, %bb.v ], [ %i.x, %bb.u ], [ %i.w, %bb.t ], [ %i.v, %bb.s ], [ %i.u, %bb.r ], [ %i.t, %bb.q ], [ %i.s, %bb.p ], [ %i.r, %bb.o ], [ %i.q, %bb.n ], [ %i.p, %bb.m ], [ %i.o, %bb.l ], [ %i.n, %bb.k ], [ %i.m, %bb.j ], [ %i.l, %bb.i ], [ %i.k, %bb.h ], [ %i.j, %bb.g ], [ %i.i, %bb.f ], [ %i.h, %bb.e ], [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.e, %bb.b ], [ %i.bp, %bb.bm ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sink254.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !698 ; 2 uses
  %.not = icmp eq ptr %i.br, null
  br i1 %.not, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader, label %hb_language_from_string.exit

_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader: ; preds = %bb.bm, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %2, %bb.bl, %_ZL31hb_ot_ambiguous_tag_to_languagej.exit
  br label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread

_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.1: ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %indvars.iv ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !1426
  %i.bv = icmp eq i32 %i.bu, %0
  br i1 %i.bv, label %.split.loop.exit206, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.2

_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.2: ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %indvars.iv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1426
  %i.bz = icmp eq i32 %i.by, %0
  br i1 %i.bz, label %.split.loop.exit204, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.3

_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.3: ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.2
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %indvars.iv ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1426
  %i.cd = icmp eq i32 %i.cc, %0
  br i1 %i.cd, label %.split.loop.exit202, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.4

_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.4: ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.3
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %indvars.iv ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 36
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !1426
  %i.ch = icmp eq i32 %i.cg, %0
  br i1 %i.ch, label %.split.loop.exit200, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.5

_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.5: ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.4
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 44
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !1426
  %i.cl = icmp eq i32 %i.ck, %0
  br i1 %i.cl, label %.split.loop.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.5
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next.5, 204
  br i1 %exitcond.not.5, label %.preheader80, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread, !llvm.loop !3070

_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread: ; preds = %bb.bn, %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader
  %indvars.iv = phi i64 [ 0, %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.preheader ], [ %indvars.iv.next.5, %bb.bn ] ; 7 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages2, i64 %indvars.iv ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !1426
  %i.cp = icmp eq i32 %i.co, %0
  br i1 %i.cp, label %.split.loop.exit208, label %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.1

.split.loop.exit:                                 ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  br label %.split.loop.exit208

.split.loop.exit200:                              ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  br label %.split.loop.exit208

.split.loop.exit202:                              ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  br label %.split.loop.exit208

.split.loop.exit204:                              ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %.split.loop.exit208

.split.loop.exit206:                              ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread.1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  br label %.split.loop.exit208

.split.loop.exit208:                              ; preds = %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread, %.split.loop.exit206, %.split.loop.exit204, %.split.loop.exit202, %.split.loop.exit200, %.split.loop.exit
  %.lcssa192 = phi ptr [ %i.cu, %.split.loop.exit206 ], [ %i.ct, %.split.loop.exit204 ], [ %i.cs, %.split.loop.exit202 ], [ %i.cr, %.split.loop.exit200 ], [ %i.cq, %.split.loop.exit ], [ %i.cm, %_ZL31hb_ot_ambiguous_tag_to_languagej.exit.thread ]
  %i.cv = load i32, ptr %.lcssa192, align 8, !tbaa !1425 ; 2 uses
  %i.cw = lshr i32 %i.cv, 24                      ; 2 uses
  %.not.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i, label %hb_language_from_string.exit, label %bb.bo

bb.bo:                                            ; preds = %.split.loop.exit208
  %i.cx = trunc nuw i32 %i.cw to i8
  %i.cy = lshr i32 %i.cv, 16
  %i.cz = trunc i32 %i.cy to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store i8 %i.cx, ptr %i.c, align 16, !alias.scope !3081
  %.sroa.11.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.cz, ptr %.sroa.11.0..sroa_idx71, align 1, !alias.scope !3081
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 0, ptr %i.da, align 2, !tbaa !278
  %i.db = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.c) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  %.not11.i = icmp eq ptr %i.db, null
  br i1 %.not11.i, label %hb_language_from_string.exit, label %bb.bp, !prof !265

bb.bp:                                            ; preds = %bb.bo
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !698
  br label %hb_language_from_string.exit

.preheader80.1:                                   ; preds = %.preheader80
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages3, i64 %indvars.iv94 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !1426
  %i.dh = icmp eq i32 %i.dg, %0
  br i1 %i.dh, label %.split.loop.exit218, label %.preheader80.2

.preheader80.2:                                   ; preds = %.preheader80.1
  %i.di = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages3, i64 %indvars.iv94 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !1426
  %i.dl = icmp eq i32 %i.dk, %0
  br i1 %i.dl, label %.split.loop.exit216, label %bb.bq

bb.bq:                                            ; preds = %.preheader80.2
  %exitcond97.not.2 = icmp eq i64 %indvars.iv94, 776
  br i1 %exitcond97.not.2, label %.lr.ph, label %.preheader80.3

.preheader80.3:                                   ; preds = %bb.bq
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages3, i64 %indvars.iv94 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 28
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !1426
  %i.dp = icmp eq i32 %i.do, %0
  br i1 %i.dp, label %.split.loop.exit215, label %bb.br

bb.br:                                            ; preds = %.preheader80.3
  %indvars.iv.next95.3 = add nuw nsw i64 %indvars.iv94, 4
  br label %.preheader80

.preheader80:                                     ; preds = %bb.bn, %bb.br
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.3, %bb.br ], [ 0, %bb.bn ] ; 6 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr @_ZL13ot_languages3, i64 %indvars.iv94 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !1426
  %i.dt = icmp eq i32 %i.ds, %0
  br i1 %i.dt, label %.split.loop.exit220, label %.preheader80.1

.split.loop.exit215:                              ; preds = %.preheader80.3
  %i.du = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  br label %.split.loop.exit220

.split.loop.exit216:                              ; preds = %.preheader80.2
  %i.dv = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  br label %.split.loop.exit220

.split.loop.exit218:                              ; preds = %.preheader80.1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  br label %.split.loop.exit220

.split.loop.exit220:                              ; preds = %.preheader80, %.split.loop.exit218, %.split.loop.exit216, %.split.loop.exit215
  %.lcssa190 = phi ptr [ %i.dw, %.split.loop.exit218 ], [ %i.dv, %.split.loop.exit216 ], [ %i.du, %.split.loop.exit215 ], [ %i.dq, %.preheader80 ]
  %i.dx = load i32, ptr %.lcssa190, align 8, !tbaa !1425 ; 3 uses
  %i.dy = lshr i32 %i.dx, 24                      ; 2 uses
  %.not.i48 = icmp eq i32 %i.dy, 0
  br i1 %.not.i48, label %hb_language_from_string.exit, label %bb.bs

bb.bs:                                            ; preds = %.split.loop.exit220
  %i.dz = trunc nuw i32 %i.dy to i8
  %i.ea = lshr i32 %i.dx, 8
  %i.eb = trunc i32 %i.ea to i8
  %i.ec = lshr i32 %i.dx, 16
  %i.ed = trunc i32 %i.ec to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i8 %i.dz, ptr %i.b, align 16, !alias.scope !3082
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ed, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !3082
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.eb, ptr %.sroa.14.0..sroa_idx, align 2, !alias.scope !3082
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 0, ptr %i.ee, align 1, !tbaa !278
  %i.ef = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  %.not11.i50 = icmp eq ptr %i.ef, null
  br i1 %.not11.i50, label %hb_language_from_string.exit, label %bb.bt, !prof !265

bb.bt:                                            ; preds = %bb.bs
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !698
  br label %hb_language_from_string.exit

.lr.ph:                                           ; preds = %bb.bq, %hb_language_from_string.exit56.1
  %indvars.iv102 = phi i64 [ %indvars.iv.next103.1, %hb_language_from_string.exit56.1 ], [ 0, %bb.bq ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr @_ZL19ot_languages3_multi, i64 %indvars.iv102 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 6
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !1429
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.em = load i16, ptr %i.el, align 4, !tbaa !1430
  %i.en = zext i16 %i.em to i64
  %i.eo = tail call i8 @llvm.umax.i8(i8 %i.ek, i8 1)
  %wide.trip.count = zext i8 %i.eo to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr @_ZL26ot_languages3_multi_values, i64 %i.en
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bv
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond101.not, label %hb_language_from_string.exit56, label %bb.bv, !llvm.loop !3077

bb.bv:                                            ; preds = %.lr.ph, %bb.bu
  %indvars.iv98 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next99, %bb.bu ] ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv98
  %i.ep = load i32, ptr %gep, align 4, !tbaa !322
  %i.eq = icmp eq i32 %i.ep, %0
  br i1 %i.eq, label %.loopexit, label %bb.bu

.loopexit194:                                     ; preds = %bb.by
  %i.er = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bv, %.loopexit194
  %.lcssa = phi ptr [ %i.er, %.loopexit194 ], [ %i.ei, %bb.bv ]
  %i.es = load i32, ptr %.lcssa, align 8, !tbaa !1428 ; 3 uses
  %i.et = lshr i32 %i.es, 24                      ; 2 uses
  %.not.i53 = icmp eq i32 %i.et, 0
  br i1 %.not.i53, label %hb_language_from_string.exit, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  %i.eu = trunc nuw i32 %i.et to i8
  %i.ev = lshr i32 %i.es, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = lshr i32 %i.es, 16
  %i.ey = trunc i32 %i.ex to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i8 %i.eu, ptr %i.a, align 16, !alias.scope !3083
  %.sroa.11.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ey, ptr %.sroa.11.0..sroa_idx69, align 1, !alias.scope !3083
  %.sroa.14.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ew, ptr %.sroa.14.0..sroa_idx73, align 2, !alias.scope !3083
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 0, ptr %i.ez, align 1, !tbaa !278
  %i.fa = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  %.not11.i55 = icmp eq ptr %i.fa, null
  br i1 %.not11.i55, label %hb_language_from_string.exit, label %bb.bx, !prof !265

bb.bx:                                            ; preds = %bb.bw
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !698
  br label %hb_language_from_string.exit

hb_language_from_string.exit56:                   ; preds = %bb.bu
  %exitcond105.not = icmp eq i64 %indvars.iv102, 136
  br i1 %exitcond105.not, label %bb.ca, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %hb_language_from_string.exit56
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr @_ZL19ot_languages3_multi, i64 %indvars.iv102 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 14
  %i.ff = load i8, ptr %i.fe, align 2, !tbaa !1429
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.fh = load i16, ptr %i.fg, align 4, !tbaa !1430
  %i.fi = zext i16 %i.fh to i64
  %i.fj = tail call i8 @llvm.umax.i8(i8 %i.ff, i8 1)
  %wide.trip.count.1 = zext i8 %i.fj to i64
  %invariant.gep.1 = getelementptr inbounds nuw [4 x i8], ptr @_ZL26ot_languages3_multi_values, i64 %i.fi
  br label %bb.by

bb.by:                                            ; preds = %bb.bz, %.lr.ph.1
  %indvars.iv98.1 = phi i64 [ 0, %.lr.ph.1 ], [ %indvars.iv.next99.1, %bb.bz ] ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.1, i64 %indvars.iv98.1
  %i.fk = load i32, ptr %gep.1, align 4, !tbaa !322
  %i.fl = icmp eq i32 %i.fk, %0
  br i1 %i.fl, label %.loopexit194, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %indvars.iv.next99.1 = add nuw nsw i64 %indvars.iv98.1, 1 ; 2 uses
  %exitcond101.not.1 = icmp eq i64 %indvars.iv.next99.1, %wide.trip.count.1
  br i1 %exitcond101.not.1, label %hb_language_from_string.exit56.1, label %bb.by, !llvm.loop !3077

hb_language_from_string.exit56.1:                 ; preds = %bb.bz
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv102, 2
  br label %.lr.ph

bb.ca:                                            ; preds = %hb_language_from_string.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  %i.fm = lshr i32 %0, 24
  %i.fn = trunc nuw i32 %i.fm to i8               ; 4 uses
  %i.fo = and i8 %i.fn, -33
  %i.fp = add i8 %i.fo, -65
  %i.fq = icmp ult i8 %i.fp, 26
  br i1 %i.fq, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  %i.fr = lshr i32 %0, 16
  %i.fs = trunc i32 %i.fr to i8                   ; 4 uses
  %i.ft = and i8 %i.fs, -33
  %i.fu = add i8 %i.ft, -65
  %i.fv = icmp ult i8 %i.fu, 26
  br i1 %i.fv, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.fw = lshr i32 %0, 8
  %i.fx = trunc i32 %i.fw to i8                   ; 4 uses
  %i.fy = and i8 %i.fx, -33
  %i.fz = add i8 %i.fy, -65
  %i.ga = icmp ult i8 %i.fz, 26
  %i.gb = and i32 %0, 255
  %i.gc = icmp eq i32 %i.gb, 32
  %or.cond = and i1 %i.gc, %i.ga
  br i1 %or.cond, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.gd = add i8 %i.fn, -65
  %or.cond.i = icmp ult i8 %i.gd, 26
  %i.ge = add nuw nsw i8 %i.fn, 32
  %i.gf = select i1 %or.cond.i, i8 %i.ge, i8 %i.fn
  store i8 %i.gf, ptr %i.d, align 16, !tbaa !278
  %i.gg = add i8 %i.fs, -65
  %or.cond.i57 = icmp ult i8 %i.gg, 26
  %i.gh = add nuw nsw i8 %i.fs, 32
  %i.gi = select i1 %or.cond.i57, i8 %i.gh, i8 %i.fs
  %i.gj = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !278
  %i.gk = add i8 %i.fx, -65
  %or.cond.i58 = icmp ult i8 %i.gk, 26
  %i.gl = add nuw nsw i8 %i.fx, 32
  %i.gm = select i1 %or.cond.i58, i8 %i.gl, i8 %i.fx
  %i.gn = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %i.gm, ptr %i.gn, align 2, !tbaa !278
  %i.go = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 45, ptr %i.go, align 1, !tbaa !278
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca
  %.0 = phi ptr [ %i.gp, %bb.cd ], [ %i.d, %bb.ca ], [ %i.d, %bb.cc ], [ %i.d, %bb.cb ]
  %i.gq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.0, i64 noundef 16, ptr noundef nonnull @.str.46, i32 noundef %0) #59 ; 0 uses
  %i.gr = load i8, ptr %i.d, align 16, !tbaa !278
  %.not.i61 = icmp eq i8 %i.gr, 0
  br i1 %.not.i61, label %hb_language_from_string.exit64, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.gs = call fastcc noundef ptr @_ZL19lang_find_or_insertPKc(ptr noundef nonnull readonly %i.d) ; 2 uses
  %.not11.i63 = icmp eq ptr %i.gs, null
  br i1 %.not11.i63, label %hb_language_from_string.exit64, label %bb.cg, !prof !265

bb.cg:                                            ; preds = %bb.cf
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !698
  br label %hb_language_from_string.exit64

hb_language_from_string.exit64:                   ; preds = %bb.ce, %bb.cf, %bb.cg
  %.08.i60 = phi ptr [ null, %bb.cf ], [ null, %bb.ce ], [ %i.gu, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #59
  br label %hb_language_from_string.exit

hb_language_from_string.exit:                     ; preds = %.loopexit, %bb.bw, %bb.bx, %hb_language_from_string.exit64, %.split.loop.exit208, %bb.bo, %bb.bp, %.split.loop.exit220, %bb.bs, %bb.bt, %bb.a, %_ZL31hb_ot_ambiguous_tag_to_languagej.exit
  %.4 = phi ptr [ %i.br, %_ZL31hb_ot_ambiguous_tag_to_languagej.exit ], [ null, %bb.a ], [ %.08.i60, %hb_language_from_string.exit64 ], [ %i.dd, %bb.bp ], [ %i.eh, %bb.bt ], [ null, %bb.bo ], [ null, %.split.loop.exit208 ], [ null, %bb.bs ], [ null, %.split.loop.exit220 ], [ %i.fc, %bb.bx ], [ null, %.loopexit ], [ null, %bb.bw ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define void @hb_ot_tags_to_script_and_language(i32 noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [1 x i32], align 4                ; 4 uses
  %i.d = and i32 %0, 254
  %i.e = icmp eq i32 %i.d, 50
  br i1 %i.e, label %bb.b, label %bb.c, !prof !265

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %0, -206
  %i.g = tail call fastcc noundef i32 @_ZL23hb_ot_new_tag_to_scriptj(i32 noundef %i.f)
  br label %hb_ot_tag_to_script.exit

bb.c:                                             ; preds = %bb.a
  switch i32 %0, label %bb.e [
    i32 1145457748, label %hb_ot_tag_to_script.exit
    i32 1835103336, label %bb.d
  ], !prof !1423

bb.d:                                             ; preds = %bb.c
  br label %hb_ot_tag_to_script.exit

bb.e:                                             ; preds = %bb.c
  %i.h = and i32 %0, 65280
  %i.i = icmp eq i32 %i.h, 8192
  br i1 %i.i, label %bb.f, label %bb.g, !prof !265

bb.f:                                             ; preds = %bb.e
  %i.j = lshr i32 %0, 8
  %i.k = and i32 %i.j, 57088
  %i.l = or disjoint i32 %i.k, %0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.l, %bb.f ], [ %0, %bb.e ] ; 4 uses
  %i.m = and i32 %.0.i.i, 255
  %i.n = icmp eq i32 %i.m, 32
  br i1 %i.n, label %bb.h, label %bb.i, !prof !265

bb.h:                                             ; preds = %bb.g
  %i.o = lshr i32 %.0.i.i, 8
  %i.p = and i32 %i.o, 223
  %i.q = or disjoint i32 %i.p, %.0.i.i
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i.i = phi i32 [ %i.q, %bb.h ], [ %.0.i.i, %bb.g ]
  %i.r = and i32 %.1.i.i, -536870913
  br label %hb_ot_tag_to_script.exit

hb_ot_tag_to_script.exit:                         ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.r, %bb.i ], [ 1517122664, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %hb_ot_tag_to_script.exit
  store i32 %.0.i, ptr %2, align 4, !tbaa !657
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %hb_ot_tag_to_script.exit
  %.not51 = icmp eq ptr %3, null
  br i1 %.not51, label %bb.z, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  store i32 1, ptr %i.b, align 4, !tbaa !322
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  call void @hb_ot_tags_from_script_and_language(i32 noundef %.0.i, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null)
  %i.s = call ptr @hb_ot_tag_to_language(i32 noundef %1) ; 6 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !658
  %.not52 = icmp eq ptr %i.s, null
  br i1 %.not52, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = load i32, ptr %i.b, align 4, !tbaa !322
  %i.u = icmp ne i32 %i.t, 0
  %i.v = load i32, ptr %i.c, align 4
  %.not54 = icmp eq i32 %i.v, %0
  %or.cond = select i1 %i.u, i1 %.not54, i1 false
  br i1 %or.cond, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.s) #64 ; 6 uses
  %i.x = add i64 %i.w, 16
  %i.y = call noalias noundef ptr @malloc(i64 noundef %i.x) #61 ; 13 uses
  %.not55 = icmp eq ptr %i.y, null
  br i1 %.not55, label %bb.o, label %bb.p, !prof !265

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %3, align 8, !tbaa !658
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %.not.i = icmp eq i64 %i.w, 0
  br i1 %.not.i, label %_ZL9hb_memcpyPvPKvm.exit, label %bb.q, !prof !265

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %i.s, i64 %i.w, i1 false), !alias.scope !3090
  br label %_ZL9hb_memcpyPvPKvm.exit

_ZL9hb_memcpyPvPKvm.exit:                         ; preds = %bb.p, %bb.q
  %i.z = load i8, ptr %i.s, align 1, !tbaa !278
  %.not56 = icmp eq i8 %i.z, 120
  br i1 %.not56, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZL9hb_memcpyPvPKvm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !278
  %.not57 = icmp eq i8 %i.ab, 45
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL9hb_memcpyPvPKvm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w ; 2 uses
  store i8 45, ptr %i.ac, align 1, !tbaa !278
  %i.ad = add i64 %i.w, 2
  %i.ae = getelementptr i8, ptr %i.ac, i64 1
  store i8 120, ptr %i.ae, align 1, !tbaa !278
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.046 = phi i64 [ %i.ad, %bb.s ], [ %i.w, %bb.r ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %.046 ; 3 uses
  store <4 x i8> <i8 45, i8 104, i8 98, i8 115>, ptr %i.af, align 1, !tbaa !278
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  store i8 99, ptr %i.ag, align 1, !tbaa !278
  %i.ah = getelementptr i8, ptr %i.af, i64 5
  store i8 45, ptr %i.ah, align 1, !tbaa !278
  %i.ai = lshr i32 %0, 28
  %i.aj = trunc nuw nsw i32 %i.ai to i8           ; 2 uses
  %i.ak = icmp ult i32 %0, -1610612736
  %i.al = or disjoint i8 %i.aj, 48
  %i.am = add nuw nsw i8 %i.aj, 87
  %i.an = select i1 %i.ak, i8 %i.al, i8 %i.am
  %i.ao = getelementptr i8, ptr %i.y, i64 %.046
  %i.ap = getelementptr i8, ptr %i.ao, i64 6
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !278
  %i.aq = lshr i32 %0, 24
  %i.ar = getelementptr i8, ptr %i.y, i64 %.046
  %i.as = getelementptr i8, ptr %i.ar, i64 7
  %i.at = lshr i32 %0, 20
  %i.au = lshr i32 %0, 16
  %i.av = lshr i32 %0, 12
  %i.aw = trunc nuw i32 %i.aq to i8
  %i.ax = trunc i32 %i.at to i8
  %i.ay = trunc i32 %i.au to i8
  %i.az = trunc i32 %i.av to i8
  %i.ba = insertelement <4 x i8> poison, i8 %i.aw, i64 0
  %i.bb = insertelement <4 x i8> %i.ba, i8 %i.ax, i64 1
  %i.bc = insertelement <4 x i8> %i.bb, i8 %i.ay, i64 2
  %i.bd = insertelement <4 x i8> %i.bc, i8 %i.az, i64 3
  %i.be = and <4 x i8> %i.bd, splat (i8 15)       ; 3 uses
  %i.bf = icmp samesign ult <4 x i8> %i.be, splat (i8 10)
  %i.bg = or disjoint <4 x i8> %i.be, splat (i8 48)
  %i.bh = add nuw nsw <4 x i8> %i.be, splat (i8 87)
  %i.bi = select <4 x i1> %i.bf, <4 x i8> %i.bg, <4 x i8> %i.bh
  store <4 x i8> %i.bi, ptr %i.as, align 1, !tbaa !278
  %i.bj = lshr i32 %0, 8
  %i.bk = trunc i32 %i.bj to i8
  %i.bl = and i8 %i.bk, 15                        ; 3 uses
  %i.bm = icmp samesign ult i8 %i.bl, 10
  %i.bn = or disjoint i8 %i.bl, 48
  %i.bo = add nuw nsw i8 %i.bl, 87
  %i.bp = select i1 %i.bm, i8 %i.bn, i8 %i.bo
  %i.bq = getelementptr i8, ptr %i.y, i64 %.046
  %i.br = getelementptr i8, ptr %i.bq, i64 11
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !278
  %i.bs = trunc i32 %0 to i8                      ; 2 uses
  %i.bt = lshr i8 %i.bs, 4                        ; 2 uses
  %i.bu = icmp ult i8 %i.bs, -96
  %i.bv = or disjoint i8 %i.bt, 48
  %i.bw = add nuw nsw i8 %i.bt, 87
  %i.bx = select i1 %i.bu, i8 %i.bv, i8 %i.bw
  %i.by = getelementptr i8, ptr %i.y, i64 %.046
  %i.bz = getelementptr i8, ptr %i.by, i64 12
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !278
  %i.ca = trunc i32 %0 to i8
  %i.cb = and i8 %i.ca, 15                        ; 3 uses
  %i.cc = icmp samesign ult i8 %i.cb, 10
  %i.cd = or disjoint i8 %i.cb, 48
  %i.ce = add nuw nsw i8 %i.cb, 87
  %i.cf = select i1 %i.cc, i8 %i.cd, i8 %i.ce
  %i.cg = getelementptr i8, ptr %i.y, i64 %.046
  %i.ch = getelementptr i8, ptr %i.cg, i64 13
  store i8 %i.cf, ptr %i.ch, align 1, !tbaa !278
  %i.ci = trunc i64 %.046 to i32
  %i.cj = add i32 %i.ci, 14                       ; 3 uses
  %.not61 = icmp eq i32 %i.cj, 0
  br i1 %.not61, label %hb_language_from_string.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = load i8, ptr %i.y, align 1, !tbaa !278
  %.not.i58 = icmp eq i8 %i.ck, 0
  br i1 %.not.i58, label %hb_language_from_string.exit, label %bb.v

end_hunk_0
