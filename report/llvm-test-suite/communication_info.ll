loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CreateCommInfoFromStencil(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call ptr @hypre_BoxArrayArrayCreate(i32 noundef %i.f) #3 ; 3 uses
  %i.h = load i32, ptr %i.e, align 8, !tbaa !16
  %i.i = tail call ptr @hypre_BoxArrayArrayCreate(i32 noundef %i.h) #3 ; 3 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !16
  %i.k = tail call ptr @hypre_CAlloc(i32 noundef %i.j, i32 noundef 8) #3 ; 3 uses
  %i.l = load i32, ptr %i.e, align 8, !tbaa !16
  %i.m = tail call ptr @hypre_CAlloc(i32 noundef %i.l, i32 noundef 8) #3 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = tail call ptr @hypre_BoxCreate() #3      ; 15 uses
  %i.s = tail call ptr @hypre_BoxCreate() #3      ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !16
  %i.v = tail call ptr @hypre_CAlloc(i32 noundef %i.u, i32 noundef 8) #3 ; 7 uses
  %i.w = load i32, ptr %i.t, align 8, !tbaa !16
  %i.x = tail call ptr @hypre_CAlloc(i32 noundef %i.w, i32 noundef 4) #3 ; 7 uses
  %i.y = load i32, ptr %i.e, align 8, !tbaa !16
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph554, label %._crit_edge555

.lr.ph554:                                        ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 20 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph554, %._crit_edge551
  %indvars.iv638 = phi i64 [ 0, %.lr.ph554 ], [ %indvars.iv.next639, %._crit_edge551 ] ; 12 uses
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv638 ; 12 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !4
  store i32 %i.au, ptr %i.s, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  store i32 %i.aw, ptr %i.aa, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  store i32 %i.ay, ptr %i.ab, align 4, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 12 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  store i32 %i.ba, ptr %i.ac, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  store i32 %i.bc, ptr %i.ad, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  store i32 %i.be, ptr %i.ae, align 4, !tbaa !4
  %i.bf = load i32, ptr %i.af, align 8, !tbaa !26
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph478.preheader, label %.preheader442.critedge

.lr.ph478.preheader:                              ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  br label %.preheader438.preheader

.preheader443:                                    ; preds = %._crit_edge466
  %i.bj = icmp sgt i32 %.4383.lcssa, 0
  br i1 %i.bj, label %.lr.ph482.preheader, label %.preheader442.critedge

.lr.ph482.preheader:                              ; preds = %.preheader443
  %wide.trip.count577 = zext nneg i32 %.4383.lcssa to i64
  br label %.lr.ph482

.preheader438.preheader:                          ; preds = %._crit_edge466, %.lr.ph478.preheader
  %indvars.iv571 = phi i64 [ 0, %.lr.ph478.preheader ], [ %indvars.iv.next572, %._crit_edge466 ] ; 2 uses
  %.0379475 = phi i32 [ 0, %.lr.ph478.preheader ], [ %.4383.lcssa, %._crit_edge466 ]
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv571 ; 5 uses
  %i.bl = load i32, ptr %i.at, align 4, !tbaa !4
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bn = add nsw i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %i.s, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bp = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bq = add nsw i32 %i.bp, %i.bo
  store i32 %i.bq, ptr %i.ac, align 4, !tbaa !4
  %i.br = load i32, ptr %i.av, align 4, !tbaa !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = add nsw i32 %i.bt, %i.br
  store i32 %i.bu, ptr %i.aa, align 4, !tbaa !4
  %i.bv = load i32, ptr %i.bh, align 4, !tbaa !4
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bx = add nsw i32 %i.bw, %i.bv
  store i32 %i.bx, ptr %i.am, align 4, !tbaa !4
  %i.by = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = add nsw i32 %i.ca, %i.by
  store i32 %i.cb, ptr %i.ab, align 4, !tbaa !4
  %i.cc = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.cd = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.ce = add nsw i32 %i.cd, %i.cc
  store i32 %i.ce, ptr %i.an, align 4, !tbaa !4
  %i.cf = load i32, ptr %i.bk, align 4, !tbaa !4  ; 2 uses
  %.lobit428 = ashr i32 %i.cf, 31
  %narrow429 = icmp sgt i32 %i.cf, 0
  %.0361 = zext i1 %narrow429 to i32
  %i.cg = load i32, ptr %i.bs, align 4, !tbaa !4  ; 2 uses
  %.lobit432.a = ashr i32 %i.cg, 31
  %6 = load i32, ptr %i.bz, align 4, !tbaa !4     ; 2 uses
  %.lobit432 = ashr i32 %6, 31
  %7 = zext i32 %.lobit428 to i64
  %i.ch = sext i32 %.lobit432.a to i64
  %narrow431.inv = icmp slt i32 %i.cg, 1
  %wide.trip.count = select i1 %narrow431.inv, i64 1, i64 2
  %i.ci = sext i32 %.lobit432 to i64
  %narrow433.inv = icmp slt i32 %6, 1
  %wide.trip.count569 = select i1 %narrow433.inv, i64 1, i64 2
  br label %.preheader438

.preheader438:                                    ; preds = %.preheader438.preheader, %._crit_edge461.split
  %indvars.iv566 = phi i64 [ %i.ci, %.preheader438.preheader ], [ %indvars.iv.next567, %._crit_edge461.split ] ; 2 uses
  %.1380464 = phi i32 [ %.0379475, %.preheader438.preheader ], [ %.4383.lcssa, %._crit_edge461.split ]
  br label %.preheader436

.preheader436:                                    ; preds = %.preheader438, %._crit_edge
  %indvars.iv.a = phi i64 [ %i.ch, %.preheader438 ], [ %indvars.iv.next.a, %._crit_edge ] ; 2 uses
  %.2381459 = phi i32 [ %.1380464, %.preheader438 ], [ %.4383.lcssa, %._crit_edge ]
  br label %bb.c

.loopexit434:                                     ; preds = %bb.g, %bb.c
  %.4383.lcssa = phi i32 [ %.3382454, %bb.c ], [ %.6, %bb.g ] ; 7 uses
  %8 = trunc nuw i64 %indvars.iv to i32
  %.not413.not = icmp slt i32 %8, %.0361
  br i1 %.not413.not, label %bb.c, label %._crit_edge, !llvm.loop !27

bb.c:                                             ; preds = %.preheader436, %.loopexit434
  %indvars.iv = phi i64 [ %7, %.preheader436 ], [ %indvars.iv.next, %.loopexit434 ] ; 2 uses
  %.3382454 = phi i32 [ %.2381459, %.preheader436 ], [ %.4383.lcssa, %.loopexit434 ] ; 2 uses
  %i.cj = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ck = getelementptr inbounds nuw [216 x i8], ptr %i.cj, i64 %indvars.iv638
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %9 = and i64 %indvars.iv.next, 4294967295
  %i.cl = getelementptr inbounds nuw [72 x i8], ptr %i.ck, i64 %9
  %i.cm = getelementptr [24 x i8], ptr %i.cl, i64 %indvars.iv.a
  %i.cn = getelementptr [8 x i8], ptr %i.cm, i64 %indvars.iv566
  %i.co = getelementptr i8, ptr %i.cn, i64 32
  %.0358449 = load ptr, ptr %i.co, align 8, !tbaa !30 ; 2 uses
  %.not414450 = icmp eq ptr %.0358449, null
  br i1 %.not414450, label %.loopexit434, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %.0358452 = phi ptr [ %.0358, %bb.g ], [ %.0358449, %bb.c ] ; 2 uses
  %.4383451 = phi i32 [ %.6, %bb.g ], [ %.3382454, %bb.c ] ; 4 uses
  %i.cp = load i32, ptr %.0358452, align 8, !tbaa !32 ; 2 uses
  %i.cq = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.cr = sext i32 %i.cp to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [24 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = tail call i32 @hypre_IntersectBoxes(ptr noundef nonnull %i.s, ptr noundef %i.cs, ptr noundef %i.r) #3 ; 0 uses
  %i.cu = load <2 x i32>, ptr %i.ah, align 4, !tbaa !4
  %i.cv = load <2 x i32>, ptr %i.r, align 4, !tbaa !4
  %i.cw = icmp slt <2 x i32> %i.cu, %i.cv         ; 2 uses
  %i.cx = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.cy = load i32, ptr %i.al, align 4, !tbaa !4
  %.not416 = icmp slt i32 %i.cx, %i.cy
  %i.cz = extractelement <2 x i1> %i.cw, i64 1
  %i.da = select i1 %.not416, i1 true, i1 %i.cz
  %i.db = extractelement <2 x i1> %i.cw, i64 0
  %.not415 = select i1 %i.da, i1 true, i1 %i.db
  br i1 %.not415, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.cr ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !34 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.df = tail call ptr @hypre_BoxArrayCreate(i32 noundef 0) #3 ; 2 uses
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !34
  %i.dg = sext i32 %.4383451 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.dg
  store i32 %i.cp, ptr %i.dh, align 4, !tbaa !4
  %i.di = add nsw i32 %.4383451, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dj = phi ptr [ %i.df, %bb.e ], [ %i.dd, %bb.d ]
  %.5 = phi i32 [ %i.di, %bb.e ], [ %.4383451, %bb.d ]
  %i.dk = tail call i32 @hypre_AppendBox(ptr noundef nonnull %i.r, ptr noundef %i.dj) #3 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.6 = phi i32 [ %.5, %bb.f ], [ %.4383451, %.lr.ph ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0358452, i64 8
  %.0358 = load ptr, ptr %i.dl, align 8, !tbaa !30 ; 2 uses
  %.not414 = icmp eq ptr %.0358, null
  br i1 %.not414, label %.loopexit434, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %.loopexit434
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count
  br i1 %exitcond565.not, label %._crit_edge461.split, label %.preheader436, !llvm.loop !36

._crit_edge461.split:                             ; preds = %._crit_edge
  %indvars.iv.next567 = add nsw i64 %indvars.iv566, 1 ; 2 uses
  %exitcond570.not = icmp eq i64 %indvars.iv.next567, %wide.trip.count569
  br i1 %exitcond570.not, label %._crit_edge466, label %.preheader438, !llvm.loop !37

._crit_edge466:                                   ; preds = %._crit_edge461.split
  %indvars.iv.next572 = add nuw nsw i64 %indvars.iv571, 1 ; 2 uses
  %i.dm = load i32, ptr %i.af, align 8, !tbaa !26
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next572, %i.dn
  br i1 %i.do, label %.preheader438.preheader, label %.preheader443, !llvm.loop !38

.lr.ph482:                                        ; preds = %.lr.ph482.preheader, %.lr.ph482
  %indvars.iv574 = phi i64 [ 0, %.lr.ph482.preheader ], [ %indvars.iv.next575, %.lr.ph482 ] ; 2 uses
  %.0384480 = phi i32 [ 0, %.lr.ph482.preheader ], [ %i.dy, %.lr.ph482 ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv574
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.dr ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !34
  %i.du = tail call i32 @hypre_UnionBoxes(ptr noundef %i.dt) #3 ; 0 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !34
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !16
  %i.dy = add nsw i32 %i.dx, %.0384480            ; 3 uses
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1 ; 2 uses
  %exitcond578.not = icmp eq i64 %indvars.iv.next575, %wide.trip.count577
  br i1 %exitcond578.not, label %._crit_edge483, label %.lr.ph482, !llvm.loop !39

._crit_edge483:                                   ; preds = %.lr.ph482
  %i.dz = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv638
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !34 ; 2 uses
  %i.ec = tail call i32 @hypre_BoxArraySetSize(ptr noundef %i.eb, i32 noundef %i.dy) #3 ; 0 uses
  %i.ed = tail call ptr @hypre_CAlloc(i32 noundef %i.dy, i32 noundef 4) #3
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv638 ; 2 uses
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !43
  %wide.trip.count589 = zext nneg i32 %.4383.lcssa to i64
  br label %.lr.ph496

.preheader442.critedge:                           ; preds = %bb.b, %.preheader443
  %i.ef = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv638
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !34
  %i.ei = tail call i32 @hypre_BoxArraySetSize(ptr noundef %i.eh, i32 noundef 0) #3 ; 0 uses
  %i.ej = tail call ptr @hypre_CAlloc(i32 noundef 0, i32 noundef 4) #3
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv638
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !43
  br label %.preheader442

.preheader442:                                    ; preds = %._crit_edge489, %.preheader442.critedge
  %i.el = load i32, ptr %i.af, align 8, !tbaa !26
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph532.preheader, label %._crit_edge551.critedge

.lr.ph532.preheader:                              ; preds = %.preheader442
  %i.en = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  br label %.preheader437.preheader

.lr.ph496:                                        ; preds = %._crit_edge483, %._crit_edge489
  %indvars.iv586 = phi i64 [ 0, %._crit_edge483 ], [ %indvars.iv.next587, %._crit_edge489 ] ; 2 uses
  %.0368494 = phi i32 [ 0, %._crit_edge483 ], [ %.1369.lcssa, %._crit_edge489 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv586
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = sext i32 %i.eq to i64                   ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.er ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !34 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !16
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph488, label %._crit_edge489

.lr.ph488:                                        ; preds = %.lr.ph496
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.er
  %i.ey = load ptr, ptr %i.ee, align 8, !tbaa !43
  %i.ez = load ptr, ptr %i.et, align 8, !tbaa !25
  %i.fa = load ptr, ptr %i.eb, align 8, !tbaa !25
  %i.fb = sext i32 %.0368494 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph488, %bb.h
  %indvars.iv581 = phi i64 [ 0, %.lr.ph488 ], [ %indvars.iv.next582, %bb.h ] ; 2 uses
  %indvars.iv579 = phi i64 [ %i.fb, %.lr.ph488 ], [ %indvars.iv.next580, %bb.h ] ; 3 uses
  %i.fc = load i32, ptr %i.ex, align 4, !tbaa !4
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %indvars.iv579
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !4
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.ez, i64 %indvars.iv581 ; 6 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !4
  %i.fg = getelementptr inbounds [24 x i8], ptr %i.fa, i64 %indvars.iv579 ; 6 uses
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 12
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !4
  %indvars.iv.next580 = add nsw i64 %indvars.iv579, 1 ; 2 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %i.fw = load i32, ptr %i.eu, align 8, !tbaa !16
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next582, %i.fx
  br i1 %i.fy, label %bb.h, label %._crit_edge489.loopexit, !llvm.loop !44

._crit_edge489.loopexit:                          ; preds = %bb.h
  %i.fz = trunc nsw i64 %indvars.iv.next580 to i32
  br label %._crit_edge489

._crit_edge489:                                   ; preds = %._crit_edge489.loopexit, %.lr.ph496
  %.1369.lcssa = phi i32 [ %.0368494, %.lr.ph496 ], [ %i.fz, %._crit_edge489.loopexit ]
  %i.ga = tail call i32 @hypre_BoxArrayDestroy(ptr noundef nonnull %i.et) #3 ; 0 uses
  store ptr null, ptr %i.es, align 8, !tbaa !34
  %indvars.iv.next587 = add nuw nsw i64 %indvars.iv586, 1 ; 2 uses
  %exitcond590.not = icmp eq i64 %indvars.iv.next587, %wide.trip.count589
  br i1 %exitcond590.not, label %.preheader442, label %.lr.ph496, !llvm.loop !45

.preheader441:                                    ; preds = %.preheader439
  %i.gb = icmp sgt i32 %.11.lcssa, 0
  br i1 %i.gb, label %.lr.ph536.preheader, label %._crit_edge551.critedge

.lr.ph536.preheader:                              ; preds = %.preheader441
  %wide.trip.count624 = zext nneg i32 %.11.lcssa to i64
  br label %.lr.ph536

.preheader437.preheader:                          ; preds = %.preheader439, %.lr.ph532.preheader
  %indvars.iv618.a = phi i64 [ 0, %.lr.ph532.preheader ], [ %indvars.iv.next619.a, %.preheader439 ] ; 2 uses
  %.7530 = phi i32 [ 0, %.lr.ph532.preheader ], [ %.11.lcssa, %.preheader439 ]
  %i.gc = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv618.a ; 11 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 5 uses
  %i.ge = load <2 x i32>, ptr %i.gc, align 4, !tbaa !4
  %i.gf = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.gg = sub nsw <2 x i32> zeroinitializer, %i.ge
  store <2 x i32> %i.gg, ptr %i.gc, align 4, !tbaa !4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 9 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.gj = sub nsw i32 0, %i.gi
  store i32 %i.gj, ptr %i.gh, align 4, !tbaa !4
  %i.gk = load i32, ptr %i.at, align 4, !tbaa !4
  %i.gl = sub nsw i32 %i.gk, %i.gf
  store i32 %i.gl, ptr %i.s, align 4, !tbaa !4
  %i.gm = load i32, ptr %i.az, align 4, !tbaa !4
  %i.gn = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.go = add nsw i32 %i.gn, %i.gm
  store i32 %i.go, ptr %i.ac, align 4, !tbaa !4
  %i.gp = load i32, ptr %i.av, align 4, !tbaa !4
  %i.gq = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gr = add nsw i32 %i.gq, %i.gp
  store i32 %i.gr, ptr %i.aa, align 4, !tbaa !4
  %i.gs = load i32, ptr %i.en, align 4, !tbaa !4
  %i.gt = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.gu = add nsw i32 %i.gt, %i.gs
  store i32 %i.gu, ptr %i.ao, align 4, !tbaa !4
  %i.gv = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.gw = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.gx = add nsw i32 %i.gw, %i.gv
  store i32 %i.gx, ptr %i.ab, align 4, !tbaa !4
  %i.gy = load i32, ptr %i.eo, align 4, !tbaa !4
  %i.gz = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.ha = add nsw i32 %i.gz, %i.gy
  store i32 %i.ha, ptr %i.ap, align 4, !tbaa !4
  %i.hb = load i32, ptr %i.gc, align 4, !tbaa !4  ; 2 uses
  %.lobit = ashr i32 %i.hb, 31
  %narrow = icmp sgt i32 %i.hb, 0
  %.0351 = zext i1 %narrow to i32
  %i.hc = load i32, ptr %i.gd, align 4, !tbaa !4  ; 2 uses
  %.lobit426.a = ashr i32 %i.hc, 31
  %10 = load i32, ptr %i.gh, align 4, !tbaa !4    ; 2 uses
  %.lobit426 = ashr i32 %10, 31
  %11 = zext i32 %.lobit to i64
  %i.hd = sext i32 %.lobit426.a to i64
  %narrow425.inv = icmp slt i32 %i.hc, 1
  %wide.trip.count607 = select i1 %narrow425.inv, i64 1, i64 2
  %i.he = sext i32 %.lobit426 to i64
  %narrow427.inv = icmp slt i32 %10, 1
  %wide.trip.count612 = select i1 %narrow427.inv, i64 1, i64 2
  br label %.preheader437

.preheader439:                                    ; preds = %._crit_edge516.split
  %.pre642 = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.hf = load <2 x i32>, ptr %i.gc, align 4, !tbaa !4
  %i.hg = sub nsw <2 x i32> zeroinitializer, %i.hf
  store <2 x i32> %i.hg, ptr %i.gc, align 4, !tbaa !4
  %i.hh = sub nsw i32 0, %.pre642
  store i32 %i.hh, ptr %i.gh, align 4, !tbaa !4
  %indvars.iv.next619.a = add nuw nsw i64 %indvars.iv618.a, 1 ; 2 uses
  %i.hi = load i32, ptr %i.af, align 8, !tbaa !26
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %indvars.iv.next619.a, %i.hj
  br i1 %i.hk, label %.preheader437.preheader, label %.preheader441, !llvm.loop !46

.preheader437:                                    ; preds = %.preheader437.preheader, %._crit_edge516.split
  %indvars.iv609 = phi i64 [ %i.he, %.preheader437.preheader ], [ %indvars.iv.next610, %._crit_edge516.split ] ; 2 uses
  %.8519 = phi i32 [ %.7530, %.preheader437.preheader ], [ %.11.lcssa, %._crit_edge516.split ]
  br label %.preheader435

.preheader435:                                    ; preds = %.preheader437, %._crit_edge511
  %indvars.iv604 = phi i64 [ %i.hd, %.preheader437 ], [ %indvars.iv.next605, %._crit_edge511 ] ; 2 uses
  %.9514 = phi i32 [ %.8519, %.preheader437 ], [ %.11.lcssa, %._crit_edge511 ]
  br label %bb.i

.loopexit:                                        ; preds = %bb.l, %bb.i
  %.11.lcssa = phi i32 [ %.10508, %bb.i ], [ %.13, %bb.l ] ; 7 uses
  %12 = trunc nuw i64 %indvars.iv614 to i32
  %.not402.not = icmp slt i32 %12, %.0351
  br i1 %.not402.not, label %bb.i, label %._crit_edge511, !llvm.loop !47

bb.i:                                             ; preds = %.preheader435, %.loopexit
  %indvars.iv614 = phi i64 [ %11, %.preheader435 ], [ %indvars.iv.next615, %.loopexit ] ; 2 uses
  %.10508 = phi i32 [ %.9514, %.preheader435 ], [ %.11.lcssa, %.loopexit ] ; 2 uses
  %i.hl = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.hm = getelementptr inbounds nuw [216 x i8], ptr %i.hl, i64 %indvars.iv638
  %indvars.iv.next615 = add nuw nsw i64 %indvars.iv614, 1 ; 2 uses
  %13 = and i64 %indvars.iv.next615, 4294967295
  %i.hn = getelementptr inbounds nuw [72 x i8], ptr %i.hm, i64 %13
  %i.ho = getelementptr [24 x i8], ptr %i.hn, i64 %indvars.iv604
  %i.hp = getelementptr [8 x i8], ptr %i.ho, i64 %indvars.iv609
  %i.hq = getelementptr i8, ptr %i.hp, i64 32
  %.0348500 = load ptr, ptr %i.hq, align 8, !tbaa !30 ; 2 uses
  %.not403501 = icmp eq ptr %.0348500, null
  br i1 %.not403501, label %.loopexit, label %.lr.ph505

.lr.ph505:                                        ; preds = %bb.i, %bb.l
  %.0348503 = phi ptr [ %.0348, %bb.l ], [ %.0348500, %bb.i ] ; 2 uses
  %.11502 = phi i32 [ %.13, %bb.l ], [ %.10508, %bb.i ] ; 4 uses
  %i.hr = load i32, ptr %.0348503, align 8, !tbaa !32 ; 2 uses
  %i.hs = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.ht = sext i32 %i.hr to i64                   ; 2 uses
  %i.hu = getelementptr inbounds [24 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = tail call i32 @hypre_IntersectBoxes(ptr noundef nonnull %i.s, ptr noundef %i.hu, ptr noundef %i.r) #3 ; 0 uses
  %i.hw = load i32, ptr %i.ah, align 4, !tbaa !4  ; 2 uses
  %i.hx = load i32, ptr %i.r, align 4, !tbaa !4   ; 2 uses
  %.not406 = icmp slt i32 %i.hw, %i.hx
  %i.hy = load i32, ptr %i.ai, align 4, !tbaa !4  ; 2 uses
  %i.hz = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %.not407 = icmp slt i32 %i.hy, %i.hz
  %i.ia = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.ib = load i32, ptr %i.al, align 4, !tbaa !4  ; 2 uses
  %.not405 = icmp slt i32 %i.ia, %i.ib
  %i.ic = select i1 %.not405, i1 true, i1 %.not407
  %.not404 = select i1 %i.ic, i1 true, i1 %.not406
  br i1 %.not404, label %bb.l, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph505
  %i.id = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.ie = sub nsw i32 %i.hx, %i.id
  store i32 %i.ie, ptr %i.r, align 4, !tbaa !4
  %i.if = load i32, ptr %i.gc, align 4, !tbaa !4
  %i.ig = sub nsw i32 %i.hw, %i.if
  store i32 %i.ig, ptr %i.ah, align 4, !tbaa !4
  %i.ih = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.ii = sub nsw i32 %i.hz, %i.ih
  store i32 %i.ii, ptr %i.aj, align 4, !tbaa !4
  %i.ij = load i32, ptr %i.gd, align 4, !tbaa !4
  %i.ik = sub nsw i32 %i.hy, %i.ij
  store i32 %i.ik, ptr %i.aq, align 4, !tbaa !4
  %i.il = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.im = sub nsw i32 %i.ib, %i.il
  store i32 %i.im, ptr %i.al, align 4, !tbaa !4
  %i.in = load i32, ptr %i.gh, align 4, !tbaa !4
  %i.io = sub nsw i32 %i.ia, %i.in
  store i32 %i.io, ptr %i.ar, align 4, !tbaa !4
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.ht ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !34 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, null
  br i1 %i.ir, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.preheader
  %i.is = tail call ptr @hypre_BoxArrayCreate(i32 noundef 0) #3 ; 2 uses
  store ptr %i.is, ptr %i.ip, align 8, !tbaa !34
  %i.it = sext i32 %.11502 to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.it
  store i32 %i.hr, ptr %i.iu, align 4, !tbaa !4
  %i.iv = add nsw i32 %.11502, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.preheader.preheader
  %i.iw = phi ptr [ %i.is, %bb.j ], [ %i.iq, %.preheader.preheader ]
  %.12 = phi i32 [ %i.iv, %bb.j ], [ %.11502, %.preheader.preheader ]
  %i.ix = tail call i32 @hypre_AppendBox(ptr noundef nonnull %i.r, ptr noundef %i.iw) #3 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph505
  %.13 = phi i32 [ %.12, %bb.k ], [ %.11502, %.lr.ph505 ] ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0348503, i64 8
  %.0348 = load ptr, ptr %i.iy, align 8, !tbaa !30 ; 2 uses
  %.not403 = icmp eq ptr %.0348, null
  br i1 %.not403, label %.loopexit, label %.lr.ph505, !llvm.loop !48

._crit_edge511:                                   ; preds = %.loopexit
  %indvars.iv.next605 = add nsw i64 %indvars.iv604, 1 ; 2 uses
  %exitcond608.not = icmp eq i64 %indvars.iv.next605, %wide.trip.count607
  br i1 %exitcond608.not, label %._crit_edge516.split, label %.preheader435, !llvm.loop !49

._crit_edge516.split:                             ; preds = %._crit_edge511
  %indvars.iv.next610 = add nsw i64 %indvars.iv609, 1 ; 2 uses
  %exitcond613.not = icmp eq i64 %indvars.iv.next610, %wide.trip.count612
  br i1 %exitcond613.not, label %.preheader439, label %.preheader437, !llvm.loop !50

.lr.ph536:                                        ; preds = %.lr.ph536.preheader, %.lr.ph536
  %indvars.iv621 = phi i64 [ 0, %.lr.ph536.preheader ], [ %indvars.iv.next622, %.lr.ph536 ] ; 2 uses
  %.0385534 = phi i32 [ 0, %.lr.ph536.preheader ], [ %i.ji, %.lr.ph536 ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv621
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.jb ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !34
  %i.je = tail call i32 @hypre_UnionBoxes(ptr noundef %i.jd) #3 ; 0 uses
  %i.jf = load ptr, ptr %i.jc, align 8, !tbaa !34
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !16
  %i.ji = add nsw i32 %i.jh, %.0385534            ; 3 uses
  %indvars.iv.next622 = add nuw nsw i64 %indvars.iv621, 1 ; 2 uses
  %exitcond625.not = icmp eq i64 %indvars.iv.next622, %wide.trip.count624
  br i1 %exitcond625.not, label %._crit_edge537, label %.lr.ph536, !llvm.loop !51

._crit_edge537:                                   ; preds = %.lr.ph536
  %i.jj = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv638
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !34 ; 2 uses
  %i.jm = tail call i32 @hypre_BoxArraySetSize(ptr noundef %i.jl, i32 noundef %i.ji) #3 ; 0 uses
  %i.jn = tail call ptr @hypre_CAlloc(i32 noundef %i.ji, i32 noundef 4) #3
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv638 ; 2 uses
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !43
  %wide.trip.count636 = zext nneg i32 %.11.lcssa to i64
  br label %.lr.ph550

.lr.ph550:                                        ; preds = %._crit_edge537, %._crit_edge543
  %indvars.iv633 = phi i64 [ 0, %._crit_edge537 ], [ %indvars.iv.next634, %._crit_edge543 ] ; 2 uses
  %.2370548 = phi i32 [ 0, %._crit_edge537 ], [ %.3371.lcssa, %._crit_edge543 ] ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv633
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !4
  %i.jr = sext i32 %i.jq to i64                   ; 2 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.jr ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !34 ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !16
  %i.jw = icmp sgt i32 %i.jv, 0
  br i1 %i.jw, label %.lr.ph542, label %._crit_edge543

.lr.ph542:                                        ; preds = %.lr.ph550
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.jr
  %i.jy = load ptr, ptr %i.jo, align 8, !tbaa !43
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !25
  %i.ka = load ptr, ptr %i.jl, align 8, !tbaa !25
  %i.kb = sext i32 %.2370548 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph542, %bb.m
  %indvars.iv628 = phi i64 [ 0, %.lr.ph542 ], [ %indvars.iv.next629, %bb.m ] ; 2 uses
  %indvars.iv626 = phi i64 [ %i.kb, %.lr.ph542 ], [ %indvars.iv.next627, %bb.m ] ; 3 uses
  %i.kc = load i32, ptr %i.jx, align 4, !tbaa !4
  %i.kd = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %indvars.iv626
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !4
  %i.ke = getelementptr inbounds nuw [24 x i8], ptr %i.jz, i64 %indvars.iv628 ; 6 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !4
  %i.kg = getelementptr inbounds [24 x i8], ptr %i.ka, i64 %indvars.iv626 ; 6 uses
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !4
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !4
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !4
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !4
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !4
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i32 %i.kr, ptr %i.ks, align 4, !tbaa !4
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ke, i64 20
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kg, i64 20
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !4
  %indvars.iv.next627 = add nsw i64 %indvars.iv626, 1 ; 2 uses
  %indvars.iv.next629 = add nuw nsw i64 %indvars.iv628, 1 ; 2 uses
  %i.kw = load i32, ptr %i.ju, align 8, !tbaa !16
  %i.kx = sext i32 %i.kw to i64
  %i.ky = icmp slt i64 %indvars.iv.next629, %i.kx
  br i1 %i.ky, label %bb.m, label %._crit_edge543.loopexit, !llvm.loop !52

._crit_edge543.loopexit:                          ; preds = %bb.m
  %i.kz = trunc nsw i64 %indvars.iv.next627 to i32
  br label %._crit_edge543

._crit_edge543:                                   ; preds = %._crit_edge543.loopexit, %.lr.ph550
  %.3371.lcssa = phi i32 [ %.2370548, %.lr.ph550 ], [ %i.kz, %._crit_edge543.loopexit ]
  %i.la = tail call i32 @hypre_BoxArrayDestroy(ptr noundef nonnull %i.jt) #3 ; 0 uses
  store ptr null, ptr %i.js, align 8, !tbaa !34
  %indvars.iv.next634 = add nuw nsw i64 %indvars.iv633, 1 ; 2 uses
  %exitcond637.not = icmp eq i64 %indvars.iv.next634, %wide.trip.count636
  br i1 %exitcond637.not, label %._crit_edge551, label %.lr.ph550, !llvm.loop !53

._crit_edge551.critedge:                          ; preds = %.preheader442, %.preheader441
  %i.lb = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %indvars.iv638
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !34
  %i.le = tail call i32 @hypre_BoxArraySetSize(ptr noundef %i.ld, i32 noundef 0) #3 ; 0 uses
  %i.lf = tail call ptr @hypre_CAlloc(i32 noundef 0, i32 noundef 4) #3
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv638
  store ptr %i.lf, ptr %i.lg, align 8, !tbaa !43
  br label %._crit_edge551

._crit_edge551:                                   ; preds = %._crit_edge543, %._crit_edge551.critedge
  %indvars.iv.next639 = add nuw nsw i64 %indvars.iv638, 1 ; 2 uses
  %i.lh = load i32, ptr %i.e, align 8, !tbaa !16
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next639, %i.li
  br i1 %i.lj, label %bb.b, label %._crit_edge555, !llvm.loop !54

end_hunk_0
