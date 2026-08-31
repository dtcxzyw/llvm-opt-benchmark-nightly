Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg?download=true
inline.NumInlined: 1043
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 32
begin_hunk_0_@tcg_dump_ops:bb.a
  br label %.lr.ph432

.lr.ph432:                                        ; preds = %.lr.ph432.preheader, %.loopexit
  %.0429 = phi ptr [ %.0, %.loopexit ], [ %.0427, %.lr.ph432.preheader ] ; 20 uses
  %i.c = load i32, ptr %.0429, align 8            ; 7 uses
  %i.d = and i32 %i.c, 255
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @tcg_op_defs, i64 %i.e ; 7 uses
  %trunc383 = trunc i32 %i.c to i8                ; 3 uses
  switch i8 %trunc383, label %bb.f [
    i8 71, label %.loopexit387.loopexit441
    i8 2, label %bb.b
  ]

.loopexit387.loopexit441:                         ; preds = %.lr.ph432
  %i.g = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.6) #26
  %i.h = call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %i.i = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %i.k = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.7, i64 noundef %i.j) #26
  %i.l = call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  %i.m = add nuw i32 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %.0429, i64 40
  %i.o = load i64, ptr %i.n, align 8
  %i.p = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.7, i64 noundef %i.o) #26
  %i.q = call i32 @llvm.smax.i32(i32 %i.p, i32 0)
  %i.r = add i32 %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %.0429, i64 48
  %i.t = load i64, ptr %i.s, align 8
  %i.u = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.7, i64 noundef %i.t) #26
  %i.v = call i32 @llvm.smax.i32(i32 %i.u, i32 0)
  %i.w = add i32 %i.v, %i.r
  br label %.loopexit387

bb.b:                                             ; preds = %.lr.ph432
  %i.x = lshr i32 %i.c, 24                        ; 7 uses
  %i.y = lshr i32 %i.c, 16
  %i.z = and i32 %i.y, 255                        ; 3 uses
  %i.aa = add nuw nsw i32 %i.z, %i.x
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.0429, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = inttoptr i64 %i.ae to ptr               ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0429, i64 32 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ab
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef %i.ak) #26
  %i.am = call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.an = load ptr, ptr %i.af, align 8
  %i.ao = icmp eq ptr %i.an, %i.aj
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef %i.aq) #26
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.as = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef %i.aj) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %i.as, %bb.d ], [ %i.ar, %bb.c ]
  %i.at = call i32 @llvm.smax.i32(i32 %.sink, i32 0)
  %.1324 = add nuw i32 %i.at, %i.am
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = lshr i64 %i.av, 32
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 255
  %i.az = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %i.ay, i32 noundef %i.x) #26
  %i.ba = call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %i.bb = add i32 %.1324, %i.ba                   ; 2 uses
  %.not437 = icmp eq i32 %i.x, 0
  br i1 %.not437, label %.preheader390, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %.lr.ph

.preheader390:                                    ; preds = %.lr.ph, %bb.e
  %.2325.lcssa = phi i32 [ %i.bb, %bb.e ], [ %i.bi, %.lr.ph ] ; 2 uses
  %.not438 = icmp eq i32 %i.z, 0
  br i1 %.not438, label %.loopexit387, label %.lr.ph396.preheader

.lr.ph396.preheader:                              ; preds = %.preheader390
  %i.bc = zext nneg i32 %i.x to i64
  %wide.trip.count454 = zext nneg i32 %i.z to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.bc
  br label %.lr.ph396

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.2325392 = phi i32 [ %i.bb, %.lr.ph.preheader ], [ %i.bi, %.lr.ph ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = call fastcc ptr @tcg_get_arg_str(ptr noundef %0, ptr noundef %i.a, i64 noundef %i.be) ; 0 uses
  %i.bg = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #26
  %i.bh = call i32 @llvm.smax.i32(i32 %i.bg, i32 0)
  %i.bi = add i32 %i.bh, %.2325392                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader390, label %.lr.ph, !llvm.loop !27

.lr.ph396:                                        ; preds = %.lr.ph396.preheader, %.lr.ph396
  %indvars.iv451 = phi i64 [ 0, %.lr.ph396.preheader ], [ %indvars.iv.next452, %.lr.ph396 ] ; 2 uses
  %.3326394 = phi i32 [ %.2325.lcssa, %.lr.ph396.preheader ], [ %i.bn, %.lr.ph396 ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv451
  %i.bj = load i64, ptr %gep, align 8
  %i.bk = call fastcc ptr @tcg_get_arg_str(ptr noundef %0, ptr noundef %i.a, i64 noundef %i.bj) ; 0 uses
  %i.bl = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a) #26
  %i.bm = call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %i.bn = add i32 %i.bm, %.3326394                ; 2 uses
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1 ; 2 uses
  %exitcond455.not = icmp eq i64 %indvars.iv.next452, %wide.trip.count454
  br i1 %exitcond455.not, label %.loopexit387, label %.lr.ph396, !llvm.loop !28

bb.f:                                             ; preds = %.lr.ph432
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bp = load i16, ptr %i.bo, align 4
  %i.bq = zext i16 %i.bp to i32                   ; 2 uses
  %i.br = and i32 %i.bq, 16
  %.not353 = icmp eq i32 %i.br, 0
  br i1 %.not353, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = lshr i32 %i.c, 16
  %i.bu = and i32 %i.bt, 255                      ; 3 uses
  %i.bv = icmp samesign ugt i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bu, -2
  %spec.select.i = select i1 %i.bv, i32 %i.bw, i32 %i.bu
  %i.bx = shl nuw nsw i32 32, %spec.select.i
  %i.by = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef %i.bs, i32 noundef %i.bx) #26
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bz = and i32 %i.bq, 64
  %.not354 = icmp eq i32 %i.bz, 0
  %i.ca = load ptr, ptr %i.f, align 8             ; 2 uses
  br i1 %.not354, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cb = lshr i32 %i.c, 16
  %i.cc = and i32 %i.cb, 255                      ; 3 uses
  %i.cd = icmp samesign ugt i32 %i.cc, 2
  %i.ce = add nsw i32 %i.cc, -2
  %spec.select.i376 = select i1 %i.cd, i32 %i.ce, i32 %i.cc
  %i.cf = shl nuw nsw i32 32, %spec.select.i376
  %i.cg = lshr i32 %i.c, 24
  %i.ch = shl i32 8, %i.cg
  %i.ci = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef %i.ca, i32 noundef %i.cf, i32 noundef %i.ch) #26
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.cj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.8, ptr noundef %i.ca) #26
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.g
  %.sink503 = phi i32 [ %i.ci, %bb.i ], [ %i.cj, %bb.j ], [ %i.by, %bb.g ]
  %i.ck = call i32 @llvm.smax.i32(i32 %.sink503, i32 0) ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cm = load i8, ptr %i.cl, align 8             ; 5 uses
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.cp = load i8, ptr %i.co, align 1             ; 2 uses
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.cs = load i8, ptr %i.cr, align 2
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %.not439 = icmp eq i8 %i.cm, 0
  br i1 %.not439, label %.preheader388, label %.lr.ph403

.lr.ph403:                                        ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %.0429, i64 32 ; 2 uses
  %wide.trip.count465 = zext i8 %i.cm to i64
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = call fastcc ptr @tcg_get_arg_str(ptr noundef %0, ptr noundef %i.a, i64 noundef %i.cv) ; 0 uses
  %i.cx = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a) #26
  %i.cy = call i32 @llvm.smax.i32(i32 %i.cx, i32 0)
  %i.cz = add nuw i32 %i.cy, %i.ck                ; 2 uses
  %exitcond466.peel.not = icmp eq i8 %i.cm, 1
  br i1 %exitcond466.peel.not, label %.preheader388, label %.peel.next

.preheader388.loopexit.loopexit:                  ; preds = %.peel.next
  %i.da = zext i8 %i.cm to i32
  br label %.preheader388

.preheader388:                                    ; preds = %.lr.ph403, %.preheader388.loopexit.loopexit, %bb.k
  %.5328.lcssa = phi i32 [ %i.ck, %bb.k ], [ %i.cz, %.lr.ph403 ], [ %i.dh, %.preheader388.loopexit.loopexit ] ; 2 uses
  %.0316.lcssa = phi i32 [ 0, %bb.k ], [ 1, %.lr.ph403 ], [ %i.da, %.preheader388.loopexit.loopexit ] ; 2 uses
  %.not440 = icmp eq i8 %i.cp, 0
  br i1 %.not440, label %._crit_edge, label %.lr.ph409

.lr.ph409:                                        ; preds = %.preheader388
  %i.db = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  br label %bb.l

.peel.next:                                       ; preds = %.lr.ph403, %.peel.next
  %indvars.iv460 = phi i64 [ %indvars.iv.next461, %.peel.next ], [ 1, %.lr.ph403 ] ; 2 uses
  %.5328400 = phi i32 [ %i.dh, %.peel.next ], [ %i.cz, %.lr.ph403 ]
  %indvars.iv.next461 = add nuw nsw i64 %indvars.iv460, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv460
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = call fastcc ptr @tcg_get_arg_str(ptr noundef %0, ptr noundef %i.a, i64 noundef %i.dd) ; 0 uses
  %i.df = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a) #26
  %i.dg = call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %i.dh = add i32 %i.dg, %.5328400                ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next461, %wide.trip.count465
  br i1 %exitcond466.not, label %.preheader388.loopexit.loopexit, label %.peel.next, !llvm.loop !29

bb.l:                                             ; preds = %.lr.ph409, %bb.l
  %.4408 = phi i32 [ 0, %.lr.ph409 ], [ %i.dp, %bb.l ]
  %.1317407 = phi i32 [ %.0316.lcssa, %.lr.ph409 ], [ %3, %bb.l ] ; 3 uses
  %.6329406 = phi i32 [ %.5328.lcssa, %.lr.ph409 ], [ %i.do, %bb.l ]
  %.not366 = icmp eq i32 %.1317407, 0
  %i.di = select i1 %.not366, ptr @.str.16, ptr @.str.15
  %3 = add i32 %.1317407, 1                       ; 2 uses
  %4 = sext i32 %.1317407 to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.db, i64 %4
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = call fastcc ptr @tcg_get_arg_str(ptr noundef %0, ptr noundef %i.a, i64 noundef %i.dk) ; 0 uses
  %i.dm = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.di, ptr noundef nonnull %i.a) #26
  %i.dn = call i32 @llvm.smax.i32(i32 %i.dm, i32 0)
  %i.do = add i32 %i.dn, %.6329406                ; 2 uses
  %i.dp = add nuw nsw i32 %.4408, 1               ; 2 uses
  %exitcond468.not = icmp eq i32 %i.dp, %i.cq
  br i1 %exitcond468.not, label %._crit_edge, label %bb.l, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.l, %.preheader388
  %.6329.lcssa = phi i32 [ %.5328.lcssa, %.preheader388 ], [ %i.do, %bb.l ] ; 5 uses
  %.1317.lcssa = phi i32 [ %.0316.lcssa, %.preheader388 ], [ %3, %bb.l ] ; 8 uses
  switch i8 %trunc383, label %bb.aa [
    i8 4, label %bb.m
    i8 49, label %bb.m
    i8 39, label %bb.m
    i8 31, label %bb.m
    i8 121, label %bb.m
    i8 123, label %bb.m
    i8 77, label %bb.q
    i8 78, label %bb.q
    i8 79, label %bb.q
    i8 80, label %bb.q
    i8 10, label %bb.u
    i8 11, label %bb.u
    i8 12, label %bb.u
    i8 75, label %bb.y
  ]

bb.m:                                             ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.dq = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  %i.dr = sext i32 %.1317.lcssa to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8            ; 4 uses
  %i.du = icmp ugt i64 %i.dt, 15
  %i.dv = and i64 %i.dt, 14
  %.not360 = icmp eq i64 %i.dv, 4
  %or.cond = or i1 %i.du, %.not360
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr @cond_name, i64 %i.dt
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef %i.dx) #26
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.18, i64 noundef %i.dt) #26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink504 = phi i32 [ %i.dz, %bb.o ], [ %i.dy, %bb.n ]
  %i.ea = call i32 @llvm.smax.i32(i32 %.sink504, i32 0)
  %.2318 = add i32 %.1317.lcssa, 1
  %.7330 = add i32 %i.ea, %.6329.lcssa
  br label %bb.aa

bb.q:                                             ; preds = %._crit_edge, %._crit_edge, %._crit_edge, %._crit_edge
  %i.eb = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  %i.ec = add i32 %.1317.lcssa, 1
  %i.ed = sext i32 %.1317.lcssa to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.eb, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8            ; 2 uses
  %i.eg = trunc i64 %i.ef to i32                  ; 5 uses
  %i.eh = lshr i32 %i.eg, 5                       ; 2 uses
  %i.ei = and i32 %i.eg, 31                       ; 2 uses
  %i.ej = and i32 %i.eh, 31                       ; 2 uses
  %i.ek = lshr i32 %i.eg, 14                      ; 2 uses
  %i.el = icmp ult i32 %i.eg, 131072
  %i.em = lshr i32 102631199, %i.ej
  %i.en = trunc i32 %i.em to i1
  %or.cond3 = select i1 %i.el, i1 %i.en, i1 false
  %i.eo = or i32 %i.ek, -8
  %i.ep = icmp samesign ult i32 %i.eo, -2
  %or.cond5 = select i1 %or.cond3, i1 %i.ep, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eq = zext nneg i32 %i.ej to i64
  %i.er = zext nneg i32 %i.ek to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr @atom_name, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr @ldst_name, i64 %i.eq
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = lshr i64 %i.ef, 10
  %i.ex = and i64 %i.ew, 7
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr @alignment_name, i64 %i.ex
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = and i32 %i.eg, 8192
  %.not358 = icmp eq i32 %i.fa, 0
  %i.fb = select i1 %.not358, ptr @.str.16, ptr @.str.19
  %i.fc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef %i.et, ptr noundef %i.ez, ptr noundef nonnull %i.fb, ptr noundef %i.ev, i32 noundef %i.ei) #26
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.fd = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.21, i32 noundef %i.eh, i32 noundef %i.ei) #26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink505 = phi i32 [ %i.fd, %bb.s ], [ %i.fc, %bb.r ]
  %i.fe = call i32 @llvm.smax.i32(i32 %.sink505, i32 0)
  %.8331 = add i32 %i.fe, %.6329.lcssa
  br label %bb.aa

bb.u:                                             ; preds = %._crit_edge, %._crit_edge, %._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  %i.fg = sext i32 %.1317.lcssa to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8            ; 3 uses
  %i.fj = icmp ugt i64 %i.fi, 5
  br i1 %i.fj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fk = getelementptr inbounds nuw [6 x i8], ptr @bswap_flag_name, i64 %i.fi
  %i.fl = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.fk) #26
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fm = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.18, i64 noundef %i.fi) #26
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink506 = phi i32 [ %i.fm, %bb.w ], [ %i.fl, %bb.v ]
  %i.fn = call i32 @llvm.smax.i32(i32 %.sink506, i32 0)
  %.9332 = add i32 %i.fn, %.6329.lcssa
  br label %bb.aa

bb.y:                                             ; preds = %._crit_edge
  %i.fo = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  %i.fp = add i32 %.1317.lcssa, 1
  %i.fq = sext i32 %.1317.lcssa to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8            ; 3 uses
  %i.ft = icmp ult i64 %i.fs, 4
  br i1 %i.ft, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr @plugin_from_name, i64 %i.fs
  %i.fv = load ptr, ptr %i.fu, align 8
  %i.fw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.fv) #26
  br label %.thread379

.thread:                                          ; preds = %bb.y
  %i.fx = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.22, i64 noundef %i.fs) #26
  br label %.thread379

.thread379:                                       ; preds = %bb.z, %.thread
  %.sink507 = phi i32 [ %i.fw, %bb.z ], [ %i.fx, %.thread ]
  %i.fy = call i32 @llvm.smax.i32(i32 %.sink507, i32 0)
  %.10333 = add i32 %i.fy, %.6329.lcssa
  br label %bb.ac

bb.aa:                                            ; preds = %._crit_edge, %bb.x, %bb.t, %bb.p
  %.11 = phi i32 [ %.6329.lcssa, %._crit_edge ], [ %.7330, %bb.p ], [ %.8331, %bb.t ], [ %.9332, %bb.x ] ; 3 uses
  %.3319 = phi i32 [ %.1317.lcssa, %._crit_edge ], [ %.2318, %bb.p ], [ %i.ec, %bb.t ], [ 1, %bb.x ] ; 7 uses
  %.5 = phi i32 [ 0, %._crit_edge ], [ 1, %bb.p ], [ 1, %bb.t ], [ 1, %bb.x ] ; 3 uses
  switch i8 %trunc383, label %bb.ac [
    i8 1, label %bb.ab
    i8 3, label %bb.ab
    i8 4, label %bb.ab
    i8 5, label %switch.lookup
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa, %bb.aa
  %.not364 = icmp eq i32 %.3319, 0
  %i.fz = select i1 %.not364, ptr @.str.16, ptr @.str.15
  %i.ga = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  %i.gb = sext i32 %.3319 to i64
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = inttoptr i64 %i.gd to ptr
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 2
  %i.gg = load i16, ptr %i.gf, align 2
  %i.gh = zext i16 %i.gg to i32
  %i.gi = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.fz, i32 noundef %i.gh) #26
  %i.gj = call i32 @llvm.smax.i32(i32 %i.gi, i32 0)
  %i.gk = add i32 %i.gj, %.11
  %i.gl = add nuw nsw i32 %.5, 1
  %i.gm = add i32 %.3319, 1
  br label %bb.ac

switch.lookup:                                    ; preds = %bb.aa
  %i.gn = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  %i.go = sext i32 %.3319 to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8            ; 2 uses
  %i.gr = lshr i64 %i.gq, 4
  %i.gs = and i64 %i.gr, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.tcg_dump_ops, i64 %i.gs
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.gt = and i64 %i.gq, 15
  %switch.gep515 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.tcg_dump_ops.24, i64 %i.gt
  %switch.load516 = load ptr, ptr %switch.gep515, align 8
  %.not363 = icmp eq i32 %.3319, 0
  %i.gu = select i1 %.not363, ptr @.str.16, ptr @.str.15
  %i.gv = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.gu, ptr noundef nonnull %switch.load, ptr noundef nonnull %switch.load516) #26
  %i.gw = call i32 @llvm.smax.i32(i32 %i.gv, i32 0)
  %i.gx = add i32 %i.gw, %.11
  %i.gy = add nuw nsw i32 %.5, 1
  %i.gz = add i32 %.3319, 1
  br label %bb.ac

bb.ac:                                            ; preds = %.thread379, %bb.aa, %switch.lookup, %bb.ab
  %.12 = phi i32 [ %.11, %bb.aa ], [ %i.gk, %bb.ab ], [ %i.gx, %switch.lookup ], [ %.10333, %.thread379 ] ; 2 uses
  %.4320 = phi i32 [ %.3319, %bb.aa ], [ %i.gm, %bb.ab ], [ %i.gz, %switch.lookup ], [ %i.fp, %.thread379 ]
  %.6 = phi i32 [ %.5, %bb.aa ], [ %i.gl, %bb.ab ], [ %i.gy, %switch.lookup ], [ 1, %.thread379 ] ; 2 uses
  %i.ha = icmp samesign ult i32 %.6, %i.ct
  br i1 %i.ha, label %.lr.ph416, label %.loopexit387

.lr.ph416:                                        ; preds = %bb.ac
  %i.hb = getelementptr inbounds nuw i8, ptr %.0429, i64 32
  br label %bb.ad
end_hunk_0
