inline.NumInlined: 897
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@If_DsdManOperation:bb.a
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !159

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.br = zext i32 %spec.select.i to i64
  %i.bs = icmp eq i64 %indvars.iv48.i, %i.br
  br i1 %i.bs, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bt = sext i32 %spec.select.i to i64          ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !43
  store i32 %i.bv, ptr %.phi.trans.insert.i, align 4, !tbaa !43
  store i32 %.pre.i, ptr %i.bu, align 4, !tbaa !43
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !43
  %i.by = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bt ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !43
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !43
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count63.i
  br i1 %exitcond52.not.i, label %If_DsdObjSort.exit, label %.lr.ph.preheader.i, !llvm.loop !160

If_DsdObjSort.exit:                               ; preds = %bb.i, %._crit_edge338
  %i.ca = icmp sgt i32 %.2224, 0
  br i1 %i.ca, label %.lr.ph350.preheader, label %.preheader

.lr.ph350.preheader:                              ; preds = %If_DsdObjSort.exit
  %wide.trip.count449 = zext nneg i32 %.2224 to i64
  br label %.lr.ph350

.preheader:                                       ; preds = %._crit_edge346, %If_DsdObjSort.exit
  %i.cb = icmp sgt i32 %.2, 0
  br i1 %i.cb, label %.lr.ph352.preheader, label %.loopexit

.lr.ph352.preheader:                              ; preds = %.preheader
  %i.cc = zext nneg i32 %.2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 1 %i.a, i64 %i.cc, i1 false), !tbaa !140
  br label %.loopexit

.lr.ph350:                                        ; preds = %.lr.ph350.preheader, %._crit_edge346
  %indvars.iv446 = phi i64 [ 0, %.lr.ph350.preheader ], [ %indvars.iv.next447, %._crit_edge346 ] ; 2 uses
  %.0208349 = phi i32 [ 0, %.lr.ph350.preheader ], [ %.1209.lcssa, %._crit_edge346 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv446
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !43 ; 2 uses
  %i.cf = ashr i32 %i.ce, 16                      ; 3 uses
  %i.cg = and i32 %i.ce, 255                      ; 3 uses
  %i.ch = icmp slt i32 %i.cf, %i.cg
  br i1 %i.ch, label %.lr.ph345.preheader, label %._crit_edge346

.lr.ph345.preheader:                              ; preds = %.lr.ph350
  %i.ci = sext i32 %.0208349 to i64               ; 3 uses
  %scevgep435 = getelementptr i8, ptr %i.a, i64 %i.ci
  %i.cj = sext i32 %i.cf to i64                   ; 4 uses
  %scevgep436 = getelementptr i8, ptr %4, i64 %i.cj
  %i.ck = xor i32 %i.cf, -1
  %i.cl = add nsw i32 %i.cg, %i.ck
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep435, ptr noundef nonnull align 1 dereferenceable(1) %scevgep436, i64 %i.cn, i1 false), !tbaa !140
  %wide.trip.count444 = zext nneg i32 %i.cg to i64 ; 2 uses
  %i.co = sub nsw i64 %wide.trip.count444, %i.cj  ; 3 uses
  %min.iters.check509 = icmp ult i64 %i.co, 4
  br i1 %min.iters.check509, label %.lr.ph345.preheader519, label %vector.ph510

vector.ph510:                                     ; preds = %.lr.ph345.preheader
  %n.vec511 = and i64 %i.co, -4                   ; 3 uses
  %i.cp = add nsw i64 %n.vec511, %i.cj
  %i.cq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ci, i64 0
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph510
  %index513 = phi i64 [ 0, %vector.ph510 ], [ %index.next515, %vector.body512 ]
  %vec.phi = phi <2 x i64> [ %i.cq, %vector.ph510 ], [ %i.cr, %vector.body512 ]
  %vec.phi514 = phi <2 x i64> [ zeroinitializer, %vector.ph510 ], [ %i.cs, %vector.body512 ]
  %i.cr = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.cs = add <2 x i64> %vec.phi514, splat (i64 1) ; 2 uses
  %index.next515 = add nuw i64 %index513, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next515, %n.vec511
  br i1 %i.ct, label %middle.block516, label %vector.body512, !llvm.loop !238

middle.block516:                                  ; preds = %vector.body512
  %bin.rdx = add <2 x i64> %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n517 = icmp eq i64 %i.co, %n.vec511
  br i1 %cmp.n517, label %._crit_edge346.loopexit, label %.lr.ph345.preheader519

.lr.ph345.preheader519:                           ; preds = %.lr.ph345.preheader, %middle.block516
  %indvars.iv439.ph = phi i64 [ %i.cj, %.lr.ph345.preheader ], [ %i.cp, %middle.block516 ]
  %indvars.iv437.ph = phi i64 [ %i.ci, %.lr.ph345.preheader ], [ %i.cu, %middle.block516 ]
  br label %.lr.ph345

.lr.ph345:                                        ; preds = %.lr.ph345.preheader519, %.lr.ph345
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %.lr.ph345 ], [ %indvars.iv439.ph, %.lr.ph345.preheader519 ]
  %indvars.iv437 = phi i64 [ %indvars.iv.next438, %.lr.ph345 ], [ %indvars.iv437.ph, %.lr.ph345.preheader519 ]
  %indvars.iv.next438 = add nsw i64 %indvars.iv437, 1 ; 2 uses
  %indvars.iv.next440 = add nsw i64 %indvars.iv439, 1 ; 2 uses
  %exitcond445.not = icmp eq i64 %indvars.iv.next440, %wide.trip.count444
  br i1 %exitcond445.not, label %._crit_edge346.loopexit, label %.lr.ph345, !llvm.loop !239

._crit_edge346.loopexit:                          ; preds = %.lr.ph345, %middle.block516
  %indvars.iv.next438.lcssa = phi i64 [ %i.cu, %middle.block516 ], [ %indvars.iv.next438, %.lr.ph345 ]
  %i.cv = trunc nsw i64 %indvars.iv.next438.lcssa to i32
  br label %._crit_edge346

._crit_edge346:                                   ; preds = %._crit_edge346.loopexit, %.lr.ph350
  %.1209.lcssa = phi i32 [ %.0208349, %.lr.ph350 ], [ %i.cv, %._crit_edge346.loopexit ]
  %indvars.iv.next447 = add nuw nsw i64 %indvars.iv446, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next447, %wide.trip.count449
  br i1 %exitcond450.not, label %.preheader, label %.lr.ph350, !llvm.loop !240

bb.j:                                             ; preds = %bb.a
  switch i32 %1, label %.loopexit [
    i32 5, label %.preheader286
    i32 6, label %bb.u
  ]

.preheader286:                                    ; preds = %bb.j
  %i.cw = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.cw, label %.lr.ph300, label %._crit_edge301

.lr.ph300:                                        ; preds = %.preheader286
  %i.cx = getelementptr i8, ptr %0, i64 48
  %wide.trip.count382 = zext nneg i32 %3 to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph300, %If_DsdManPushInv.exit260
  %indvars.iv379 = phi i64 [ 0, %.lr.ph300 ], [ %indvars.iv.next380, %If_DsdManPushInv.exit260 ] ; 2 uses
  %.1229298 = phi ptr [ %4, %.lr.ph300 ], [ %i.dn, %If_DsdManPushInv.exit260 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv379 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !43 ; 7 uses
  %i.da = ashr i32 %i.cz, 1
  %.val244 = load ptr, ptr %i.cx, align 8, !tbaa !26
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %.val244, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !27
  %i.de = and i32 %i.cz, 1
  %.not.i257 = icmp eq i32 %i.de, 0
  br i1 %.not.i257, label %If_DsdManPushInv.exit260, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = tail call i32 @If_DsdManCheckInv_rec(ptr noundef nonnull %0, i32 noundef %i.cz)
  %.not6.i258 = icmp eq i32 %i.df, 0
  br i1 %.not6.i258, label %If_DsdManPushInv.exit260, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = tail call i32 @If_DsdManPushInv_rec(ptr noundef nonnull %0, i32 noundef %i.cz, ptr noundef %.1229298) ; 0 uses
  %i.dh = and i32 %i.cz, -2
  br label %If_DsdManPushInv.exit260

If_DsdManPushInv.exit260:                         ; preds = %bb.k, %bb.l, %bb.m
  %.0.i259 = phi i32 [ %i.dh, %bb.m ], [ %i.cz, %bb.l ], [ %i.cz, %bb.k ]
  store i32 %.0.i259, ptr %i.cy, align 4, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = lshr i32 %i.dj, 3
  %i.dl = and i32 %i.dk, 31
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.1229298, i64 %i.dm
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %._crit_edge301, label %bb.k, !llvm.loop !241

._crit_edge301:                                   ; preds = %If_DsdManPushInv.exit260, %.preheader286
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !43 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !43 ; 4 uses
  %i.dt = tail call i32 @If_DsdObjCompare(ptr noundef %0, ptr noundef nonnull %i.do, i32 noundef %i.dq, i32 noundef %i.ds)
  switch i32 %i.dt, label %.loopexit283 [
    i32 1, label %._crit_edge301._crit_edge
    i32 0, label %bb.n
  ]

._crit_edge301._crit_edge:                        ; preds = %._crit_edge301
  %.pre = load i32, ptr %2, align 4, !tbaa !43
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge301
  %i.du = load i32, ptr %2, align 4, !tbaa !43    ; 2 uses
  %i.dv = and i32 %i.du, 1
  %.not = icmp eq i32 %i.dv, 0
  br i1 %.not, label %.loopexit283, label %bb.o

bb.o:                                             ; preds = %._crit_edge301._crit_edge, %bb.n
  %i.dw = phi i32 [ %.pre, %._crit_edge301._crit_edge ], [ %i.du, %bb.n ] ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 48
  %.val248 = load ptr, ptr %i.dx, align 8, !tbaa !26 ; 3 uses
  %i.dy = ashr i32 %i.dw, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %.val248, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = lshr i32 %i.ed, 3                       ; 4 uses
  %i.ef = and i32 %i.ee, 31                       ; 4 uses
  %i.eg = ashr i32 %i.dq, 1
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %.val248, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = lshr i32 %i.el, 3                       ; 2 uses
  %i.en = and i32 %i.em, 31                       ; 3 uses
  %i.eo = ashr i32 %i.ds, 1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %.val248, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = lshr i32 %i.et, 3                       ; 2 uses
  %i.ev = and i32 %i.eu, 31                       ; 3 uses
  %i.ew = xor i32 %i.dw, 1
  store i32 %i.ew, ptr %2, align 4, !tbaa !43
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !43
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !43
  %.not354 = icmp eq i32 %i.ef, 0
  br i1 %.not354, label %.preheader285, label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %bb.o
  %i.ex = and i32 %i.ee, 31
  %i.ey = zext nneg i32 %i.ex to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %4, i64 %i.ey, i1 false), !tbaa !140
  br label %.preheader285

.preheader285:                                    ; preds = %.lr.ph305.preheader, %bb.o
  %.not355 = icmp eq i32 %i.ev, 0
  br i1 %.not355, label %.preheader284, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader285
  %6 = add nuw nsw i32 %i.en, %i.ef
  %i.ez = and i32 %i.ee, 31
  %i.fa = zext nneg i32 %i.ez to i64
  %scevgep391 = getelementptr i8, ptr %i.a, i64 %i.fa
  %i.fb = zext nneg i32 %6 to i64
  %scevgep392 = getelementptr i8, ptr %4, i64 %i.fb
  %i.fc = and i32 %i.eu, 31
  %i.fd = zext nneg i32 %i.fc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep391, ptr align 1 %scevgep392, i64 %i.fd, i1 false), !tbaa !140
  br label %.preheader284

.preheader284:                                    ; preds = %.lr.ph309, %.preheader285
  %.not356 = icmp eq i32 %i.en, 0
  br i1 %.not356, label %.preheader282, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %.preheader284
  %7 = add nuw nsw i32 %i.ef, %i.ev
  %i.fe = zext nneg i32 %7 to i64
  %scevgep402 = getelementptr i8, ptr %i.a, i64 %i.fe
  %8 = and i32 %i.ee, 31
  %9 = zext nneg i32 %8 to i64
  %scevgep403 = getelementptr i8, ptr %4, i64 %9
  %i.ff = and i32 %i.em, 31
  %i.fg = zext nneg i32 %i.ff to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep402, ptr align 1 %scevgep403, i64 %i.fg, i1 false), !tbaa !140
  br label %.preheader282

.preheader282:                                    ; preds = %.lr.ph313.preheader, %.preheader284
  %i.fh = add nuw nsw i32 %i.en, %i.ef
  %i.fi = add nuw nsw i32 %i.fh, %i.ev            ; 2 uses
  %.not357 = icmp eq i32 %i.fi, 0
  br i1 %.not357, label %.loopexit283, label %.lr.ph315.preheader

.lr.ph315.preheader:                              ; preds = %.preheader282
  %i.fj = zext nneg i32 %i.fi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 1 %i.a, i64 %i.fj, i1 false), !tbaa !140
  %.pre454 = load i32, ptr %i.dp, align 4, !tbaa !43
  br label %.loopexit283

.loopexit283:                                     ; preds = %.lr.ph315.preheader, %.preheader282, %._crit_edge301, %bb.n
  %i.fk = phi i32 [ %.pre454, %.lr.ph315.preheader ], [ %i.ds, %.preheader282 ], [ %i.dq, %._crit_edge301 ], [ %i.dq, %bb.n ] ; 2 uses
  %i.fl = and i32 %i.fk, 1
  %.not239 = icmp eq i32 %i.fl, 0
  br i1 %.not239, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit283
  %i.fm = and i32 %i.fk, -2
  store i32 %i.fm, ptr %i.dp, align 4, !tbaa !43
  %i.fn = load i32, ptr %i.dr, align 4, !tbaa !43
  %i.fo = xor i32 %i.fn, 1
  store i32 %i.fo, ptr %i.dr, align 4, !tbaa !43
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit283
  %.2207 = phi i32 [ 1, %bb.p ], [ 0, %.loopexit283 ] ; 2 uses
  br i1 %i.cw, label %.lr.ph320, label %.loopexit

.lr.ph320:                                        ; preds = %bb.q
  %i.fp = getelementptr i8, ptr %0, i64 48
  %wide.trip.count419 = zext nneg i32 %3 to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph320, %If_DsdManPushInv.exit264
  %indvars.iv414 = phi i64 [ 0, %.lr.ph320 ], [ %indvars.iv.next415, %If_DsdManPushInv.exit264 ] ; 3 uses
  %.2230316 = phi ptr [ %4, %.lr.ph320 ], [ %i.gg, %If_DsdManPushInv.exit264 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv414
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !43 ; 7 uses
  %i.fs = ashr i32 %i.fr, 1
  %.val243 = load ptr, ptr %i.fp, align 8, !tbaa !26
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %.val243, i64 %i.ft
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !27
  %i.fw = and i32 %i.fr, 1
  %.not.i261 = icmp eq i32 %i.fw, 0
  br i1 %.not.i261, label %If_DsdManPushInv.exit264, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fx = tail call i32 @If_DsdManCheckInv_rec(ptr noundef nonnull %0, i32 noundef %i.fr)
  %.not6.i262 = icmp eq i32 %i.fx, 0
  br i1 %.not6.i262, label %If_DsdManPushInv.exit264, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fy = tail call i32 @If_DsdManPushInv_rec(ptr noundef nonnull %0, i32 noundef %i.fr, ptr noundef %.2230316) ; 0 uses
  %i.fz = and i32 %i.fr, -2
  br label %If_DsdManPushInv.exit264

If_DsdManPushInv.exit264:                         ; preds = %bb.r, %bb.s, %bb.t
  %.0.i263 = phi i32 [ %i.fz, %bb.t ], [ %i.fr, %bb.s ], [ %i.fr, %bb.r ]
  %indvars.iv.next415 = add nuw nsw i64 %indvars.iv414, 1 ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv414
  store i32 %.0.i263, ptr %i.ga, align 4, !tbaa !43
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gc = load i32, ptr %i.gb, align 4
  %i.gd = lshr i32 %i.gc, 3
  %i.ge = and i32 %i.gd, 31
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %.2230316, i64 %i.gf
  %exitcond420.not = icmp eq i64 %indvars.iv.next415, %wide.trip.count419
  br i1 %exitcond420.not, label %.loopexit, label %bb.r, !llvm.loop !242

bb.u:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.gh = call i32 @Abc_TtCanonicize(ptr noundef %5, i32 noundef %3, ptr noundef nonnull %i.d) #40 ; 2 uses
  %i.gi = lshr i32 %i.gh, %3
  %i.gj = and i32 %i.gi, 1
  %i.gk = icmp sgt i32 %3, 0
  br i1 %i.gk, label %.lr.ph.i266, label %._crit_edge297

.lr.ph.i266:                                      ; preds = %bb.u
  %i.gl = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.gl, align 8, !tbaa !26 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.gm = icmp eq i32 %3, 1
  br i1 %i.gm, label %.epil.preheader, label %.lr.ph.i266.new

.lr.ph.i266.new:                                  ; preds = %.lr.ph.i266
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i266.new
  %indvars.iv.i267 = phi i64 [ 0, %.lr.ph.i266.new ], [ %indvars.iv.next.i268.1, %bb.v ] ; 4 uses
  %.012.i = phi i32 [ 0, %.lr.ph.i266.new ], [ %i.hk, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i266.new ], [ %niter.next.1, %bb.v ]
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i267
  store i32 %.012.i, ptr %i.gn, align 8, !tbaa !43
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i267
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !43
  %i.gq = ashr i32 %i.gp, 1
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.gr
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !27
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = lshr i32 %i.gv, 3
  %i.gx = and i32 %i.gw, 31
  %i.gy = add nuw nsw i32 %i.gx, %.012.i          ; 2 uses
  %indvars.iv.next.i268 = or disjoint i64 %indvars.iv.i267, 1 ; 2 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i268
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !43
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i268
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !43
  %i.hc = ashr i32 %i.hb, 1
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !27
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hh = load i32, ptr %i.hg, align 4
  %i.hi = lshr i32 %i.hh, 3
  %i.hj = and i32 %i.hi, 31
  %i.hk = add nuw nsw i32 %i.hj, %i.gy            ; 3 uses
  %indvars.iv.next.i268.1 = add nuw nsw i64 %indvars.iv.i267, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph293.unr-lcssa, label %bb.v, !llvm.loop !235

.lr.ph293.unr-lcssa:                              ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph293, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph293.unr-lcssa, %.lr.ph.i266
  %indvars.iv.i267.epil.init = phi i64 [ 0, %.lr.ph.i266 ], [ %indvars.iv.next.i268.1, %.lr.ph293.unr-lcssa ] ; 2 uses
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i266 ], [ %i.hk, %.lr.ph293.unr-lcssa ] ; 2 uses
  %lcmp.mod528 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod528)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i267.epil.init
  store i32 %.012.i.epil.init, ptr %i.hl, align 4, !tbaa !43
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i267.epil.init
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !43
  %i.ho = ashr i32 %i.hn, 1
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.hp
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !27
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = lshr i32 %i.ht, 3
  %i.hv = and i32 %i.hu, 31
  %i.hw = add nuw nsw i32 %i.hv, %.012.i.epil.init
  br label %.lr.ph293

.lr.ph293:                                        ; preds = %.lr.ph293.unr-lcssa, %.epil.preheader
  %.lcssa526 = phi i32 [ %i.hk, %.lr.ph293.unr-lcssa ], [ %i.hw, %.epil.preheader ] ; 2 uses
  %i.hx = getelementptr i8, ptr %0, i64 48
  %wide.trip.count374 = zext nneg i32 %3 to i64
  br label %bb.w

.preheader287:                                    ; preds = %._crit_edge
  %.not503 = icmp eq i32 %.lcssa526, 0
  br i1 %.not503, label %._crit_edge297, label %.lr.ph296.preheader

.lr.ph296.preheader:                              ; preds = %.preheader287
  %i.hy = zext nneg i32 %.lcssa526 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 1 %i.a, i64 %i.hy, i1 false), !tbaa !140
  br label %._crit_edge297

bb.w:                                             ; preds = %.lr.ph293, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph293 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.7291 = phi i32 [ 0, %.lr.ph293 ], [ %.8.lcssa, %._crit_edge ] ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !140
  %i.ib = sext i8 %i.ia to i64                    ; 2 uses
  %i.ic = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ib
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !43 ; 3 uses
  %i.ie = trunc nuw nsw i64 %indvars.iv to i32
  %i.if = lshr i32 %i.gh, %i.ie
  %i.ig = and i32 %i.if, 1
  %i.ih = xor i32 %i.id, %i.ig                    ; 5 uses
  %i.ii = ashr i32 %i.id, 1
  %.val = load ptr, ptr %i.hx, align 8, !tbaa !26
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !27
  %i.im = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ib
  %i.in = load i32, ptr %i.im, align 4, !tbaa !43
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr i8, ptr %4, i64 %i.io     ; 2 uses
  %i.iq = and i32 %i.ih, 1
  %.not.i270 = icmp eq i32 %i.iq, 0
  br i1 %.not.i270, label %If_DsdManPushInv.exit273, label %bb.x

bb.x:                                             ; preds = %bb.w
end_hunk_0
