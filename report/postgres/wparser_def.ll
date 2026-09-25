Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/wparser_def?download=true
inline.NumInlined: 59
inline.NumDeleted: 27
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@prsd_headline:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.u = load i32, ptr %i.s, align 4
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph364, label %.critedge

.lr.ph364:                                        ; preds = %.lr.ph, %bb.w
  %.089137363 = phi i32 [ %.190, %bb.w ], [ 15, %.lr.ph ] ; 12 uses
  %.087138362 = phi i32 [ %.188, %bb.w ], [ 35, %.lr.ph ] ; 12 uses
  %.085139361 = phi i32 [ %.186, %bb.w ], [ 3, %.lr.ph ] ; 12 uses
  %.083140360 = phi i32 [ %.184, %bb.w ], [ 0, %.lr.ph ] ; 12 uses
  %.082141359 = phi i1 [ %.1, %bb.w ], [ false, %.lr.ph ] ; 7 uses
  %indvars.iv358 = phi i64 [ %indvars.iv.next, %bb.w ], [ 0, %.lr.ph ] ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv358
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = tail call ptr @defGetString(ptr noundef %i.y) #12 ; 13 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 9 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 @pg_strcasecmp(ptr noundef %i.ab, ptr noundef nonnull @.str) #12
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %bb.c

.critedge:                                        ; preds = %bb.w, %.lr.ph
  %.082141.lcssa = phi i1 [ false, %.lr.ph ], [ %.1, %bb.w ]
  %.083140.lcssa = phi i32 [ 0, %.lr.ph ], [ %.184, %bb.w ] ; 3 uses
  %.085139.lcssa = phi i32 [ 3, %.lr.ph ], [ %.186, %bb.w ] ; 3 uses
  %.087138.lcssa = phi i32 [ 35, %.lr.ph ], [ %.188, %bb.w ] ; 3 uses
  %.089137.lcssa = phi i32 [ 15, %.lr.ph ], [ %.190, %bb.w ] ; 4 uses
  br i1 %.082141.lcssa, label %.thread276, label %bb.x

bb.b:                                             ; preds = %.lr.ph364
  %i.ae = tail call i32 @pg_strtoint32(ptr noundef %i.z) #12
  br label %bb.w

bb.c:                                             ; preds = %.lr.ph364
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = tail call i32 @pg_strcasecmp(ptr noundef %i.af, ptr noundef nonnull @.str.1) #12
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call i32 @pg_strtoint32(ptr noundef %i.z) #12
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.aj = load ptr, ptr %i.aa, align 8
  %i.ak = tail call i32 @pg_strcasecmp(ptr noundef %i.aj, ptr noundef nonnull @.str.2) #12
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = tail call i32 @pg_strtoint32(ptr noundef %i.z) #12
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.aa, align 8
  %i.ao = tail call i32 @pg_strcasecmp(ptr noundef %i.an, ptr noundef nonnull @.str.3) #12
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = tail call i32 @pg_strtoint32(ptr noundef %i.z) #12
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aa, align 8
  %i.as = tail call i32 @pg_strcasecmp(ptr noundef %i.ar, ptr noundef nonnull @.str.4) #12
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = tail call ptr @pstrdup(ptr noundef %i.z) #12
  store ptr %i.au, ptr %i.o, align 8
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %i.aa, align 8
  %i.aw = tail call i32 @pg_strcasecmp(ptr noundef %i.av, ptr noundef nonnull @.str.5) #12
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = tail call ptr @pstrdup(ptr noundef %i.z) #12
  store ptr %i.ay, ptr %i.p, align 8
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.aa, align 8
  %i.ba = tail call i32 @pg_strcasecmp(ptr noundef %i.az, ptr noundef nonnull @.str.6) #12
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = tail call ptr @pstrdup(ptr noundef %i.z) #12
  store ptr %i.bc, ptr %i.q, align 8
  br label %bb.w

bb.o:                                             ; preds = %bb.m
  %i.bd = load ptr, ptr %i.aa, align 8
  %i.be = tail call i32 @pg_strcasecmp(ptr noundef %i.bd, ptr noundef nonnull @.str.7) #12
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bg = tail call i32 @pg_strcasecmp(ptr noundef %i.z, ptr noundef nonnull @.str.8) #12
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = tail call i32 @pg_strcasecmp(ptr noundef %i.z, ptr noundef nonnull @.str.9) #12
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = tail call i32 @pg_strcasecmp(ptr noundef %i.z, ptr noundef nonnull @.str.10) #12
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = tail call i32 @pg_strcasecmp(ptr noundef %i.z, ptr noundef nonnull @.str.11) #12
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = tail call i32 @pg_strcasecmp(ptr noundef %i.z, ptr noundef nonnull @.str.12) #12
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = tail call i32 @pg_strcasecmp(ptr noundef %i.z, ptr noundef nonnull @.str.13) #12
  %i.br = icmp eq i32 %i.bq, 0
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.bs = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.bt = tail call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.bu = load ptr, ptr %i.aa, align 8
  %i.bv = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.14, ptr noundef %i.bu) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.15, i32 noundef 2624, ptr noundef nonnull @__func__.prsd_headline) #12
  unreachable

bb.w:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.d, %bb.h, %bb.l, %bb.n, %bb.j, %bb.f, %bb.b
  %.190 = phi i32 [ %.089137363, %bb.b ], [ %i.ai, %bb.d ], [ %.089137363, %bb.f ], [ %.089137363, %bb.h ], [ %.089137363, %bb.j ], [ %.089137363, %bb.l ], [ %.089137363, %bb.n ], [ %.089137363, %bb.u ], [ %.089137363, %bb.t ], [ %.089137363, %bb.s ], [ %.089137363, %bb.r ], [ %.089137363, %bb.q ], [ %.089137363, %bb.p ] ; 2 uses
  %.188 = phi i32 [ %i.ae, %bb.b ], [ %.087138362, %bb.d ], [ %.087138362, %bb.f ], [ %.087138362, %bb.h ], [ %.087138362, %bb.j ], [ %.087138362, %bb.l ], [ %.087138362, %bb.n ], [ %.087138362, %bb.u ], [ %.087138362, %bb.t ], [ %.087138362, %bb.s ], [ %.087138362, %bb.r ], [ %.087138362, %bb.q ], [ %.087138362, %bb.p ] ; 2 uses
  %.186 = phi i32 [ %.085139361, %bb.b ], [ %.085139361, %bb.d ], [ %i.am, %bb.f ], [ %.085139361, %bb.h ], [ %.085139361, %bb.j ], [ %.085139361, %bb.l ], [ %.085139361, %bb.n ], [ %.085139361, %bb.u ], [ %.085139361, %bb.t ], [ %.085139361, %bb.s ], [ %.085139361, %bb.r ], [ %.085139361, %bb.q ], [ %.085139361, %bb.p ] ; 2 uses
  %.184 = phi i32 [ %.083140360, %bb.b ], [ %.083140360, %bb.d ], [ %.083140360, %bb.f ], [ %i.aq, %bb.h ], [ %.083140360, %bb.j ], [ %.083140360, %bb.l ], [ %.083140360, %bb.n ], [ %.083140360, %bb.u ], [ %.083140360, %bb.t ], [ %.083140360, %bb.s ], [ %.083140360, %bb.r ], [ %.083140360, %bb.q ], [ %.083140360, %bb.p ] ; 2 uses
  %.1 = phi i1 [ %.082141359, %bb.b ], [ %.082141359, %bb.d ], [ %.082141359, %bb.f ], [ %.082141359, %bb.h ], [ %.082141359, %bb.j ], [ %.082141359, %bb.l ], [ %.082141359, %bb.n ], [ %i.br, %bb.u ], [ true, %bb.t ], [ true, %bb.s ], [ true, %bb.r ], [ true, %bb.q ], [ true, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %i.bw = load i32, ptr %i.s, align 4
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp slt i64 %indvars.iv.next, %i.bx
  br i1 %i.by, label %.lr.ph364, label %.critedge

bb.x:                                             ; preds = %.critedge
  %.not97 = icmp slt i32 %.089137.lcssa, %.087138.lcssa
  br i1 %.not97, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.ca = tail call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.cb = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.15, i32 noundef 2633, ptr noundef nonnull @__func__.prsd_headline) #12
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cc = icmp slt i32 %.089137.lcssa, 1
  br i1 %i.cc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.ce = tail call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.cf = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.15, i32 noundef 2637, ptr noundef nonnull @__func__.prsd_headline) #12
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.cg = icmp slt i32 %.085139.lcssa, 0
  br i1 %i.cg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ch = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.ci = tail call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.cj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.15, i32 noundef 2641, ptr noundef nonnull @__func__.prsd_headline) #12
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ck = icmp slt i32 %.083140.lcssa, 0
  br i1 %i.ck, label %bb.ae, label %.thread276

bb.ae:                                            ; preds = %bb.ad
  %i.cl = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.cm = tail call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.cn = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.15, i32 noundef 2645, ptr noundef nonnull @__func__.prsd_headline) #12
  unreachable

.thread276:                                       ; preds = %bb.a, %bb.ad, %.critedge
  %.082.lcssa242 = phi i1 [ false, %bb.ad ], [ true, %.critedge ], [ false, %bb.a ] ; 4 uses
  %.083.lcssa240 = phi i32 [ %.083140.lcssa, %bb.ad ], [ %.083140.lcssa, %.critedge ], [ 0, %bb.a ] ; 3 uses
  %.085.lcssa238 = phi i32 [ %.085139.lcssa, %bb.ad ], [ %.085139.lcssa, %.critedge ], [ 3, %bb.a ] ; 7 uses
  %.087.lcssa236 = phi i32 [ %.087138.lcssa, %bb.ad ], [ %.087138.lcssa, %.critedge ], [ 35, %bb.a ] ; 10 uses
  %.089.lcssa234 = phi i32 [ %.089137.lcssa, %bb.ad ], [ %.089137.lcssa, %.critedge ], [ 15, %bb.a ] ; 11 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread276
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.cr = load ptr, ptr %i.i, align 8
  store ptr %i.cr, ptr %1, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.ct, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cw = call ptr @TS_execute_locations(ptr noundef nonnull %i.cv, ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull @checkcondition_HL) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %bb.ag

bb.ag:                                            ; preds = %.thread276, %bb.af
  %.091 = phi ptr [ %i.cw, %bb.af ], [ null, %.thread276 ] ; 4 uses
  %i.cx = icmp eq i32 %.083.lcssa240, 0
  br i1 %i.cx, label %bb.ah, label %bb.cb

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4
  br i1 %.082.lcssa242, label %bb.ca, label %.preheader430.i

.preheader430.i:                                  ; preds = %bb.ah
  %i.cy = call fastcc zeroext i1 @hlCover(ptr noundef readonly %i.i, ptr noundef nonnull %i.n, ptr noundef readonly %.091, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  br i1 %i.cy, label %.lr.ph491.i, label %.preheader.i

.lr.ph491.i:                                      ; preds = %.preheader430.i
  %i.cz = icmp sgt i32 %.087.lcssa236, 0          ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.bw, %.lr.ph491.i
  %.0358490.i = phi i8 [ 0, %.lr.ph491.i ], [ %.1359.i, %bb.bw ] ; 5 uses
  %.0360489.i = phi i32 [ -1, %.lr.ph491.i ], [ %.1361.i, %bb.bw ] ; 6 uses
  %.0362488.i = phi i32 [ -1, %.lr.ph491.i ], [ %.1363.i, %bb.bw ] ; 5 uses
  %.0365487.i = phi i32 [ -1, %.lr.ph491.i ], [ %.1366.i, %bb.bw ] ; 4 uses
  %i.db = load i32, ptr %i.e, align 4             ; 11 uses
  %i.dc = load i32, ptr %i.f, align 4             ; 5 uses
  %i.dd = icmp sle i32 %i.db, %i.dc
  %i.de = and i1 %i.cz, %i.dd
  br i1 %i.de, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ai
  %i.df = load ptr, ptr %i.i, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.lr.ph.i
  %.0434.i = phi i32 [ %i.db, %.lr.ph.i ], [ %i.dq, %bb.al ] ; 3 uses
  %.0334433.i = phi i32 [ 0, %.lr.ph.i ], [ %.1335.i, %bb.al ] ; 7 uses
  %.0340432.i = phi i32 [ 0, %.lr.ph.i ], [ %.1341.i, %bb.al ]
  %i.dg = sext i32 %.0434.i to i64
  %i.dh = getelementptr inbounds [24 x i8], ptr %i.df, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8            ; 2 uses
  %i.dj = lshr i32 %i.di, 8
  %trunc426.i = trunc i32 %i.dj to i8
  switch i8 %trunc426.i, label %bb.ak [
    i8 12, label %bb.al
    i8 13, label %bb.al
    i8 5, label %bb.al
    i8 15, label %bb.al
    i8 16, label %bb.al
    i8 17, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dk = add nsw i32 %.0334433.i, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.aj
  %.1335.i = phi i32 [ %.0334433.i, %bb.aj ], [ %.0334433.i, %bb.aj ], [ %.0334433.i, %bb.aj ], [ %.0334433.i, %bb.aj ], [ %.0334433.i, %bb.aj ], [ %.0334433.i, %bb.aj ], [ %i.dk, %bb.ak ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %.not406.i = icmp eq ptr %i.dm, null
  %i.dn = lshr i32 %i.di, 3
  %i.do = and i32 %i.dn, 1
  %i.dp = xor i32 %i.do, 1
  %spec.select.i = select i1 %.not406.i, i32 0, i32 %i.dp
  %.1341.i = add i32 %spec.select.i, %.0340432.i  ; 2 uses
  %i.dq = add i32 %.0434.i, 1                     ; 3 uses
  %i.dr = icmp sle i32 %i.dq, %i.dc
  %i.ds = icmp slt i32 %.1335.i, %.087.lcssa236   ; 2 uses
  %i.dt = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %i.dt, label %bb.aj, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %bb.al, %bb.ai
  %.0352.lcssa.i = phi i32 [ %i.db, %bb.ai ], [ %.0434.i, %bb.al ] ; 3 uses
  %.0340.lcssa.i = phi i32 [ 0, %bb.ai ], [ %.1341.i, %bb.al ] ; 4 uses
  %.0334.lcssa.i = phi i32 [ 0, %bb.ai ], [ %.1335.i, %bb.al ] ; 5 uses
  %.0.lcssa.i = phi i32 [ %i.db, %bb.ai ], [ %i.dq, %bb.al ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.cz, %bb.ai ], [ %i.ds, %bb.al ]
  br i1 %.lcssa.i, label %bb.am, label %bb.bg

bb.am:                                            ; preds = %._crit_edge.i
  %i.du = add i32 %.0.lcssa.i, -1                 ; 2 uses
  %i.dv = load i32, ptr %i.da, align 4            ; 2 uses
  %i.dw = icmp slt i32 %i.du, %i.dv
  %i.dx = icmp slt i32 %.0334.lcssa.i, %.087.lcssa236
  %i.dy = select i1 %i.dw, i1 %i.dx, i1 false
  br i1 %i.dy, label %.lr.ph458.i, label %._crit_edge459.i

.lr.ph458.i:                                      ; preds = %bb.am
  %i.dz = load ptr, ptr %i.i, align 8
  %i.ea = sext i32 %i.du to i64
  %i.eb = sext i32 %i.dc to i64
  %i.ec = sext i32 %i.dv to i64
  br label %bb.an

bb.an:                                            ; preds = %bb.aw, %.lr.ph458.i
  %indvars.iv.i = phi i64 [ %i.ea, %.lr.ph458.i ], [ %indvars.iv.next.i, %bb.aw ] ; 4 uses
  %.2336455.i = phi i32 [ %.0334.lcssa.i, %.lr.ph458.i ], [ %.4338.i, %bb.aw ] ; 8 uses
  %.2342454.i = phi i32 [ %.0340.lcssa.i, %.lr.ph458.i ], [ %.3343.i, %bb.aw ] ; 3 uses
  %i.ed = icmp sgt i64 %indvars.iv.i, %i.eb
  %i.ee = getelementptr inbounds [24 x i8], ptr %i.dz, i64 %indvars.iv.i ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8            ; 4 uses
  %i.eg = lshr i32 %i.ef, 8
  %trunc420.i = trunc i32 %i.eg to i8             ; 2 uses
  br i1 %i.ed, label %bb.ao, label %._crit_edge510.i

bb.ao:                                            ; preds = %bb.an
  switch i8 %trunc420.i, label %bb.ap [
    i8 12, label %bb.aq
    i8 13, label %bb.aq
    i8 5, label %bb.aq
    i8 15, label %bb.aq
    i8 16, label %bb.aq
    i8 17, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.eh = add nsw i32 %.2336455.i, 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao, %bb.ao
  %.3337.i = phi i32 [ %.2336455.i, %bb.ao ], [ %.2336455.i, %bb.ao ], [ %.2336455.i, %bb.ao ], [ %.2336455.i, %bb.ao ], [ %.2336455.i, %bb.ao ], [ %.2336455.i, %bb.ao ], [ %i.eh, %bb.ap ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %.not387.i = icmp eq ptr %i.ej, null
  br i1 %.not387.i, label %._crit_edge510.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = lshr i32 %i.ef, 3
  %i.el = and i32 %i.ek, 1
  %i.em = xor i32 %i.el, 1
  %spec.select408.i = add i32 %i.em, %.2342454.i
  br label %._crit_edge510.i

._crit_edge510.i:                                 ; preds = %bb.ar, %bb.aq, %bb.an
  %.3343.i = phi i32 [ %.2342454.i, %bb.aq ], [ %spec.select408.i, %bb.ar ], [ %.2342454.i, %bb.an ] ; 2 uses
  %.4338.i = phi i32 [ %.3337.i, %bb.aq ], [ %.3337.i, %bb.ar ], [ %.2336455.i, %bb.an ] ; 5 uses
  switch i8 %trunc420.i, label %bb.as [
    i8 12, label %bb.at
    i8 13, label %bb.at
    i8 5, label %bb.at
    i8 15, label %bb.at
    i8 16, label %bb.at
    i8 17, label %bb.at
    i8 7, label %bb.at
    i8 8, label %bb.at
    i8 20, label %bb.at
    i8 21, label %bb.at
    i8 22, label %bb.at
    i8 14, label %bb.at
    i8 23, label %bb.at
  ]

bb.as:                                            ; preds = %._crit_edge510.i
  %i.en = lshr i32 %i.ef, 16
  %.not389.i = icmp sgt i32 %i.en, %.085.lcssa238
  br i1 %.not389.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i, %._crit_edge510.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %.not390.i = icmp eq ptr %i.ep, null
  br i1 %.not390.i, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eq = and i32 %i.ef, 8
  %.not391.i = icmp ne i32 %i.eq, 0
  %.not392.i = icmp slt i32 %.4338.i, %.089.lcssa234
  %or.cond.i = select i1 %.not391.i, i1 true, i1 %.not392.i
  br i1 %or.cond.i, label %bb.aw, label %._crit_edge459.loopexit.i

bb.av:                                            ; preds = %bb.as
  %.not392.old.i = icmp slt i32 %.4338.i, %.089.lcssa234
  br i1 %.not392.old.i, label %bb.aw, label %._crit_edge459.loopexit.i

end_hunk_0
begin_hunk_1_@prsd_headline:bb.a
  br i1 %i.fz, label %bb.bh, label %.loopexit428.i, !llvm.loop !16

.loopexit428.loopexit.split.loop.exit530.i:       ; preds = %bb.az
  %i.ga = trunc nuw nsw i64 %indvars.iv504.i to i32
  br label %.loopexit428.i

.loopexit428.loopexit.split.loop.exit533.i:       ; preds = %bb.be
  %i.gb = trunc nuw nsw i64 %indvars.iv504.i to i32
  br label %.loopexit428.i

.loopexit428.loopexit.split.loop.exit536.i:       ; preds = %bb.bd
  %i.gc = trunc nuw nsw i64 %indvars.iv504.i to i32
  br label %.loopexit428.i

.loopexit428.i:                                   ; preds = %bb.bm, %bb.bj, %bb.bi, %bb.bf, %.loopexit428.loopexit.split.loop.exit536.i, %.loopexit428.loopexit.split.loop.exit533.i, %.loopexit428.loopexit.split.loop.exit530.i, %bb.bg, %.preheader427.i, %._crit_edge459.i
  %.4356.i = phi i32 [ %.2354.i, %.preheader427.i ], [ %.2354.i, %._crit_edge459.i ], [ %.0352.lcssa.i, %bb.bg ], [ %.2354.i, %.loopexit428.loopexit.split.loop.exit530.i ], [ %.2354.i, %bb.bf ], [ %.2354.i, %.loopexit428.loopexit.split.loop.exit536.i ], [ %.2354.i, %.loopexit428.loopexit.split.loop.exit533.i ], [ %.3355440.i, %bb.bj ], [ %i.fy, %bb.bm ], [ %.3355440.i, %bb.bi ] ; 3 uses
  %.0351.i = phi i32 [ 0, %.preheader427.i ], [ %i.db, %._crit_edge459.i ], [ %i.db, %bb.bg ], [ %i.ga, %.loopexit428.loopexit.split.loop.exit530.i ], [ 0, %bb.bf ], [ %i.gc, %.loopexit428.loopexit.split.loop.exit536.i ], [ %i.gb, %.loopexit428.loopexit.split.loop.exit533.i ], [ %i.db, %bb.bi ], [ %i.db, %bb.bj ], [ %i.db, %bb.bm ] ; 2 uses
  %.10350.i = phi i32 [ %.4344.i, %.preheader427.i ], [ %.4344.i, %._crit_edge459.i ], [ %.0340.lcssa.i, %bb.bg ], [ %.6346.i, %.loopexit428.loopexit.split.loop.exit530.i ], [ %.6346.i, %bb.bf ], [ %.6346.i, %.loopexit428.loopexit.split.loop.exit536.i ], [ %.6346.i, %.loopexit428.loopexit.split.loop.exit533.i ], [ %.8348441.i, %bb.bj ], [ %.9349.i, %bb.bm ], [ %.8348441.i, %bb.bi ] ; 3 uses
  %i.gd = icmp sle i32 %.0351.i, %i.db
  %i.ge = icmp sge i32 %.4356.i, %i.dc
  %i.gf = and i1 %i.ge, %i.gd                     ; 2 uses
  %i.gg = zext i1 %i.gf to i8
  %i.gh = zext i1 %i.gf to i32                    ; 2 uses
  %i.gi = zext nneg i8 %.0358490.i to i32         ; 2 uses
  %i.gj = icmp samesign ugt i32 %i.gh, %i.gi
  br i1 %i.gj, label %bb.bv, label %bb.bn

bb.bn:                                            ; preds = %.loopexit428.i
  %i.gk = icmp eq i32 %i.gh, %i.gi                ; 2 uses
  %i.gl = icmp sgt i32 %.10350.i, %.0360489.i
  %or.cond413.i = select i1 %i.gk, i1 %i.gl, i1 false
  br i1 %or.cond413.i, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gm = icmp eq i32 %.10350.i, %.0360489.i
  %or.cond414.i = select i1 %i.gk, i1 %i.gm, i1 false
  br i1 %or.cond414.i, label %bb.bp, label %bb.bw

bb.bp:                                            ; preds = %bb.bo
  %i.gn = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.go = sext i32 %.4356.i to i64
  %i.gp = getelementptr inbounds [24 x i8], ptr %i.gn, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8            ; 3 uses
  %i.gr = lshr i32 %i.gq, 8
  %trunc424.i = trunc i32 %i.gr to i8
  switch i8 %trunc424.i, label %bb.bq [
    i8 12, label %bb.br
    i8 13, label %bb.br
    i8 5, label %bb.br
    i8 15, label %bb.br
    i8 16, label %bb.br
    i8 17, label %bb.br
    i8 7, label %bb.br
    i8 8, label %bb.br
    i8 20, label %bb.br
    i8 21, label %bb.br
    i8 22, label %bb.br
    i8 14, label %bb.br
    i8 23, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.gs = lshr i32 %i.gq, 16
  %.not400.i = icmp sgt i32 %i.gs, %.085.lcssa238
  br i1 %.not400.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  %.not401.i = icmp ne ptr %i.gu, null
  %i.gv = and i32 %i.gq, 8
  %.not402.i = icmp eq i32 %i.gv, 0
  %or.cond416.i = and i1 %.not402.i, %.not401.i
  br i1 %or.cond416.i, label %bb.bs, label %bb.bw

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.gw = sext i32 %.0362488.i to i64
  %i.gx = getelementptr inbounds [24 x i8], ptr %i.gn, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8            ; 3 uses
  %i.gz = lshr i32 %i.gy, 8
  %trunc425.i = trunc i32 %i.gz to i8
  switch i8 %trunc425.i, label %bb.bt [
    i8 12, label %bb.bu
    i8 13, label %bb.bu
    i8 5, label %bb.bu
    i8 15, label %bb.bu
    i8 16, label %bb.bu
    i8 17, label %bb.bu
    i8 7, label %bb.bu
    i8 8, label %bb.bu
    i8 20, label %bb.bu
    i8 21, label %bb.bu
    i8 22, label %bb.bu
    i8 14, label %bb.bu
    i8 23, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.ha = lshr i32 %i.gy, 16
  %.not403.i = icmp sgt i32 %i.ha, %.085.lcssa238
  br i1 %.not403.i, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs, %bb.bs
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8
  %.not404.i = icmp ne ptr %i.hc, null
  %i.hd = and i32 %i.gy, 8
  %.not405.i = icmp eq i32 %i.hd, 0
  %or.cond417.i = and i1 %.not405.i, %.not404.i
  br i1 %or.cond417.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bn, %.loopexit428.i
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.br, %bb.bo
  %.1366.i = phi i32 [ %.0351.i, %bb.bv ], [ %.0365487.i, %bb.bo ], [ %.0365487.i, %bb.bu ], [ %.0365487.i, %bb.bt ], [ %.0365487.i, %bb.br ] ; 2 uses
  %.1363.i = phi i32 [ %.4356.i, %bb.bv ], [ %.0362488.i, %bb.bo ], [ %.0362488.i, %bb.bu ], [ %.0362488.i, %bb.bt ], [ %.0362488.i, %bb.br ] ; 2 uses
  %.1361.i = phi i32 [ %.10350.i, %bb.bv ], [ %.0360489.i, %bb.bo ], [ %.0360489.i, %bb.bu ], [ %.0360489.i, %bb.bt ], [ %.0360489.i, %bb.br ] ; 2 uses
  %.1359.i = phi i8 [ %i.gg, %bb.bv ], [ %.0358490.i, %bb.bo ], [ %.0358490.i, %bb.bu ], [ %.0358490.i, %bb.bt ], [ %.0358490.i, %bb.br ]
  %i.he = call fastcc zeroext i1 @hlCover(ptr noundef readonly %i.i, ptr noundef nonnull %i.n, ptr noundef readonly %.091, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  br i1 %i.he, label %bb.ai, label %._crit_edge492.i, !llvm.loop !17

._crit_edge492.i:                                 ; preds = %bb.bw
  %i.hf = icmp slt i32 %.1361.i, 0
  br i1 %i.hf, label %.preheader.i, label %mark_hl_words.exit

.preheader.i:                                     ; preds = %._crit_edge492.i, %.preheader430.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.hh = load i32, ptr %i.hg, align 4            ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  %i.hj = icmp sgt i32 %.089.lcssa234, 0
  %i.hk = and i1 %i.hj, %i.hi
  br i1 %i.hk, label %.lr.ph498.i, label %mark_hl_words.exit

.lr.ph498.i:                                      ; preds = %.preheader.i
  %i.hl = load ptr, ptr %i.i, align 8
  %i.hm = zext nneg i32 %i.hh to i64
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bz, %.lr.ph498.i
  %indvars.iv507.i = phi i64 [ 0, %.lr.ph498.i ], [ %indvars.iv.next508.i, %bb.bz ] ; 3 uses
  %.10496.i = phi i32 [ 0, %.lr.ph498.i ], [ %.11.i, %bb.bz ] ; 7 uses
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.hl, i64 %indvars.iv507.i
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = lshr i32 %i.ho, 8
  %trunc.i = trunc i32 %i.hp to i8
  switch i8 %trunc.i, label %bb.by [
    i8 12, label %bb.bz
    i8 13, label %bb.bz
    i8 5, label %bb.bz
    i8 15, label %bb.bz
    i8 16, label %bb.bz
    i8 17, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.hq = add nsw i32 %.10496.i, 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx, %bb.bx
  %.11.i = phi i32 [ %.10496.i, %bb.bx ], [ %.10496.i, %bb.bx ], [ %.10496.i, %bb.bx ], [ %.10496.i, %bb.bx ], [ %.10496.i, %bb.bx ], [ %.10496.i, %bb.bx ], [ %i.hq, %bb.by ] ; 2 uses
  %indvars.iv.next508.i = add nuw nsw i64 %indvars.iv507.i, 1 ; 2 uses
  %i.hr = icmp samesign ult i64 %indvars.iv.next508.i, %i.hm
  %i.hs = icmp slt i32 %.11.i, %.089.lcssa234
  %i.ht = select i1 %i.hr, i1 %i.hs, i1 false
  br i1 %i.ht, label %bb.bx, label %.loopexit.loopexit.i, !llvm.loop !18

bb.ca:                                            ; preds = %bb.ah
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.hv = load i32, ptr %i.hu, align 4
  %i.hw = add i32 %i.hv, -1
  br label %mark_hl_words.exit

.loopexit.loopexit.i:                             ; preds = %bb.bz
  %i.hx = trunc nuw nsw i64 %indvars.iv507.i to i32
  br label %mark_hl_words.exit

mark_hl_words.exit:                               ; preds = %._crit_edge492.i, %.preheader.i, %bb.ca, %.loopexit.loopexit.i
  %.2367.i = phi i32 [ 0, %bb.ca ], [ %.1366.i, %._crit_edge492.i ], [ 0, %.preheader.i ], [ 0, %.loopexit.loopexit.i ]
  %.2364.i = phi i32 [ %i.hw, %bb.ca ], [ %.1363.i, %._crit_edge492.i ], [ -1, %.preheader.i ], [ %i.hx, %.loopexit.loopexit.i ]
  call fastcc void @mark_fragment(ptr noundef readonly %i.i, i1 noundef zeroext %.082.lcssa242, i32 noundef %.2367.i, i32 noundef %.2364.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.dr

bb.cb:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4
  %i.hy = call ptr @palloc(i64 noundef 640) #12   ; 2 uses
  %i.hz = call fastcc zeroext i1 @hlCover(ptr noundef readonly %i.i, ptr noundef nonnull %i.n, ptr noundef readonly %.091, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  br i1 %i.hz, label %.lr.ph.i110, label %.preheader.i102

.loopexit.i:                                      ; preds = %bb.cm, %.lr.ph.i110
  %.1268.lcssa.i = phi i32 [ %.0267393.i, %.lr.ph.i110 ], [ %i.js, %bb.cm ] ; 3 uses
  %.1265.lcssa.i = phi i32 [ %.0264394.i, %.lr.ph.i110 ], [ %.2266.i, %bb.cm ]
  %.1.lcssa.i = phi ptr [ %.0395.i, %.lr.ph.i110 ], [ %.2.i, %bb.cm ] ; 9 uses
  %i.ia = call fastcc zeroext i1 @hlCover(ptr noundef readonly %i.i, ptr noundef nonnull %i.n, ptr noundef readonly %.091, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  br i1 %i.ia, label %.lr.ph.i110, label %.preheader383.i, !llvm.loop !19

.preheader383.i:                                  ; preds = %.loopexit.i
  %i.ib = icmp sgt i32 %.083.lcssa240, 0
  br i1 %i.ib, label %.preheader382.lr.ph.i, label %.preheader.i102

.preheader382.lr.ph.i:                            ; preds = %.preheader383.i
  %i.ic = icmp sgt i32 %.1268.lcssa.i, 0
  %i.id = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %wide.trip.count.i = zext nneg i32 %.1268.lcssa.i to i64 ; 2 uses
  br i1 %i.ic, label %.preheader382.i, label %.preheader.i102

.lr.ph.i110:                                      ; preds = %bb.cb, %.loopexit.i
  %.0395.i = phi ptr [ %.1.lcssa.i, %.loopexit.i ], [ %i.hy, %bb.cb ] ; 2 uses
  %.0264394.i = phi i32 [ %.1265.lcssa.i, %.loopexit.i ], [ 32, %bb.cb ] ; 2 uses
  %.0267393.i = phi i32 [ %.1268.lcssa.i, %.loopexit.i ], [ 0, %bb.cb ] ; 2 uses
  %i.ie = load i32, ptr %i.b, align 4             ; 2 uses
  %storemerge384.i = load i32, ptr %i.c, align 4  ; 2 uses
  %.not305385.i = icmp sgt i32 %i.ie, %storemerge384.i
  br i1 %.not305385.i, label %.loopexit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i110, %bb.cm
  %storemerge390.i = phi i32 [ %storemerge.i, %bb.cm ], [ %storemerge384.i, %.lr.ph.i110 ] ; 7 uses
  %.1389.i = phi ptr [ %.2.i, %bb.cm ], [ %.0395.i, %.lr.ph.i110 ] ; 2 uses
  %.1265388.i = phi i32 [ %.2266.i, %bb.cm ], [ %.0264394.i, %.lr.ph.i110 ] ; 3 uses
  %.1268387.i = phi i32 [ %i.js, %bb.cm ], [ %.0267393.i, %.lr.ph.i110 ] ; 3 uses
  %storemerge304386.i = phi i32 [ %i.jt, %bb.cm ], [ %i.ie, %.lr.ph.i110 ]
  %i.if = load ptr, ptr %i.i, align 8             ; 3 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.backedge, %.lr.ph.i.preheader.i
  %.075.i.i = phi i32 [ %storemerge304386.i, %.lr.ph.i.preheader.i ], [ %.075.i.i.be, %.lr.ph.i.i.backedge ] ; 8 uses
  %i.ig = sext i32 %.075.i.i to i64
  %i.ih = getelementptr inbounds [24 x i8], ptr %i.if, i64 %i.ig ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8
  %.not65.i.i = icmp eq ptr %i.ij, null
  br i1 %.not65.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i.i
  %i.ik = load i32, ptr %i.ih, align 8
  %i.il = and i32 %i.ik, 8
  %.not66.i.i = icmp eq i32 %i.il, 0
  %i.im = add i32 %.075.i.i, 1                    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.im, %storemerge390.i
  %or.cond366.i = or i1 %.not.i.i, %.not66.i.i
  br i1 %or.cond366.i, label %._crit_edge.i.i, label %.lr.ph.i.i.backedge

bb.cd:                                            ; preds = %.lr.ph.i.i
  %.old.i = add i32 %.075.i.i, 1                  ; 2 uses
  %.not.i.old.i = icmp sgt i32 %.old.i, %storemerge390.i
  br i1 %.not.i.old.i, label %._crit_edge.i.i, label %.lr.ph.i.i.backedge

.lr.ph.i.i.backedge:                              ; preds = %bb.cd, %bb.cc
  %.075.i.i.be = phi i32 [ %.old.i, %bb.cd ], [ %i.im, %bb.cc ]
  br label %.lr.ph.i.i, !llvm.loop !20

._crit_edge.i.i:                                  ; preds = %bb.cd, %bb.cc
  %.not6777.i.i = icmp sgt i32 %.075.i.i, %storemerge390.i
  br i1 %.not6777.i.i, label %get_next_fragment.exit.i, label %.lr.ph80.i.i

.lr.ph80.i.i:                                     ; preds = %._crit_edge.i.i, %bb.cg
  %.0362.i = phi i32 [ %.2364.i113, %bb.cg ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %.11.i111 = phi i32 [ %.15.i, %bb.cg ], [ 0, %._crit_edge.i.i ] ; 9 uses
  %.178.i.i = phi i32 [ %i.ix, %bb.cg ], [ %.075.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.in = icmp slt i32 %.11.i111, %.087.lcssa236
  br i1 %i.in, label %bb.ce, label %.critedge.i.i

bb.ce:                                            ; preds = %.lr.ph80.i.i
  %i.io = sext i32 %.178.i.i to i64
  %i.ip = getelementptr inbounds [24 x i8], ptr %i.if, i64 %i.io ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 8            ; 2 uses
  %i.ir = lshr i32 %i.iq, 8
  %trunc.i.i = trunc i32 %i.ir to i8
  switch i8 %trunc.i.i, label %bb.cf [
    i8 12, label %bb.cg
    i8 13, label %bb.cg
    i8 5, label %bb.cg
    i8 15, label %bb.cg
    i8 16, label %bb.cg
    i8 17, label %bb.cg
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.is = add nsw i32 %.11.i111, 1
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce, %bb.ce
  %.15.i = phi i32 [ %i.is, %bb.cf ], [ %.11.i111, %bb.ce ], [ %.11.i111, %bb.ce ], [ %.11.i111, %bb.ce ], [ %.11.i111, %bb.ce ], [ %.11.i111, %bb.ce ], [ %.11.i111, %bb.ce ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.iu = load ptr, ptr %i.it, align 8
  %.not71.i.i = icmp ne ptr %i.iu, null
  %i.iv = and i32 %i.iq, 8
  %.not72.i.i = icmp eq i32 %i.iv, 0
  %or.cond368.i = and i1 %.not72.i.i, %.not71.i.i
  %i.iw = zext i1 %or.cond368.i to i32
  %.2364.i113 = add i32 %.0362.i, %i.iw           ; 2 uses
  %i.ix = add i32 %.178.i.i, 1                    ; 3 uses
  %.not67.i.i = icmp sgt i32 %i.ix, %storemerge390.i
  br i1 %.not67.i.i, label %.critedge.i.i, label %.lr.ph80.i.i, !llvm.loop !21

.critedge.i.i:                                    ; preds = %bb.cg, %.lr.ph80.i.i
  %.1363.i112 = phi i32 [ %.2364.i113, %bb.cg ], [ %.0362.i, %.lr.ph80.i.i ] ; 4 uses
  %.12.i = phi i32 [ %.15.i, %bb.cg ], [ %.11.i111, %.lr.ph80.i.i ] ; 3 uses
  %.1.lcssa.ph.i.i = phi i32 [ %i.ix, %bb.cg ], [ %.178.i.i, %.lr.ph80.i.i ] ; 4 uses
  %i.iy = icmp sgt i32 %storemerge390.i, %.1.lcssa.ph.i.i
  br i1 %i.iy, label %bb.ch, label %get_next_fragment.exit.i

bb.ch:                                            ; preds = %.critedge.i.i
  %.not6885.i.i = icmp slt i32 %.1.lcssa.ph.i.i, %.075.i.i
  br i1 %.not6885.i.i, label %get_next_fragment.exit.i, label %.lr.ph88.i.i

.lr.ph88.i.i:                                     ; preds = %bb.ch, %bb.ck
  %.13.i = phi i32 [ %.14.i, %bb.ck ], [ %.12.i, %bb.ch ] ; 8 uses
  %.286.i.i = phi i32 [ %i.jg, %bb.ck ], [ %.1.lcssa.ph.i.i, %bb.ch ] ; 4 uses
  %i.iz = sext i32 %.286.i.i to i64
  %i.ja = getelementptr inbounds [24 x i8], ptr %i.if, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8
  %.not69.i.i = icmp ne ptr %i.jc, null
  %.pre90.i.i = load i32, ptr %i.ja, align 8      ; 2 uses
  %i.jd = and i32 %.pre90.i.i, 8
  %.not70.i.i = icmp eq i32 %i.jd, 0
  %or.cond.i.i = select i1 %.not69.i.i, i1 %.not70.i.i, i1 false
  br i1 %or.cond.i.i, label %get_next_fragment.exit.i, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph88.i.i
  %i.je = lshr i32 %.pre90.i.i, 8
  %trunc73.i.i = trunc i32 %i.je to i8
  switch i8 %trunc73.i.i, label %bb.cj [
    i8 12, label %bb.ck
    i8 13, label %bb.ck
    i8 5, label %bb.ck
    i8 15, label %bb.ck
    i8 16, label %bb.ck
    i8 17, label %bb.ck
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.jf = add i32 %.13.i, -1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ci, %bb.ci, %bb.ci, %bb.ci, %bb.ci
  %.14.i = phi i32 [ %i.jf, %bb.cj ], [ %.13.i, %bb.ci ], [ %.13.i, %bb.ci ], [ %.13.i, %bb.ci ], [ %.13.i, %bb.ci ], [ %.13.i, %bb.ci ], [ %.13.i, %bb.ci ] ; 2 uses
  %i.jg = add i32 %.286.i.i, -1                   ; 2 uses
  %.not68.i.i = icmp slt i32 %i.jg, %.075.i.i
  br i1 %.not68.i.i, label %get_next_fragment.exit.i, label %.lr.ph88.i.i, !llvm.loop !22

get_next_fragment.exit.i:                         ; preds = %bb.ck, %.lr.ph88.i.i, %bb.ch, %.critedge.i.i, %._crit_edge.i.i
  %.3365.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.1363.i112, %bb.ch ], [ %.1363.i112, %.critedge.i.i ], [ %.1363.i112, %.lr.ph88.i.i ], [ %.1363.i112, %bb.ck ]
  %.16.i = phi i32 [ 0, %._crit_edge.i.i ], [ %.12.i, %bb.ch ], [ %.12.i, %.critedge.i.i ], [ %.14.i, %bb.ck ], [ %.13.i, %.lr.ph88.i.i ]
  %.2352.i = phi i32 [ %storemerge390.i, %._crit_edge.i.i ], [ %.1.lcssa.ph.i.i, %bb.ch ], [ %storemerge390.i, %.critedge.i.i ], [ %.286.i.i, %.lr.ph88.i.i ], [ %.286.i.i, %bb.ck ] ; 2 uses
  %.not306.i = icmp slt i32 %.1268387.i, %.1265388.i
  br i1 %.not306.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %get_next_fragment.exit.i
  %i.jh = shl i32 %.1265388.i, 1                  ; 2 uses
  %i.ji = sext i32 %i.jh to i64
  %i.jj = mul nsw i64 %i.ji, 20
  %i.jk = call ptr @repalloc(ptr noundef %.1389.i, i64 noundef %i.jj) #12
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %get_next_fragment.exit.i
  %.2266.i = phi i32 [ %i.jh, %bb.cl ], [ %.1265388.i, %get_next_fragment.exit.i ] ; 2 uses
  %.2.i = phi ptr [ %i.jk, %bb.cl ], [ %.1389.i, %get_next_fragment.exit.i ] ; 3 uses
  %i.jl = sext i32 %.1268387.i to i64
  %i.jm = getelementptr inbounds [20 x i8], ptr %.2.i, i64 %i.jl ; 6 uses
  store i32 %.075.i.i, ptr %i.jm, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store i32 %.2352.i, ptr %i.jn, align 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store i32 %.16.i, ptr %i.jo, align 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i32 %.3365.i, ptr %i.jp, align 4
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store i8 0, ptr %i.jq, align 4
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 17
  store i8 0, ptr %i.jr, align 1
  %i.js = add i32 %.1268387.i, 1                  ; 2 uses
  %i.jt = add i32 %.2352.i, 1                     ; 2 uses
  %storemerge.i = load i32, ptr %i.c, align 4     ; 2 uses
  %.not305.i = icmp sgt i32 %i.jt, %storemerge.i
  br i1 %.not305.i, label %.loopexit.i, label %.lr.ph.i.preheader.i, !llvm.loop !23

.preheader382.i:                                  ; preds = %.preheader382.lr.ph.i, %._crit_edge452.i
  %.0273454.i = phi i32 [ %i.ni, %._crit_edge452.i ], [ 0, %.preheader382.lr.ph.i ] ; 2 uses
  br label %.lr.ph402.i

.lr.ph402.i:                                      ; preds = %.preheader382.i, %bb.cs
  %indvars.iv.i104 = phi i64 [ %indvars.iv.next.i105, %bb.cs ], [ 0, %.preheader382.i ] ; 3 uses
  %.0258401.i = phi i32 [ %.1259.i, %bb.cs ], [ 0, %.preheader382.i ] ; 6 uses
  %.0260400.i = phi i32 [ %.1261.i, %bb.cs ], [ 2147483647, %.preheader382.i ] ; 5 uses
  %.0262399.i = phi i32 [ %.1263.i, %bb.cs ], [ -1, %.preheader382.i ] ; 4 uses
  %i.ju = getelementptr inbounds nuw [20 x i8], ptr %.1.lcssa.i, i64 %indvars.iv.i104 ; 5 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load i8, ptr %i.jv, align 4, !range !5, !noundef !6
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %bb.cs, label %bb.cn

end_hunk_1
begin_hunk_2_@prsd_headline:bb.a
    i8 17, label %bb.db
  ]

bb.da:                                            ; preds = %.critedge308.i
  %i.lv = add i32 %.2357417.i, -1
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.critedge308.i, %.critedge308.i, %.critedge308.i, %.critedge308.i, %.critedge308.i, %.critedge308.i
  %.3358.i = phi i32 [ %i.lv, %bb.da ], [ %.2357417.i, %.critedge308.i ], [ %.2357417.i, %.critedge308.i ], [ %.2357417.i, %.critedge308.i ], [ %.2357417.i, %.critedge308.i ], [ %.2357417.i, %.critedge308.i ], [ %.2357417.i, %.critedge308.i ] ; 2 uses
  %indvars.iv.next466.i = add nsw i64 %indvars.iv465.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next466.i to i32
  %exitcond468.not.i = icmp eq i32 %i.ko, %lftr.wideiv.i
  br i1 %exitcond468.not.i, label %.critedge2.i, label %.lr.ph419.i, !llvm.loop !26

.critedge2.loopexit.split.loop.exit.i:            ; preds = %bb.cz
  %i.lw = trunc nsw i64 %indvars.iv465.i to i32
  br label %.critedge2.i

.critedge2.loopexit.split.loop.exit507.i:         ; preds = %bb.cy
  %i.lx = trunc nsw i64 %indvars.iv465.i to i32
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.db, %.lr.ph411.i, %.critedge2.loopexit.split.loop.exit507.i, %.critedge2.loopexit.split.loop.exit.i, %.critedge.i, %bb.cu
  %.2357.lcssa.i = phi i32 [ %.1356.i, %.critedge.i ], [ %i.ks, %bb.cu ], [ %.2357417.i, %.critedge2.loopexit.split.loop.exit.i ], [ %.2357417.i, %.critedge2.loopexit.split.loop.exit507.i ], [ %i.ks, %.lr.ph411.i ], [ %.3358.i, %bb.db ] ; 4 uses
  %.2277.lcssa.i = phi i32 [ %i.lm, %.critedge.i ], [ %i.ko, %bb.cu ], [ %i.lw, %.critedge2.loopexit.split.loop.exit.i ], [ %i.lx, %.critedge2.loopexit.split.loop.exit507.i ], [ %i.ko, %.lr.ph411.i ], [ %i.ko, %bb.db ] ; 6 uses
  %i.ly = load i32, ptr %i.id, align 4            ; 2 uses
  %.3428.i = add i32 %i.kq, 1                     ; 2 uses
  %i.lz = icmp slt i32 %.3428.i, %i.ly
  %i.ma = icmp slt i32 %.2357.lcssa.i, %.087.lcssa236
  %or.cond372429.i = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond372429.i, label %.lr.ph433.i, label %.critedge6.i

.lr.ph433.i:                                      ; preds = %.critedge2.i
  %i.mb = load ptr, ptr %i.i, align 8             ; 3 uses
  %i.mc = sext i32 %.3428.i to i64                ; 2 uses
  %i.md = getelementptr inbounds [24 x i8], ptr %i.mb, i64 %i.mc
  %i.me = load i32, ptr %i.md, align 8            ; 2 uses
  %i.mf = and i32 %i.me, 2
  %.not295.i163 = icmp eq i32 %i.mf, 0
  br i1 %.not295.i163, label %.lr.ph166.preheader, label %.critedge6.i

.lr.ph166.preheader:                              ; preds = %.lr.ph433.i
  %i.mg = sext i32 %i.ly to i64
  br label %.lr.ph166

bb.dc:                                            ; preds = %bb.de
  %i.mh = getelementptr inbounds [24 x i8], ptr %i.mb, i64 %indvars.iv.next198
  %i.mi = load i32, ptr %i.mh, align 8            ; 2 uses
  %i.mj = and i32 %i.mi, 2
  %.not295.i = icmp eq i32 %i.mj, 0
  br i1 %.not295.i, label %.lr.ph166, label %.critedge4.i, !llvm.loop !27

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.dc
  %indvars.iv197 = phi i64 [ %i.mc, %.lr.ph166.preheader ], [ %indvars.iv.next198, %bb.dc ] ; 3 uses
  %i.mk = phi i32 [ %i.me, %.lr.ph166.preheader ], [ %i.mi, %bb.dc ]
  %.4359430.i165 = phi i32 [ %.2357.lcssa.i, %.lr.ph166.preheader ], [ %.5360.i, %bb.dc ] ; 7 uses
  %i.ml = lshr i32 %i.mk, 8
  %trunc379.i = trunc i32 %i.ml to i8
  switch i8 %trunc379.i, label %bb.dd [
    i8 12, label %bb.de
    i8 13, label %bb.de
    i8 5, label %bb.de
    i8 15, label %bb.de
    i8 16, label %bb.de
    i8 17, label %bb.de
  ]

bb.dd:                                            ; preds = %.lr.ph166
  %i.mm = add nsw i32 %.4359430.i165, 1
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.lr.ph166, %.lr.ph166, %.lr.ph166, %.lr.ph166, %.lr.ph166, %.lr.ph166
  %.5360.i = phi i32 [ %i.mm, %bb.dd ], [ %.4359430.i165, %.lr.ph166 ], [ %.4359430.i165, %.lr.ph166 ], [ %.4359430.i165, %.lr.ph166 ], [ %.4359430.i165, %.lr.ph166 ], [ %.4359430.i165, %.lr.ph166 ], [ %.4359430.i165, %.lr.ph166 ] ; 4 uses
  %indvars.iv.next198 = add nsw i64 %indvars.iv197, 1 ; 3 uses
  %i.mn = icmp slt i64 %indvars.iv.next198, %i.mg
  %i.mo = icmp slt i32 %.5360.i, %.087.lcssa236
  %or.cond372.i = select i1 %i.mn, i1 %i.mo, i1 false
  br i1 %or.cond372.i, label %bb.dc, label %..critedge4.i_crit_edge, !llvm.loop !27

..critedge4.i_crit_edge:                          ; preds = %bb.de
  br label %.critedge4.i, !llvm.loop !27

.critedge4.i:                                     ; preds = %bb.dc, %..critedge4.i_crit_edge
  %i.mp = trunc nsw i64 %indvars.iv197 to i32     ; 2 uses
  %i.mq = icmp slt i32 %i.kq, %i.mp
  br i1 %i.mq, label %.lr.ph441.i, label %.critedge6.i

.lr.ph441.i:                                      ; preds = %.critedge4.i
  %i.mr = sext i32 %i.kq to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.dj, %.lr.ph441.i
  %indvars.iv469.i = phi i64 [ %indvars.iv197, %.lr.ph441.i ], [ %indvars.iv.next470.i, %bb.dj ] ; 4 uses
  %.6361439.i = phi i32 [ %.5360.i, %.lr.ph441.i ], [ %.7.i107, %bb.dj ] ; 9 uses
  %i.ms = getelementptr inbounds [24 x i8], ptr %i.mb, i64 %indvars.iv469.i ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 8            ; 3 uses
  %i.mu = lshr i32 %i.mt, 8
  %trunc377.i = trunc i32 %i.mu to i8             ; 2 uses
  switch i8 %trunc377.i, label %bb.dg [
    i8 12, label %bb.dh
    i8 13, label %bb.dh
    i8 5, label %bb.dh
    i8 15, label %bb.dh
    i8 16, label %bb.dh
    i8 17, label %bb.dh
    i8 7, label %bb.dh
    i8 8, label %bb.dh
    i8 20, label %bb.dh
    i8 21, label %bb.dh
    i8 22, label %bb.dh
    i8 14, label %bb.dh
    i8 23, label %bb.dh
  ]

bb.dg:                                            ; preds = %bb.df
  %i.mv = lshr i32 %i.mt, 16
  %.not296.i = icmp sgt i32 %i.mv, %.085.lcssa238
  br i1 %.not296.i, label %.critedge6.loopexit.split.loop.exit511.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df, %bb.df
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8
  %.not297.i = icmp eq ptr %i.mx, null
  %i.my = and i32 %i.mt, 8
  %.not298.i = icmp ne i32 %i.my, 0
  %or.cond374.i = or i1 %.not298.i, %.not297.i
  br i1 %or.cond374.i, label %.critedge310.i, label %.critedge6.loopexit.split.loop.exit.i

.critedge310.i:                                   ; preds = %bb.dh
  switch i8 %trunc377.i, label %bb.di [
    i8 12, label %bb.dj
    i8 13, label %bb.dj
    i8 5, label %bb.dj
    i8 15, label %bb.dj
    i8 16, label %bb.dj
    i8 17, label %bb.dj
  ]

bb.di:                                            ; preds = %.critedge310.i
  %i.mz = add i32 %.6361439.i, -1
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.critedge310.i, %.critedge310.i, %.critedge310.i, %.critedge310.i, %.critedge310.i, %.critedge310.i
  %.7.i107 = phi i32 [ %i.mz, %bb.di ], [ %.6361439.i, %.critedge310.i ], [ %.6361439.i, %.critedge310.i ], [ %.6361439.i, %.critedge310.i ], [ %.6361439.i, %.critedge310.i ], [ %.6361439.i, %.critedge310.i ], [ %.6361439.i, %.critedge310.i ] ; 2 uses
  %indvars.iv.next470.i = add nsw i64 %indvars.iv469.i, -1 ; 2 uses
  %i.na = icmp sgt i64 %indvars.iv.next470.i, %i.mr
  br i1 %i.na, label %bb.df, label %.critedge6.i, !llvm.loop !28

.critedge6.loopexit.split.loop.exit.i:            ; preds = %bb.dh
  %i.nb = trunc nsw i64 %indvars.iv469.i to i32
  br label %.critedge6.i

.critedge6.loopexit.split.loop.exit511.i:         ; preds = %bb.dg
  %i.nc = trunc nsw i64 %indvars.iv469.i to i32
  br label %.critedge6.i

.critedge6.i:                                     ; preds = %bb.dj, %.lr.ph433.i, %.critedge6.loopexit.split.loop.exit511.i, %.critedge6.loopexit.split.loop.exit.i, %.critedge4.i, %.critedge2.i, %bb.ct
  %.8.i = phi i32 [ %i.ks, %bb.ct ], [ %.5360.i, %.critedge4.i ], [ %.2357.lcssa.i, %.critedge2.i ], [ %.6361439.i, %.critedge6.loopexit.split.loop.exit.i ], [ %.6361439.i, %.critedge6.loopexit.split.loop.exit511.i ], [ %.2357.lcssa.i, %.lr.ph433.i ], [ %.7.i107, %bb.dj ]
  %.0353.i = phi i32 [ %i.ko, %bb.ct ], [ %.2277.lcssa.i, %.critedge4.i ], [ %.2277.lcssa.i, %.critedge2.i ], [ %.2277.lcssa.i, %.critedge6.loopexit.split.loop.exit.i ], [ %.2277.lcssa.i, %.critedge6.loopexit.split.loop.exit511.i ], [ %.2277.lcssa.i, %.lr.ph433.i ], [ %.2277.lcssa.i, %bb.dj ] ; 4 uses
  %.0350.i = phi i32 [ %i.kq, %bb.ct ], [ %i.mp, %.critedge4.i ], [ %i.kq, %.critedge2.i ], [ %i.nb, %.critedge6.loopexit.split.loop.exit.i ], [ %i.nc, %.critedge6.loopexit.split.loop.exit511.i ], [ %i.kq, %.lr.ph433.i ], [ %i.kq, %bb.dj ] ; 4 uses
  store i32 %.0353.i, ptr %i.km, align 4
  store i32 %.0350.i, ptr %i.kp, align 4
  store i32 %.8.i, ptr %i.kr, align 4
  call fastcc void @mark_fragment(ptr noundef readonly %i.i, i1 noundef zeroext %.082.lcssa242, i32 noundef %.0353.i, i32 noundef %.0350.i)
  br label %.lr.ph451.i

.lr.ph451.i:                                      ; preds = %bb.dn, %.critedge6.i
  %indvars.iv472.i = phi i64 [ %indvars.iv.next473.i, %bb.dn ], [ 0, %.critedge6.i ] ; 3 uses
  %.not299.i = icmp eq i64 %indvars.iv472.i, %i.kl
  br i1 %.not299.i, label %bb.dn, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph451.i
  %i.nd = getelementptr inbounds nuw [20 x i8], ptr %.1.lcssa.i, i64 %indvars.iv472.i ; 3 uses
  %i.ne = load i32, ptr %i.nd, align 4            ; 2 uses
  %.not300.i = icmp slt i32 %i.ne, %.0353.i       ; 2 uses
  %.not301.i = icmp sgt i32 %i.ne, %.0350.i
  %or.cond311.i = or i1 %.not300.i, %.not301.i
  br i1 %or.cond311.i, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.ng = load i32, ptr %i.nf, align 4            ; 2 uses
  %.not302.i = icmp sge i32 %i.ng, %.0353.i
  %.not303.i = icmp sgt i32 %i.ng, %.0350.i
  %or.cond381.i = select i1 %.not303.i, i1 %.not300.i, i1 %.not302.i
  br i1 %or.cond381.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 17
  store i8 1, ptr %i.nh, align 1
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %.lr.ph451.i
  %indvars.iv.next473.i = add nuw nsw i64 %indvars.iv472.i, 1 ; 2 uses
  %exitcond476.not.i = icmp eq i64 %indvars.iv.next473.i, %wide.trip.count.i
  br i1 %exitcond476.not.i, label %._crit_edge452.i, label %.lr.ph451.i, !llvm.loop !29

._crit_edge452.i:                                 ; preds = %bb.dn
  %i.ni = add nuw nsw i32 %.0273454.i, 1          ; 2 uses
  %exitcond477.not.i = icmp eq i32 %i.ni, %.083.lcssa240
  br i1 %exitcond477.not.i, label %mark_hl_fragments.exit, label %.preheader382.i, !llvm.loop !30

._crit_edge455.i.split:                           ; preds = %._crit_edge.i106
  %2 = icmp eq i32 %.0273454.i, 0
  br i1 %2, label %.preheader.i102, label %mark_hl_fragments.exit

.preheader.i102:                                  ; preds = %bb.cb, %.preheader382.lr.ph.i, %._crit_edge455.i.split, %.preheader383.i
  %.0.lcssa.i101286 = phi ptr [ %.1.lcssa.i, %.preheader382.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge455.i.split ], [ %.1.lcssa.i, %.preheader383.i ], [ %i.hy, %bb.cb ]
  %i.nj = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.nk = load i32, ptr %i.nj, align 4            ; 2 uses
  %i.nl = icmp sgt i32 %i.nk, 0
  %i.nm = icmp sgt i32 %.089.lcssa234, 0
  %i.nn = and i1 %i.nm, %i.nl
  br i1 %i.nn, label %.lr.ph461.i, label %._crit_edge462.i

.lr.ph461.i:                                      ; preds = %.preheader.i102
  %i.no = load ptr, ptr %i.i, align 8
  %i.np = zext nneg i32 %i.nk to i64
  br label %bb.do

bb.do:                                            ; preds = %bb.dq, %.lr.ph461.i
  %indvars.iv478.i = phi i64 [ 0, %.lr.ph461.i ], [ %indvars.iv.next479.i, %bb.dq ] ; 3 uses
  %.9459.i = phi i32 [ 0, %.lr.ph461.i ], [ %.10.i, %bb.dq ] ; 7 uses
  %i.nq = getelementptr inbounds nuw [24 x i8], ptr %i.no, i64 %indvars.iv478.i
  %i.nr = load i32, ptr %i.nq, align 8
  %i.ns = lshr i32 %i.nr, 8
  %trunc.i103 = trunc i32 %i.ns to i8
  switch i8 %trunc.i103, label %bb.dp [
    i8 12, label %bb.dq
    i8 13, label %bb.dq
    i8 5, label %bb.dq
    i8 15, label %bb.dq
    i8 16, label %bb.dq
    i8 17, label %bb.dq
  ]

bb.dp:                                            ; preds = %bb.do
  %i.nt = add nsw i32 %.9459.i, 1
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.do, %bb.do, %bb.do, %bb.do, %bb.do
  %.10.i = phi i32 [ %i.nt, %bb.dp ], [ %.9459.i, %bb.do ], [ %.9459.i, %bb.do ], [ %.9459.i, %bb.do ], [ %.9459.i, %bb.do ], [ %.9459.i, %bb.do ], [ %.9459.i, %bb.do ] ; 2 uses
  %indvars.iv.next479.i = add nuw nsw i64 %indvars.iv478.i, 1 ; 2 uses
  %i.nu = icmp samesign ult i64 %indvars.iv.next479.i, %i.np
  %i.nv = icmp slt i32 %.10.i, %.089.lcssa234
  %i.nw = select i1 %i.nu, i1 %i.nv, i1 false
  br i1 %i.nw, label %bb.do, label %._crit_edge462.loopexit.i, !llvm.loop !31

._crit_edge462.loopexit.i:                        ; preds = %bb.dq
  %i.nx = trunc nuw nsw i64 %indvars.iv478.i to i32
  br label %._crit_edge462.i

._crit_edge462.i:                                 ; preds = %._crit_edge462.loopexit.i, %.preheader.i102
  %.1351.lcssa.i = phi i32 [ -1, %.preheader.i102 ], [ %i.nx, %._crit_edge462.loopexit.i ]
  call fastcc void @mark_fragment(ptr noundef nonnull readonly %i.i, i1 noundef zeroext %.082.lcssa242, i32 noundef 0, i32 noundef %.1351.lcssa.i)
  br label %mark_hl_fragments.exit

mark_hl_fragments.exit:                           ; preds = %._crit_edge452.i, %._crit_edge455.i.split, %._crit_edge462.i
  %.0.lcssa.i101287 = phi ptr [ %.0.lcssa.i101286, %._crit_edge462.i ], [ %.1.lcssa.i, %._crit_edge455.i.split ], [ %.1.lcssa.i, %._crit_edge452.i ]
  call void @pfree(ptr noundef %.0.lcssa.i101287) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.dr

bb.dr:                                            ; preds = %mark_hl_fragments.exit, %mark_hl_words.exit
  %i.ny = load ptr, ptr %i.o, align 8
  %.not98 = icmp eq ptr %i.ny, null
  br i1 %.not98, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.nz = call ptr @pstrdup(ptr noundef nonnull @.str.19) #12
  store ptr %i.nz, ptr %i.o, align 8
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.oa = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not99 = icmp eq ptr %i.oa, null
  br i1 %.not99, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ob = call ptr @pstrdup(ptr noundef nonnull @.str.20) #12 ; 2 uses
  store ptr %i.ob, ptr %i.p, align 8
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.oc = phi ptr [ %i.ob, %bb.du ], [ %i.oa, %bb.dt ]
  %i.od = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not100 = icmp eq ptr %i.od, null
  br i1 %.not100, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.oe = call ptr @pstrdup(ptr noundef nonnull @.str.21) #12 ; 2 uses
  store ptr %i.oe, ptr %i.q, align 8
  %.pre = load ptr, ptr %i.p, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.of = phi ptr [ %i.oe, %bb.dw ], [ %i.od, %bb.dv ]
  %i.og = phi ptr [ %.pre, %bb.dw ], [ %i.oc, %bb.dv ]
  %i.oh = load ptr, ptr %i.o, align 8
  %i.oi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.oh) #14 ; 2 uses
  %i.oj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.og) #14 ; 2 uses
  %i.ok = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.of) #14 ; 2 uses
  %i.ol = icmp ugt i64 %i.oi, 32767
  br i1 %i.ol, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.om = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.on = call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.oo = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.15, i32 noundef 2684, ptr noundef nonnull @__func__.prsd_headline) #12
  unreachable

bb.dz:                                            ; preds = %bb.dx
  %i.op = icmp ugt i64 %i.oj, 32767
  br i1 %i.op, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.oq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.or = call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.os = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.5) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.15, i32 noundef 2688, ptr noundef nonnull @__func__.prsd_headline) #12
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.ot = icmp ugt i64 %i.ok, 32767
  br i1 %i.ot, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.ou = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.ov = call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.ow = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.6) #12 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.15, i32 noundef 2692, ptr noundef nonnull @__func__.prsd_headline) #12
  unreachable

bb.ed:                                            ; preds = %bb.eb
  %i.ox = trunc nuw nsw i64 %i.oi to i16
  %i.oy = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i16 %i.ox, ptr %i.oy, align 8
  %i.oz = trunc nuw nsw i64 %i.oj to i16
  %i.pa = getelementptr inbounds nuw i8, ptr %i.i, i64 50
  store i16 %i.oz, ptr %i.pa, align 2
  %i.pb = trunc nuw nsw i64 %i.ok to i16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  store i16 %i.pb, ptr %i.pc, align 4
  ret i64 %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @defGetString(ptr noundef) local_unnamed_addr #3

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @pg_strtoint32(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @errcode(i32 noundef) local_unnamed_addr #3

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #3

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @TS_execute_locations(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @checkcondition_HL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef captures(address_is_null) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not30 = icmp eq ptr %2, null
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4
  br i1 %.not30, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.f = load ptr, ptr %0, align 8
  %i.g = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.split.us
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %bb.c ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv35
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 2 uses
  %i.l = icmp samesign ult i64 %indvars.iv.next36, %i.g
  br i1 %i.l, label %bb.b, label %._crit_edge, !llvm.loop !32

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.m = phi i32 [ %i.ak, %bb.h ], [ %i.b, %.lr.ph ]
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.q, %1
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %.lr.ph.split
  %i.s = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not31 = icmp eq ptr %i.s, null
  br i1 %.not31, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = sext i32 %i.m to i64
  %i.u = tail call ptr @palloc_mul(i64 noundef 2, i64 noundef %i.t) #12 ; 2 uses
  store ptr %i.u, ptr %i.d, align 8
  store i8 1, ptr %i.e, align 4
  store i32 1, ptr %2, align 8
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i16, ptr %i.x, align 4
  store i16 %i.y, ptr %i.u, align 2
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.z = load i32, ptr %2, align 8                ; 3 uses
  %i.aa = add i32 %i.z, -1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.af = load i16, ptr %i.ae, align 4            ; 2 uses
  %i.ag = icmp ult i16 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = add i32 %i.z, 1
  store i32 %i.ah, ptr %2, align 8
  %i.ai = sext i32 %i.z to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.ai
  store i16 %i.af, ptr %i.aj, align 2
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split, %bb.f, %bb.g, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load i32, ptr %i.a, align 8             ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next, %i.al
  br i1 %i.am, label %.lr.ph.split, label %._crit_edge, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.h, %bb.c, %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
end_hunk_2
