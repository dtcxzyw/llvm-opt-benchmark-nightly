Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@seriesBestIndex:bb.a
  %i.an = or disjoint i32 %i.am, 4096
  store i32 %.092106, ptr %i.b, align 8, !tbaa !53
  br label %bb.w

bb.q:                                             ; preds = %bb.i
  %i.ao = and i32 %.088107, 128
  %.not102 = icmp eq i32 %i.ao, 0
  br i1 %.not102, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ap = and i32 %.088107, -12417
  %i.aq = or disjoint i32 %i.ap, 8192
  store i32 %.092106, ptr %i.b, align 8, !tbaa !53
  br label %bb.w

bb.s:                                             ; preds = %bb.f
  %i.ar = add nsw i32 %i.w, -1                    ; 3 uses
  %i.as = shl nuw i32 1, %i.ar                    ; 2 uses
  %i.at = icmp eq i32 %i.ar, 0
  %i.au = icmp eq i8 %i.n, 2                      ; 2 uses
  %or.cond3 = and i1 %i.au, %i.at
  %spec.select = select i1 %or.cond3, i32 1, i32 %.086108 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0110, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !493
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ay = or i32 %i.as, %.084109
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  br i1 %i.au, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.az = or i32 %i.as, %.088107
  %i.ba = zext nneg i32 %i.ar to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ba
  store i32 %.092106, ptr %i.bb, align 4, !tbaa !53
  br label %bb.w

bb.w:                                             ; preds = %bb.g, %bb.v, %bb.u, %bb.h, %bb.q, %bb.o, %bb.m, %bb.k, %bb.r, %bb.p, %bb.n, %bb.l, %bb.j, %bb.i, %bb.b, %bb.e, %bb.d, %bb.t
  %.4 = phi i32 [ %.088107, %bb.g ], [ %i.v, %bb.e ], [ %.088107, %bb.t ], [ %.088107, %bb.b ], [ %i.u, %bb.d ], [ %.088107, %bb.i ], [ %i.ae, %bb.j ], [ %.088107, %bb.k ], [ %i.ah, %bb.l ], [ %.088107, %bb.m ], [ %i.ak, %bb.n ], [ %.088107, %bb.o ], [ %i.an, %bb.p ], [ %.088107, %bb.q ], [ %i.aq, %bb.r ], [ %.088107, %bb.h ], [ %i.az, %bb.v ], [ %.088107, %bb.u ] ; 3 uses
  %.3 = phi i32 [ %.086108, %bb.g ], [ %.086108, %bb.e ], [ %spec.select, %bb.t ], [ %.086108, %bb.b ], [ %.086108, %bb.d ], [ %.086108, %bb.i ], [ 1, %bb.j ], [ %.086108, %bb.k ], [ 1, %bb.l ], [ %.086108, %bb.m ], [ 1, %bb.n ], [ %.086108, %bb.o ], [ %.086108, %bb.p ], [ %.086108, %bb.q ], [ %.086108, %bb.r ], [ %.086108, %bb.h ], [ %spec.select, %bb.v ], [ %.086108, %bb.u ] ; 2 uses
  %.185 = phi i32 [ %.084109, %bb.g ], [ %.084109, %bb.e ], [ %i.ay, %bb.t ], [ %.084109, %bb.b ], [ %.084109, %bb.d ], [ %.084109, %bb.i ], [ %.084109, %bb.j ], [ %.084109, %bb.k ], [ %.084109, %bb.l ], [ %.084109, %bb.m ], [ %.084109, %bb.n ], [ %.084109, %bb.o ], [ %.084109, %bb.p ], [ %.084109, %bb.q ], [ %.084109, %bb.r ], [ %.084109, %bb.h ], [ %.084109, %bb.v ], [ %.084109, %bb.u ] ; 3 uses
  %i.bc = add nuw nsw i32 %.092106, 1             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0110, i64 12
  %exitcond.not = icmp eq i32 %i.bc, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1095

._crit_edge:                                      ; preds = %bb.w
  %.pre = load i32, ptr %i.e, align 4, !tbaa !53  ; 3 uses
  %i.be = icmp eq i32 %.3, 0                      ; 2 uses
  %i.bf = icmp eq i32 %.pre, 0
  br i1 %i.bf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge
  %i.bg = and i32 %.4, -97
  store i32 0, ptr %i.d, align 16, !tbaa !53
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %.5.ph = phi i32 [ %.4, %._crit_edge ], [ %i.bg, %bb.x ] ; 2 uses
  %.pr = load i32, ptr %i.a, align 16, !tbaa !53  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bi = icmp sgt i32 %.pr, -1
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !495
  %i.bk = zext nneg i32 %.pr to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bk ; 2 uses
  store i32 1, ptr %i.bl, align 4, !tbaa !497
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i8 1, ptr %i.bm, align 4, !tbaa !498
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.y, %bb.z
  %i.bn = phi ptr [ %i.bh, %bb.z ], [ %i.bh, %bb.y ], [ %i.j, %.thread ] ; 6 uses
  %.5137 = phi i32 [ %.5.ph, %bb.z ], [ %.5.ph, %bb.y ], [ 0, %.thread ] ; 9 uses
  %i.bo = phi i32 [ %.pre, %bb.z ], [ %.pre, %bb.y ], [ -1, %.thread ] ; 2 uses
  %.086.lcssa130136 = phi i1 [ %i.be, %bb.z ], [ %i.be, %bb.y ], [ true, %.thread ]
  %.084.lcssa131135 = phi i32 [ %.185, %bb.z ], [ %.185, %bb.y ], [ 0, %.thread ]
  %.1 = phi i32 [ 1, %bb.z ], [ 0, %bb.y ], [ 0, %.thread ] ; 2 uses
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !53  ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.br = add nuw nsw i32 %.1, 1                  ; 2 uses
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !495
  %i.bt = zext nneg i32 %i.bp to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  store i32 %i.br, ptr %i.bu, align 4, !tbaa !497
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i8 1, ptr %i.bv, align 4, !tbaa !498
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.1.1 = phi i32 [ %i.br, %bb.ab ], [ %.1, %bb.aa ] ; 2 uses
  %i.bw = load i32, ptr %i.f, align 8, !tbaa !53  ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.by = add nuw nsw i32 %.1.1, 1                ; 2 uses
  %i.bz = load ptr, ptr %i.bn, align 8, !tbaa !495
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !497
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i8 1, ptr %i.cc, align 4, !tbaa !498
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.1.2 = phi i32 [ %i.by, %bb.ad ], [ %.1.1, %bb.ac ] ; 2 uses
  %i.cd = icmp sgt i32 %i.bo, -1
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ce = add nuw nsw i32 %.1.2, 1                ; 2 uses
  %i.cf = load ptr, ptr %i.bn, align 8, !tbaa !495
  %i.cg = zext nneg i32 %i.bo to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  store i32 %i.ce, ptr %i.ch, align 4, !tbaa !497
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i8 1, ptr %i.ci, align 4, !tbaa !498
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.1.3 = phi i32 [ %i.ce, %bb.af ], [ %.1.2, %bb.ae ] ; 2 uses
  %i.cj = load i32, ptr %i.d, align 16, !tbaa !53 ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, -1
  br i1 %i.ck, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cl = add nuw nsw i32 %.1.3, 1                ; 2 uses
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !495
  %i.cn = zext nneg i32 %i.cj to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !497
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i8 1, ptr %i.cp, align 4, !tbaa !498
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1.4 = phi i32 [ %i.cl, %bb.ah ], [ %.1.3, %bb.ag ] ; 2 uses
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !53  ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, -1
  br i1 %i.cr, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cs = add nuw nsw i32 %.1.4, 1                ; 2 uses
  %i.ct = load ptr, ptr %i.bn, align 8, !tbaa !495
  %i.cu = zext nneg i32 %i.cq to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  store i32 %i.cs, ptr %i.cv, align 4, !tbaa !497
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  store i8 1, ptr %i.cw, align 4, !tbaa !498
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1.5 = phi i32 [ %i.cs, %bb.aj ], [ %.1.4, %bb.ai ]
  %i.cx = load i32, ptr %i.b, align 8, !tbaa !53  ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, -1
  br i1 %i.cy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cz = add nuw nsw i32 %.1.5, 1
  %i.da = load ptr, ptr %i.bn, align 8, !tbaa !495
  %i.db = zext nneg i32 %i.cx to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.db ; 2 uses
  store i32 %i.cz, ptr %i.dc, align 4, !tbaa !497
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i8 1, ptr %i.dd, align 4, !tbaa !498
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  br i1 %.086.lcssa130136, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !501
  tail call void @sqlite3_free(ptr noundef %i.df) #45
  %i.dg = tail call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.318) #45
  store ptr %i.dg, ptr %i.de, align 8, !tbaa !501
  br label %bb.ax

bb.ao:                                            ; preds = %bb.am
  %i.dh = xor i32 %.5137, -1
  %i.di = and i32 %.084.lcssa131135, %i.dh
  %.not99 = icmp eq i32 %i.di, 0
  br i1 %.not99, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.dj = and i32 %.5137, 3
  %i.dk = icmp eq i32 %i.dj, 3
  br i1 %i.dk, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %2 = shl i32 %.5137, 29
  %3 = ashr i32 %2, 31
  %4 = add nsw i32 %3, 2
  %i.dl = uitofp nneg i32 %4 to double
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64
  store double %i.dl, ptr %i.dm, align 8, !tbaa !502
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 1000, ptr %i.dn, align 8, !tbaa !503
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !504
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %bb.aq
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !505 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !507
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.as, label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dw = load i8, ptr %i.dv, align 4, !tbaa !508
  %.not100 = icmp eq i8 %i.dw, 0
  %.6.v = select i1 %.not100, i32 16, i32 8
  %.6 = or i32 %.6.v, %.5137
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 1, ptr %i.dx, align 4, !tbaa !509
  br label %bb.aw

bb.at:                                            ; preds = %bb.ap
  %i.dy = and i32 %.5137, 33
  %i.dz = icmp eq i32 %i.dy, 33
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %i.dz, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i64 2500, ptr %i.ea, align 8, !tbaa !503
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  store i64 2147483647, ptr %i.ea, align 8, !tbaa !503
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.aq, %bb.ar, %bb.as
  %.7 = phi i32 [ %.6, %bb.as ], [ %.5137, %bb.ar ], [ %.5137, %bb.aq ], [ %.5137, %bb.au ], [ %.5137, %bb.av ]
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i32 %.7, ptr %i.eb, align 8, !tbaa !510
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i32 2, ptr %i.ec, align 8, !tbaa !1096
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ao, %bb.aw, %bb.an
  %.094 = phi i32 [ 1, %bb.an ], [ 0, %bb.aw ], [ 19, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret i32 %.094
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @seriesDisconnect(ptr noundef %0) #4 {
bb.a:
  tail call void @sqlite3_free(ptr noundef %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @seriesOpen(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #4 {
bb.a:
  %i.a = tail call ptr @sqlite3_malloc64(i64 noundef 72) #45 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  store ptr %i.a, ptr %1, align 8, !tbaa !512
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @seriesClose(ptr noundef %0) #4 {
bb.a:
  tail call void @sqlite3_free(ptr noundef %0) #45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @seriesFilter(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4) #4 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1097

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.d = tail call i32 @sqlite3_value_type(ptr noundef %i.c) #45
  %i.e = icmp eq i32 %i.d, 5
  br i1 %i.e, label %select.unfold, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.f = and i32 %1, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.g = load ptr, ptr %4, align 8, !tbaa !126
  %i.h = tail call i64 @sqlite3_value_int64(ptr noundef %i.g) #45
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.sink = phi i64 [ %i.h, %bb.c ], [ 0, %._crit_edge ]
  %.0223 = phi i32 [ 1, %bb.c ], [ 0, %._crit_edge ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sink, ptr %i.i, align 8, !tbaa !1098
  %i.j = and i32 %1, 2
  %.not246 = icmp eq i32 %i.j, 0
  br i1 %.not246, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = add nuw nsw i32 %.0223, 1
  %i.l = zext nneg i32 %.0223 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126
  %i.o = tail call i64 @sqlite3_value_int64(ptr noundef %i.n) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink318 = phi i64 [ %i.o, %bb.e ], [ 4294967295, %bb.d ]
  %.1224 = phi i32 [ %i.k, %bb.e ], [ %.0223, %bb.d ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i64 %.sink318, ptr %i.p, align 8, !tbaa !1099
  %i.q = and i32 %1, 4
  %.not247 = icmp eq i32 %i.q, 0
  br i1 %.not247, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = add nuw nsw i32 %.1224, 1
  %i.s = zext nneg i32 %.1224 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !126
  %i.v = tail call i64 @sqlite3_value_int64(ptr noundef %i.u) #45
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.v, i64 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.w = phi i64 [ %spec.store.select, %bb.g ], [ 1, %bb.f ] ; 4 uses
  %.2225 = phi i32 [ %i.r, %bb.g ], [ %.1224, %bb.f ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.w, ptr %i.x, align 8
  %i.y = and i32 %1, 5
  %i.z = icmp ne i32 %i.y, 0
  %i.aa = and i32 %1, 896
  %.not248 = icmp eq i32 %i.aa, 0
  %or.cond = or i1 %i.z, %.not248
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr %i.i, align 8, !tbaa !1098
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ab = and i32 %1, 6
  %i.ac = icmp ne i32 %i.ab, 0
  %i.ad = and i32 %1, 12416
  %.not249 = icmp eq i32 %i.ad, 0
  %or.cond268 = or i1 %i.ac, %.not249
  br i1 %or.cond268, label %._crit_edge319, label %bb.k

._crit_edge319:                                   ; preds = %bb.j
  %.pre = load i64, ptr %i.p, align 8, !tbaa !1099
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 9223372036854775807, ptr %i.p, align 8, !tbaa !1099
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge319, %bb.k
  %i.ae = phi i64 [ %.pre, %._crit_edge319 ], [ 9223372036854775807, %bb.k ] ; 3 uses
  %i.af = load i64, ptr %i.i, align 8, !tbaa !1098 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !1100
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 11 uses
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !515
  %i.ai = icmp sgt i64 %i.w, 0
  br i1 %i.ai, label %bb.m, label %.thread286

.thread286:                                       ; preds = %bb.l
  %i.aj = sub i64 0, %i.w
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !516
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
end_hunk_0
