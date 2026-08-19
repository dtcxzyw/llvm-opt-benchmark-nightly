inline.NumInlined: 22
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ws_check_emit_1:bb.a
    i8 9, label %bb.u
  ]

.lr.ph192.split.split._crit_edge:                 ; preds = %.lr.ph192.split.split
  %.pre299 = add nuw nsw i64 %indvars.iv267, 1
  br label %bb.aa

bb.u:                                             ; preds = %.lr.ph192.split.split
  %i.cs = sext i32 %.0116189 to i64               ; 3 uses
  %i.ct = icmp sgt i64 %indvars.iv267, %i.cs
  br i1 %i.ct, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cu = or i32 %.3188, 128                      ; 2 uses
  br i1 %.not141, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = tail call i32 @fputs(ptr noundef %6, ptr noundef nonnull %3) ; 0 uses
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cs
  %i.cx = sub nsw i32 %i.cr, %.0116189
  %i.cy = sext i32 %i.cx to i64
  %i.cz = tail call i64 @fwrite(ptr noundef %i.cw, i64 noundef %i.cy, i64 noundef 1, ptr noundef nonnull %3) ; 0 uses
  %i.da = tail call i32 @fputs(ptr noundef %5, ptr noundef nonnull %3) ; 0 uses
  %char143 = load i8, ptr %i.cp, align 1
  %chari144 = sext i8 %char143 to i32
  %fputc145 = tail call i32 @fputc(i32 %chari144, ptr nonnull %3) ; 0 uses
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.db = or i32 %.3188, 2048                     ; 2 uses
  br i1 %.not141, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds i8, ptr %0, i64 %i.cs
  %i.dd = sub nsw i32 %i.cr, %.0116189
  %i.de = sext i32 %i.dd to i64
  %i.df = tail call i64 @fwrite(ptr noundef %i.dc, i64 noundef %i.de, i64 noundef 1, ptr noundef nonnull %3) ; 0 uses
  %i.dg = tail call i32 @fputs(ptr noundef %6, ptr noundef nonnull %3) ; 0 uses
  %char = load i8, ptr %i.cp, align 1
  %chari = sext i8 %char to i32
  %fputc = tail call i32 @fputc(i32 %chari, ptr nonnull %3) ; 0 uses
  %i.dh = tail call i32 @fputs(ptr noundef %5, ptr noundef nonnull %3) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.w
  %.4 = phi i32 [ %i.cu, %bb.w ], [ %i.cu, %bb.v ], [ %i.db, %bb.y ], [ %i.db, %bb.x ]
  %i.di = add nuw nsw i64 %indvars.iv267, 1       ; 2 uses
  %i.dj = trunc nuw nsw i64 %i.di to i32
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph192.split.split._crit_edge, %bb.z
  %indvars.iv.next268.pre-phi = phi i64 [ %.pre299, %.lr.ph192.split.split._crit_edge ], [ %i.di, %bb.z ] ; 2 uses
  %.5 = phi i32 [ %.3188, %.lr.ph192.split.split._crit_edge ], [ %.4, %bb.z ] ; 2 uses
  %.1117 = phi i32 [ %.0116189, %.lr.ph192.split.split._crit_edge ], [ %i.dj, %bb.z ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next268.pre-phi, %wide.trip.count293
  br i1 %exitcond.not, label %._crit_edge193, label %.lr.ph192.split.split, !llvm.loop !36

._crit_edge193.loopexit.split.loop.exit:          ; preds = %.lr.ph192.split.us.split.us.split.us
  %i.dk = trunc nuw nsw i64 %indvars.iv290 to i32
  br label %._crit_edge193

._crit_edge193.loopexit319.split.loop.exit:       ; preds = %.lr.ph192.split.split.us.split.us
  %i.dl = trunc nuw nsw i64 %indvars.iv275 to i32
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %bb.aa, %.lr.ph192.split.split, %bb.t, %.lr.ph192.split.split.us.split, %bb.r, %bb.p, %.lr.ph192.split.us.split, %bb.i, %.lr.ph192.split.us.split.us.split, %bb.g, %._crit_edge193.loopexit319.split.loop.exit, %._crit_edge193.loopexit.split.loop.exit, %.thread162
  %.3.lcssa = phi i32 [ %.2121, %.thread162 ], [ %.3188.us208.us, %._crit_edge193.loopexit319.split.loop.exit ], [ %.2121, %._crit_edge193.loopexit.split.loop.exit ], [ %.5.us211, %bb.t ], [ %.2121, %bb.g ], [ %.5.us211.us, %bb.r ], [ %.2121, %bb.i ], [ %.3188.us, %.lr.ph192.split.us.split ], [ %.2121, %.lr.ph192.split.us.split.us.split ], [ %.5.us, %bb.p ], [ %.3188.us208, %.lr.ph192.split.split.us.split ], [ %.3188, %.lr.ph192.split.split ], [ %.5, %bb.aa ] ; 3 uses
  %.0116.lcssa = phi i32 [ 0, %.thread162 ], [ %.0116189.us207.us, %._crit_edge193.loopexit319.split.loop.exit ], [ %.0116189.us.us.us, %._crit_edge193.loopexit.split.loop.exit ], [ %.1117.us212, %bb.t ], [ %.1117.us.us.us, %bb.g ], [ %.1117.us212.us, %bb.r ], [ %.1117.us.us, %bb.i ], [ %.0116189.us, %.lr.ph192.split.us.split ], [ %.0116189.us.us, %.lr.ph192.split.us.split.us.split ], [ %.1117.us, %bb.p ], [ %.0116189.us207, %.lr.ph192.split.split.us.split ], [ %.0116189, %.lr.ph192.split.split ], [ %.1117, %bb.aa ] ; 3 uses
  %.1.lcssa = phi i32 [ 0, %.thread162 ], [ %i.dl, %._crit_edge193.loopexit319.split.loop.exit ], [ %i.dk, %._crit_edge193.loopexit.split.loop.exit ], [ %i.al, %bb.t ], [ %i.al, %bb.g ], [ %i.al, %bb.r ], [ %i.al, %bb.i ], [ %i.bh, %.lr.ph192.split.us.split ], [ %i.ax, %.lr.ph192.split.us.split.us.split ], [ %i.al, %bb.p ], [ %i.ce, %.lr.ph192.split.split.us.split ], [ %i.cr, %.lr.ph192.split.split ], [ %i.al, %bb.aa ] ; 2 uses
  %i.dm = and i32 %2, 256
  %.not146 = icmp eq i32 %i.dm, 0
  br i1 %.not146, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge193
  %i.dn = sub nsw i32 %.1.lcssa, %.0116.lcssa     ; 2 uses
  %i.do = and i32 %2, 63
  %.not147 = icmp ult i32 %i.dn, %i.do
  br i1 %.not147, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = or i32 %.3.lcssa, 256                   ; 2 uses
  %.not148 = icmp eq ptr %3, null
  br i1 %.not148, label %.thread168, label %.thread173

.thread173:                                       ; preds = %bb.ac
  %i.dq = tail call i32 @fputs(ptr noundef %6, ptr noundef nonnull %3) ; 0 uses
  %i.dr = sext i32 %.0116.lcssa to i64
  %i.ds = getelementptr inbounds i8, ptr %0, i64 %i.dr
  %i.dt = sext i32 %i.dn to i64
  %i.du = tail call i64 @fwrite(ptr noundef %i.ds, i64 noundef %i.dt, i64 noundef 1, ptr noundef nonnull %3) ; 0 uses
  %i.dv = tail call i32 @fputs(ptr noundef %5, ptr noundef nonnull %3) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %._crit_edge193
  %.not149 = icmp eq ptr %3, null
  br i1 %.not149, label %.thread168, label %bb.ae

bb.ae:                                            ; preds = %.thread173, %bb.ad
  %.2118178 = phi i32 [ %.1.lcssa, %.thread173 ], [ %.0116.lcssa, %bb.ad ] ; 2 uses
  %.6177 = phi i32 [ %i.dp, %.thread173 ], [ %.3.lcssa, %bb.ad ] ; 2 uses
  %i.dw = sub nsw i32 %i.al, %.2118178            ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dy = tail call i32 @fputs(ptr noundef %4, ptr noundef nonnull %3) ; 0 uses
  %i.dz = sext i32 %.2118178 to i64
  %i.ea = getelementptr inbounds i8, ptr %0, i64 %i.dz
  %i.eb = zext nneg i32 %i.dw to i64
  %i.ec = tail call i64 @fwrite(ptr noundef %i.ea, i64 noundef %i.eb, i64 noundef 1, ptr noundef nonnull %3) ; 0 uses
  %i.ed = tail call i32 @fputs(ptr noundef %5, ptr noundef nonnull %3) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.not150 = icmp eq i32 %i.al, %.1123
  br i1 %.not150, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ee = tail call i32 @fputs(ptr noundef %6, ptr noundef nonnull %3) ; 0 uses
  %i.ef = sext i32 %i.al to i64
  %i.eg = getelementptr inbounds i8, ptr %0, i64 %i.ef
  %i.eh = sub nsw i32 %.1123, %i.al
  %i.ei = sext i32 %i.eh to i64
  %i.ej = tail call i64 @fwrite(ptr noundef %i.eg, i64 noundef %i.ei, i64 noundef 1, ptr noundef nonnull %3) ; 0 uses
  %i.ek = tail call i32 @fputs(ptr noundef %5, ptr noundef nonnull %3) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  br i1 %.not151, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = tail call i32 @fputc(i32 noundef 13, ptr noundef nonnull %3) ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %.not135161, label %.thread168, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.em = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %3) ; 0 uses
  br label %.thread168

.thread168:                                       ; preds = %bb.ac, %bb.ak, %bb.al, %bb.ad
  %.6172 = phi i32 [ %.3.lcssa, %bb.ad ], [ %.6177, %bb.ak ], [ %.6177, %bb.al ], [ %i.dp, %bb.ac ]
  ret i32 %.6172
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @ws_check(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call fastcc i32 @ws_check_emit_1(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ws_blank_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.b = add nsw i32 %.in, -1
  %i.c = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.d = icmp sgt i32 %.in, 1
  br i1 %i.d, label %.lr.ph, label %._crit_edge, !llvm.loop !37

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.in = phi i32 [ %i.b, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.035 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.a ]  ; 2 uses
  %i.e = load i8, ptr %.035, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = and i8 %i.h, 1
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.04 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.04
}

; Function Attrs: nounwind uwtable
define dso_local void @ws_fix_copy(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %3, 4096
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp sgt i32 %2, 0                       ; 2 uses
  %or.cond7 = and i1 %i.c, %i.b
  br i1 %or.cond7, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %.not = icmp ne i8 %i.g, 10
  %spec.select = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0111 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 7 uses
  %i.h = and i32 %3, 64
  %.not138 = icmp eq i32 %i.h, 0
  br i1 %.not138, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.c, label %bb.e, label %._crit_edge.thread.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.i = zext nneg i32 %2 to i64
  %i.j = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %i.m = icmp eq i8 %i.l, 10
  br i1 %i.m, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.not139 = icmp eq i32 %2, 1
  br i1 %.not139, label %._crit_edge.thread.thread.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = add nsw i32 %2, -1
  %i.o = getelementptr i8, ptr %i.j, i64 -2
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = icmp eq i8 %i.p, 13
  br i1 %i.q, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.r = lshr i32 %3, 9
  %.lobit = and i32 %i.r, 1                       ; 2 uses
  %i.s = add nsw i32 %2, -2                       ; 2 uses
  %.not236 = icmp eq i32 %i.s, 0
  br i1 %.not236, label %._crit_edge.thread.thread, label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.h
  %.0114219 = phi i32 [ %.lobit, %bb.h ], [ 0, %bb.g ], [ 0, %bb.e ] ; 3 uses
  %.1117218 = phi i32 [ 1, %bb.h ], [ 1, %bb.g ], [ %.0111, %bb.e ] ; 3 uses
  %.0123217 = phi i32 [ %i.s, %bb.h ], [ %i.n, %bb.g ], [ %2, %bb.e ] ; 2 uses
  %i.t = zext nneg i32 %.0123217 to i64           ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !12
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !12
  %i.aa = and i8 %i.z, 1
  %.not140 = icmp eq i8 %i.aa, 0
  br i1 %.not140, label %.lr.ph246, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.t, %.thread ] ; 4 uses
  %i.ab = getelementptr i8, ptr %1, i64 %indvars.iv
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !12
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !12
  %i.ah = and i8 %i.ag, 1
  %.not141 = icmp eq i8 %i.ah, 0
  br i1 %.not141, label %.critedge.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ai = icmp sgt i64 %indvars.iv, 1
  br i1 %i.ai, label %.lr.ph, label %._crit_edge.thread.thread, !llvm.loop !38

.critedge.loopexit:                               ; preds = %.lr.ph
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.c
  %.2125 = phi i32 [ %2, %bb.c ], [ %5, %.critedge.loopexit ] ; 3 uses
  %.2118 = phi i32 [ %.0111, %bb.c ], [ %.1117218, %.critedge.loopexit ] ; 2 uses
  %.1115 = phi i32 [ 0, %bb.c ], [ %.0114219, %.critedge.loopexit ] ; 2 uses
  %.1112 = phi i32 [ %.0111, %bb.c ], [ 1, %.critedge.loopexit ] ; 2 uses
  %i.aj = icmp sgt i32 %.2125, 0
  br i1 %i.aj, label %.lr.ph246, label %._crit_edge.thread.thread

.lr.ph246:                                        ; preds = %.thread, %.critedge
  %.1112369 = phi i32 [ %.1112, %.critedge ], [ %.0111, %.thread ]
  %.1115368 = phi i32 [ %.1115, %.critedge ], [ %.0114219, %.thread ] ; 3 uses
  %.2118367 = phi i32 [ %.2118, %.critedge ], [ %.1117218, %.thread ] ; 3 uses
  %.2125366 = phi i32 [ %.2125, %.critedge ], [ %.0123217, %.thread ] ; 4 uses
  %i.ak = and i32 %3, 256
  %.not142 = icmp eq i32 %i.ak, 0
  %i.al = and i32 %3, 63                          ; 2 uses
  %i.am = and i32 %3, 128
  %.not298 = icmp eq i32 %i.am, 0                 ; 2 uses
  %wide.trip.count324 = zext nneg i32 %.2125366 to i64 ; 4 uses
  br i1 %.not142, label %.lr.ph246.split.us, label %.lr.ph246.split

.lr.ph246.split.us:                               ; preds = %.lr.ph246
  br i1 %.not298, label %.lr.ph246.split.us.split.us, label %.lr.ph246.split.us.split

.lr.ph246.split.us.split.us:                      ; preds = %.lr.ph246.split.us, %bb.k
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %bb.k ], [ 0, %.lr.ph246.split.us ] ; 3 uses
  %.0107243.us.us = phi i32 [ %.2109.ph.us.us, %bb.k ], [ -1, %.lr.ph246.split.us ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv321
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  switch i8 %i.ao, label %._crit_edge.thread [
    i8 9, label %bb.j
    i8 32, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph246.split.us.split.us
  %i.ap = trunc nuw nsw i64 %indvars.iv321 to i32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph246.split.us.split.us, %bb.j
  %.2109.ph.us.us = phi i32 [ %i.ap, %bb.j ], [ %.0107243.us.us, %.lr.ph246.split.us.split.us ] ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %._crit_edge.thread, label %.lr.ph246.split.us.split.us, !llvm.loop !39

.lr.ph246.split.us.split:                         ; preds = %.lr.ph246.split.us, %bb.m
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %bb.m ], [ 0, %.lr.ph246.split.us ] ; 3 uses
  %.0100245.us = phi i32 [ %.2102.ph.us, %bb.m ], [ 0, %.lr.ph246.split.us ] ; 3 uses
  %.0103244.us = phi i32 [ %.2105.ph.us, %bb.m ], [ -1, %.lr.ph246.split.us ] ; 3 uses
  %.0107243.us = phi i32 [ %.2109.ph.us, %bb.m ], [ -1, %.lr.ph246.split.us ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv316
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12
  %i.as = trunc nuw nsw i64 %indvars.iv316 to i32 ; 2 uses
  switch i8 %i.ar, label %._crit_edge [
    i8 9, label %bb.l
    i8 32, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph246.split.us.split
  %i.at = icmp sgt i32 %.0103244.us, -1
  %spec.select296 = select i1 %i.at, i32 1, i32 %.0100245.us
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph246.split.us.split, %bb.l
  %.2109.ph.us = phi i32 [ %i.as, %bb.l ], [ %.0107243.us, %.lr.ph246.split.us.split ] ; 2 uses
  %.2105.ph.us = phi i32 [ %.0103244.us, %bb.l ], [ %i.as, %.lr.ph246.split.us.split ] ; 2 uses
  %.2102.ph.us = phi i32 [ %spec.select296, %bb.l ], [ %.0100245.us, %.lr.ph246.split.us.split ] ; 2 uses
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %wide.trip.count324
  br i1 %exitcond320.not, label %._crit_edge, label %.lr.ph246.split.us.split, !llvm.loop !39

.lr.ph246.split:                                  ; preds = %.lr.ph246
  br i1 %.not298, label %.lr.ph246.split.split.us, label %.lr.ph246.split.split

.lr.ph246.split.split.us:                         ; preds = %.lr.ph246.split, %bb.o
  %indvars.iv311.a = phi i64 [ %indvars.iv.next312.a, %bb.o ], [ 0, %.lr.ph246.split ] ; 3 uses
  %.0100245.us259 = phi i32 [ %.2102.ph.us266, %bb.o ], [ 0, %.lr.ph246.split ] ; 3 uses
  %.0103244.us260 = phi i32 [ %.2105.ph.us265, %bb.o ], [ -1, %.lr.ph246.split ] ; 2 uses
  %.0107243.us261 = phi i32 [ %.2109.ph.us264, %bb.o ], [ -1, %.lr.ph246.split ] ; 3 uses
  %indvars313.a = trunc i64 %indvars.iv311.a to i32 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv311.a
  %i.av = load i8, ptr %i.au, align 1, !tbaa !12
  switch i8 %i.av, label %._crit_edge [
    i8 9, label %bb.o
    i8 32, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph246.split.split.us
  %i.aw = sub nsw i32 %indvars313.a, %.0107243.us261
  %.not143.us = icmp ugt i32 %i.al, %i.aw
  %spec.select153.us = select i1 %.not143.us, i32 %.0100245.us259, i32 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph246.split.split.us, %bb.n
  %.2109.ph.us264 = phi i32 [ %.0107243.us261, %bb.n ], [ %indvars313.a, %.lr.ph246.split.split.us ] ; 2 uses
  %.2105.ph.us265 = phi i32 [ %indvars313.a, %bb.n ], [ %.0103244.us260, %.lr.ph246.split.split.us ] ; 2 uses
  %.2102.ph.us266 = phi i32 [ %spec.select153.us, %bb.n ], [ %.0100245.us259, %.lr.ph246.split.split.us ] ; 2 uses
  %indvars.iv.next312.a = add nuw nsw i64 %indvars.iv311.a, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next312.a, %wide.trip.count324
  br i1 %exitcond315.not, label %._crit_edge, label %.lr.ph246.split.split.us, !llvm.loop !39

.lr.ph246.split.split:                            ; preds = %.lr.ph246.split, %bb.r
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.r ], [ 0, %.lr.ph246.split ] ; 3 uses
  %.0100245 = phi i32 [ %.2102.ph, %bb.r ], [ 0, %.lr.ph246.split ] ; 3 uses
  %.0103244 = phi i32 [ %.2105.ph, %bb.r ], [ -1, %.lr.ph246.split ] ; 3 uses
  %.0107243 = phi i32 [ %.2109.ph, %bb.r ], [ -1, %.lr.ph246.split ] ; 3 uses
  %indvars310 = trunc i64 %indvars.iv.a to i32    ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.a
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !12
  switch i8 %i.ay, label %._crit_edge [
    i8 9, label %bb.p
    i8 32, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph246.split.split
  %i.az = icmp sgt i32 %.0103244, -1
  %spec.select297 = select i1 %i.az, i32 1, i32 %.0100245
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph246.split.split
  %i.ba = sub nsw i32 %indvars310, %.0107243
  %.not143 = icmp ugt i32 %i.al, %i.ba
  %spec.select153 = select i1 %.not143, i32 %.0100245, i32 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.2109.ph = phi i32 [ %indvars310, %bb.p ], [ %.0107243, %bb.q ] ; 2 uses
  %.2105.ph = phi i32 [ %.0103244, %bb.p ], [ %indvars310, %bb.q ] ; 2 uses
  %.2102.ph = phi i32 [ %spec.select297, %bb.p ], [ %spec.select153, %bb.q ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count324
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph246.split.split, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.r, %.lr.ph246.split.split, %bb.o, %.lr.ph246.split.split.us, %bb.m, %.lr.ph246.split.us.split
  %.0107.lcssa = phi i32 [ %.2109.ph.us, %bb.m ], [ %.2109.ph.us264, %bb.o ], [ %.0107243.us, %.lr.ph246.split.us.split ], [ %.0107243.us261, %.lr.ph246.split.split.us ], [ %.0107243, %.lr.ph246.split.split ], [ %.2109.ph, %bb.r ] ; 3 uses
  %.0103.lcssa = phi i32 [ %.2105.ph.us, %bb.m ], [ %.2105.ph.us265, %bb.o ], [ %.0103244.us, %.lr.ph246.split.us.split ], [ %.0103244.us260, %.lr.ph246.split.split.us ], [ %.0103244, %.lr.ph246.split.split ], [ %.2105.ph, %bb.r ]
  %.0100.lcssa = phi i32 [ %.2102.ph.us, %bb.m ], [ %.2102.ph.us266, %bb.o ], [ %.0100245.us, %.lr.ph246.split.us.split ], [ %.0100245.us259, %.lr.ph246.split.split.us ], [ %.0100245, %.lr.ph246.split.split ], [ %.2102.ph, %bb.r ]
  %.not144 = icmp eq i32 %.0100.lcssa, 0
  br i1 %.not144, label %._crit_edge.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.bb = and i32 %3, 256
  %.not147 = icmp eq i32 %i.bb, 0
  %.3106..3110 = tail call i32 @llvm.smax.i32(i32 %.0107.lcssa, i32 %.0103.lcssa)
  %.0.in = select i1 %.not147, i32 %.0107.lcssa, i32 %.3106..3110 ; 2 uses
  %.0 = add i32 %.0.in, 1                         ; 3 uses
  %.not148286 = icmp slt i32 %.0.in, 0
  br i1 %.not148286, label %._crit_edge294, label %.lr.ph290

.lr.ph290:                                        ; preds = %bb.s
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = and i32 %3, 63
  %wide.trip.count329 = zext i32 %.0 to i64
  br label %bb.t

.preheader237:                                    ; preds = %bb.x
  %i.bf = icmp sgt i32 %.1, 0
  br i1 %i.bf, label %.lr.ph293, label %._crit_edge294

.lr.ph293:                                        ; preds = %.preheader237
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.y

bb.t:                                             ; preds = %.lr.ph290, %bb.x
  %indvars.iv326 = phi i64 [ 0, %.lr.ph290 ], [ %indvars.iv.next327, %bb.x ] ; 2 uses
  %.098288 = phi i32 [ 0, %.lr.ph290 ], [ %.1, %bb.x ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv326
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !12  ; 4 uses
  %.not151 = icmp eq i8 %i.bj, 32
  br i1 %.not151, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bk = load i64, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %.sink.split.sink.split, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %bb.u
  %i.bl = load i64, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %.neg.i = add i64 %i.bl, 1                      ; 2 uses
  %.not.i = icmp eq i64 %i.bk, %.neg.i
  br i1 %.not.i, label %.sink.split.sink.split, label %.sink.split

bb.v:                                             ; preds = %bb.t
  %i.bm = add nsw i32 %.098288, 1                 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, %i.be
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = load i64, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i154 = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i154, label %.sink.split.sink.split, label %strbuf_avail.exit.i155

strbuf_avail.exit.i155:                           ; preds = %bb.w
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %.neg.i156 = add i64 %i.bp, 1                   ; 2 uses
  %.not.i157 = icmp eq i64 %i.bo, %.neg.i156
  br i1 %.not.i157, label %.sink.split.sink.split, label %.sink.split

.sink.split.sink.split:                           ; preds = %bb.w, %strbuf_avail.exit.i155, %bb.u, %strbuf_avail.exit.i
  %.sink.ph = phi i8 [ %i.bj, %bb.u ], [ %i.bj, %strbuf_avail.exit.i ], [ 9, %strbuf_avail.exit.i155 ], [ 9, %bb.w ]
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i161 = load i64, ptr %i.bc, align 8, !tbaa !29 ; 2 uses
  %.pre7.i162 = add i64 %.pre.i161, 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %strbuf_avail.exit.i155, %strbuf_avail.exit.i
  %.pre-phi.i158.sink = phi i64 [ %.neg.i, %strbuf_avail.exit.i ], [ %.neg.i156, %strbuf_avail.exit.i155 ], [ %.pre7.i162, %.sink.split.sink.split ]
  %.sink413 = phi i64 [ %i.bl, %strbuf_avail.exit.i ], [ %i.bp, %strbuf_avail.exit.i155 ], [ %.pre.i161, %.sink.split.sink.split ]
  %.sink = phi i8 [ %i.bj, %strbuf_avail.exit.i ], [ 9, %strbuf_avail.exit.i155 ], [ %.sink.ph, %.sink.split.sink.split ]
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !41
  store i64 %.pre-phi.i158.sink, ptr %i.bc, align 8, !tbaa !29
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink413
  store i8 %.sink, ptr %i.br, align 1, !tbaa !12
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bt = load i64, ptr %i.bc, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bt
  store i8 0, ptr %i.bu, align 1, !tbaa !12
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.v
  %.1 = phi i32 [ %i.bm, %bb.v ], [ 0, %.sink.split ] ; 3 uses
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %.preheader237, label %bb.t, !llvm.loop !42

bb.y:                                             ; preds = %.lr.ph293, %strbuf_addch.exit173
  %.2292 = phi i32 [ %.1, %.lr.ph293 ], [ %i.bv, %strbuf_addch.exit173 ] ; 2 uses
  %i.bv = add nsw i32 %.2292, -1
  %i.bw = load i64, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i164 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i164, label %strbuf_avail.exit.thread.i169, label %strbuf_avail.exit.i165

strbuf_avail.exit.i165:                           ; preds = %bb.y
  %i.bx = load i64, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %.neg.i166 = add i64 %i.bx, 1                   ; 2 uses
  %.not.i167 = icmp eq i64 %i.bw, %.neg.i166
  br i1 %.not.i167, label %strbuf_avail.exit.thread.i169, label %strbuf_addch.exit173

strbuf_avail.exit.thread.i169:                    ; preds = %strbuf_avail.exit.i165, %bb.y
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i171 = load i64, ptr %i.bg, align 8, !tbaa !29 ; 2 uses
  %.pre7.i172 = add i64 %.pre.i171, 1
  br label %strbuf_addch.exit173

strbuf_addch.exit173:                             ; preds = %strbuf_avail.exit.i165, %strbuf_avail.exit.thread.i169
  %.pre-phi.i168 = phi i64 [ %.pre7.i172, %strbuf_avail.exit.thread.i169 ], [ %.neg.i166, %strbuf_avail.exit.i165 ]
  %i.by = phi i64 [ %.pre.i171, %strbuf_avail.exit.thread.i169 ], [ %i.bx, %strbuf_avail.exit.i165 ]
  %i.bz = load ptr, ptr %i.bh, align 8, !tbaa !41
  store i64 %.pre-phi.i168, ptr %i.bg, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  store i8 32, ptr %i.ca, align 1, !tbaa !12
  %i.cb = load ptr, ptr %i.bh, align 8, !tbaa !41
  %i.cc = load i64, ptr %i.bg, align 8, !tbaa !29
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cc
  store i8 0, ptr %i.cd, align 1, !tbaa !12
  %i.ce = icmp samesign ugt i32 %.2292, 1
  br i1 %i.ce, label %bb.y, label %._crit_edge294, !llvm.loop !43

._crit_edge294:                                   ; preds = %strbuf_addch.exit173, %bb.s, %.preheader237
  %i.cf = sub nsw i32 %.2125366, %.0
  %i.cg = sext i32 %.0 to i64
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  br label %._crit_edge.thread.thread

._crit_edge.thread:                               ; preds = %.lr.ph246.split.us.split.us, %bb.k, %._crit_edge
  %.0107.lcssa384 = phi i32 [ %.0107.lcssa, %._crit_edge ], [ %.0107243.us.us, %.lr.ph246.split.us.split.us ], [ %.2109.ph.us.us, %bb.k ] ; 2 uses
  %i.ci = and i32 %3, 2048
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = icmp sgt i32 %.0107.lcssa384, -1
  %or.cond3 = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %or.cond3, label %bb.z, label %._crit_edge.thread.thread

bb.z:                                             ; preds = %._crit_edge.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !29
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %sext = shl i64 %i.cm, 32
  %i.co = ashr exact i64 %sext, 32
  %i.cp = and i32 %3, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = add nuw i32 %.0107.lcssa384, 1          ; 2 uses
  %wide.trip.count334 = zext i32 %i.cr to i64     ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit
  %indvars.iv331 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next332, %.loopexit ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv331
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !12  ; 2 uses
  %i.cu = icmp eq i8 %i.ct, 9
  br i1 %i.cu, label %.preheader, label %bb.ab

.preheader:                                       ; preds = %bb.aa, %strbuf_addch.exit183
  %i.cv = load i64, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i174 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i174, label %strbuf_avail.exit.thread.i179, label %strbuf_avail.exit.i175

strbuf_avail.exit.i175:                           ; preds = %.preheader
  %i.cw = load i64, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %.neg.i176 = add i64 %i.cw, 1                   ; 2 uses
  %.not.i177 = icmp eq i64 %i.cv, %.neg.i176
  br i1 %.not.i177, label %strbuf_avail.exit.thread.i179, label %strbuf_addch.exit183

strbuf_avail.exit.thread.i179:                    ; preds = %strbuf_avail.exit.i175, %.preheader
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i181 = load i64, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %.pre7.i182 = add i64 %.pre.i181, 1
  br label %strbuf_addch.exit183

strbuf_addch.exit183:                             ; preds = %strbuf_avail.exit.i175, %strbuf_avail.exit.thread.i179
  %.pre-phi.i178 = phi i64 [ %.pre7.i182, %strbuf_avail.exit.thread.i179 ], [ %.neg.i176, %strbuf_avail.exit.i175 ]
  %i.cx = phi i64 [ %.pre.i181, %strbuf_avail.exit.thread.i179 ], [ %i.cw, %strbuf_avail.exit.i175 ]
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !41
  store i64 %.pre-phi.i178, ptr %i.cl, align 8, !tbaa !29
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 32, ptr %i.cz, align 1, !tbaa !12
  %i.da = load ptr, ptr %i.cn, align 8, !tbaa !41
  %i.db = load i64, ptr %i.cl, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  store i8 0, ptr %i.dc, align 1, !tbaa !12
  %i.dd = load i64, ptr %i.cl, align 8, !tbaa !29
  %i.de = sub i64 %i.dd, %i.co
  %i.df = urem i64 %i.de, %i.cq
  %.not146 = icmp eq i64 %i.df, 0
  br i1 %.not146, label %.loopexit, label %.preheader, !llvm.loop !44

bb.ab:                                            ; preds = %bb.aa
  %i.dg = load i64, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i184 = icmp eq i64 %i.dg, 0
  br i1 %.not.i.i184, label %strbuf_avail.exit.thread.i189, label %strbuf_avail.exit.i185

strbuf_avail.exit.i185:                           ; preds = %bb.ab
  %i.dh = load i64, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %.neg.i186 = add i64 %i.dh, 1                   ; 2 uses
  %.not.i187 = icmp eq i64 %i.dg, %.neg.i186
  br i1 %.not.i187, label %strbuf_avail.exit.thread.i189, label %strbuf_addch.exit193

strbuf_avail.exit.thread.i189:                    ; preds = %strbuf_avail.exit.i185, %bb.ab
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.pre.i191 = load i64, ptr %i.cl, align 8, !tbaa !29 ; 2 uses
  %.pre7.i192 = add i64 %.pre.i191, 1
  br label %strbuf_addch.exit193

strbuf_addch.exit193:                             ; preds = %strbuf_avail.exit.i185, %strbuf_avail.exit.thread.i189
  %.pre-phi.i188 = phi i64 [ %.pre7.i192, %strbuf_avail.exit.thread.i189 ], [ %.neg.i186, %strbuf_avail.exit.i185 ]
  %i.di = phi i64 [ %.pre.i191, %strbuf_avail.exit.thread.i189 ], [ %i.dh, %strbuf_avail.exit.i185 ]
  %i.dj = load ptr, ptr %i.cn, align 8, !tbaa !41
  store i64 %.pre-phi.i188, ptr %i.cl, align 8, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 %i.ct, ptr %i.dk, align 1, !tbaa !12
  %i.dl = load ptr, ptr %i.cn, align 8, !tbaa !41
  %i.dm = load i64, ptr %i.cl, align 8, !tbaa !29
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %strbuf_addch.exit183, %strbuf_addch.exit193
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count334
  br i1 %exitcond335.not, label %bb.ac, label %bb.aa, !llvm.loop !45

bb.ac:                                            ; preds = %.loopexit
  %i.do = sub nsw i32 %.2125366, %i.cr
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 %wide.trip.count334
  br label %._crit_edge.thread.thread

._crit_edge.thread.thread.thread:                 ; preds = %bb.f, %bb.d
  %.2118358381.ph = phi i32 [ %.0111, %bb.d ], [ 1, %bb.f ]
  %.3126.ph = phi i32 [ %2, %bb.d ], [ 0, %bb.f ]
  %i.dq = sext i32 %.3126.ph to i64
  tail call void @strbuf_add(ptr noundef %0, ptr noundef %1, i64 noundef %i.dq) #12
  br label %bb.ae

._crit_edge.thread.thread:                        ; preds = %bb.i, %bb.h, %.critedge, %._crit_edge.thread, %bb.ac, %._crit_edge294
  %.2118358381 = phi i32 [ %.2118367, %._crit_edge294 ], [ %.2118367, %bb.ac ], [ %.2118367, %._crit_edge.thread ], [ 1, %bb.h ], [ %.2118, %.critedge ], [ %.1117218, %bb.i ] ; 2 uses
  %.1115359379 = phi i32 [ %.1115368, %._crit_edge294 ], [ %.1115368, %bb.ac ], [ %.1115368, %._crit_edge.thread ], [ %.lobit, %bb.h ], [ %.1115, %.critedge ], [ %.0114219, %bb.i ]
  %.3126 = phi i32 [ %i.cf, %._crit_edge294 ], [ %i.do, %bb.ac ], [ %.2125366, %._crit_edge.thread ], [ 0, %bb.h ], [ %.2125, %.critedge ], [ 0, %bb.i ]
  %.0122 = phi ptr [ %i.ch, %._crit_edge294 ], [ %i.dp, %bb.ac ], [ %1, %._crit_edge.thread ], [ %1, %bb.h ], [ %1, %.critedge ], [ %1, %bb.i ]
  %.2113 = phi i32 [ 1, %._crit_edge294 ], [ 1, %bb.ac ], [ %.1112369, %._crit_edge.thread ], [ %.0111, %bb.h ], [ %.1112, %.critedge ], [ 1, %bb.i ] ; 2 uses
  %i.dr = sext i32 %.3126 to i64
  tail call void @strbuf_add(ptr noundef %0, ptr noundef %.0122, i64 noundef %i.dr) #12
  %.not149 = icmp eq i32 %.1115359379, 0
  br i1 %.not149, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.thread
  %i.ds = load i64, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i194 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i194, label %strbuf_avail.exit.thread.i199, label %strbuf_avail.exit.i195

strbuf_avail.exit.i195:                           ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !29 ; 2 uses
  %.neg.i196 = add i64 %i.du, 1                   ; 2 uses
  %.not.i197 = icmp eq i64 %i.ds, %.neg.i196
  br i1 %.not.i197, label %strbuf_avail.exit.thread.i199, label %strbuf_addch.exit203

strbuf_avail.exit.thread.i199:                    ; preds = %strbuf_avail.exit.i195, %bb.ad
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.phi.trans.insert.i200 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i201 = load i64, ptr %.phi.trans.insert.i200, align 8, !tbaa !29 ; 2 uses
  %.pre7.i202 = add i64 %.pre.i201, 1
  br label %strbuf_addch.exit203

strbuf_addch.exit203:                             ; preds = %strbuf_avail.exit.i195, %strbuf_avail.exit.thread.i199
  %.pre-phi.i198 = phi i64 [ %.pre7.i202, %strbuf_avail.exit.thread.i199 ], [ %.neg.i196, %strbuf_avail.exit.i195 ]
  %i.dv = phi i64 [ %.pre.i201, %strbuf_avail.exit.thread.i199 ], [ %i.du, %strbuf_avail.exit.i195 ]
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.pre-phi.i198, ptr %i.dy, align 8, !tbaa !29
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dv
  store i8 13, ptr %i.dz, align 1, !tbaa !12
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !41
  %i.eb = load i64, ptr %i.dy, align 8, !tbaa !29
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eb
  store i8 0, ptr %i.ec, align 1, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.thread.thread, %strbuf_addch.exit203, %._crit_edge.thread.thread
  %.2113399 = phi i32 [ %.0111, %._crit_edge.thread.thread.thread ], [ %.2113, %strbuf_addch.exit203 ], [ %.2113, %._crit_edge.thread.thread ]
  %.2118355381398 = phi i32 [ %.2118358381.ph, %._crit_edge.thread.thread.thread ], [ %.2118358381, %strbuf_addch.exit203 ], [ %.2118358381, %._crit_edge.thread.thread ]
  %.not150 = icmp eq i32 %.2118355381398, 0
  br i1 %.not150, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ed = load i64, ptr %0, align 8, !tbaa !40    ; 2 uses
  %.not.i.i204 = icmp eq i64 %i.ed, 0
  br i1 %.not.i.i204, label %strbuf_avail.exit.thread.i209, label %strbuf_avail.exit.i205

strbuf_avail.exit.i205:                           ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !29 ; 2 uses
  %.neg.i206 = add i64 %i.ef, 1                   ; 2 uses
  %.not.i207 = icmp eq i64 %i.ed, %.neg.i206
  br i1 %.not.i207, label %strbuf_avail.exit.thread.i209, label %strbuf_addch.exit213

strbuf_avail.exit.thread.i209:                    ; preds = %strbuf_avail.exit.i205, %bb.af
  tail call void @strbuf_grow(ptr noundef nonnull %0, i64 noundef 1) #12
  %.phi.trans.insert.i210 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i211 = load i64, ptr %.phi.trans.insert.i210, align 8, !tbaa !29 ; 2 uses
  %.pre7.i212 = add i64 %.pre.i211, 1
  br label %strbuf_addch.exit213

strbuf_addch.exit213:                             ; preds = %strbuf_avail.exit.i205, %strbuf_avail.exit.thread.i209
  %.pre-phi.i208 = phi i64 [ %.pre7.i212, %strbuf_avail.exit.thread.i209 ], [ %.neg.i206, %strbuf_avail.exit.i205 ]
  %i.eg = phi i64 [ %.pre.i211, %strbuf_avail.exit.thread.i209 ], [ %i.ef, %strbuf_avail.exit.i205 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !41
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.pre-phi.i208, ptr %i.ej, align 8, !tbaa !29
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.eg
  store i8 10, ptr %i.ek, align 1, !tbaa !12
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !41
  %i.em = load i64, ptr %i.ej, align 8, !tbaa !29
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  store i8 0, ptr %i.en, align 1, !tbaa !12
  br label %bb.ag

bb.ag:                                            ; preds = %strbuf_addch.exit213, %bb.ae
  %i.eo = icmp ne i32 %.2113399, 0
  %i.ep = icmp ne ptr %4, null
  %or.cond5 = and i1 %i.ep, %i.eo
  br i1 %or.cond5, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.eq = load i32, ptr %4, align 4, !tbaa !28
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %4, align 4, !tbaa !28
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  ret void
}

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !9, i64 8}
!14 = !{!"whitespace_rule", !15, i64 0, !9, i64 8, !9, i64 12, !9, i64 12}
!15 = !{!"p1 omnipotent char", !16, i64 0}
!16 = !{!"any pointer", !10, i64 0}
!17 = distinct !{null}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 _ZTS10attr_check", !16, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"attr_check", !9, i64 0, !9, i64 4, !22, i64 8, !9, i64 16, !23, i64 24, !24, i64 32}
!22 = !{!"p1 _ZTS15attr_check_item", !16, i64 0}
!23 = !{!"p1 _ZTS14all_attrs_item", !16, i64 0}
!24 = !{!"p1 _ZTS10attr_stack", !16, i64 0}
!25 = !{!26, !15, i64 8}
!26 = !{!"attr_check_item", !27, i64 0, !15, i64 8}
!27 = !{!"p1 _ZTS8git_attr", !16, i64 0}
!28 = !{!9, !9, i64 0}
!29 = !{!30, !31, i64 8}
!30 = !{!"strbuf", !31, i64 0, !31, i64 8, !15, i64 16}
!31 = !{!"long", !10, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33, !35}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = !{!30, !31, i64 0}
!41 = !{!30, !15, i64 16}
!42 = distinct !{!42, !33}
!43 = distinct !{!43, !33}
!44 = distinct !{!44, !33}
!45 = distinct !{!45, !33}
end_hunk_0
