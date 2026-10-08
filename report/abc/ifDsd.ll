Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDsd?download=true
inline.NumInlined: 897
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 44
begin_hunk_0_@If_DsdManOperation:bb.a
.lr.ph352.preheader:                              ; preds = %.preheader
  %i.cc = zext nneg i32 %.2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 1 %i.a, i64 %i.cc, i1 false), !tbaa !113
  br label %.loopexit

.lr.ph350:                                        ; preds = %.lr.ph350.preheader, %._crit_edge346
  %indvars.iv445 = phi i64 [ 0, %.lr.ph350.preheader ], [ %indvars.iv.next446, %._crit_edge346 ] ; 2 uses
  %.0208349 = phi i32 [ 0, %.lr.ph350.preheader ], [ %.1209.lcssa, %._crit_edge346 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv445
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !55 ; 2 uses
  %i.cf = ashr i32 %i.ce, 16                      ; 3 uses
  %i.cg = and i32 %i.ce, 255                      ; 3 uses
  %i.ch = icmp slt i32 %i.cf, %i.cg
  br i1 %i.ch, label %.lr.ph345.preheader, label %._crit_edge346

.lr.ph345.preheader:                              ; preds = %.lr.ph350
  %i.ci = sext i32 %.0208349 to i64               ; 3 uses
  %scevgep434 = getelementptr i8, ptr %i.a, i64 %i.ci
  %i.cj = sext i32 %i.cf to i64                   ; 4 uses
  %scevgep435 = getelementptr i8, ptr %4, i64 %i.cj
  %i.ck = xor i32 %i.cf, -1
  %i.cl = add nsw i32 %i.cg, %i.ck
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add nuw nsw i64 %i.cm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep434, ptr noundef nonnull align 1 dereferenceable(1) %scevgep435, i64 %i.cn, i1 false), !tbaa !113
  %wide.trip.count443 = zext nneg i32 %i.cg to i64 ; 2 uses
  %i.co = sub nsw i64 %wide.trip.count443, %i.cj  ; 3 uses
  %min.iters.check517 = icmp ult i64 %i.co, 4
  br i1 %min.iters.check517, label %.lr.ph345.preheader527, label %vector.ph518

vector.ph518:                                     ; preds = %.lr.ph345.preheader
  %n.vec519 = and i64 %i.co, -4                   ; 3 uses
  %i.cp = add nsw i64 %n.vec519, %i.cj
  %i.cq = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ci, i64 0
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph518
  %index521 = phi i64 [ 0, %vector.ph518 ], [ %index.next523, %vector.body520 ]
  %vec.phi = phi <2 x i64> [ %i.cq, %vector.ph518 ], [ %i.cr, %vector.body520 ]
  %vec.phi522 = phi <2 x i64> [ zeroinitializer, %vector.ph518 ], [ %i.cs, %vector.body520 ]
  %i.cr = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.cs = add <2 x i64> %vec.phi522, splat (i64 1) ; 2 uses
  %index.next523 = add nuw i64 %index521, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next523, %n.vec519
  br i1 %i.ct, label %middle.block524, label %vector.body520, !llvm.loop !270

middle.block524:                                  ; preds = %vector.body520
  %bin.rdx = add <2 x i64> %i.cs, %i.cr
  %i.cu = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n525 = icmp eq i64 %i.co, %n.vec519
  br i1 %cmp.n525, label %._crit_edge346.loopexit, label %.lr.ph345.preheader527

.lr.ph345.preheader527:                           ; preds = %.lr.ph345.preheader, %middle.block524
  %indvars.iv438.ph = phi i64 [ %i.cj, %.lr.ph345.preheader ], [ %i.cp, %middle.block524 ]
  %indvars.iv436.ph = phi i64 [ %i.ci, %.lr.ph345.preheader ], [ %i.cu, %middle.block524 ]
  br label %.lr.ph345

.lr.ph345:                                        ; preds = %.lr.ph345.preheader527, %.lr.ph345
  %indvars.iv438 = phi i64 [ %indvars.iv.next439, %.lr.ph345 ], [ %indvars.iv438.ph, %.lr.ph345.preheader527 ]
  %indvars.iv436 = phi i64 [ %indvars.iv.next437, %.lr.ph345 ], [ %indvars.iv436.ph, %.lr.ph345.preheader527 ]
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 2 uses
  %indvars.iv.next439 = add nsw i64 %indvars.iv438, 1 ; 2 uses
  %exitcond444.not = icmp eq i64 %indvars.iv.next439, %wide.trip.count443
  br i1 %exitcond444.not, label %._crit_edge346.loopexit, label %.lr.ph345, !llvm.loop !271

._crit_edge346.loopexit:                          ; preds = %.lr.ph345, %middle.block524
  %indvars.iv.next437.lcssa = phi i64 [ %i.cu, %middle.block524 ], [ %indvars.iv.next437, %.lr.ph345 ]
  %i.cv = trunc nsw i64 %indvars.iv.next437.lcssa to i32
  br label %._crit_edge346

._crit_edge346:                                   ; preds = %._crit_edge346.loopexit, %.lr.ph350
  %.1209.lcssa = phi i32 [ %.0208349, %.lr.ph350 ], [ %i.cv, %._crit_edge346.loopexit ]
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %exitcond449.not = icmp eq i64 %indvars.iv.next446, %wide.trip.count448
  br i1 %exitcond449.not, label %.preheader, label %.lr.ph350, !llvm.loop !272

bb.j:                                             ; preds = %bb.a
  switch i32 %1, label %.loopexit [
    i32 5, label %.preheader286
    i32 6, label %bb.u
  ]

.preheader286:                                    ; preds = %bb.j
  %i.cw = icmp sgt i32 %3, 0                      ; 2 uses
  br i1 %i.cw, label %.lr.ph300, label %._crit_edge301

.lr.ph300:                                        ; preds = %.preheader286
  %i.cx = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.trip.count381 = zext nneg i32 %3 to i64
  %.val244.pre456 = load ptr, ptr %i.cx, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph300, %If_DsdManPushInv.exit260
  %.val244 = phi ptr [ %.val244.pre456, %.lr.ph300 ], [ %.val244457, %If_DsdManPushInv.exit260 ] ; 3 uses
  %indvars.iv378 = phi i64 [ 0, %.lr.ph300 ], [ %indvars.iv.next379, %If_DsdManPushInv.exit260 ] ; 2 uses
  %.1229298 = phi ptr [ %4, %.lr.ph300 ], [ %i.dn, %If_DsdManPushInv.exit260 ] ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv378 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !55 ; 7 uses
  %i.da = ashr i32 %i.cz, 1
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [8 x i8], ptr %.val244, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !39
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
  %.val244.pre = load ptr, ptr %i.cx, align 8, !tbaa !38
  br label %If_DsdManPushInv.exit260

If_DsdManPushInv.exit260:                         ; preds = %bb.k, %bb.l, %bb.m
  %.val244457 = phi ptr [ %.val244.pre, %bb.m ], [ %.val244, %bb.l ], [ %.val244, %bb.k ]
  %.0.i259 = phi i32 [ %i.dh, %bb.m ], [ %i.cz, %bb.l ], [ %i.cz, %bb.k ]
  store i32 %.0.i259, ptr %i.cy, align 4, !tbaa !55
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = lshr i32 %i.dj, 3
  %i.dl = and i32 %i.dk, 31
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.1229298, i64 %i.dm
  %indvars.iv.next379 = add nuw nsw i64 %indvars.iv378, 1 ; 2 uses
  %exitcond382.not = icmp eq i64 %indvars.iv.next379, %wide.trip.count381
  br i1 %exitcond382.not, label %._crit_edge301, label %bb.k, !llvm.loop !273

._crit_edge301:                                   ; preds = %If_DsdManPushInv.exit260, %.preheader286
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !55 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !55 ; 4 uses
  %i.dt = tail call i32 @If_DsdObjCompare(ptr noundef %0, ptr noundef nonnull %i.do, i32 noundef %i.dq, i32 noundef %i.ds)
  switch i32 %i.dt, label %.loopexit283 [
    i32 1, label %._crit_edge301._crit_edge
    i32 0, label %bb.n
  ]

._crit_edge301._crit_edge:                        ; preds = %._crit_edge301
  %.pre = load i32, ptr %2, align 4, !tbaa !55
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge301
  %i.du = load i32, ptr %2, align 4, !tbaa !55    ; 2 uses
  %i.dv = and i32 %i.du, 1
  %.not = icmp eq i32 %i.dv, 0
  br i1 %.not, label %.loopexit283, label %bb.o

bb.o:                                             ; preds = %._crit_edge301._crit_edge, %bb.n
  %i.dw = phi i32 [ %.pre, %._crit_edge301._crit_edge ], [ %i.du, %bb.n ] ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 48
  %.val248 = load ptr, ptr %i.dx, align 8, !tbaa !38 ; 3 uses
  %i.dy = ashr i32 %i.dw, 1
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %.val248, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !39
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = lshr i32 %i.ed, 3                       ; 4 uses
  %i.ef = and i32 %i.ee, 31                       ; 4 uses
  %i.eg = ashr i32 %i.dq, 1
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %.val248, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !39
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = lshr i32 %i.el, 3                       ; 2 uses
  %i.en = and i32 %i.em, 31                       ; 3 uses
  %i.eo = ashr i32 %i.ds, 1
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr %.val248, i64 %i.ep
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !39
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = lshr i32 %i.et, 3                       ; 2 uses
  %i.ev = and i32 %i.eu, 31                       ; 3 uses
  %i.ew = xor i32 %i.dw, 1
  store i32 %i.ew, ptr %2, align 4, !tbaa !55
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !55
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !55
  %.not354 = icmp eq i32 %i.ef, 0
  br i1 %.not354, label %.preheader285, label %.lr.ph305.preheader

.lr.ph305.preheader:                              ; preds = %bb.o
  %i.ex = and i32 %i.ee, 31
  %i.ey = zext nneg i32 %i.ex to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %4, i64 %i.ey, i1 false), !tbaa !113
  br label %.preheader285

.preheader285:                                    ; preds = %.lr.ph305.preheader, %bb.o
  %.not355 = icmp eq i32 %i.ev, 0
  br i1 %.not355, label %.preheader284, label %.lr.ph309

.lr.ph309:                                        ; preds = %.preheader285
  %i.ez = add nuw nsw i32 %i.en, %i.ef
  %i.fa = and i32 %i.ee, 31
  %i.fb = zext nneg i32 %i.fa to i64
  %scevgep390 = getelementptr i8, ptr %i.a, i64 %i.fb
  %i.fc = zext nneg i32 %i.ez to i64
  %scevgep391 = getelementptr i8, ptr %4, i64 %i.fc
  %i.fd = and i32 %i.eu, 31
  %i.fe = zext nneg i32 %i.fd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep390, ptr align 1 %scevgep391, i64 %i.fe, i1 false), !tbaa !113
  br label %.preheader284

.preheader284:                                    ; preds = %.lr.ph309, %.preheader285
  %.not356 = icmp eq i32 %i.en, 0
  br i1 %.not356, label %.preheader282, label %.lr.ph313.preheader

.lr.ph313.preheader:                              ; preds = %.preheader284
  %6 = add nuw nsw i32 %i.ef, %i.ev
  %i.ff = zext nneg i32 %6 to i64
  %scevgep401 = getelementptr i8, ptr %i.a, i64 %i.ff
  %i.fg = and i32 %i.ee, 31
  %i.fh = zext nneg i32 %i.fg to i64
  %scevgep402 = getelementptr i8, ptr %4, i64 %i.fh
  %i.fi = and i32 %i.em, 31
  %i.fj = zext nneg i32 %i.fi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep401, ptr align 1 %scevgep402, i64 %i.fj, i1 false), !tbaa !113
  br label %.preheader282

.preheader282:                                    ; preds = %.lr.ph313.preheader, %.preheader284
  %i.fk = add nuw nsw i32 %i.en, %i.ef
  %i.fl = add nuw nsw i32 %i.fk, %i.ev            ; 2 uses
  %.not357 = icmp eq i32 %i.fl, 0
  br i1 %.not357, label %.loopexit283, label %.lr.ph315.preheader

.lr.ph315.preheader:                              ; preds = %.preheader282
  %i.fm = zext nneg i32 %i.fl to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 1 %i.a, i64 %i.fm, i1 false), !tbaa !113
  %.pre459 = load i32, ptr %i.dp, align 4, !tbaa !55
  br label %.loopexit283

.loopexit283:                                     ; preds = %.lr.ph315.preheader, %.preheader282, %._crit_edge301, %bb.n
  %i.fn = phi i32 [ %.pre459, %.lr.ph315.preheader ], [ %i.ds, %.preheader282 ], [ %i.dq, %._crit_edge301 ], [ %i.dq, %bb.n ] ; 2 uses
  %i.fo = and i32 %i.fn, 1
  %.not239 = icmp eq i32 %i.fo, 0
  br i1 %.not239, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.loopexit283
  %i.fp = and i32 %i.fn, -2
  store i32 %i.fp, ptr %i.dp, align 4, !tbaa !55
  %i.fq = load i32, ptr %i.dr, align 4, !tbaa !55
  %i.fr = xor i32 %i.fq, 1
  store i32 %i.fr, ptr %i.dr, align 4, !tbaa !55
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit283
  %.2207 = phi i32 [ 1, %bb.p ], [ 0, %.loopexit283 ] ; 2 uses
  br i1 %i.cw, label %.lr.ph320, label %.loopexit

.lr.ph320:                                        ; preds = %bb.q
  %i.fs = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.trip.count418 = zext nneg i32 %3 to i64
  %.val243.pre460 = load ptr, ptr %i.fs, align 8, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph320, %If_DsdManPushInv.exit264
  %.val243 = phi ptr [ %.val243.pre460, %.lr.ph320 ], [ %.val243461, %If_DsdManPushInv.exit264 ] ; 3 uses
  %indvars.iv413 = phi i64 [ 0, %.lr.ph320 ], [ %indvars.iv.next414, %If_DsdManPushInv.exit264 ] ; 3 uses
  %.2230316 = phi ptr [ %4, %.lr.ph320 ], [ %i.gj, %If_DsdManPushInv.exit264 ] ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv413
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !55 ; 7 uses
  %i.fv = ashr i32 %i.fu, 1
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [8 x i8], ptr %.val243, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !39
  %i.fz = and i32 %i.fu, 1
  %.not.i261 = icmp eq i32 %i.fz, 0
  br i1 %.not.i261, label %If_DsdManPushInv.exit264, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ga = tail call i32 @If_DsdManCheckInv_rec(ptr noundef nonnull %0, i32 noundef %i.fu)
  %.not6.i262 = icmp eq i32 %i.ga, 0
  br i1 %.not6.i262, label %If_DsdManPushInv.exit264, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gb = tail call i32 @If_DsdManPushInv_rec(ptr noundef nonnull %0, i32 noundef %i.fu, ptr noundef %.2230316) ; 0 uses
  %i.gc = and i32 %i.fu, -2
  %.val243.pre = load ptr, ptr %i.fs, align 8, !tbaa !38
  br label %If_DsdManPushInv.exit264

If_DsdManPushInv.exit264:                         ; preds = %bb.r, %bb.s, %bb.t
  %.val243461 = phi ptr [ %.val243.pre, %bb.t ], [ %.val243, %bb.s ], [ %.val243, %bb.r ]
  %.0.i263 = phi i32 [ %i.gc, %bb.t ], [ %i.fu, %bb.s ], [ %i.fu, %bb.r ]
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 1 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv413
  store i32 %.0.i263, ptr %i.gd, align 4, !tbaa !55
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  %i.gf = load i32, ptr %i.ge, align 4
  %i.gg = lshr i32 %i.gf, 3
  %i.gh = and i32 %i.gg, 31
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.2230316, i64 %i.gi
  %exitcond419.not = icmp eq i64 %indvars.iv.next414, %wide.trip.count418
  br i1 %exitcond419.not, label %.loopexit, label %bb.r, !llvm.loop !274

bb.u:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  %i.gk = call i32 @Abc_TtCanonicize(ptr noundef %5, i32 noundef %3, ptr noundef nonnull %i.d) #40 ; 2 uses
  %i.gl = lshr i32 %i.gk, %3
  %i.gm = and i32 %i.gl, 1
  %i.gn = icmp sgt i32 %3, 0
  br i1 %i.gn, label %.lr.ph.i266, label %._crit_edge297

.lr.ph.i266:                                      ; preds = %bb.u
  %i.go = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.go, align 8, !tbaa !38 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.gp = icmp eq i32 %3, 1
  br i1 %i.gp, label %.epil.preheader, label %.lr.ph.i266.new

.lr.ph.i266.new:                                  ; preds = %.lr.ph.i266
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i266.new
  %indvars.iv.i267 = phi i64 [ 0, %.lr.ph.i266.new ], [ %indvars.iv.next.i268.1, %bb.v ] ; 4 uses
  %.012.i = phi i32 [ 0, %.lr.ph.i266.new ], [ %i.hn, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i266.new ], [ %niter.next.1, %bb.v ]
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i267
  store i32 %.012.i, ptr %i.gq, align 8, !tbaa !55
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i267
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !55
  %i.gt = ashr i32 %i.gs, 1
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !39
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = lshr i32 %i.gy, 3
  %i.ha = and i32 %i.gz, 31
  %i.hb = add nuw nsw i32 %i.ha, %.012.i          ; 2 uses
  %indvars.iv.next.i268 = or disjoint i64 %indvars.iv.i267, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i268
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !55
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i268
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !55
  %i.hf = ashr i32 %i.he, 1
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.hg
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !39
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load i32, ptr %i.hj, align 4
  %i.hl = lshr i32 %i.hk, 3
  %i.hm = and i32 %i.hl, 31
  %i.hn = add nuw nsw i32 %i.hm, %i.hb            ; 3 uses
  %indvars.iv.next.i268.1 = add nuw nsw i64 %indvars.iv.i267, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph293.unr-lcssa, label %bb.v, !llvm.loop !8

.lr.ph293.unr-lcssa:                              ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph293, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph293.unr-lcssa, %.lr.ph.i266
  %indvars.iv.i267.epil.init = phi i64 [ 0, %.lr.ph.i266 ], [ %indvars.iv.next.i268.1, %.lr.ph293.unr-lcssa ] ; 2 uses
  %.012.i.epil.init = phi i32 [ 0, %.lr.ph.i266 ], [ %i.hn, %.lr.ph293.unr-lcssa ] ; 2 uses
  %lcmp.mod536 = trunc i32 %3 to i1
  call void @llvm.assume(i1 %lcmp.mod536)
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i267.epil.init
  store i32 %.012.i.epil.init, ptr %i.ho, align 4, !tbaa !55
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i267.epil.init
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !55
  %i.hr = ashr i32 %i.hq, 1
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.hs
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !39
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = lshr i32 %i.hw, 3
  %i.hy = and i32 %i.hx, 31
  %i.hz = add nuw nsw i32 %i.hy, %.012.i.epil.init
  br label %.lr.ph293

.lr.ph293:                                        ; preds = %.lr.ph293.unr-lcssa, %.epil.preheader
  %.lcssa534 = phi i32 [ %i.hn, %.lr.ph293.unr-lcssa ], [ %i.hz, %.epil.preheader ] ; 2 uses
  %i.ia = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.trip.count374 = zext nneg i32 %3 to i64
  %.val.pre453 = load ptr, ptr %i.ia, align 8, !tbaa !38
  br label %bb.w

.preheader287:                                    ; preds = %._crit_edge
  %.not511 = icmp eq i32 %.lcssa534, 0
  br i1 %.not511, label %._crit_edge297, label %.lr.ph296.preheader

.lr.ph296.preheader:                              ; preds = %.preheader287
  %i.ib = zext nneg i32 %.lcssa534 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr nonnull align 1 %i.a, i64 %i.ib, i1 false), !tbaa !113
  br label %._crit_edge297

bb.w:                                             ; preds = %.lr.ph293, %._crit_edge
  %.val = phi ptr [ %.val.pre453, %.lr.ph293 ], [ %.val454, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph293 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.7291 = phi i32 [ 0, %.lr.ph293 ], [ %.8.lcssa, %._crit_edge ] ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !113
  %i.ie = sext i8 %i.id to i64                    ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !55 ; 3 uses
  %i.ih = trunc nuw nsw i64 %indvars.iv to i32
  %i.ii = lshr i32 %i.gk, %i.ih
  %i.ij = and i32 %i.ii, 1
  %i.ik = xor i32 %i.ig, %i.ij                    ; 5 uses
  %i.il = ashr i32 %i.ig, 1
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.im
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !39
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ie
end_hunk_0
