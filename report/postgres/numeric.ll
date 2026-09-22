Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/numeric?download=true
inline.NumInlined: 28
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@PGTYPESnumeric_div:bb.a
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.i, label %.loopexit52.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %.neg49.i = add i32 %i.g, 16
  %i.j = sub i32 %.neg49.i, %i.i
  br label %.loopexit52.i

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit52.i, label %bb.b, !llvm.loop !31

.loopexit52.i:                                    ; preds = %bb.d, %bb.c, %bb.a
  %.042.neg.i = phi i32 [ %i.j, %bb.c ], [ 16, %bb.a ], [ 16, %bb.d ]
  %.137.i = phi i8 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 0, %bb.d ]
  %i.k = load i32, ptr %1, align 8                ; 7 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph58.i, label %select_div_scale.exit

.lr.ph58.i:                                       ; preds = %.loopexit52.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %wide.trip.count68.i = zext nneg i32 %i.k to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph58.i
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph58.i ], [ %indvars.iv.next66.i, %bb.g ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv65.i
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %.not47.i = icmp eq i8 %i.p, 0
  br i1 %.not47.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = trunc nuw nsw i64 %indvars.iv65.i to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %.neg.neg.i = sub i32 %i.s, %i.q
  br label %select_div_scale.exit

bb.g:                                             ; preds = %bb.e
  %indvars.iv.next66.i = add nuw nsw i64 %indvars.iv65.i, 1 ; 2 uses
  %exitcond69.not.i = icmp eq i64 %indvars.iv.next66.i, %wide.trip.count68.i
  br i1 %exitcond69.not.i, label %select_div_scale.exit, label %bb.e, !llvm.loop !32

select_div_scale.exit:                            ; preds = %bb.g, %.loopexit52.i, %bb.f
  %.041.neg.neg.i = phi i32 [ %.neg.neg.i, %bb.f ], [ 0, %.loopexit52.i ], [ 0, %bb.g ]
  %.1.i = phi i8 [ %i.p, %bb.f ], [ 0, %.loopexit52.i ], [ 0, %bb.g ]
  %.not48.i = icmp ule i8 %.137.i, %.1.i
  %.neg51.i = zext i1 %.not48.i to i32
  %spec.select.neg.i = add i32 %.041.neg.neg.i, %.042.neg.i
  %i.t = add i32 %spec.select.neg.i, %.neg51.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = tail call i32 @llvm.smax.i32(i32 %i.t, i32 %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %i.y)
  %i.aa = tail call i32 @llvm.smax.i32(i32 %i.z, i32 0)
  %i.ab = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 1000) ; 2 uses
  %i.ac = add nuw nsw i32 %i.ab, 4                ; 3 uses
  %i.ad = add i32 %i.k, 1                         ; 3 uses
  %i.ae = icmp eq i32 %i.k, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %select_div_scale.exit
  %i.af = tail call ptr @__errno_location() #16
  store i32 303, ptr %i.af, align 4
  br label %.loopexit

bb.i:                                             ; preds = %select_div_scale.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.ah, %i.aj
  %. = select i1 %i.ak, i32 0, i32 16384
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sub i32 %i.am, %i.ao
  %i.aq = add i32 %i.ap, 1                        ; 2 uses
  %i.ar = add i32 %i.aq, %i.ac                    ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 1) ; 4 uses
  %i.as = icmp eq i32 %i.a, 0
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  tail call void @free(ptr noundef %i.au) #15
  store i32 0, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.aw, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ac, ptr %i.ax, align 8
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %scevgep = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %scevgep, i8 0, i64 360, i1 false)
  store i32 %i.ad, ptr %scevgep, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %i.k, ptr %i.ay, align 16
  %i.az = sext i32 %i.ad to i64
  %i.ba = tail call ptr @pgtypes_alloc(i64 noundef %i.az) #15 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.ba, ptr %i.bb, align 16
  %i.bc = icmp eq ptr %i.ba, null
  br i1 %i.bc, label %.loopexit178, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr %i.ba, ptr %i.bd, align 8
  store i8 0, ptr %i.ba, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = sext i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  %i.bi = load i32, ptr %0, align 8               ; 4 uses
  store i32 %i.bi, ptr %3, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bi, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.bl, align 8
  %i.bm = sext i32 %i.bi to i64
  %i.bn = tail call ptr @pgtypes_alloc(i64 noundef %i.bm) #15 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.bn, ptr %i.bo, align 8
  %i.bp = icmp eq ptr %i.bn, null
  br i1 %i.bp, label %.loopexit178, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store ptr %i.bn, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = load i32, ptr %0, align 8
  %i.bu = sext i32 %i.bt to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr align 1 %i.bs, i64 %i.bu, i1 false)
  %i.bv = add nuw i32 %spec.store.select, 2
  %i.bw = sext i32 %i.bv to i64
  %i.bx = tail call ptr @pgtypes_alloc(i64 noundef %i.bw) #15 ; 7 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.loopexit178, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  tail call void @free(ptr noundef %i.ca) #15
  store ptr %i.bx, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store ptr %i.bx, ptr %i.cb, align 8
  store i32 %spec.store.select, ptr %2, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i32 %i.aq, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ac, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store i32 %., ptr %i.ce, align 8
  store i8 0, ptr %i.bx, align 1
  %i.cf = load i8, ptr %i.be, align 1
  %i.cg = zext i8 %i.cf to i64
  %i.ch = mul nuw nsw i64 %i.cg, 10               ; 2 uses
  %i.ci = icmp sgt i32 %i.ad, 2
  br i1 %i.ci, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i64
  %i.cm = add nuw nsw i64 %i.ch, %i.cl
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0144 = phi i64 [ %i.cm, %bb.o ], [ %i.ch, %bb.n ]
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.ab
  %i.cn = phi i32 [ %i.bi, %bb.p ], [ %11, %bb.ab ] ; 3 uses
  %indvars.iv227 = phi i32 [ 1, %bb.p ], [ %indvars.iv.next228, %bb.ab ] ; 2 uses
  %.0141202 = phi i32 [ 0, %bb.p ], [ %.2263267, %bb.ab ]
  %.0142201 = phi i32 [ 0, %bb.p ], [ %.1143, %bb.ab ] ; 5 uses
  %.0145200 = phi i64 [ 0, %bb.p ], [ %.3, %bb.ab ]
  %.0149199 = phi i32 [ 0, %bb.p ], [ %9, %bb.ab ] ; 4 uses
  %.0149199.a = phi i32 [ %i.k, %bb.p ], [ %12, %bb.ab ] ; 2 uses
  %.0153197 = phi i32 [ 1, %bb.p ], [ %8, %bb.ab ] ; 3 uses
  %i.co = mul i64 %.0145200, 10                   ; 2 uses
  %i.cp = icmp sgt i32 %.0142201, -1
  %i.cq = icmp slt i32 %.0142201, %i.cn
  %or.cond = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %or.cond, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.bq, align 8
  %i.cs = zext nneg i32 %.0142201 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add i64 %i.co, %i.cv
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1146 = phi i64 [ %i.cw, %bb.r ], [ %i.co, %bb.q ] ; 3 uses
  %i.cx = mul i64 %.1146, 10
  %i.cy = sdiv i64 %i.cx, %.0144                  ; 2 uses
  %i.cz = add i64 %i.cy, 1
  %spec.store.select1 = tail call i64 @llvm.smin.i64(i64 %i.cz, i64 9) ; 2 uses
  %i.da = icmp ult i64 %i.cy, 9223372036854775807
  br i1 %i.da, label %.lr.ph193, label %.thread._crit_edge

.lr.ph193:                                        ; preds = %bb.s, %bb.w
  %.0148192 = phi i64 [ %i.ea, %bb.w ], [ %spec.store.select1, %bb.s ] ; 5 uses
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %.0148192 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.t, label %.thread

bb.t:                                             ; preds = %.lr.ph193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.db, ptr noundef nonnull align 8 dereferenceable(40) %scevgep, i64 40, i1 false)
  %i.df = load i32, ptr %i.db, align 8
  %i.dg = sext i32 %i.df to i64
  %i.dh = tail call ptr @pgtypes_alloc(i64 noundef %i.dg) #15 ; 4 uses
  store ptr %i.dh, ptr %i.dc, align 8
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %.loopexit178, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store ptr %i.dh, ptr %i.dj, align 8
  %i.dk = load i32, ptr %scevgep, align 8
  %.0137189 = add i32 %i.dk, -1                   ; 2 uses
  %i.dl = icmp sgt i32 %.0137189, -1
  br i1 %i.dl, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.u
  %i.dm = load ptr, ptr %i.bd, align 8
  %i.dn = zext nneg i32 %.0137189 to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ %i.dn, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 4 uses
  %.0136190 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.v ]
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i64
  %i.dr = mul i64 %.0148192, %i.dq
  %i.ds = add i64 %i.dr, %.0136190                ; 2 uses
  %i.dt = srem i64 %i.ds, 10
  %i.du = trunc nsw i64 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv
  store i8 %i.du, ptr %i.dv, align 1
  %i.dw = sdiv i64 %i.ds, 10
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not285 = icmp eq i64 %indvars.iv, 0
  br i1 %.not285, label %.thread, label %bb.v, !llvm.loop !33

.thread:                                          ; preds = %bb.v, %bb.u, %.lr.ph193
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %.0153197, ptr %i.dx, align 4
  %5 = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %.0149199.a, ptr %5, align 8
  %i.dy = call fastcc i32 @cmp_abs(ptr noundef nonnull %3, ptr noundef nonnull %i.db) ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, -1
  br i1 %i.dz, label %.thread._crit_edge, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.ea = add nsw i64 %.0148192, -1
  %i.eb = icmp sgt i64 %.0148192, 1
  br i1 %i.eb, label %.lr.ph193, label %.thread._crit_edge.thread, !llvm.loop !34

.thread._crit_edge.thread:                        ; preds = %bb.w
  %i.ec = add i32 %.0149199, 1                    ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.bx, i64 %i.ed ; 2 uses
  store i8 0, ptr %i.ee, align 1
  %6 = add i32 %.0153197, -1
  br label %bb.ab

.thread._crit_edge:                               ; preds = %.thread, %bb.s
  %.0148.lcssa = phi i64 [ %spec.store.select1, %bb.s ], [ %.0148192, %.thread ] ; 3 uses
  %.2 = phi i32 [ %.0141202, %bb.s ], [ %i.dy, %.thread ] ; 4 uses
  %i.ef = trunc i64 %.0148.lcssa to i8
  %i.eg = add i32 %.0149199, 1                    ; 5 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.bx, i64 %i.eh ; 5 uses
  store i8 %i.ef, ptr %i.ei, align 1
  %i.ej = icmp eq i32 %.2, 0
  br i1 %i.ej, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %.thread._crit_edge
  %7 = add i32 %.0153197, -1                      ; 4 uses
  %i.ek = icmp eq i64 %.0148.lcssa, 0
  br i1 %i.ek, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.el = getelementptr inbounds [40 x i8], ptr %4, i64 %.0148.lcssa
  %i.em = call fastcc i32 @sub_abs(ptr noundef nonnull %3, ptr noundef nonnull %i.el, ptr noundef nonnull %3)
  %.not167 = icmp eq i32 %i.em, 0
  br i1 %.not167, label %bb.z, label %.loopexit178

bb.z:                                             ; preds = %bb.y
  %i.en = load i32, ptr %i.bj, align 4
  %i.eo = sub i32 %i.en, %7                       ; 5 uses
  %i.ep = icmp sgt i32 %i.eo, -1
  %i.eq = load i32, ptr %3, align 8               ; 3 uses
  %i.er = icmp slt i32 %i.eo, %i.eq
  %or.cond172 = select i1 %i.ep, i1 %i.er, i1 false
  br i1 %or.cond172, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.es = load ptr, ptr %i.bq, align 8
  %i.et = zext nneg i32 %i.eo to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.thread._crit_edge.thread, %bb.z, %bb.aa, %bb.x
  %8 = phi i32 [ %7, %bb.x ], [ %7, %bb.aa ], [ %7, %bb.z ], [ %6, %.thread._crit_edge.thread ]
  %.2263267 = phi i32 [ %.2, %bb.x ], [ %.2, %bb.aa ], [ %.2, %bb.z ], [ -1, %.thread._crit_edge.thread ]
  %9 = phi i32 [ %i.eg, %bb.x ], [ %i.eg, %bb.aa ], [ %i.eg, %bb.z ], [ %i.ec, %.thread._crit_edge.thread ] ; 3 uses
  %10 = phi ptr [ %i.ei, %bb.x ], [ %i.ei, %bb.aa ], [ %i.ei, %bb.z ], [ %i.ee, %.thread._crit_edge.thread ]
  %11 = phi i32 [ %i.cn, %bb.x ], [ %i.eq, %bb.aa ], [ %i.eq, %bb.z ], [ %i.cn, %.thread._crit_edge.thread ]
  %.3 = phi i64 [ %.1146, %bb.x ], [ %i.ew, %bb.aa ], [ 0, %bb.z ], [ %.1146, %.thread._crit_edge.thread ]
  %.1143.in = phi i32 [ %.0142201, %bb.x ], [ %i.eo, %bb.aa ], [ %i.eo, %bb.z ], [ %.0142201, %.thread._crit_edge.thread ]
  %12 = add i32 %.0149199.a, 1
  %.1143 = add i32 %.1143.in, 1
  %.not = icmp sgt i32 %9, %spec.store.select
  %indvars.iv.next228 = add i32 %indvars.iv227, 1
  br i1 %.not, label %bb.ac, label %bb.q, !llvm.loop !35

bb.ac:                                            ; preds = %.thread._crit_edge, %bb.ab
  %i.ex = phi ptr [ %i.ei, %.thread._crit_edge ], [ %10, %bb.ab ] ; 2 uses
  %i.ey = phi i32 [ %i.eg, %.thread._crit_edge ], [ %9, %bb.ab ]
  %i.ez = add i32 %.0149199, 2                    ; 2 uses
  store i32 %i.ez, ptr %2, align 8
  %i.fa = icmp eq i32 %.0149199, %spec.store.select
  br i1 %i.fa, label %bb.ad, label %.loopexit177

bb.ad:                                            ; preds = %bb.ac
  %i.fb = load i8, ptr %i.ex, align 1
  %i.fc = icmp ugt i8 %i.fb, 4                    ; 2 uses
  store i32 %i.ey, ptr %2, align 8
  store i8 0, ptr %i.ex, align 1
  %i.fd = icmp ne i32 %i.ar, 2147483647
  %i.fe = and i1 %i.fd, %i.fc
  br i1 %i.fe, label %.lr.ph206.preheader, label %.loopexit177thread-pre-split

.lr.ph206.preheader:                              ; preds = %bb.ad
  %i.ff = zext i1 %i.fc to i32
  %i.fg = zext i32 %indvars.iv227 to i64
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %.lr.ph206
  %indvars.iv231 = phi i64 [ %i.fg, %.lr.ph206.preheader ], [ %indvars.iv.next232, %.lr.ph206 ] ; 2 uses
  %.0135204 = phi i32 [ %i.ff, %.lr.ph206.preheader ], [ %i.fn, %.lr.ph206 ]
  %indvars.iv.next232 = add nsw i64 %indvars.iv231, -1 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bx, i64 %indvars.iv.next232 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = add nuw nsw i32 %.0135204, %i.fj        ; 3 uses
  %i.fl = urem i32 %i.fk, 10
  %i.fm = trunc nuw nsw i32 %i.fl to i8
  store i8 %i.fm, ptr %i.fh, align 1
  %i.fn = udiv i32 %i.fk, 10
  %i.fo = icmp samesign ugt i32 %i.fk, 9
  %i.fp = icmp samesign ugt i64 %indvars.iv231, 1
  %i.fq = and i1 %i.fp, %i.fo
  br i1 %i.fq, label %.lr.ph206, label %.loopexit177thread-pre-split, !llvm.loop !36

.loopexit177thread-pre-split:                     ; preds = %.lr.ph206, %bb.ad
  %.pr.pr = load i32, ptr %2, align 8
  br label %.loopexit177

.loopexit177:                                     ; preds = %.loopexit177thread-pre-split, %bb.ac
  %.pr = phi i32 [ %.pr.pr, %.loopexit177thread-pre-split ], [ %i.ez, %bb.ac ] ; 3 uses
  %i.fr = icmp sgt i32 %.pr, 0
  br i1 %i.fr, label %.lr.ph208, label %.critedge3

.lr.ph208:                                        ; preds = %.loopexit177
  %.promoted = load ptr, ptr %i.cb, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph208, %bb.af
  %i.fs = phi ptr [ %.promoted, %.lr.ph208 ], [ %i.fw, %bb.af ] ; 2 uses
  %i.ft = phi i32 [ %.pr, %.lr.ph208 ], [ %i.fz, %bb.af ] ; 3 uses
  %i.fu = load i8, ptr %i.fs, align 1
  %i.fv = icmp eq i8 %i.fu, 0
  br i1 %i.fv, label %bb.af, label %.lr.ph210

bb.af:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 1 ; 2 uses
  store ptr %i.fw, ptr %i.cb, align 8
  %i.fx = load i32, ptr %i.cc, align 4
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr %i.cc, align 4
  %i.fz = add nsw i32 %i.ft, -1                   ; 3 uses
  store i32 %i.fz, ptr %2, align 8
  %i.ga = icmp sgt i32 %i.ft, 1
  br i1 %i.ga, label %bb.ae, label %.critedge3, !llvm.loop !37

.lr.ph210:                                        ; preds = %bb.ae
  %i.gb = load ptr, ptr %i.cb, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph210, %bb.ah
  %i.gc = phi i32 [ %i.ft, %.lr.ph210 ], [ %i.gi, %bb.ah ] ; 3 uses
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr i8, ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr i8, ptr %i.ge, i64 -1
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = icmp eq i8 %i.gg, 0
  br i1 %i.gh, label %bb.ah, label %.critedge3.thread

bb.ah:                                            ; preds = %bb.ag
  %i.gi = add nsw i32 %i.gc, -1                   ; 2 uses
  store i32 %i.gi, ptr %2, align 8
  %i.gj = icmp sgt i32 %i.gc, 1
  br i1 %i.gj, label %bb.ag, label %.critedge3.thread265, !llvm.loop !38

.critedge3:                                       ; preds = %bb.af, %.loopexit177
  %.pr176.ph = phi i32 [ %.pr, %.loopexit177 ], [ %i.fz, %bb.af ]
  %i.gk = icmp eq i32 %.pr176.ph, 0
  br i1 %i.gk, label %.critedge3.thread265, label %.critedge3.thread

.critedge3.thread265:                             ; preds = %bb.ah, %.critedge3
  store i32 0, ptr %i.ce, align 8
  br label %.critedge3.thread

.critedge3.thread:                                ; preds = %bb.ag, %.critedge3.thread265, %.critedge3
  %i.gl = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.ab, ptr %i.gl, align 4
  br label %.loopexit178

.loopexit178:                                     ; preds = %bb.y, %bb.t, %bb.m, %bb.l, %bb.k, %.critedge3.thread
  %.0140 = phi i32 [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ], [ 0, %.critedge3.thread ], [ -1, %bb.t ], [ -1, %bb.y ] ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8            ; 2 uses
  %.not168 = icmp eq ptr %i.gn, null
  br i1 %.not168, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit178
  tail call void @free(ptr noundef nonnull %i.gn) #15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit178
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.gp = load ptr, ptr %i.go, align 16           ; 2 uses
  %.not169 = icmp eq ptr %i.gp, null
  br i1 %.not169, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @free(ptr noundef nonnull %i.gp) #15
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %.not169.1 = icmp eq ptr %i.gr, null
  br i1 %.not169.1, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @free(ptr noundef nonnull %i.gr) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.gt = load ptr, ptr %i.gs, align 16           ; 2 uses
  %.not169.2 = icmp eq ptr %i.gt, null
  br i1 %.not169.2, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  tail call void @free(ptr noundef nonnull %i.gt) #15
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 184
  %i.gv = load ptr, ptr %i.gu, align 8            ; 2 uses
  %.not169.3 = icmp eq ptr %i.gv, null
  br i1 %.not169.3, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @free(ptr noundef nonnull %i.gv) #15
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.gw = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.gx = load ptr, ptr %i.gw, align 16           ; 2 uses
  %.not169.4 = icmp eq ptr %i.gx, null
  br i1 %.not169.4, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @free(ptr noundef nonnull %i.gx) #15
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gy = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %.not169.5 = icmp eq ptr %i.gz, null
  br i1 %.not169.5, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @free(ptr noundef nonnull %i.gz) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 304
  %i.hb = load ptr, ptr %i.ha, align 16           ; 2 uses
  %.not169.6 = icmp eq ptr %i.hb, null
  br i1 %.not169.6, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @free(ptr noundef nonnull %i.hb) #15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 344
  %i.hd = load ptr, ptr %i.hc, align 8            ; 2 uses
  %.not169.7 = icmp eq ptr %i.hd, null
  br i1 %.not169.7, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  tail call void @free(ptr noundef nonnull %i.hd) #15
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 384
  %i.hf = load ptr, ptr %i.he, align 16           ; 2 uses
  %.not169.8 = icmp eq ptr %i.hf, null
  br i1 %.not169.8, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @free(ptr noundef nonnull %i.hf) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.az, %bb.ba, %bb.j, %bb.h
  %.0155 = phi i32 [ -1, %bb.h ], [ 0, %bb.j ], [ %.0140, %bb.ba ], [ %.0140, %bb.az ]
end_hunk_0
