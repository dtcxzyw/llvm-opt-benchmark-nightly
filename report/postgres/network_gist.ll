Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/network_gist?download=true
inline.NumInlined: 102
inline.NumDeleted: 12
begin_hunk_0_@inet_gist_consistent:bb.a
  %i.ct = load i16, ptr %i.cs, align 8
  %i.cu = zext i16 %i.ct to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 12
  %i.cx = load i16, ptr %i.cw, align 4
  %i.cy = and i16 %i.cx, 1
  %.not98 = icmp eq i16 %i.cy, 0
  br i1 %.not98, label %bb.am, label %.thread

bb.u:                                             ; preds = %bb.n, %bb.n
  %i.cz = icmp slt i32 %i.cb, 0
  br i1 %i.cz, label %bb.am, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not95 = icmp eq i32 %i.cb, 0
  br i1 %.not95, label %bb.w, label %bb.am

bb.w:                                             ; preds = %bb.v
  %i.da = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i16, ptr %i.dc, align 8
  %i.de = zext i16 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i16, ptr %i.dg, align 4
  %i.di = and i16 %i.dh, 1
  %.not96 = icmp eq i16 %i.di, 0
  br i1 %.not96, label %bb.am, label %bb.z

bb.x:                                             ; preds = %bb.n
  %.not93 = icmp eq i32 %i.cb, 0
  br i1 %.not93, label %bb.y, label %bb.am

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load i16, ptr %i.dl, align 8
  %i.dn = zext i16 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dq = load i16, ptr %i.dp, align 4
  %i.dr = and i16 %i.dq, 1
  %.not94 = icmp eq i16 %i.dr, 0
  br i1 %.not94, label %bb.am, label %.thread134

bb.z:                                             ; preds = %bb.w, %bb.r
  %i.ds = and i16 %i.j, -2
  %switch = icmp eq i16 %i.ds, 20
  %i.dt = load i8, ptr %i.bu, align 1             ; 4 uses
  %i.du = load i8, ptr %i.g, align 1
  %i.dv = and i8 %i.du, 1                         ; 3 uses
  %.not.i120 = icmp eq i8 %i.dv, 0
  %i.dw = select i1 %.not.i120, i64 5, i64 2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1             ; 4 uses
  br i1 %switch, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.dz = icmp ult i8 %i.dt, %i.dy
  br i1 %i.dz, label %bb.am, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ea = icmp ugt i8 %i.dt, %i.dy
  br i1 %i.ea, label %bb.am, label %bb.ae

.thread:                                          ; preds = %bb.t
  %i.eb = load i8, ptr %i.bu, align 1
  %i.ec = load i8, ptr %i.g, align 1
  %i.ed = and i8 %i.ec, 1
  %.not.i124 = icmp eq i8 %i.ed, 0                ; 2 uses
  %i.ee = select i1 %.not.i124, i64 5, i64 2
  %i.ef = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1
  %.not101 = icmp eq i8 %i.eb, %i.eg
  br i1 %.not101, label %.thread135, label %bb.am

.thread135:                                       ; preds = %.thread
  %i.eh = select i1 %.not.i124, i64 6, i64 3
  %i.ei = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.eh
  %i.ej = load i8, ptr %i.p, align 1
  %i.ek = icmp eq i8 %i.ej, 3
  %i.el = select i1 %i.ek, i32 128, i32 32
  %i.em = tail call i32 @bitncmp(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ei, i32 noundef %i.el) #7
  br label %bb.ah

bb.ac:                                            ; preds = %bb.z
  %i.en = icmp ugt i8 %i.dt, %i.dy
  br i1 %i.en, label %bb.am, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = icmp ult i8 %i.dt, %i.dy
  br i1 %i.eo, label %bb.am, label %bb.ae

.thread134:                                       ; preds = %bb.y
  %i.ep = load i8, ptr %i.bu, align 1
  %i.eq = load i8, ptr %i.g, align 1
  %i.er = and i8 %i.eq, 1
  %.not.i130 = icmp eq i8 %i.er, 0                ; 2 uses
  %i.es = select i1 %.not.i130, i64 5, i64 2
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1
  %.not100 = icmp eq i8 %i.ep, %i.eu
  br i1 %.not100, label %.thread141, label %bb.am

.thread141:                                       ; preds = %.thread134
  %i.ev = select i1 %.not.i130, i64 6, i64 3
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ev
  %i.ex = load i8, ptr %i.p, align 1
  %i.ey = icmp eq i8 %i.ex, 3
  %i.ez = select i1 %i.ey, i32 128, i32 32
  %i.fa = tail call i32 @bitncmp(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ew, i32 noundef %i.ez) #7
  br label %bb.ak

bb.ae:                                            ; preds = %._crit_edge, %bb.ad, %bb.ab
  %.pre-phi = phi i8 [ %.pre144, %._crit_edge ], [ %i.dv, %bb.ad ], [ %i.dv, %bb.ab ]
  %.not.i132 = icmp eq i8 %.pre-phi, 0
  %i.fb = select i1 %.not.i132, i64 6, i64 3
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fb
  %i.fd = load i8, ptr %i.p, align 1
  %i.fe = icmp eq i8 %i.fd, 3
  %i.ff = select i1 %i.fe, i32 128, i32 32
  %i.fg = tail call i32 @bitncmp(ptr noundef nonnull %i.bz, ptr noundef nonnull %i.fc, i32 noundef %i.ff) #7 ; 6 uses
  switch i16 %i.j, label %bb.al [
    i16 20, label %bb.af
    i16 21, label %bb.ag
    i16 18, label %bb.ah
    i16 23, label %bb.ai
    i16 22, label %bb.aj
    i16 19, label %bb.ak
  ]

bb.af:                                            ; preds = %bb.ae
  %.lobit = lshr i32 %i.fg, 31
  %i.fh = zext nneg i32 %.lobit to i64
  br label %bb.am

bb.ag:                                            ; preds = %bb.ae
  %i.fi = icmp slt i32 %i.fg, 1
  %i.fj = zext i1 %i.fi to i64
  br label %bb.am

bb.ah:                                            ; preds = %.thread135, %bb.ae
  %i.fk = phi i32 [ %i.em, %.thread135 ], [ %i.fg, %bb.ae ]
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = zext i1 %i.fl to i64
  br label %bb.am

bb.ai:                                            ; preds = %bb.ae
  %i.fn = icmp sgt i32 %i.fg, -1
  %i.fo = zext i1 %i.fn to i64
  br label %bb.am

bb.aj:                                            ; preds = %bb.ae
  %i.fp = icmp sgt i32 %i.fg, 0
  %i.fq = zext i1 %i.fp to i64
  br label %bb.am

bb.ak:                                            ; preds = %.thread141, %bb.ae
  %i.fr = phi i32 [ %i.fa, %.thread141 ], [ %i.fg, %bb.ae ]
  %i.fs = icmp ne i32 %i.fr, 0
  %i.ft = zext i1 %i.fs to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.ae
  %i.fu = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fv = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 328, ptr noundef nonnull @__func__.inet_gist_consistent) #7
  unreachable

bb.am:                                            ; preds = %.thread134, %bb.ad, %bb.ac, %.thread, %bb.ab, %bb.aa, %bb.x, %bb.y, %bb.v, %bb.w, %bb.u, %bb.t, %bb.s, %bb.q, %bb.r, %bb.p, %bb.m, %bb.l, %bb.k, %bb.i, %bb.c, %bb.e, %bb.d, %bb.a, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.o, %bb.f
  %.0 = phi i64 [ 0, %bb.l ], [ 0, %bb.f ], [ 1, %bb.a ], [ 1, %bb.d ], [ 1, %bb.e ], [ %i.fh, %bb.af ], [ %i.fj, %bb.ag ], [ %i.fm, %bb.ah ], [ %i.fo, %bb.ai ], [ %i.fq, %bb.aj ], [ %i.ft, %bb.ak ], [ 1, %bb.x ], [ 1, %bb.aa ], [ 0, %bb.ab ], [ 0, %.thread ], [ 1, %bb.ac ], [ 0, %bb.ad ], [ %i.ce, %bb.o ], [ 0, %bb.m ], [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.u ], [ 1, %bb.v ], [ 1, %bb.c ], [ 0, %bb.i ], [ 0, %bb.k ], [ 1, %bb.r ], [ 1, %bb.w ], [ 1, %bb.y ], [ 1, %.thread134 ]
  ret i64 %.0
}

declare i32 @bitncmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #1

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i64 @inet_gist_union(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = load i32, ptr %i.c, align 8
  %i.f = add i32 %i.e, -1                         ; 2 uses
  %i.g = load i64, ptr %i.d, align 8
  %i.h = inttoptr i64 %i.g to ptr                 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %1 = zext i8 %i.m to i32                        ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.not53.not.i = icmp sgt i32 %i.f, 0
  br i1 %.not53.not.i, label %.lr.ph.i, label %calc_inet_union_params.exit.thread

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.058.i = phi i32 [ %.0.i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  %.03757.i = phi i32 [ %.2.i, %bb.c ], [ %i.p, %bb.a ]
  %.03856.i = phi i32 [ %.139.i, %bb.c ], [ %1, %bb.a ]
  %.04155.i = phi i32 [ %.142.i, %bb.c ], [ %i.k, %bb.a ]
  %.04354.i = phi i32 [ %spec.select.i, %bb.c ], [ %i.k, %bb.a ]
  %i.r = sext i32 %.058.i to i64
  %i.s = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.04354.i, i32 %i.x) ; 3 uses
  %.142.i = tail call i32 @llvm.umax.i32(i32 %.04155.i, i32 %i.x) ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %2 = zext i8 %i.z to i32
  %.139.i = tail call i32 @llvm.umin.i32(i32 %.03856.i, i32 %2) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.03757.i, i32 %i.ac) ; 3 uses
  %i.ad = icmp sgt i32 %.1.i, 0
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.af = tail call i32 @bitncommon(ptr noundef nonnull %i.q, ptr noundef nonnull %i.ae, i32 noundef %.1.i) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.2.i = phi i32 [ %i.af, %bb.b ], [ %.1.i, %.lr.ph.i ] ; 2 uses
  %.0.i = add i32 %.058.i, 1                      ; 2 uses
  %.not.i = icmp sgt i32 %.0.i, %i.f
  br i1 %.not.i, label %calc_inet_union_params.exit, label %.lr.ph.i, !llvm.loop !0

calc_inet_union_params.exit:                      ; preds = %bb.c
  %.not49.i = icmp eq i32 %spec.select.i, %.142.i
  br i1 %.not49.i, label %calc_inet_union_params.exit.thread, label %bb.d

bb.d:                                             ; preds = %calc_inet_union_params.exit
  br label %calc_inet_union_params.exit.thread

calc_inet_union_params.exit.thread:               ; preds = %bb.a, %bb.d, %calc_inet_union_params.exit
  %spec.select51.i21 = phi i32 [ %.2.i, %calc_inet_union_params.exit ], [ 0, %bb.d ], [ %i.p, %bb.a ] ; 5 uses
  %spec.select50.i20 = phi i32 [ %.139.i, %calc_inet_union_params.exit ], [ 0, %bb.d ], [ %1, %bb.a ]
  %.0 = phi i32 [ %spec.select.i, %calc_inet_union_params.exit ], [ 0, %bb.d ], [ %i.k, %bb.a ]
  %i.ag = load i64, ptr %i.d, align 8
  %i.ah = tail call ptr @palloc0(i64 noundef 20) #7 ; 7 uses
  %i.ai = trunc nuw i32 %.0 to i8                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store i8 %i.ai, ptr %i.aj, align 1
  %3 = trunc nuw i32 %spec.select50.i20 to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i8 %3, ptr %i.ak, align 1
  %i.al = trunc i32 %spec.select51.i21 to i8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 3
  store i8 %i.al, ptr %i.am, align 1
  %i.an = icmp sgt i32 %spec.select51.i21, 0
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %calc_inet_union_params.exit.thread
  %i.ao = inttoptr i64 %i.ag to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ar = add nuw i32 %spec.select51.i21, 7
  %i.as = sdiv i32 %i.ar, 8
  %i.at = sext i32 %i.as to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull readonly align 1 %i.ap, i64 %i.at, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %calc_inet_union_params.exit.thread
  %i.au = srem i32 %spec.select51.i21, 8          ; 2 uses
  %i.av = sdiv i32 %spec.select51.i21, 8
  %.not.i8 = icmp eq i32 %i.au, 0
  br i1 %.not.i8, label %build_inet_union_key.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = ashr i32 -256, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ay = sext i32 %i.av to i64
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = trunc i32 %i.aw to i8
  %i.bc = and i8 %i.ba, %i.bb
  store i8 %i.bc, ptr %i.az, align 1
  %.pre.i = load i8, ptr %i.aj, align 1
  br label %build_inet_union_key.exit

build_inet_union_key.exit:                        ; preds = %bb.f, %bb.g
  %i.bd = phi i8 [ %.pre.i, %bb.g ], [ %i.ai, %bb.f ]
  %i.be = icmp eq i8 %i.bd, 3
  %i.bf = select i1 %i.be, i8 41, i8 17
  store i8 %i.bf, ptr %i.ah, align 1
  %i.bg = ptrtoint ptr %i.ah to i64
  ret i64 %i.bg
}

; Function Attrs: nounwind uwtable
define dso_local i64 @inet_gist_compress(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 26
  %i.e = load i8, ptr %i.d, align 2, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @palloc(i64 noundef 32) #7 ; 6 uses
  %i.h = load i64, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = tail call ptr @pg_detoast_datum_packed(ptr noundef nonnull %i.i) #7 ; 6 uses
  %i.k = tail call ptr @palloc0(i64 noundef 20) #7 ; 6 uses
  %i.l = load i8, ptr %i.j, align 1
  %i.m = and i8 %i.l, 1
  %.not.i = icmp eq i8 %i.m, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %.v.i
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.p, align 1
  %i.q = load i8, ptr %i.j, align 1
  %i.r = and i8 %i.q, 1
  %.not.i34 = icmp eq i8 %i.r, 0
  %i.s = select i1 %.not.i34, i64 5, i64 2
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.u, ptr %i.v, align 1
  %i.w = icmp eq i8 %i.o, 3                       ; 3 uses
  %i.x = select i1 %i.w, i8 -128, i8 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.x, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.aa = load i8, ptr %i.j, align 1
  %i.ab = and i8 %i.aa, 1
  %.not.i36 = icmp eq i8 %i.ab, 0
  %i.ac = select i1 %.not.i36, i64 6, i64 3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ac
  %i.ae = select i1 %i.w, i64 16, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.z, ptr noundef nonnull align 1 dereferenceable(4) %i.ad, i64 %i.ae, i1 false)
  %i.af = select i1 %i.w, i8 41, i8 17
  store i8 %i.af, ptr %i.k, align 1
  %i.ag = ptrtoint ptr %i.k to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ %i.ag, %bb.c ], [ 0, %bb.b ]
  store i64 %.sink, ptr %i.g, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.al, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i16 %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 26
  store i8 0, ptr %i.aq, align 2
  %i.ar = ptrtoint ptr %i.g to i64
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ %i.b, %bb.a ], [ %i.ar, %.sink.split ]
  ret i64 %.0
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #1

declare ptr @palloc0(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @inet_gist_fetch(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 3 uses
  %i.f = tail call ptr @palloc0(i64 noundef 22) #7 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = load i8, ptr %i.f, align 1
  %i.j = and i8 %i.i, 1
  %.not.i = icmp eq i8 %i.j, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.v.i ; 3 uses
  store i8 %i.h, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.m, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.q = icmp eq i8 %i.h, 2                       ; 2 uses
  %i.r = select i1 %i.q, i64 4, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.o, ptr noundef nonnull align 1 dereferenceable(4) %i.p, i64 %i.r, i1 false)
  %i.s = select i1 %i.q, i32 40, i32 88
  store i32 %i.s, ptr %i.f, align 4
  %i.t = tail call ptr @palloc(i64 noundef 32) #7 ; 6 uses
  %i.u = ptrtoint ptr %i.f to i64
  store i64 %i.u, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i16 %i.ac, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 26
  store i8 0, ptr %i.ae, align 2
  %i.af = ptrtoint ptr %i.t to i64
  ret i64 %i.af
}

; Function Attrs: nounwind uwtable
define dso_local i64 @inet_gist_penalty(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = load i64, ptr %i.c, align 8
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = load i64, ptr %i.f, align 8
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.e

end_hunk_0
begin_hunk_1_@inet_gist_picksplit:bb.a
  %.03757.i = phi i32 [ %.2.i, %bb.c ], [ %i.y, %bb.a ]
  %.04155.i = phi i32 [ %.142.i, %bb.c ], [ %i.v, %bb.a ]
  %.04354.i = phi i32 [ %spec.select.i, %bb.c ], [ %i.v, %bb.a ]
  %i.aa = sext i32 %.058.i to i64
  %i.ab = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %.04354.i, i32 %i.ag) ; 3 uses
  %.142.i = tail call i32 @llvm.umax.i32(i32 %.04155.i, i32 %i.ag) ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  %.1.i = tail call i32 @llvm.smin.i32(i32 %.03757.i, i32 %i.aj) ; 3 uses
  %i.ak = icmp sgt i32 %.1.i, 0
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.am = tail call i32 @bitncommon(ptr noundef nonnull %i.z, ptr noundef nonnull %i.al, i32 noundef %.1.i) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.2.i = phi i32 [ %i.am, %bb.b ], [ %.1.i, %.lr.ph.i ] ; 2 uses
  %.0.i = add i32 %.058.i, 1                      ; 2 uses
  %.not.i = icmp sgt i32 %.0.i, %i.i
  br i1 %.not.i, label %calc_inet_union_params.exit, label %.lr.ph.i, !llvm.loop !0

calc_inet_union_params.exit:                      ; preds = %bb.c
  %.not49.i = icmp eq i32 %spec.select.i, %.142.i
  br i1 %.not49.i, label %calc_inet_union_params.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %calc_inet_union_params.exit, %bb.f
  %.081187 = phi i16 [ %i.ba, %bb.f ], [ 1, %calc_inet_union_params.exit ] ; 3 uses
  %i.an = zext i16 %.081187 to i64
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i32
  %.not95 = icmp eq i32 %.142.i, %i.at
  br i1 %.not95, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.au = load i32, ptr %i.o, align 8             ; 2 uses
  %i.av = add i32 %i.au, 1
  store i32 %i.av, ptr %i.o, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.aw = load i32, ptr %i.p, align 8             ; 2 uses
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.p, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sink = phi i32 [ %i.au, %bb.d ], [ %i.aw, %bb.e ]
  %.sink215 = phi ptr [ %i.l, %bb.d ], [ %i.m, %bb.e ]
  %i.ay = sext i32 %.sink to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %.sink215, i64 %i.ay
  store i16 %.081187, ptr %i.az, align 2
  %i.ba = add i16 %.081187, 1                     ; 2 uses
  %i.bb = zext i16 %i.ba to i32
  %.not92 = icmp slt i32 %i.i, %i.bb
  br i1 %.not92, label %.loopexit, label %.lr.ph, !llvm.loop !8

calc_inet_union_params.exit.thread:               ; preds = %bb.a, %calc_inet_union_params.exit
  %spec.select51.i163 = phi i32 [ %.2.i, %calc_inet_union_params.exit ], [ %i.y, %bb.a ] ; 2 uses
  %.043.lcssa.i162 = phi i32 [ %spec.select.i, %calc_inet_union_params.exit ], [ %i.v, %bb.a ]
  %i.bc = icmp eq i32 %.043.lcssa.i162, 3
  %i.bd = select i1 %i.bc, i32 128, i32 32        ; 3 uses
  %i.be = icmp slt i32 %spec.select51.i163, %i.bd
  br i1 %i.be, label %.lr.ph192, label %.thread.thread

.lr.ph192:                                        ; preds = %calc_inet_union_params.exit.thread
  %.not88188 = icmp slt i32 %i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph192, %._crit_edge.thread
  %.0151191 = phi i32 [ %spec.select51.i163, %.lr.ph192 ], [ %i.ce, %._crit_edge.thread ] ; 4 uses
  %i.bf = and i32 %.0151191, 7
  %i.bg = lshr exact i32 128, %i.bf
  store i32 0, ptr %i.p, align 8
  store i32 0, ptr %i.o, align 8
  br i1 %.not88188, label %._crit_edge.thread, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.g
  %i.bh = sdiv i32 %.0151191, 8
  %i.bi = sext i32 %i.bh to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph190, %bb.k
  %.1189 = phi i16 [ 1, %.lr.ph190 ], [ %i.bz, %bb.k ] ; 3 uses
  %i.bj = zext i16 %.1189 to i64
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bi
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = zext i8 %i.bp to i32
  %i.br = and i32 %i.bg, %i.bq
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %i.o, align 8             ; 2 uses
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.o, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bv = load i32, ptr %i.p, align 8             ; 2 uses
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.p, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink220 = phi i32 [ %i.bt, %bb.i ], [ %i.bv, %bb.j ]
  %.sink218 = phi ptr [ %i.l, %bb.i ], [ %i.m, %bb.j ]
  %i.bx = sext i32 %.sink220 to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %.sink218, i64 %i.bx
  store i16 %.1189, ptr %i.by, align 2
  %i.bz = add i16 %.1189, 1                       ; 2 uses
  %i.ca = zext i16 %i.bz to i32
  %.not88 = icmp samesign ult i32 %i.i, %i.ca
  br i1 %.not88, label %._crit_edge, label %bb.h, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i32, ptr %i.o, align 8
  %i.cb = icmp sgt i32 %.pre, 0
  br i1 %i.cb, label %bb.l, label %._crit_edge.thread

bb.l:                                             ; preds = %._crit_edge
  %i.cc = load i32, ptr %i.p, align 8
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.thread, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge, %bb.l
  %i.ce = add nsw i32 %.0151191, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, %i.bd
  br i1 %exitcond.not, label %.thread.thread, label %bb.g

.thread:                                          ; preds = %bb.l
  %i.cf = icmp slt i32 %.0151191, %i.bd
  br i1 %i.cf, label %.loopexit, label %.thread.thread

.thread.thread:                                   ; preds = %._crit_edge.thread, %calc_inet_union_params.exit.thread, %.thread
  store i32 0, ptr %i.p, align 8
  store i32 0, ptr %i.o, align 8
  %i.cg = lshr i32 %i.i, 1
  %.not90195 = icmp slt i32 %i.i, 2
  br i1 %.not90195, label %.preheader, label %.lr.ph198

.preheader:                                       ; preds = %.lr.ph198, %.thread.thread
  %.2.lcssa = phi i16 [ 1, %.thread.thread ], [ %i.cm, %.lr.ph198 ] ; 2 uses
  %i.ch = zext i16 %.2.lcssa to i32
  %.not91200 = icmp slt i32 %i.i, %i.ch
  br i1 %.not91200, label %.loopexit, label %.lr.ph202

.lr.ph198:                                        ; preds = %.thread.thread, %.lr.ph198
  %.2196 = phi i16 [ %i.cm, %.lr.ph198 ], [ 1, %.thread.thread ] ; 2 uses
  %i.ci = load i32, ptr %i.o, align 8             ; 2 uses
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.o, align 8
  %i.ck = sext i32 %i.ci to i64
  %i.cl = getelementptr inbounds [2 x i8], ptr %i.l, i64 %i.ck
  store i16 %.2196, ptr %i.cl, align 2
  %i.cm = add i16 %.2196, 1                       ; 3 uses
  %i.cn = zext i16 %i.cm to i32
  %.not90 = icmp samesign ult i32 %i.cg, %i.cn
  br i1 %.not90, label %.preheader, label %.lr.ph198, !llvm.loop !10

.lr.ph202:                                        ; preds = %.preheader, %.lr.ph202
  %.3201 = phi i16 [ %i.cs, %.lr.ph202 ], [ %.2.lcssa, %.preheader ] ; 2 uses
  %i.co = load i32, ptr %i.p, align 8             ; 2 uses
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.p, align 8
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.cq
  store i16 %.3201, ptr %i.cr, align 2
  %i.cs = add i16 %.3201, 1                       ; 2 uses
  %i.ct = zext i16 %i.cs to i32
  %.not91 = icmp samesign ult i32 %i.i, %i.ct
  br i1 %.not91, label %.loopexit, label %.lr.ph202, !llvm.loop !11

.loopexit:                                        ; preds = %bb.f, %.lr.ph202, %.preheader, %.thread
  %i.cu = load i32, ptr %i.o, align 8             ; 2 uses
  %i.cv = load i16, ptr %i.l, align 2
  %i.cw = zext i16 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = inttoptr i64 %i.cy to ptr               ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32                    ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 2
  %i.de = load i8, ptr %i.dd, align 1
  %1 = zext i8 %i.de to i32                       ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cz, i64 3
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dj = icmp sgt i32 %i.cu, 1
  br i1 %i.dj, label %.lr.ph.preheader.i102, label %calc_inet_union_params_indexed.exit.thread

.lr.ph.preheader.i102:                            ; preds = %.loopexit
  %wide.trip.count.i = zext nneg i32 %i.cu to i64
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %bb.n, %.lr.ph.preheader.i102
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i102 ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %.03754.i = phi i32 [ %i.dh, %.lr.ph.preheader.i102 ], [ %.2.i108, %bb.n ]
  %.03853.i = phi i32 [ %1, %.lr.ph.preheader.i102 ], [ %.139.i106, %bb.n ]
  %.04152.i = phi i32 [ %i.dc, %.lr.ph.preheader.i102 ], [ %.142.i105, %bb.n ]
  %.04351.i = phi i32 [ %i.dc, %.lr.ph.preheader.i102 ], [ %spec.select.i104, %bb.n ]
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = zext i16 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = inttoptr i64 %i.do to ptr               ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %spec.select.i104 = tail call i32 @llvm.umin.i32(i32 %.04351.i, i32 %i.ds) ; 3 uses
  %.142.i105 = tail call i32 @llvm.umax.i32(i32 %.04152.i, i32 %i.ds) ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 2
  %i.du = load i8, ptr %i.dt, align 1
  %2 = zext i8 %i.du to i32
  %.139.i106 = tail call i32 @llvm.umin.i32(i32 %.03853.i, i32 %2) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 3
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i32
  %.1.i107 = tail call i32 @llvm.smin.i32(i32 %.03754.i, i32 %i.dx) ; 3 uses
  %i.dy = icmp sgt i32 %.1.i107, 0
  br i1 %i.dy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i103
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %i.ea = tail call i32 @bitncommon(ptr noundef nonnull %i.di, ptr noundef nonnull %i.dz, i32 noundef %.1.i107) #7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i103
  %.2.i108 = phi i32 [ %i.ea, %bb.m ], [ %.1.i107, %.lr.ph.i103 ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %calc_inet_union_params_indexed.exit, label %.lr.ph.i103, !llvm.loop !12

calc_inet_union_params_indexed.exit:              ; preds = %bb.n
  %.not.i100 = icmp eq i32 %spec.select.i104, %.142.i105
  br i1 %.not.i100, label %calc_inet_union_params_indexed.exit.thread, label %bb.o

bb.o:                                             ; preds = %calc_inet_union_params_indexed.exit
  br label %calc_inet_union_params_indexed.exit.thread

calc_inet_union_params_indexed.exit.thread:       ; preds = %.loopexit, %bb.o, %calc_inet_union_params_indexed.exit
  %spec.select50.i101174 = phi i32 [ %.2.i108, %calc_inet_union_params_indexed.exit ], [ 0, %bb.o ], [ %i.dh, %.loopexit ] ; 5 uses
  %spec.select49.i173 = phi i32 [ %.139.i106, %calc_inet_union_params_indexed.exit ], [ 0, %bb.o ], [ %1, %.loopexit ]
  %.0154 = phi i32 [ %spec.select.i104, %calc_inet_union_params_indexed.exit ], [ 0, %bb.o ], [ %i.dc, %.loopexit ]
  %i.eb = load i16, ptr %i.l, align 2
  %i.ec = zext i16 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.ec
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = tail call ptr @palloc0(i64 noundef 20) #7 ; 7 uses
  %i.eg = trunc nuw i32 %.0154 to i8              ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  store i8 %i.eg, ptr %i.eh, align 1
  %3 = trunc nuw i32 %spec.select49.i173 to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  store i8 %3, ptr %i.ei, align 1
  %i.ej = trunc i32 %spec.select50.i101174 to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  store i8 %i.ej, ptr %i.ek, align 1
  %i.el = icmp sgt i32 %spec.select50.i101174, 0
  br i1 %i.el, label %bb.p, label %bb.q

bb.p:                                             ; preds = %calc_inet_union_params_indexed.exit.thread
  %i.em = inttoptr i64 %i.ee to ptr
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ep = add nuw i32 %spec.select50.i101174, 7
  %i.eq = sdiv i32 %i.ep, 8
  %i.er = sext i32 %i.eq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eo, ptr nonnull readonly align 1 %i.en, i64 %i.er, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %calc_inet_union_params_indexed.exit.thread
  %i.es = srem i32 %spec.select50.i101174, 8      ; 2 uses
  %i.et = sdiv i32 %spec.select50.i101174, 8
  %.not.i109 = icmp eq i32 %i.es, 0
  br i1 %.not.i109, label %build_inet_union_key.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eu = ashr i32 -256, %i.es
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ew = sext i32 %i.et to i64
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 %i.ew ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1
  %i.ez = trunc i32 %i.eu to i8
  %i.fa = and i8 %i.ey, %i.ez
  store i8 %i.fa, ptr %i.ex, align 1
  %.pre.i = load i8, ptr %i.eh, align 1
  br label %build_inet_union_key.exit

build_inet_union_key.exit:                        ; preds = %bb.q, %bb.r
  %i.fb = phi i8 [ %.pre.i, %bb.r ], [ %i.eg, %bb.q ]
  %i.fc = icmp eq i8 %i.fb, 3
  %i.fd = select i1 %i.fc, i8 41, i8 17
  store i8 %i.fd, ptr %i.ef, align 1
  %i.fe = ptrtoint ptr %i.ef to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.fe, ptr %i.ff, align 8
  %i.fg = load i32, ptr %i.p, align 8             ; 2 uses
  %i.fh = load i16, ptr %i.m, align 2
  %i.fi = zext i16 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.fi
  %i.fk = load i64, ptr %i.fj, align 8
  %i.fl = inttoptr i64 %i.fk to ptr               ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = zext i8 %i.fn to i32                    ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fq = load i8, ptr %i.fp, align 1
  %4 = zext i8 %i.fq to i32                       ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fv = icmp sgt i32 %i.fg, 1
  br i1 %i.fv, label %.lr.ph.preheader.i117, label %calc_inet_union_params_indexed.exit132.thread

.lr.ph.preheader.i117:                            ; preds = %build_inet_union_key.exit
  %wide.trip.count.i118 = zext nneg i32 %i.fg to i64
  br label %.lr.ph.i119

.lr.ph.i119:                                      ; preds = %bb.t, %.lr.ph.preheader.i117
  %indvars.iv.i120 = phi i64 [ 1, %.lr.ph.preheader.i117 ], [ %indvars.iv.next.i130, %bb.t ] ; 2 uses
  %.03754.i121 = phi i32 [ %i.ft, %.lr.ph.preheader.i117 ], [ %.2.i129, %bb.t ]
  %.03853.i122 = phi i32 [ %4, %.lr.ph.preheader.i117 ], [ %.139.i127, %bb.t ]
  %.04152.i123 = phi i32 [ %i.fo, %.lr.ph.preheader.i117 ], [ %.142.i126, %bb.t ]
  %.04351.i124 = phi i32 [ %i.fo, %.lr.ph.preheader.i117 ], [ %spec.select.i125, %bb.t ]
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv.i120
  %i.fx = load i16, ptr %i.fw, align 2
  %i.fy = zext i16 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = inttoptr i64 %i.ga to ptr               ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i32                    ; 2 uses
  %spec.select.i125 = tail call i32 @llvm.umin.i32(i32 %.04351.i124, i32 %i.ge) ; 3 uses
  %.142.i126 = tail call i32 @llvm.umax.i32(i32 %.04152.i123, i32 %i.ge) ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  %i.gg = load i8, ptr %i.gf, align 1
  %5 = zext i8 %i.gg to i32
  %.139.i127 = tail call i32 @llvm.umin.i32(i32 %.03853.i122, i32 %5) ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 3
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i32
  %.1.i128 = tail call i32 @llvm.smin.i32(i32 %.03754.i121, i32 %i.gj) ; 3 uses
  %i.gk = icmp sgt i32 %.1.i128, 0
  br i1 %i.gk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i119
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %i.gm = tail call i32 @bitncommon(ptr noundef nonnull %i.fu, ptr noundef nonnull %i.gl, i32 noundef %.1.i128) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i119
  %.2.i129 = phi i32 [ %i.gm, %bb.s ], [ %.1.i128, %.lr.ph.i119 ] ; 2 uses
  %indvars.iv.next.i130 = add nuw nsw i64 %indvars.iv.i120, 1 ; 2 uses
  %exitcond.not.i131 = icmp eq i64 %indvars.iv.next.i130, %wide.trip.count.i118
  br i1 %exitcond.not.i131, label %calc_inet_union_params_indexed.exit132, label %.lr.ph.i119, !llvm.loop !12

calc_inet_union_params_indexed.exit132:           ; preds = %bb.t
  %.not.i114 = icmp eq i32 %spec.select.i125, %.142.i126
  br i1 %.not.i114, label %calc_inet_union_params_indexed.exit132.thread, label %bb.u

bb.u:                                             ; preds = %calc_inet_union_params_indexed.exit132
  br label %calc_inet_union_params_indexed.exit132.thread

calc_inet_union_params_indexed.exit132.thread:    ; preds = %build_inet_union_key.exit, %bb.u, %calc_inet_union_params_indexed.exit132
  %spec.select50.i116183 = phi i32 [ %.2.i129, %calc_inet_union_params_indexed.exit132 ], [ 0, %bb.u ], [ %i.ft, %build_inet_union_key.exit ] ; 5 uses
  %spec.select49.i115182 = phi i32 [ %.139.i127, %calc_inet_union_params_indexed.exit132 ], [ 0, %bb.u ], [ %4, %build_inet_union_key.exit ]
  %.1155 = phi i32 [ %spec.select.i125, %calc_inet_union_params_indexed.exit132 ], [ 0, %bb.u ], [ %i.fo, %build_inet_union_key.exit ]
  %i.gn = load i16, ptr %i.m, align 2
  %i.go = zext i16 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.go
  %i.gq = load i64, ptr %i.gp, align 8
  %i.gr = tail call ptr @palloc0(i64 noundef 20) #7 ; 7 uses
  %i.gs = trunc nuw i32 %.1155 to i8              ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 1 ; 2 uses
  store i8 %i.gs, ptr %i.gt, align 1
  %6 = trunc nuw i32 %spec.select49.i115182 to i8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  store i8 %6, ptr %i.gu, align 1
  %i.gv = trunc i32 %spec.select50.i116183 to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 3
  store i8 %i.gv, ptr %i.gw, align 1
  %i.gx = icmp sgt i32 %spec.select50.i116183, 0
  br i1 %i.gx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %calc_inet_union_params_indexed.exit132.thread
  %i.gy = inttoptr i64 %i.gq to ptr
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.hb = add nuw i32 %spec.select50.i116183, 7
  %i.hc = sdiv i32 %i.hb, 8
  %i.hd = sext i32 %i.hc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr nonnull readonly align 1 %i.gz, i64 %i.hd, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %calc_inet_union_params_indexed.exit132.thread
  %i.he = srem i32 %spec.select50.i116183, 8      ; 2 uses
  %i.hf = sdiv i32 %spec.select50.i116183, 8
  %.not.i133 = icmp eq i32 %i.he, 0
  br i1 %.not.i133, label %build_inet_union_key.exit135, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hg = ashr i32 -256, %i.he
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.hi = sext i32 %i.hf to i64
  %i.hj = getelementptr inbounds i8, ptr %i.hh, i64 %i.hi ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = trunc i32 %i.hg to i8
  %i.hm = and i8 %i.hk, %i.hl
  store i8 %i.hm, ptr %i.hj, align 1
  %.pre.i134 = load i8, ptr %i.gt, align 1
  br label %build_inet_union_key.exit135

build_inet_union_key.exit135:                     ; preds = %bb.w, %bb.x
  %i.hn = phi i8 [ %.pre.i134, %bb.x ], [ %i.gs, %bb.w ]
  %i.ho = icmp eq i8 %i.hn, 3
  %i.hp = select i1 %i.ho, i8 41, i8 17
  store i8 %i.hp, ptr %i.gr, align 1
  %i.hq = ptrtoint ptr %i.gr to i64
  %i.hr = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 %i.hq, ptr %i.hr, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @inet_gist_same(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = icmp eq i8 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = icmp eq i8 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.t = load i8, ptr %i.s, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.z = icmp eq i8 %i.j, 3
  %i.aa = select i1 %i.z, i64 16, i64 4
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.x, ptr noundef nonnull dereferenceable(4) %i.y, i64 %i.aa)
  %i.ab = icmp eq i32 %bcmp, 0
  %i.ac = zext i1 %i.ab to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ad = phi i8 [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ], [ %i.ac, %bb.d ]
  %i.ae = inttoptr i64 %i.h to ptr
  store i8 %i.ad, ptr %i.ae, align 1
  ret i64 %i.h
}

declare ptr @pg_detoast_datum_packed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
end_hunk_1
