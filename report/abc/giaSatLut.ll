Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaSatLut?download=true
inline.NumInlined: 1157
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 62
begin_hunk_0_@Gia_ManKSatCnf:bb.a
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !49 ; 2 uses
  %i.ch = and i32 %i.cg, 1
  %.not.i335 = icmp eq i32 %i.ch, 0
  %i.ci = ashr i32 %i.cg, 1                       ; 2 uses
  %i.cj = xor i32 %i.ci, -1
  %i.ck = add nsw i32 %i.ci, 1
  %i.cl = select i1 %.not.i335, i32 %i.ck, i32 %i.cj
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.cl)
  %indvars.iv.next.i336 = add nuw nsw i64 %indvars.iv.i334, 1 ; 2 uses
  %exitcond.not.i337 = icmp eq i64 %indvars.iv.next.i336, %wide.trip.count.i332
  br i1 %exitcond.not.i337, label %.lr.ph480.1, label %.lr.ph.i333, !llvm.loop !5

._crit_edge481.1.thread.critedge:                 ; preds = %.preheader466
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.50, i32 noundef %i.av)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  br label %Gia_SatDumpClause.exit.1

.lr.ph480.1:                                      ; preds = %.lr.ph.i333
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 96 ; 2 uses
  %min.iters.check801 = icmp ult i32 %.1300486, 8
  br i1 %min.iters.check801, label %scalar.ph800.preheader, label %vector.ph802

vector.ph802:                                     ; preds = %.lr.ph480.1
  %n.vec803 = and i64 %wide.trip.count.i332, 2147483640 ; 3 uses
  br label %vector.body804

vector.body804:                                   ; preds = %vector.body804, %vector.ph802
  %index805 = phi i64 [ 0, %vector.ph802 ], [ %index.next808, %vector.body804 ] ; 3 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index805 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load806 = load <4 x i32>, ptr %i.co, align 4, !tbaa !49
  %wide.load807 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !49
  %i.cq = shl nsw <4 x i32> %wide.load806, splat (i32 1)
  %i.cr = shl nsw <4 x i32> %wide.load807, splat (i32 1)
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index805 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <4 x i32> %i.cq, ptr %i.cs, align 16, !tbaa !49
  store <4 x i32> %i.cr, ptr %i.ct, align 16, !tbaa !49
  %index.next808 = add nuw i64 %index805, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next808, %n.vec803
  br i1 %i.cu, label %middle.block809, label %vector.body804, !llvm.loop !301

middle.block809:                                  ; preds = %vector.body804
  %cmp.n810 = icmp eq i64 %n.vec803, %wide.trip.count.i332
  br i1 %cmp.n810, label %.lr.ph.preheader.i.1, label %scalar.ph800.preheader

scalar.ph800.preheader:                           ; preds = %.lr.ph480.1, %middle.block809
  %indvars.iv561.1.ph = phi i64 [ 0, %.lr.ph480.1 ], [ %n.vec803, %middle.block809 ]
  br label %scalar.ph800

scalar.ph800:                                     ; preds = %scalar.ph800.preheader, %scalar.ph800
  %indvars.iv561.1 = phi i64 [ %indvars.iv.next562.1, %scalar.ph800 ], [ %indvars.iv561.1.ph, %scalar.ph800.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv561.1
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !49
  %i.cx = shl nsw i32 %i.cw, 1
  %indvars.iv.next562.1 = add nuw nsw i64 %indvars.iv561.1, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv561.1
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !49
  %exitcond567.1.not = icmp eq i64 %indvars.iv.next562.1, %wide.trip.count.i332
  br i1 %exitcond567.1.not, label %.lr.ph.preheader.i.1, label %scalar.ph800, !llvm.loop !302

.lr.ph.preheader.i.1:                             ; preds = %scalar.ph800, %middle.block809
  %wide.trip.count.i.1 = zext nneg i32 %.1300486 to i64
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1, %.lr.ph.preheader.i.1
  %indvars.iv.i.1 = phi i64 [ 0, %.lr.ph.preheader.i.1 ], [ %indvars.iv.next.i.1, %.lr.ph.i.1 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.1
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !49 ; 2 uses
  %i.db = and i32 %i.da, 1
  %.not.i.1 = icmp eq i32 %i.db, 0
  %i.dc = ashr i32 %i.da, 1                       ; 2 uses
  %i.dd = xor i32 %i.dc, -1
  %i.de = add nsw i32 %i.dc, 1
  %i.df = select i1 %.not.i.1, i32 %i.de, i32 %i.dd
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.df)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i.1
  br i1 %exitcond.not.i.1, label %Gia_SatDumpClause.exit.1, label %.lr.ph.i.1, !llvm.loop !5

Gia_SatDumpClause.exit.1:                         ; preds = %.lr.ph.i.1, %._crit_edge481.1.thread.critedge
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.50, i32 noundef %i.av)
  br i1 %i.as, label %.lr.ph483.1, label %Gia_SatDumpClause.exit338.1

.lr.ph483.1:                                      ; preds = %Gia_SatDumpClause.exit.1
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aw
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96 ; 2 uses
  %min.iters.check = icmp ult i32 %.1300486, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph483.1
  %n.vec = and i64 %wide.trip.count.i332, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load = load <4 x i32>, ptr %i.di, align 4, !tbaa !49
  %wide.load799 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !49
  %i.dk = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %i.dl = shl nsw <4 x i32> %wide.load799, splat (i32 1)
  %i.dm = or disjoint <4 x i32> %i.dk, splat (i32 1)
  %i.dn = or disjoint <4 x i32> %i.dl, splat (i32 1)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 16, !tbaa !49
  store <4 x i32> %i.dn, ptr %i.dp, align 16, !tbaa !49
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !303

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i332
  br i1 %cmp.n, label %.lr.ph.i333.1.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph483.1, %middle.block
  %indvars.iv568.1.ph = phi i64 [ 0, %.lr.ph483.1 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv568.1 = phi i64 [ %indvars.iv.next569.1, %scalar.ph ], [ %indvars.iv568.1.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv568.1
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !49
  %i.dt = shl nsw i32 %i.ds, 1
  %i.du = or disjoint i32 %i.dt, 1
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv568.1
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !49
  %indvars.iv.next569.1 = add nuw nsw i64 %indvars.iv568.1, 1 ; 2 uses
  %exitcond572.1.not = icmp eq i64 %indvars.iv.next569.1, %wide.trip.count.i332
  br i1 %exitcond572.1.not, label %.lr.ph.i333.1.preheader, label %scalar.ph, !llvm.loop !304

.lr.ph.i333.1.preheader:                          ; preds = %scalar.ph, %middle.block
  br label %.lr.ph.i333.1

.lr.ph.i333.1:                                    ; preds = %.lr.ph.i333.1.preheader, %.lr.ph.i333.1
  %indvars.iv.i334.1 = phi i64 [ %indvars.iv.next.i336.1, %.lr.ph.i333.1 ], [ 0, %.lr.ph.i333.1.preheader ] ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i334.1
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !49 ; 2 uses
  %i.dy = and i32 %i.dx, 1
  %.not.i335.1 = icmp eq i32 %i.dy, 0
  %i.dz = ashr i32 %i.dx, 1                       ; 2 uses
  %i.ea = xor i32 %i.dz, -1
  %i.eb = add nsw i32 %i.dz, 1
  %i.ec = select i1 %.not.i335.1, i32 %i.eb, i32 %i.ea
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ec)
  %indvars.iv.next.i336.1 = add nuw nsw i64 %indvars.iv.i334.1, 1 ; 2 uses
  %exitcond.not.i337.1 = icmp eq i64 %indvars.iv.next.i336.1, %wide.trip.count.i332
  br i1 %exitcond.not.i337.1, label %Gia_SatDumpClause.exit338.1, label %.lr.ph.i333.1, !llvm.loop !5

Gia_SatDumpClause.exit338.1:                      ; preds = %.lr.ph.i333.1, %Gia_SatDumpClause.exit.1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %i.ed = add nsw i32 %.1300486, 1                ; 2 uses
  %i.ee = icmp slt i32 %i.ed, %i.aq
  br i1 %i.ee, label %.preheader466, label %.preheader463.lr.ph, !llvm.loop !305

.preheader463:                                    ; preds = %.preheader463.lr.ph, %._crit_edge501
  %.lcssa738740.lcssa752 = phi i32 [ %.promoted751, %.preheader463.lr.ph ], [ %.lcssa738740.lcssa753, %._crit_edge501 ]
  %indvars.iv603 = phi i64 [ %i.az, %.preheader463.lr.ph ], [ %indvars.iv.next604, %._crit_edge501 ] ; 9 uses
  %i.ef = icmp sgt i64 %indvars.iv603, 0          ; 2 uses
  %i.eg = mul nsw i64 %indvars.iv603, 268         ; 4 uses
  br i1 %i.ef, label %.lr.ph489, label %._crit_edge495

.lr.ph489:                                        ; preds = %.preheader463
  %i.eh = getelementptr [4 x i8], ptr %0, i64 %i.eg
  %i.ei = getelementptr i8, ptr %i.eh, i64 8
  %i.ej = add nuw i64 %i.eg, 28
  %i.ek = and i64 %i.ej, 4294967292
  %i.el = add nuw i64 %i.eg, 4
  %i.em = and i64 %i.el, 4294967292
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ek
  br label %.lr.ph.i340

.preheader459.loopexit:                           ; preds = %._crit_edge501
  store i32 %.lcssa741745.lcssa750, ptr %i.a, align 16
  store i32 %.lcssa738740.lcssa753, ptr %i.ay, align 8
  store i32 %.lcssa742748.lcssa754, ptr %i.ax, align 4
  br label %.preheader459

.preheader459:                                    ; preds = %.preheader459.loopexit, %.loopexit469
  %i.ep = add nsw i32 %i.aq, -1                   ; 4 uses
  %i.eq = icmp slt i32 %1, %i.ep
  br i1 %i.eq, label %.lr.ph511, label %._crit_edge524

.lr.ph511:                                        ; preds = %.preheader459
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.et = sext i32 %1 to i64                      ; 2 uses
  %i.eu = sext i32 %i.aq to i64
  %wide.trip.count630 = sext i32 %i.ep to i64
  br label %bb.i

.lr.ph494:                                        ; preds = %.lr.ph.i340
  %i.ev = shl nsw i32 %i.fe, 1
  %i.ew = mul nuw nsw i64 %indvars.iv603, 268     ; 4 uses
  %invariant.op496 = add nuw i64 %i.ew, 4
  %6 = getelementptr [4 x i8], ptr %0, i64 %i.ew
  %7 = getelementptr i8, ptr %6, i64 8
  %i.ex = add nuw i64 %i.ew, 28
  %i.ey = and i64 %i.ex, 4294967292
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ey
  br label %bb.h

.lr.ph.i340:                                      ; preds = %.lr.ph489, %.lr.ph.i340
  %indvars.iv576 = phi i64 [ 0, %.lr.ph489 ], [ %indvars.iv.next577, %.lr.ph.i340 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv576
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !49
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv576
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !49
  %i.fe = load i32, ptr %i.ei, align 4, !tbaa !49 ; 2 uses
  %i.ff = xor i32 %i.fb, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ff)
  %i.fg = xor i32 %i.fd, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.fg)
  %i.fh = add nsw i32 %i.fe, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.fh)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1 ; 2 uses
  %exitcond580.not = icmp eq i64 %indvars.iv.next577, %indvars.iv603
  br i1 %exitcond580.not, label %.lr.ph494, label %.lr.ph.i340, !llvm.loop !306

.loopexit461.loopexit:                            ; preds = %.lr.ph.i347
  %i.fi = shl nsw i32 %i.fo, 1
  %i.fj = or disjoint i32 %i.fi, 1
  br label %.loopexit461

.loopexit461:                                     ; preds = %.loopexit461.loopexit, %bb.h
  %.lcssa738740 = phi i32 [ %.lcssa738739, %bb.h ], [ %i.fj, %.loopexit461.loopexit ] ; 2 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1
  %exitcond592.not = icmp eq i64 %indvars.iv.next589, %indvars.iv603
  br i1 %exitcond592.not, label %._crit_edge495, label %bb.h, !llvm.loop !307

bb.h:                                             ; preds = %.lr.ph494, %.loopexit461
  %.lcssa738739 = phi i32 [ %i.ev, %.lr.ph494 ], [ %.lcssa738740, %.loopexit461 ]
  %indvars.iv588 = phi i64 [ 0, %.lr.ph494 ], [ %indvars.iv.next589, %.loopexit461 ] ; 2 uses
  %indvars.iv581 = phi i64 [ 1, %.lr.ph494 ], [ %indvars.iv.next582, %.loopexit461 ] ; 2 uses
  %indvars.iv.next589 = add nuw nsw i64 %indvars.iv588, 1 ; 3 uses
  %i.fk = icmp slt i64 %indvars.iv.next589, %indvars.iv603
  br i1 %i.fk, label %.lr.ph492, label %.loopexit461

.lr.ph492:                                        ; preds = %bb.h
  %.reass.reass = add i64 %invariant.op496, %indvars.iv588
  %sext = shl i64 %.reass.reass, 32
  %8 = ashr exact i64 %sext, 30
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  br label %.lr.ph.i347

.lr.ph.i347:                                      ; preds = %.lr.ph492, %.lr.ph.i347
  %indvars.iv583 = phi i64 [ %indvars.iv581, %.lr.ph492 ], [ %indvars.iv.next584, %.lr.ph.i347 ] ; 2 uses
  %i.fl = load i32, ptr %9, align 4, !tbaa !49
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %indvars.iv583
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !49
  %i.fo = load i32, ptr %7, align 4, !tbaa !49    ; 2 uses
  %i.fp = xor i32 %i.fl, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.fp)
  %i.fq = xor i32 %i.fn, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.fq)
  %i.fr = xor i32 %i.fo, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.fr)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %indvars.iv.next584 = add nuw nsw i64 %indvars.iv583, 1 ; 2 uses
  %exitcond587.not = icmp eq i64 %indvars.iv.next584, %indvars.iv603
  br i1 %exitcond587.not, label %.loopexit461.loopexit, label %.lr.ph.i347, !llvm.loop !308

._crit_edge495:                                   ; preds = %.loopexit461, %.preheader463
  %.lcssa738740.lcssa753 = phi i32 [ %.lcssa738740.lcssa752, %.preheader463 ], [ %.lcssa738740, %.loopexit461 ] ; 2 uses
  %.pre-phi = phi i64 [ %i.eg, %.preheader463 ], [ %i.ew, %.loopexit461 ] ; 3 uses
  %i.fs = getelementptr [4 x i8], ptr %0, i64 %.pre-phi ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !49 ; 2 uses
  %i.fv = shl nsw i32 %i.fu, 1
  %i.fw = or disjoint i32 %i.fv, 1                ; 2 uses
  %i.fx = load i32, ptr %i.fs, align 4, !tbaa !49 ; 2 uses
  %i.fy = shl nsw i32 %i.fx, 1                    ; 2 uses
  %i.fz = xor i32 %i.fu, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.fz)
  %i.ga = add nsw i32 %i.fx, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ga)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  br i1 %i.ef, label %.preheader460.lr.ph, label %._crit_edge501

.preheader460.lr.ph:                              ; preds = %._crit_edge495
  %i.gb = add i64 %.pre-phi, 28
  %i.gc = and i64 %i.gb, 4294967292
  %i.gd = add i64 %.pre-phi, 4
  %i.ge = and i64 %i.gd, 4294967292
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.gc
  br label %.preheader460

.preheader460:                                    ; preds = %.preheader460.lr.ph, %._crit_edge499
  %.lcssa742747 = phi i32 [ %i.fy, %.preheader460.lr.ph ], [ %.lcssa742748, %._crit_edge499 ]
  %.lcssa741744 = phi i32 [ %i.fw, %.preheader460.lr.ph ], [ %.lcssa741745, %._crit_edge499 ]
  %indvars.iv598 = phi i64 [ 0, %.preheader460.lr.ph ], [ %indvars.iv.next599, %._crit_edge499 ] ; 4 uses
  %.not541 = icmp eq i64 %indvars.iv598, 0
  br i1 %.not541, label %._crit_edge499, label %.lr.ph498

.lr.ph498:                                        ; preds = %.preheader460
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv598
  br label %.lr.ph.i361

.lr.ph.i361:                                      ; preds = %.lr.ph498, %.lr.ph.i361
  %indvars.iv593 = phi i64 [ 0, %.lr.ph498 ], [ %indvars.iv.next594, %.lr.ph.i361 ] ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !49 ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv593
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !49 ; 2 uses
  %i.gl = xor i32 %i.gi, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.gl)
  %i.gm = xor i32 %i.gk, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.gm)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %indvars.iv.next594 = add nuw nsw i64 %indvars.iv593, 1 ; 2 uses
  %exitcond597.not = icmp eq i64 %indvars.iv.next594, %indvars.iv598
  br i1 %exitcond597.not, label %._crit_edge499.loopexit, label %.lr.ph.i361, !llvm.loop !309

._crit_edge499.loopexit:                          ; preds = %.lr.ph.i361
  %i.gn = shl nsw i32 %i.gk, 1
  %i.go = or disjoint i32 %i.gn, 1
  %i.gp = shl nsw i32 %i.gi, 1
  %i.gq = or disjoint i32 %i.gp, 1
  br label %._crit_edge499

._crit_edge499:                                   ; preds = %._crit_edge499.loopexit, %.preheader460
  %.lcssa742748 = phi i32 [ %.lcssa742747, %.preheader460 ], [ %i.go, %._crit_edge499.loopexit ] ; 2 uses
  %.lcssa741745 = phi i32 [ %.lcssa741744, %.preheader460 ], [ %i.gq, %._crit_edge499.loopexit ] ; 2 uses
  %indvars.iv.next599 = add nuw nsw i64 %indvars.iv598, 1 ; 2 uses
  %exitcond602.not = icmp eq i64 %indvars.iv.next599, %indvars.iv603
  br i1 %exitcond602.not, label %._crit_edge501, label %.preheader460, !llvm.loop !310

._crit_edge501:                                   ; preds = %._crit_edge499, %._crit_edge495
  %.lcssa742748.lcssa754 = phi i32 [ %i.fy, %._crit_edge495 ], [ %.lcssa742748, %._crit_edge499 ]
  %.lcssa741745.lcssa750 = phi i32 [ %i.fw, %._crit_edge495 ], [ %.lcssa741745, %._crit_edge499 ]
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, 1 ; 2 uses
  %i.gr = icmp slt i64 %indvars.iv.next604, %i.ba
  br i1 %i.gr, label %.preheader463, label %.preheader459.loopexit, !llvm.loop !311

.lr.ph523:                                        ; preds = %Gia_SatDumpClause.exit388
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.not328 = icmp eq i32 %4, 0
  %i.gu = add nsw i32 %1, 2
  %i.gv = sext i32 %1 to i64                      ; 4 uses
  %i.gw = sext i32 %i.aq to i64                   ; 2 uses
  %wide.trip.count660 = sext i32 %i.ep to i64
  %.promoted769 = load i32, ptr %i.gt, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph511, %Gia_SatDumpClause.exit388
  %indvars.iv627 = phi i64 [ %i.et, %.lr.ph511 ], [ %indvars.iv.next628, %Gia_SatDumpClause.exit388 ] ; 4 uses
  %indvars.iv623.in = phi i32 [ %2, %.lr.ph511 ], [ %indvars.iv623, %Gia_SatDumpClause.exit388 ]
  %indvars.iv610.in = phi i64 [ %i.et, %.lr.ph511 ], [ %indvars.iv610, %Gia_SatDumpClause.exit388 ]
  %indvars.iv610 = add nsw i64 %indvars.iv610.in, 1 ; 5 uses
  %indvars.iv623 = add i32 %indvars.iv623.in, -1  ; 5 uses
  %indvars.iv.next628 = add nsw i64 %indvars.iv627, 1 ; 3 uses
  %i.gx = icmp slt i64 %indvars.iv.next628, %i.eu
  br i1 %i.gx, label %.preheader457.lr.ph, label %Gia_SatDumpClause.exit388

.preheader457.lr.ph:                              ; preds = %bb.i
  %i.gy = trunc nsw i64 %indvars.iv627 to i32     ; 2 uses
  %i.gz = add i32 %i.gy, 4
  %i.ha = add i32 %i.gy, 28
  %.idx = mul i64 %indvars.iv627, 1072
  %i.hb = getelementptr i8, ptr %0, i64 %.idx
  %i.hc = getelementptr i8, ptr %i.hb, i64 208
  br label %.preheader457

.lr.ph507:                                        ; preds = %.preheader457
  %i.hd = shl nsw i32 %i.ij, 1
  %i.he = shl nsw i32 %i.in, 1
  %i.hf = shl nsw i32 %i.io, 1
  %i.hg = or disjoint i32 %i.hf, 1
  store i32 %i.hd, ptr %i.a, align 16
  store i32 %i.he, ptr %i.er, align 4
  store i32 %i.hg, ptr %i.es, align 8
  %wide.trip.count625 = zext i32 %indvars.iv623 to i64 ; 3 uses
  %.idx720 = mul i64 %indvars.iv627, 1072
  %i.hh = getelementptr i8, ptr %0, i64 %.idx720
  %i.hi = getelementptr i8, ptr %i.hh, i64 208    ; 2 uses
  %min.iters.check837 = icmp ult i32 %indvars.iv623, 8
  br i1 %min.iters.check837, label %scalar.ph836.preheader, label %vector.ph838

vector.ph838:                                     ; preds = %.lr.ph507
  %n.vec839 = and i64 %wide.trip.count625, 4294967288 ; 4 uses
  %i.hj = add i64 %indvars.iv610, %n.vec839
  %i.hk = getelementptr [4 x i8], ptr %i.hi, i64 %indvars.iv610
  br label %vector.body840

vector.body840:                                   ; preds = %vector.body840, %vector.ph838
  %index841 = phi i64 [ 0, %vector.ph838 ], [ %index.next844, %vector.body840 ] ; 3 uses
  %i.hl = getelementptr [4 x i8], ptr %i.hk, i64 %index841 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hl, i64 16
  %wide.load842 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !49
  %wide.load843 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !49
  %i.hn = shl nsw <4 x i32> %wide.load842, splat (i32 1)
  %i.ho = shl nsw <4 x i32> %wide.load843, splat (i32 1)
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index841 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  store <4 x i32> %i.hn, ptr %i.hp, align 16, !tbaa !49
  store <4 x i32> %i.ho, ptr %i.hq, align 16, !tbaa !49
  %index.next844 = add nuw i64 %index841, 8       ; 2 uses
  %i.hr = icmp eq i64 %index.next844, %n.vec839
  br i1 %i.hr, label %middle.block845, label %vector.body840, !llvm.loop !312

middle.block845:                                  ; preds = %vector.body840
  %cmp.n846 = icmp eq i64 %n.vec839, %wide.trip.count625
  br i1 %cmp.n846, label %._crit_edge508, label %scalar.ph836.preheader

scalar.ph836.preheader:                           ; preds = %.lr.ph507, %middle.block845
  %indvars.iv618.ph.a = phi i64 [ %indvars.iv610, %.lr.ph507 ], [ %i.hj, %middle.block845 ]
  %indvars.iv616.ph = phi i64 [ 0, %.lr.ph507 ], [ %n.vec839, %middle.block845 ]
  br label %scalar.ph836

.preheader457:                                    ; preds = %.preheader457.lr.ph, %.preheader457
  %indvars.iv612 = phi i64 [ %indvars.iv610, %.preheader457.lr.ph ], [ %indvars.iv.next613, %.preheader457 ] ; 3 uses
  %i.hs = trunc i64 %indvars.iv612 to i32
  %i.ht = mul i32 %i.hs, 268                      ; 2 uses
  %i.hu = add i32 %i.gz, %i.ht                    ; 2 uses
  %i.hv = getelementptr [4 x i8], ptr %i.hc, i64 %indvars.iv612 ; 3 uses
  %i.hw = sext i32 %i.hu to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hw ; 2 uses
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !49
  %i.hz = load i32, ptr %i.hv, align 4, !tbaa !49
  %i.ia = xor i32 %i.hy, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ia)
  %i.ib = add nsw i32 %i.hz, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ib)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %i.ic = add i32 %i.hu, 24
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr inbounds [4 x i8], ptr %0, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !49
  %i.ig = load i32, ptr %i.hv, align 4, !tbaa !49
  %i.ih = xor i32 %i.if, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ih)
  %i.ii = add nsw i32 %i.ig, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ii)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
  %i.ij = load i32, ptr %i.hx, align 4, !tbaa !49 ; 2 uses
  %i.ik = add i32 %i.ha, %i.ht
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %0, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !49 ; 2 uses
  %i.io = load i32, ptr %i.hv, align 4, !tbaa !49 ; 2 uses
  %i.ip = add nsw i32 %i.ij, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ip)
  %i.iq = add nsw i32 %i.in, 1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.iq)
  %i.ir = xor i32 %i.io, -1
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.48, i32 noundef %i.ir)
  tail call void (ptr, ptr, ...) @Vec_StrPrintF(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.49)
end_hunk_0
