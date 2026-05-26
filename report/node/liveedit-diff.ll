inline.NumInlined: 319
inline.NumDeleted: 197
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_:bb.a
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %._crit_edge88.i.i
  %.pre-phi98.i.i = phi i64 [ %.pre97.i.i, %._crit_edge88.i.i ], [ %i.ck, %bb.o ]
  %.pre-phi.i40.i = phi i64 [ %.pre.i43.i, %._crit_edge88.i.i ], [ %i.cj, %bb.o ]
  %i.cw = icmp slt i64 %indvars.iv.i18.i, 1
  %i.cx = select i1 %i.cw, i64 %.pre-phi98.i.i, i64 %.pre-phi.i40.i
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !noalias !33 ; 2 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %._crit_edge.i41.i
  %.pre-phi110.i20.i = phi i64 [ %.pre109.i42.i, %._crit_edge.i41.i ], [ %i.cq, %bb.o ]
  %.pre-phi100.i.i = phi i64 [ %i.v, %._crit_edge.i41.i ], [ %i.cp, %bb.o ]
  %i.da = icmp slt i64 %indvars.iv.i18.i, -1
  %i.db = select i1 %i.da, i64 %.pre-phi110.i20.i, i64 %.pre-phi100.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val50.pre.i.i, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !noalias !33 ; 2 uses
  %i.de = add nsw i32 %i.dd, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %storemerge.i21.i = phi i32 [ %i.de, %bb.q ], [ %i.cz, %bb.p ] ; 5 uses
  %.sroa.0.0.i22.i = phi i32 [ %i.dd, %bb.q ], [ %i.cz, %bb.p ] ; 2 uses
  %i.df = trunc nsw i64 %indvars.iv.i18.i to i32
  %i.dg = add i32 %.reass.i, %i.df                ; 4 uses
  %i.dh = add i32 %i.dg, %.sroa.0.0.extract.trunc45.i
  %i.di = sub i32 %.sroa.0.4.extract.trunc.i, %i.dh
  %i.dj = add i32 %i.di, %storemerge.i21.i        ; 4 uses
  %i.dk = icmp sgt i32 %storemerge.i21.i, %.sroa.0.0.extract.trunc45.i
  %i.dl = icmp sgt i32 %i.dj, %.sroa.0.4.extract.trunc.i
  %i.dm = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %i.dm, label %.lr.ph, label %.critedge.i27.i

bb.s:                                             ; preds = %.lr.ph
  %i.dn = icmp sgt i32 %i.dr, %.sroa.0.0.extract.trunc45.i
  %i.do = icmp sgt i32 %i.ds, %.sroa.0.4.extract.trunc.i
  %i.dp = and i1 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph, label %.critedge.i27.i, !llvm.loop !36

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.sroa.12.0.i.i109 = phi i32 [ %i.ds, %bb.s ], [ %i.dj, %bb.r ] ; 2 uses
  %.sroa.064.0.i.i108 = phi i32 [ %i.dr, %bb.s ], [ %storemerge.i21.i, %bb.r ] ; 2 uses
  %i.dq = load ptr, ptr %1, align 8, !noalias !33 ; 2 uses
  %i.dr = add nsw i32 %.sroa.064.0.i.i108, -1     ; 4 uses
  %i.ds = add nsw i32 %.sroa.12.0.i.i109, -1      ; 4 uses
  %i.dt = load ptr, ptr %i.dq, align 8, !noalias !33
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !33
  %i.dw = tail call noundef zeroext i1 %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, i32 noundef %i.dr, i32 noundef %i.ds) #8, !noalias !33, !inline_history !37
  br i1 %i.dw, label %bb.s, label %..critedge.i27.i_crit_edge, !llvm.loop !36

..critedge.i27.i_crit_edge:                       ; preds = %.lr.ph
  br label %.critedge.i27.i, !llvm.loop !36

.critedge.i27.i:                                  ; preds = %bb.s, %..critedge.i27.i_crit_edge, %bb.r
  %.sroa.064.0.i.i.lcssa = phi i32 [ %.sroa.064.0.i.i108, %..critedge.i27.i_crit_edge ], [ %storemerge.i21.i, %bb.r ], [ %i.dr, %bb.s ] ; 3 uses
  %.sroa.12.0.i.i.lcssa = phi i32 [ %.sroa.12.0.i.i109, %..critedge.i27.i_crit_edge ], [ %i.dj, %bb.r ], [ %i.ds, %bb.s ]
  %.val46.i28.i = load ptr, ptr %i.g, align 8, !noalias !33 ; 2 uses
  %.val47.i29.i = load ptr, ptr %i.h, align 8, !noalias !33
  %i.dx = ptrtoint ptr %.val47.i29.i to i64
  %i.dy = ptrtoint ptr %.val46.i28.i to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 2
  %i.eb = icmp slt i64 %indvars.iv.i18.i, 0
  %i.ec = select i1 %i.eb, i64 %i.ea, i64 0
  %i.ed = getelementptr [4 x i8], ptr %.val46.i28.i, i64 %indvars.iv.i18.i
  %i.ee = getelementptr [4 x i8], ptr %i.ed, i64 %i.ec
  store i32 %.sroa.064.0.i.i.lcssa, ptr %i.ee, align 4, !noalias !33
  %i.ef = sext i32 %i.dg to i64                   ; 3 uses
  %.not36.i30.i = icmp slt i64 %i.ef, %i.u
  %.not37.i31.i = icmp slt i64 %indvars.iv.i, %i.ef
  %i.eg = or i1 %.not36.i30.i, %.not37.i31.i
  %or.cond40.i.i = select i1 %.not36.i.i, i1 true, i1 %i.eg
  br i1 %or.cond40.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge.i27.i
  %.val.i32.i = load ptr, ptr %i.e, align 8, !noalias !33 ; 2 uses
  %.val45.i.i = load ptr, ptr %i.r, align 8, !noalias !33
  %i.eh = zext nneg i32 %i.dg to i64
  %i.ei = ptrtoint ptr %.val45.i.i to i64
  %i.ej = ptrtoint ptr %.val.i32.i to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 2
  %i.em = add nsw i64 %i.el, %i.ef
  %i.en = icmp slt i32 %i.dg, 0
  %i.eo = select i1 %i.en, i64 %i.em, i64 %i.eh
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.val.i32.i, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !noalias !33
  %.not38.i.i = icmp sgt i32 %.sroa.064.0.i.i.lcssa, %i.eq
  br i1 %.not38.i.i, label %bb.u, label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i

_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i: ; preds = %bb.t
  %i.er = icmp ne i64 %indvars.iv.i, 0
  %.not35.le.i33.i = icmp eq i32 %.sroa.0.0.i22.i, %storemerge.i21.i
  %or.cond.le.i34.i = select i1 %i.er, i1 %.not35.le.i33.i, i1 false
  %i.es = zext i1 %or.cond.le.i34.i to i32
  %i.et = add nsw i32 %i.dj, %i.es
  %.sroa.12.0.insert.ext.i.i = zext i32 %.sroa.12.0.i.i.lcssa to i64
  %.sroa.12.0.insert.shift.i.i = shl nuw i64 %.sroa.12.0.insert.ext.i.i, 32
  %.sroa.064.0.insert.ext.i.i = zext i32 %.sroa.064.0.i.i.lcssa to i64
  %.sroa.064.0.insert.insert.i.i = or disjoint i64 %.sroa.12.0.insert.shift.i.i, %.sroa.064.0.insert.ext.i.i
  %.sroa.7.8.insert.ext = zext i32 %.sroa.0.0.i22.i to i64
  %.sroa.7.12.insert.ext = zext i32 %i.et to i64
  %.sroa.7.12.insert.shift = shl nuw i64 %.sroa.7.12.insert.ext, 32
  %.sroa.7.12.insert.insert = or disjoint i64 %.sroa.7.12.insert.shift, %.sroa.7.8.insert.ext
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit

bb.u:                                             ; preds = %bb.t, %.critedge.i27.i
  %indvars.iv.next.i38.i = add nsw i64 %indvars.iv.i18.i, -2 ; 2 uses
  %.not.i39.i = icmp slt i64 %indvars.iv.next.i38.i, %i.u
  br i1 %.not.i39.i, label %bb.v, label %bb.m, !llvm.loop !38

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eu = trunc nsw i64 %indvars.iv.next.i to i32
  %i.ev = uitofp nneg i32 %i.eu to float
  %i.ew = fcmp ult float %i.p, %i.ev
  br i1 %i.ew, label %.loopexit, label %bb.c, !llvm.loop !39

.loopexit:                                        ; preds = %bb.v, %bb.a, %bb.b
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.ex, align 8
  br label %bb.ai

_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i
  %.sroa.7.0 = phi i64 [ %.sroa.065.0.insert.insert.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i ], [ %.sroa.7.12.insert.insert, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.4.insert.insert, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditForwardERKNS2_13EditGraphAreaEi.exit.thread.i ], [ %.sroa.064.0.insert.insert.i.i, %_ZN2v88internal12_GLOBAL__N_111MyersDiffer19ShortestEditReverseERKNS2_13EditGraphAreaEi.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias writable align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %2, i64 %.sroa.0.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer12FindEditPathENS2_5PointES3_(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %.sroa.7.0, i64 %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val11 = load i8, ptr %i.ey, align 8, !range !10, !noundef !11
  %i.ez = trunc nuw i8 %.val11 to i1              ; 2 uses
  br i1 %i.ez, label %bb.w, label %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.w:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit
  %.val14 = load ptr, ptr %4, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val15 = load ptr, ptr %i.fa, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %.val14, ptr %.val15)
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit

_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer15FindMiddleSnakeENS2_5PointES3_.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fd = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #10 ; 3 uses
  store i64 %.sroa.0.0, ptr %i.fd, align 4
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  store ptr %i.fd, ptr %6, align 8
  store ptr %i.fe, ptr %i.fb, align 8
  store ptr %i.fe, ptr %i.fc, align 8
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit

_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit: ; preds = %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.w
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val10 = load i8, ptr %i.ff, align 8, !range !10, !noundef !11
  %i.fg = trunc nuw i8 %.val10 to i1              ; 2 uses
  br i1 %i.fg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit
  %.val12 = load ptr, ptr %5, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val13 = load ptr, ptr %i.fh, align 8
  call fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %.val12, ptr %.val13)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert71 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.pre72 = load ptr, ptr %.phi.trans.insert71, align 8
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit

bb.y:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKNS2_5PointE.exit
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8            ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8            ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.fj, %i.fl
  br i1 %.not.i.i21, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i64 %.sroa.7.0, ptr %i.fj, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %.val18.i.i.i22 = load ptr, ptr %6, align 8     ; 4 uses
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = ptrtoint ptr %.val18.i.i.i22 to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 6 uses
  %i.fq = icmp eq i64 %i.fp, 9223372036854775800
  br i1 %i.fq, label %bb.ab, label %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i23

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #9
  unreachable

_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i23: ; preds = %bb.aa
  %i.fr = ashr exact i64 %i.fp, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i24 = tail call i64 @llvm.umax.i64(i64 %i.fr, i64 1)
  %i.fs = add nsw i64 %.sroa.speculated.i.i.i.i24, %i.fr ; 2 uses
  %i.ft = tail call i64 @llvm.umin.i64(i64 %i.fs, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i25 = icmp ne i64 %i.fs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i25)
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #10 ; 4 uses
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.fp ; 2 uses
  store i64 %.sroa.7.0, ptr %i.fw, align 4
  %i.fx = icmp sgt i64 %i.fp, 0
  br i1 %i.fx, label %bb.ac, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26

bb.ac:                                            ; preds = %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i23
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 4 %.val18.i.i.i22, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26

_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26: ; preds = %bb.ac, %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i23
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.not.i22.i.i.i27 = icmp eq ptr %.val18.i.i.i22, null
  br i1 %.not.i22.i.i.i27, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26
  tail call void @_ZdlPvm(ptr noundef nonnull %.val18.i.i.i22, i64 noundef %i.fp) #11
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28

_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28: ; preds = %bb.ad, %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit21.i.i.i26
  store ptr %i.fv, ptr %6, align 8
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.ft
  br label %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit

_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit: ; preds = %bb.x, %bb.z, %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28
  %i.ga = phi ptr [ %.pre72, %bb.x ], [ %i.fl, %bb.z ], [ %i.fz, %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28 ]
  %i.gb = phi ptr [ %.pre, %bb.x ], [ %i.fm, %bb.z ], [ %i.fy, %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i28 ]
  %i.gc = load ptr, ptr %6, align 8
  store ptr %i.gc, ptr %0, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gb, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ga, ptr %i.ge, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.gf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  br i1 %i.fg, label %bb.ae, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit

bb.ae:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit
  %.val.i.i.i.i = load ptr, ptr %5, align 8       ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.val1.i.i.i.i = load ptr, ptr %i.gg, align 8
  %i.gh = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.gi = ptrtoint ptr %.val.i.i.i.i to i64
  %i.gj = sub i64 %i.gh, %i.gi
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.gj) #11
  br label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_111MyersDiffer4PathD2Ev.exit, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br i1 %i.ez, label %bb.ag, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34

bb.ag:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit
  %.val.i.i.i.i31 = load ptr, ptr %4, align 8     ; 3 uses
  %.not.i.i.i.i.i.i.i.i32 = icmp eq ptr %.val.i.i.i.i31, null
  br i1 %.not.i.i.i.i.i.i.i.i32, label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val1.i.i.i.i33 = load ptr, ptr %i.gk, align 8
  %i.gl = ptrtoint ptr %.val1.i.i.i.i33 to i64
  %i.gm = ptrtoint ptr %.val.i.i.i.i31 to i64
  %i.gn = sub i64 %i.gl, %i.gm
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i31, i64 noundef %i.gn) #11
  br label %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34

_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34: ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.ai

bb.ai:                                            ; preds = %_ZNSt14_Optional_baseIN2v88internal12_GLOBAL__N_111MyersDiffer4PathELb0ELb0EED2Ev.exit34, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_111MyersDiffer4Path3AddERKS3_(ptr noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr %.0.val, ptr %.8.val) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %.val.i = load ptr, ptr %0, align 8             ; 5 uses
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = ptrtoint ptr %.val.i to i64              ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = icmp eq ptr %.0.val, %.8.val
  br i1 %i.e, label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEvEENS9_IPS4_S6_EESC_T_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %.8.val to i64
  %i.g = ptrtoint ptr %.0.val to i64
  %i.h = sub i64 %i.f, %i.g                       ; 10 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = sub i64 %i.l, %i.b
  %.not.i.i = icmp ult i64 %i.m, %i.h
  br i1 %.not.i.i, label %bb.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal12_GLOBAL__N_111MyersDiffer5PointESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal12_GLOBAL__N_111MyersDiffer5PointESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.b
  %i.n = icmp sgt i64 %i.h, 8
  br i1 %i.n, label %bb.c, label %bb.d, !prof !12

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal12_GLOBAL__N_111MyersDiffer5PointESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.val, ptr align 4 %.0.val, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN2v88internal12_GLOBAL__N_111MyersDiffer5PointESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %i.o = icmp eq i64 %i.h, 8
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.0.val, align 4
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.val, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  store ptr %i.q, ptr %i.a, align 8
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEvEENS9_IPS4_S6_EESC_T_SF_.exit

bb.g:                                             ; preds = %bb.b
  %i.r = ashr exact i64 %i.d, 3                   ; 4 uses
  %i.s = sub nsw i64 1152921504606846975, %i.r
  %i.t = icmp ult i64 %i.s, %i.i
  br i1 %i.t, label %bb.h, label %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #9
  unreachable

_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.i)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.r
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_M_allocateEm.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #10
  br label %_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_M_allocateEm.exit.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.aa = phi ptr [ %i.z, %bb.i ], [ null, %_ZNKSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 5 uses
  %i.ab = icmp sgt i64 %i.d, 8
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !12

bb.j:                                             ; preds = %_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.aa, ptr align 4 %.val.i, i64 %i.d, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit.i.i

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE11_M_allocateEm.exit.i.i
  %i.ac = icmp eq i64 %i.d, 8
  br i1 %i.ac, label %bb.l, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %.val.i.i.i.i.i.i.i.i.i56.i.i = load i64, ptr %.val.i, align 4
  store i64 %.val.i.i.i.i.i.i.i.i.i56.i.i, ptr %i.aa, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.d ; 3 uses
  %i.ae = icmp sgt i64 %i.h, 8
  br i1 %i.ae, label %bb.m, label %bb.n, !prof !12

bb.m:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %.0.val, i64 %i.h, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit60.i.i

bb.n:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit.i.i
  %i.af = icmp eq i64 %i.h, 8
  br i1 %i.af, label %bb.o, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit60.i.i

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i.i.i.i.i57.i.i = load i64, ptr %.0.val, align 4
  store i64 %.val.i.i.i.i.i.i.i.i57.i.i, ptr %i.ad, align 4
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit60.i.i

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit60.i.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.ag = getelementptr inbounds i8, ptr %i.ad, i64 %i.h
  %.not.i61.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i61.i.i, label %_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE13_M_deallocateEPS4_m.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit60.i.i
  %i.ah = sub i64 %i.l, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i, i64 noundef %i.ah) #11
  br label %_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE13_M_deallocateEPS4_m.exit.i.i

_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE13_M_deallocateEPS4_m.exit.i.i: ; preds = %bb.p, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal12_GLOBAL__N_111MyersDiffer5PointES5_SaIS4_EET0_T_S8_S7_RT1_.exit60.i.i
  store ptr %i.aa, ptr %0, align 8
  store ptr %i.ag, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.x
  store ptr %i.ai, ptr %i.j, align 8
  br label %_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEvEENS9_IPS4_S6_EESC_T_SF_.exit

_ZNSt6vectorIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE6insertIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEvEENS9_IPS4_S6_EESC_T_SF_.exit: ; preds = %bb.a, %bb.f, %_ZNSt12_Vector_baseIN2v88internal12_GLOBAL__N_111MyersDiffer5PointESaIS4_EE13_M_deallocateEPS4_m.exit.i.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_0
