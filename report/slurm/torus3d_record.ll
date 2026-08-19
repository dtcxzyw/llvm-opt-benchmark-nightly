inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@torus3d_coord_to_index:bb.a
  %i.b = zext i16 %2 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i16, ptr %i.c, align 8
  %i.e = zext i16 %i.d to i32
  %i.f = zext i16 %3 to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.h = load i16, ptr %i.g, align 2
  %i.i = zext i16 %i.h to i32
  %i.j = mul nuw i32 %i.i, %i.f
  %reass.add = add nuw i32 %i.j, %i.b
  %reass.mul = mul i32 %reass.add, %i.e
  %i.k = add nuw nsw i32 %reass.mul, %i.a
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @torus3d_index_to_coord(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 2)) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i32
  %i.d = urem i32 %1, %i.c
  %i.e = trunc nuw i32 %i.d to i16
  store i16 %i.e, ptr %2, align 2
  %i.f = load i16, ptr %i.a, align 8
  %i.g = zext i16 %i.f to i32
  %i.h = udiv i32 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = urem i32 %i.h, %i.k
  %i.m = trunc nuw i32 %i.l to i16
  store i16 %i.m, ptr %3, align 2
  %i.n = load i16, ptr %i.a, align 8
  %i.o = zext i16 %i.n to i32
  %i.p = load i16, ptr %i.i, align 2
  %i.q = zext i16 %i.p to i32
  %i.r = mul nuw i32 %i.q, %i.o
  %i.s = udiv i32 %1, %i.r
  %i.t = trunc i32 %i.s to i16
  store i16 %i.t, ptr %4, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @torus3d_record_validate(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 6 uses
  %i.c = alloca i16, align 2                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 601, ptr noundef nonnull @__func__.torus3d_record_validate) #10 ; 5 uses
  %i.o = load i32, ptr %i.k, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store i32 %i.o, ptr %i.p, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = tail call ptr @slurm_xcalloc(i64 noundef %i.q, i64 noundef 56, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 603, ptr noundef nonnull @__func__.torus3d_record_validate) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 7 uses
  store ptr %i.r, ptr %i.s, align 8
  %i.t = load i32, ptr @node_record_count, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = tail call ptr @bit_alloc(i64 noundef %i.u) #10
  store ptr %i.v, ptr %i.n, align 8
  %i.w = load i32, ptr %i.p, align 8
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph205, label %_log_toruses.exit

.lr.ph205:                                        ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  br label %bb.e

.preheader:                                       ; preds = %._crit_edge
  %i.z = icmp sgt i32 %i.ss, 0
  br i1 %i.z, label %.lr.ph207, label %_log_toruses.exit

bb.e:                                             ; preds = %.lr.ph205, %._crit_edge
  %indvars.iv318 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next319, %._crit_edge ] ; 9 uses
  %i.aa = load ptr, ptr %i.y, align 8
  %i.ab = getelementptr inbounds nuw [56 x i8], ptr %i.aa, i64 %indvars.iv318 ; 12 uses
  %i.ac = load ptr, ptr %i.s, align 8
  %i.ad = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %indvars.iv318 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i8, ptr %i.af, align 1
  %.not104.i = icmp eq i8 %i.ag, 0
  br i1 %.not104.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.5) #10 ; 0 uses
  br label %_validate_config.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not105.i = icmp eq ptr %i.aj, null
  br i1 %.not105.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.al = load i32, ptr %i.ak, align 8
  %.not106.i = icmp eq i32 %i.al, 0
  br i1 %.not106.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.6) #10 ; 0 uses
  br label %_validate_config.exit.thread

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.an = load i16, ptr %i.ab, align 8            ; 4 uses
  %.not107.i = icmp eq i16 %i.an, 0
  br i1 %.not107.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 4 uses
  %i.ap = load i16, ptr %i.ao, align 2            ; 3 uses
  %.not108.i = icmp eq i16 %i.ap, 0
  br i1 %.not108.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 4 uses
  %i.ar = load i16, ptr %i.aq, align 4            ; 3 uses
  %.not109.i = icmp eq i16 %i.ar, 0
  br i1 %.not109.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.as = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %_validate_config.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.at = zext i16 %i.an to i64
  %i.au = zext i16 %i.ap to i64
  %i.av = mul nuw nsw i64 %i.au, %i.at
  %i.aw = zext i16 %i.ar to i64
  %i.ax = mul nuw nsw i64 %i.av, %i.aw            ; 6 uses
  %i.ay = icmp samesign ugt i64 %i.ax, 4294967295
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = zext i16 %i.an to i32
  %i.ba = zext i16 %i.ap to i32
  %i.bb = zext i16 %i.ar to i32
  %i.bc = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.8, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb) #10 ; 0 uses
  br label %_validate_config.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 7 uses
  store i16 %i.an, ptr %i.bd, align 8
  %i.be = load i16, ptr %i.ao, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 50 ; 9 uses
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = load i16, ptr %i.aq, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 52 ; 7 uses
  store i16 %i.bg, ptr %i.bh, align 4
  %i.bi = trunc nuw i64 %i.ax to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.bi, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %i.ae, align 8
  %i.bl = call ptr @xstrdup(ptr noundef %i.bk) #10
  store ptr %i.bl, ptr %i.ad, align 8
  %i.bm = call ptr @slurm_xcalloc(i64 noundef %i.ax, i64 noundef 4, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 518, ptr noundef nonnull @__func__._validate_config) #10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 5 uses
  store ptr %i.bm, ptr %i.bn, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.bo = load i32, ptr @node_record_count, align 4
  %i.bp = sext i32 %i.bo to i64
  %i.bq = call ptr @bit_alloc(i64 noundef %i.bp) #10
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  store ptr %i.bq, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %.not110.i = icmp eq i32 %i.bt, 0
  br i1 %.not110.i, label %bb.an, label %bb.t

bb.s:                                             ; preds = %bb.s, %bb.q
  %indvars.iv.i.a = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.a
  store i32 -2, ptr %i.bv, align 4
  %indvars.iv.next.i = add i64 %indvars.iv.i.a, 1 ; 2 uses
  %1 = and i64 %indvars.iv.next.i, 4294967295
  %i.bw = icmp samesign ugt i64 %i.ax, %1
  br i1 %i.bw, label %bb.s, label %bb.r, !llvm.loop !8

bb.t:                                             ; preds = %bb.r
  %i.bx = icmp sgt i32 %i.bt, 0
  br i1 %i.bx, label %.lr.ph93.i, label %_validate_regions_config.exit

.lr.ph93.i:                                       ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i76, %.lr.ph93.i
  %.2 = phi ptr [ null, %.lr.ph93.i ], [ %.5, %._crit_edge.i76 ] ; 6 uses
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph93.i ], [ %indvars.iv.next.i77, %._crit_edge.i76 ] ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %indvars.iv.i70 ; 8 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6 ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2            ; 2 uses
  %i.cd = zext i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2            ; 2 uses
  %i.cg = zext i16 %i.cf to i64
  %i.ch = mul nuw nsw i64 %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.cj = load i16, ptr %i.ci, align 2            ; 2 uses
  %i.ck = zext i16 %i.cj to i64
  %i.cl = mul nuw nsw i64 %i.ch, %i.ck            ; 3 uses
  %i.cm = zext i16 %i.cc to i32                   ; 2 uses
  %i.cn = zext i16 %i.cf to i32                   ; 2 uses
  %i.co = mul nuw i32 %i.cn, %i.cm
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %.not.i71 = icmp eq ptr %i.cq, null
  br i1 %.not.i71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = load i8, ptr %i.cq, align 1
  %.not74.i = icmp eq i8 %i.cr, 0
  br i1 %.not74.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cs = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.12) #10 ; 0 uses
  br label %.thread.i

bb.x:                                             ; preds = %bb.v
  %i.ct = load i16, ptr %i.ca, align 8
  %i.cu = zext i16 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cu, %i.cm
  %i.cw = load i16, ptr %i.ab, align 8
  %i.cx = zext i16 %i.cw to i32
  %i.cy = icmp samesign ugt i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 2 ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = zext i16 %i.da to i32
  %i.dc = add nuw nsw i32 %i.db, %i.cn
  %i.dd = load i16, ptr %i.ao, align 2
  %i.de = zext i16 %i.dd to i32
  %i.df = icmp samesign ugt i32 %i.dc, %i.de
  br i1 %i.df, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 4 ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 4
  %i.di = zext i16 %i.dh to i32
  %i.dj = zext i16 %i.cj to i32
  %i.dk = add nuw nsw i32 %i.di, %i.dj
  %i.dl = load i16, ptr %i.aq, align 4
  %i.dm = zext i16 %i.dl to i32
  %i.dn = icmp samesign ugt i32 %i.dk, %i.dm
  br i1 %i.dn, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.do = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13) #10 ; 0 uses
  br label %.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.dp = call ptr @hostlist_create(ptr noundef nonnull %i.cq) #10 ; 6 uses
  %.not75.i = icmp eq ptr %i.dp, null
  br i1 %.not75.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dq = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.14) #10 ; 0 uses
  br label %.thread.i

bb.ad:                                            ; preds = %bb.ab
  %i.dr = call i32 @hostlist_count(ptr noundef nonnull %i.dp) #10
  %i.ds = sext i32 %i.dr to i64
  %.not76.i = icmp eq i64 %i.cl, %i.ds
  br i1 %.not76.i, label %.preheader.i72, label %bb.ae

.preheader.i72:                                   ; preds = %bb.ad
  %.not94.i = icmp eq i64 %i.cl, 0
  br i1 %.not94.i, label %._crit_edge.i76, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.preheader.i72
  %i.dt = zext i32 %i.co to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.du = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.15) #10 ; 0 uses
  call void @hostlist_destroy(ptr noundef nonnull %i.dp) #10
  br label %.thread.i

bb.af:                                            ; preds = %bb.am, %.lr.ph.i73
  %.3 = phi ptr [ %.2, %.lr.ph.i73 ], [ %.4, %bb.am ] ; 4 uses
  %.090.i = phi i64 [ 0, %.lr.ph.i73 ], [ %i.fi, %bb.am ] ; 4 uses
  %i.dv = load i16, ptr %i.cb, align 2
  %i.dw = load i16, ptr %i.ce, align 8
  %i.dx = call ptr @hostlist_shift(ptr noundef nonnull %i.dp) #10 ; 4 uses
  %i.dy = call ptr @find_node_record(ptr noundef %i.dx) #10 ; 2 uses
  %.not77.i = icmp eq ptr %i.dy, null
  br i1 %.not77.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not78.i = icmp eq ptr %.3, null
  br i1 %.not78.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dz = call ptr @hostlist_create(ptr noundef null) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.6 = phi ptr [ %i.dz, %bb.ah ], [ %.3, %bb.ag ] ; 2 uses
  %i.ea = call i32 @hostlist_push_host(ptr noundef %.6, ptr noundef %i.dx) #10 ; 0 uses
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  %i.eb = udiv i64 %.090.i, %i.dt
  %i.ec = trunc i64 %i.eb to i16
  %i.ed = zext i16 %i.dv to i64                   ; 2 uses
  %i.ee = udiv i64 %.090.i, %i.ed
  %i.ef = zext i16 %i.dw to i64
  %i.eg = urem i64 %i.ee, %i.ef
  %i.eh = trunc nuw i64 %i.eg to i16
  %i.ei = urem i64 %.090.i, %i.ed
  %i.ej = trunc nuw i64 %i.ei to i16
  %i.ek = load i16, ptr %i.ca, align 8
  %i.el = add i16 %i.ek, %i.ej
  %i.em = load i16, ptr %i.cz, align 2
  %i.en = add i16 %i.em, %i.eh
  %i.eo = load i16, ptr %i.dg, align 4
  %i.ep = add i16 %i.eo, %i.ec
  %i.eq = zext i16 %i.el to i64
  %i.er = zext i16 %i.en to i64
  %i.es = load i16, ptr %i.bd, align 8
  %i.et = zext i16 %i.es to i64
  %i.eu = zext i16 %i.ep to i64
  %i.ev = load i16, ptr %i.bf, align 2
  %i.ew = zext i16 %i.ev to i64
  %i.ex = mul nuw nsw i64 %i.ew, %i.eu
  %reass.add.i.i = add nuw nsw i64 %i.ex, %i.er
  %reass.mul.i.i = mul nuw nsw i64 %reass.add.i.i, %i.et
  %i.ey = add nuw nsw i64 %reass.mul.i.i, %i.eq
  %i.ez = load ptr, ptr %i.bn, align 8
  %i.fa = and i64 %i.ey, 4294967295
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.fa ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %.not79.i74 = icmp eq i32 %i.fc, -2
  br i1 %.not79.i74, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dy, i64 216
  %i.fe = load i32, ptr %i.fd, align 8            ; 2 uses
  store i32 %i.fe, ptr %i.fb, align 4
  %i.ff = load ptr, ptr %i.br, align 8
  %i.fg = zext i32 %i.fe to i64
  call void @bit_set(ptr noundef %i.ff, i64 noundef %i.fg) #10
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fh = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.16) #10 ; 0 uses
  call void @free(ptr noundef %i.dx) #10
  call void @hostlist_destroy(ptr noundef nonnull %i.dp) #10
  br label %.thread.i

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %.4 = phi ptr [ %.6, %bb.ai ], [ %.3, %bb.ak ]  ; 2 uses
  call void @free(ptr noundef %i.dx) #10
  %i.fi = add nuw nsw i64 %.090.i, 1              ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %i.fi, %i.cl
  br i1 %exitcond.not.i75, label %._crit_edge.i76, label %bb.af, !llvm.loop !11

._crit_edge.i76:                                  ; preds = %bb.am, %.preheader.i72
  %.5 = phi ptr [ %.2, %.preheader.i72 ], [ %.4, %bb.am ] ; 2 uses
  call void @hostlist_destroy(ptr noundef nonnull %i.dp) #10
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %i.fj = load i32, ptr %i.bs, align 8
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next.i77, %i.fk
  br i1 %i.fl, label %bb.u, label %_validate_regions_config.exit, !llvm.loop !12

bb.an:                                            ; preds = %bb.r
  %i.fm = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not111.i = icmp eq ptr %i.fm, null
  br i1 %.not111.i, label %_validate_regions_config.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fn = load i8, ptr %i.fm, align 1
end_hunk_0
begin_hunk_1_@torus3d_record_validate:bb.a
  %i.wb = icmp sgt i32 %i.wa, 4
  br i1 %i.wb, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vz, i64 44
  %i.wd = load i32, ptr %i.wc, align 4
  %i.we = getelementptr inbounds nuw i8, ptr %i.vz, i64 36
  %i.wf = load i16, ptr %i.we, align 4
  %i.wg = zext i16 %i.wf to i32
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vz, i64 38
  %i.wi = load i16, ptr %i.wh, align 2
  %i.wj = zext i16 %i.wi to i32
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vz, i64 40
  %i.wl = load i16, ptr %i.wk, align 4
  %i.wm = zext i16 %i.wl to i32
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  %i.wo = load i16, ptr %i.wn, align 8
  %i.wp = zext i16 %i.wo to i32
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vz, i64 26
  %i.wr = load i16, ptr %i.wq, align 2
  %i.ws = zext i16 %i.wr to i32
  %i.wt = getelementptr inbounds nuw i8, ptr %i.vz, i64 28
  %i.wu = load i16, ptr %i.wt, align 4
  %i.wv = zext i16 %i.wu to i32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.vz, i64 42
  %i.wx = load i8, ptr %i.ww, align 2, !range !24, !noundef !25
  %i.wy = trunc nuw i8 %i.wx to i1
  %i.wz = select i1 %i.wy, ptr @.str.27, ptr @.str.28
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.26, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_placement, i32 noundef %i.wd, i32 noundef %i.wg, i32 noundef %i.wj, i32 noundef %i.wm, i32 noundef %i.wp, i32 noundef %i.ws, i32 noundef %i.wv, ptr noundef nonnull %i.wz) #10
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.xa = load ptr, ptr %i.vz, align 8
  %.not.i23.i = icmp eq ptr %i.xa, null
  br i1 %.not.i23.i, label %_log_placement.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.da
  %i.xb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8 ; 2 uses
  %i.xc = load i32, ptr %i.xb, align 8
  %i.xd = icmp sgt i32 %i.xc, 0
  br i1 %i.xd, label %.lr.ph.i24.i, label %_log_placement.exit.i

.lr.ph.i24.i:                                     ; preds = %.preheader.i.i, %bb.dc
  %indvars.iv.i25.i = phi i64 [ %indvars.iv.next.i26.i, %bb.dc ], [ 0, %.preheader.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.xe = load ptr, ptr %i.vz, align 8
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.xe, i64 %indvars.iv.i25.i
  %i.xg = load ptr, ptr %i.xf, align 8
  %i.xh = call ptr @bitmap2node_name(ptr noundef %i.xg) #10
  store ptr %i.xh, ptr %i.g, align 8
  %i.xi = call i32 @get_log_level() #10
  %i.xj = icmp sgt i32 %i.xi, 4
  br i1 %i.xj, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.lr.ph.i24.i
  %i.xk = load ptr, ptr %i.g, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.29, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_placement, ptr noundef %i.xk) #10
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i24.i
  call void @slurm_xfree(ptr noundef nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %indvars.iv.next.i26.i = add nuw nsw i64 %indvars.iv.i25.i, 1 ; 2 uses
  %i.xl = load i32, ptr %i.xb, align 8
  %i.xm = sext i32 %i.xl to i64
  %i.xn = icmp slt i64 %indvars.iv.next.i26.i, %i.xm
  br i1 %i.xn, label %.lr.ph.i24.i, label %_log_placement.exit.i, !llvm.loop !32

_log_placement.exit.i:                            ; preds = %bb.dc, %.preheader.i.i, %bb.da
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %i.xo = load i32, ptr %i.vq, align 8
  %i.xp = sext i32 %i.xo to i64
  %i.xq = icmp slt i64 %indvars.iv.next.i57, %i.xp
  br i1 %i.xq, label %bb.cy, label %._crit_edge.i54, !llvm.loop !33

_log_toruses.exit:                                ; preds = %._crit_edge.i54, %bb.d, %.preheader, %._crit_edge208
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.n, ptr %i.xr, align 8
  ret i32 0

.lr.ph207:                                        ; preds = %.preheader, %bb.de
  %.pr324 = phi i32 [ %.pr, %bb.de ], [ %i.ss, %.preheader ]
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %bb.de ], [ 0, %.preheader ] ; 2 uses
  %i.xs = load ptr, ptr %i.s, align 8
  %i.xt = getelementptr inbounds nuw [56 x i8], ptr %i.xs, i64 %indvars.iv321 ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  %i.xv = load i32, ptr %i.xu, align 8
  %i.xw = icmp sgt i32 %i.xv, 0
  br i1 %i.xw, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph207
  %i.xx = load ptr, ptr %i.n, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.xz = load ptr, ptr %i.xy, align 8
  call void @bit_or(ptr noundef %i.xx, ptr noundef %i.xz) #10
  %.pr.pre = load i32, ptr %i.p, align 8
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph207, %bb.dd
  %.pr = phi i32 [ %.pr324, %.lr.ph207 ], [ %.pr.pre, %bb.dd ] ; 3 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.ya = sext i32 %.pr to i64
  %i.yb = icmp slt i64 %indvars.iv.next322, %i.ya
  br i1 %i.yb, label %.lr.ph207, label %._crit_edge208, !llvm.loop !34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: noreturn
declare void @fatal(ptr noundef, ...) local_unnamed_addr #4

declare ptr @slurm_xcalloc(i64 noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @bit_alloc(i64 noundef) local_unnamed_addr #5

declare i32 @xstrcmp(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @bit_overlap_any(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @bit_or(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @torus3d_record_update_torus_config(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = sext i32 %1 to i64                       ; 3 uses
  %i.j = getelementptr inbounds [56 x i8], ptr %i.h, i64 %i.i ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.c, label %.preheader19

.preheader19:                                     ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader19
  tail call void @slurm_xfree(ptr noundef nonnull %i.l) #10
  br label %bb.c

.lr.ph:                                           ; preds = %.preheader19, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader19 ] ; 2 uses
  %i.q = load ptr, ptr %i.l, align 8
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.s) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.n, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !35

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds [56 x i8], ptr %i.x, i64 %i.i ; 5 uses
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = getelementptr inbounds [56 x i8], ptr %i.z, i64 %i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call ptr @bit_alloc(i64 noundef %i.ad) #10 ; 7 uses
  store ptr %i.ae, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.af = tail call ptr @slurm_xcalloc(i64 noundef 8, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 736, ptr noundef nonnull @__func__._rebuild_regions) #10
  store ptr %i.af, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 52 ; 5 uses
  %i.ah = load i16, ptr %i.ag, align 4            ; 2 uses
  %.not65.i.a = icmp eq i16 %i.ah, 0
  br i1 %.not65.i.a, label %._crit_edge62.i, label %.preheader35.lr.ph.i

.preheader35.lr.ph.i:                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 50 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 5 uses
  %i.al = load i16, ptr %i.ai, align 2            ; 3 uses
  %.not66.i.a = icmp eq i16 %i.al, 0
  br i1 %.not66.i.a, label %._crit_edge62.i, label %.preheader35.i

.preheader35.i:                                   ; preds = %.preheader35.lr.ph.i, %._crit_edge54.i
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %._crit_edge54.i ], [ 1, %.preheader35.lr.ph.i ] ; 2 uses
  %i.am = phi i16 [ %i.aw, %._crit_edge54.i ], [ %i.ah, %.preheader35.lr.ph.i ] ; 2 uses
  %i.an = phi i16 [ %i.ax, %._crit_edge54.i ], [ %i.al, %.preheader35.lr.ph.i ] ; 3 uses
  %2 = phi i16 [ %i.ay, %._crit_edge54.i ], [ %i.al, %.preheader35.lr.ph.i ] ; 2 uses
  %indvars.iv102.i = phi i64 [ %.pre109.i, %._crit_edge54.i ], [ 0, %.preheader35.lr.ph.i ] ; 8 uses
  %.02859.i = phi i32 [ %.1.lcssa.i, %._crit_edge54.i ], [ 8, %.preheader35.lr.ph.i ] ; 3 uses
  %.02958.i = phi i32 [ %.130.lcssa.i, %._crit_edge54.i ], [ 0, %.preheader35.lr.ph.i ] ; 3 uses
  %.not67.i.a = icmp eq i16 %2, 0
  %.pre109.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 4 uses
  br i1 %.not67.i.a, label %._crit_edge54.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader35.i
  %i.ao = load i16, ptr %i.aj, align 8            ; 2 uses
  %.not68.i.a = icmp eq i16 %i.ao, 0
  br i1 %.not68.i.a, label %._crit_edge54.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.ap = trunc nuw i64 %.pre109.i to i16         ; 3 uses
  %i.aq = trunc nuw i64 %indvars.iv102.i to i16   ; 2 uses
  br label %.preheader.i

._crit_edge62.i:                                  ; preds = %._crit_edge54.i, %.preheader35.lr.ph.i, %bb.c
  %.029.lcssa.i = phi i32 [ 0, %bb.c ], [ 0, %.preheader35.lr.ph.i ], [ %.130.lcssa.i, %._crit_edge54.i ]
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_rebuild_regions.exit, label %bb.s

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.ar = phi i16 [ %i.an, %.preheader.preheader.i ], [ %i.bb, %._crit_edge.i ]
  %i.as = phi i16 [ %i.ao, %.preheader.preheader.i ], [ %i.bc, %._crit_edge.i ] ; 2 uses
  %indvars.iv97.i = phi i64 [ 0, %.preheader.preheader.i ], [ %.pre110.i, %._crit_edge.i ] ; 10 uses
  %indvars.iv86.i.a = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next87.i, %._crit_edge.i ] ; 2 uses
  %.152.i = phi i32 [ %.02859.i, %.preheader.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.13051.i = phi i32 [ %.02958.i, %.preheader.preheader.i ], [ %.231.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not69.i = icmp eq i16 %i.as, 0
  %.pre110.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 4 uses
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.at = trunc nuw i64 %indvars.iv97.i to i16    ; 3 uses
  %i.au = add i16 %i.at, 2
  %i.av = trunc nuw i64 %.pre110.i to i16
  br label %bb.d

._crit_edge54.loopexit72.i:                       ; preds = %._crit_edge.i
  %.pre108.i = load i16, ptr %i.ag, align 4
  br label %._crit_edge54.i

._crit_edge54.i:                                  ; preds = %._crit_edge54.loopexit72.i, %.preheader.lr.ph.i, %.preheader35.i
  %i.aw = phi i16 [ %i.am, %.preheader.lr.ph.i ], [ %.pre108.i, %._crit_edge54.loopexit72.i ], [ %i.am, %.preheader35.i ] ; 2 uses
  %i.ax = phi i16 [ %i.an, %.preheader.lr.ph.i ], [ %i.bb, %._crit_edge54.loopexit72.i ], [ %i.an, %.preheader35.i ]
  %i.ay = phi i16 [ %2, %.preheader.lr.ph.i ], [ %i.bb, %._crit_edge54.loopexit72.i ], [ 0, %.preheader35.i ]
  %.130.lcssa.i = phi i32 [ %.02958.i, %.preheader.lr.ph.i ], [ %.231.lcssa.i, %._crit_edge54.loopexit72.i ], [ %.02958.i, %.preheader35.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.02859.i, %.preheader.lr.ph.i ], [ %.2.lcssa.i, %._crit_edge54.loopexit72.i ], [ %.02859.i, %.preheader35.i ]
  %i.az = zext i16 %i.aw to i64
  %i.ba = icmp samesign ult i64 %.pre109.i, %i.az
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br i1 %i.ba, label %.preheader35.i, label %._crit_edge62.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %bb.r
  %.pre.i = load i16, ptr %i.ai, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.bb = phi i16 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.ar, %.preheader.i ] ; 4 uses
  %i.bc = phi i16 [ %i.fu, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %.231.lcssa.i = phi i32 [ %.332.i, %._crit_edge.loopexit.i ], [ %.13051.i, %.preheader.i ] ; 2 uses
  %.2.lcssa.i = phi i32 [ %.3.i, %._crit_edge.loopexit.i ], [ %.152.i, %.preheader.i ] ; 2 uses
  %i.bd = zext i16 %i.bb to i64
  %i.be = icmp samesign ult i64 %.pre110.i, %i.bd
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i.a, 1
  br i1 %i.be, label %.preheader.i, label %._crit_edge54.loopexit72.i, !llvm.loop !37

bb.d:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 12 uses
  %i.bf = phi i16 [ %i.as, %.lr.ph.i ], [ %i.fu, %bb.r ]
  %.246.i = phi i32 [ %.152.i, %.lr.ph.i ], [ %.3.i, %bb.r ] ; 5 uses
  %.23145.i = phi i32 [ %.13051.i, %.lr.ph.i ], [ %.332.i, %bb.r ] ; 5 uses
  %i.bg = zext i16 %i.bf to i64
  %i.bh = load i16, ptr %i.ai, align 2
  %i.bi = zext i16 %i.bh to i64
  %i.bj = mul nuw nsw i64 %indvars.iv102.i, %i.bi
  %reass.add.i.i = add nuw nsw i64 %i.bj, %indvars.iv97.i
  %reass.mul.i.i = mul nuw nsw i64 %reass.add.i.i, %i.bg
  %i.bk = add nuw nsw i64 %reass.mul.i.i, %indvars.iv.i
  %i.bl = load ptr, ptr %i.ak, align 8
  %i.bm = and i64 %i.bk, 4294967295               ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bo, -2
  br i1 %i.bp, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bq = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.bm) #10
  %.not24.i = icmp eq i32 %i.bq, 0
  br i1 %.not24.i, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.e, %bb.g
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.g ], [ %indvars.iv.i, %bb.e ] ; 3 uses
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 7 uses
  %i.br = load i16, ptr %i.aj, align 8
  %i.bs = zext i16 %i.br to i64                   ; 2 uses
  %i.bt = icmp samesign ult i64 %indvars.iv.next82.i, %i.bs
  %.pre284.i.i = load i16, ptr %i.ai, align 2     ; 3 uses
  br i1 %i.bt, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %.preheader
  %i.bu = zext i16 %.pre284.i.i to i64
  %i.bv = mul nuw nsw i64 %indvars.iv102.i, %i.bu
  %reass.add.i.i.i = add nuw nsw i64 %i.bv, %indvars.iv97.i
  %reass.mul.i.i.i = mul nuw nsw i64 %reass.add.i.i.i, %i.bs
  %i.bw = add nuw nsw i64 %reass.mul.i.i.i, %indvars.iv.next82.i
  %i.bx = load ptr, ptr %i.ak, align 8
  %i.by = and i64 %i.bw, 4294967295               ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp eq i32 %i.ca, -2
  br i1 %i.cb, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.by) #10
  %.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i, label %.preheader, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.g
  %.pre.i.i = load i16, ptr %i.ai, align 2
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.preheader, %bb.f, %..thread_crit_edge.i.i
  %i.cd = phi i16 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %.pre284.i.i, %bb.f ], [ %.pre284.i.i, %.preheader ] ; 2 uses
  %indvars124.i = trunc i64 %indvars.iv.next82.i to i16 ; 3 uses
  %i.ce = zext i16 %i.cd to i64
  %i.cf = icmp samesign ult i64 %.pre110.i, %i.ce
  br i1 %i.cf, label %.preheader179.lr.ph.i.i, label %.thread167.i.i

.preheader179.lr.ph.i.i:                          ; preds = %.thread.i.i
  %.not173186.i.i.not = icmp samesign ugt i64 %indvars.iv.i, %indvars.iv81.i
  br i1 %.not173186.i.i.not, label %.preheader179.lr.ph.split.i.i, label %.preheader179.us.i.i

.preheader179.us.i.i:                             ; preds = %.preheader179.lr.ph.i.i, %..critedge.loopexit_crit_edge.us.i.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %..critedge.loopexit_crit_edge.us.i.i ], [ %indvars.iv86.i.a, %.preheader179.lr.ph.i.i ] ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %indvars.iv81.i
  br i1 %exitcond.not.i.i, label %..critedge.loopexit_crit_edge.us.i.i, label %bb.i, !llvm.loop !38

bb.i:                                             ; preds = %bb.h, %.preheader179.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i, %.preheader179.us.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.cg = load i16, ptr %i.aj, align 8
  %i.ch = zext i16 %i.cg to i64
  %i.ci = load i16, ptr %i.ai, align 2
  %i.cj = zext i16 %i.ci to i64
  %i.ck = mul nuw nsw i64 %indvars.iv102.i, %i.cj
  %reass.add.i154.us.i.i = add nuw nsw i64 %i.ck, %indvars.iv88.i
  %reass.mul.i155.us.i.i = mul nuw nsw i64 %reass.add.i154.us.i.i, %i.ch
  %i.cl = add nuw nsw i64 %reass.mul.i155.us.i.i, %indvars.iv.i.i
  %i.cm = load ptr, ptr %i.ak, align 8
  %i.cn = and i64 %i.cl, 4294967295               ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp eq i32 %i.cp, -2
  br i1 %i.cq, label %.thread167.i.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cr = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.cn) #10
  %.not146.us.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not146.us.i.i, label %bb.h, label %.thread167.i.loopexit.i

..critedge.loopexit_crit_edge.us.i.i:             ; preds = %bb.h
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 3 uses
  %i.cs = load i16, ptr %i.ai, align 2
  %i.ct = zext i16 %i.cs to i64
  %i.cu = icmp samesign ult i64 %indvars.iv.next89.i, %i.ct
  br i1 %i.cu, label %.preheader179.us.i.i, label %.thread167.i.loopexit71.i

.preheader179.lr.ph.split.i.i:                    ; preds = %.preheader179.lr.ph.i.i
  %umax.i.i = call i16 @llvm.umax.i16(i16 %i.cd, i16 %i.au)
  br label %.thread167.i.i

.thread167.i.loopexit71.i:                        ; preds = %..critedge.loopexit_crit_edge.us.i.i
  %i.cv = trunc nuw i64 %indvars.iv.next89.i to i16
  br label %.thread167.i.i

.thread167.i.loopexit.i:                          ; preds = %bb.j, %bb.i
  %i.cw = trunc nuw i64 %indvars.iv88.i to i16
  br label %.thread167.i.i

.thread167.i.i:                                   ; preds = %.thread167.i.loopexit.i, %.thread167.i.loopexit71.i, %.preheader179.lr.ph.split.i.i, %.thread.i.i
  %.0119184.i.i = phi i16 [ %umax.i.i, %.preheader179.lr.ph.split.i.i ], [ %i.av, %.thread.i.i ], [ %i.cv, %.thread167.i.loopexit71.i ], [ %i.cw, %.thread167.i.loopexit.i ]
  %.0119184.fr.i.i = freeze i16 %.0119184.i.i     ; 2 uses
  %i.cx = zext i16 %.0119184.fr.i.i to i64        ; 6 uses
  %i.cy = icmp samesign ult i64 %indvars.iv97.i, %i.cx
  br i1 %i.cy, label %.thread167.split.us.i.i, label %.thread167.split.i.i

.thread167.split.us.i.i:                          ; preds = %.thread167.i.i
  %i.cz = and i64 %indvars.iv.next82.i, 65535     ; 2 uses
  %.not233.i.i = icmp samesign ult i64 %indvars.iv.i, %i.cz
  %i.da = load i16, ptr %i.ag, align 4            ; 2 uses
  br i1 %.not233.i.i, label %.thread167.split.us.split.preheader.i.i, label %.thread167.split.us.split.us.i.i

.thread167.split.us.split.preheader.i.i:          ; preds = %.thread167.split.us.i.i
  %i.db = zext i16 %i.da to i64
  %i.dc = icmp samesign ult i64 %.pre109.i, %i.db
  br i1 %i.dc, label %.preheader178.us.i.i, label %.split.us.i.i

.thread167.split.us.split.us.i.i:                 ; preds = %.thread167.split.us.i.i
  %spec.select.i.i = call i16 @llvm.umax.i16(i16 %i.ap, i16 %i.da)
  br label %.split.us.i.i

.thread167.split.us.split.i.loopexit.i:           ; preds = %.thread170.us.i.i
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 3 uses
  %i.dd = load i16, ptr %i.ag, align 4
  %i.de = zext i16 %i.dd to i64
  %i.df = icmp samesign ult i64 %indvars.iv.next42, %i.de
  br i1 %i.df, label %.preheader178.us.i.i, label %.split.us.i.i.loopexit29, !llvm.loop !39

bb.k:                                             ; preds = %bb.m
  %indvars.iv.next245.i.i = add nuw nsw i64 %indvars.iv244.i.i, 1 ; 2 uses
  %exitcond249.not.i.i = icmp eq i64 %indvars.iv.next245.i.i, %i.cz
  br i1 %exitcond249.not.i.i, label %.thread170.us.i.i, label %bb.l, !llvm.loop !40

bb.l:                                             ; preds = %.preheader177.us206.i.i, %bb.k
  %indvars.iv244.i.i = phi i64 [ %indvars.iv.i, %.preheader177.us206.i.i ], [ %indvars.iv.next245.i.i, %bb.k ] ; 2 uses
  %i.dg = load i16, ptr %i.aj, align 8
  %i.dh = zext i16 %i.dg to i64
  %i.di = load i16, ptr %i.ai, align 2
  %i.dj = zext i16 %i.di to i64
  %i.dk = mul nuw nsw i64 %indvars.iv41, %i.dj
  %reass.add.i156.us.i.i = add nuw nsw i64 %i.dk, %indvars.iv250.i.i
  %reass.mul.i157.us.i.i = mul nuw nsw i64 %reass.add.i156.us.i.i, %i.dh
  %i.dl = add nuw nsw i64 %reass.mul.i157.us.i.i, %indvars.iv244.i.i
  %i.dm = load ptr, ptr %i.ak, align 8
  %i.dn = and i64 %i.dl, 4294967295               ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4
  %i.dq = icmp eq i32 %i.dp, -2
  br i1 %i.dq, label %.split.us.i.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dr = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.dn) #10
  %.not148.us.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not148.us.i.i, label %bb.k, label %.split.us.i.i.loopexit

.thread170.us.i.i:                                ; preds = %bb.k
  %indvars.iv.next251.i.i = add nuw nsw i64 %indvars.iv250.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next251.i.i, %i.cx
  br i1 %exitcond.not.i, label %.thread167.split.us.split.i.loopexit.i, label %.preheader177.us206.i.i, !llvm.loop !39

.preheader177.us206.i.i:                          ; preds = %.preheader178.us.i.i, %.thread170.us.i.i
  %indvars.iv250.i.i = phi i64 [ %indvars.iv97.i, %.preheader178.us.i.i ], [ %indvars.iv.next251.i.i, %.thread170.us.i.i ] ; 2 uses
  br label %bb.l

.preheader178.us.i.i:                             ; preds = %.thread167.split.us.split.preheader.i.i, %.thread167.split.us.split.i.loopexit.i
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.thread167.split.us.split.i.loopexit.i ], [ %indvars.iv39, %.thread167.split.us.split.preheader.i.i ] ; 3 uses
  br label %.preheader177.us206.i.i

.thread167.split.i.i:                             ; preds = %.thread167.i.i
  %i.ds = load i16, ptr %i.ag, align 4
  %umax243.i.i = call i16 @llvm.umax.i16(i16 %i.ds, i16 %i.ap)
  br label %.split.us.i.i

.split.us.i.i.loopexit29:                         ; preds = %.thread167.split.us.split.i.loopexit.i
  %i.dt = trunc nuw i64 %indvars.iv.next42 to i16
  br label %.split.us.i.i

.split.us.i.i.loopexit:                           ; preds = %bb.l, %bb.m
  %i.du = trunc nuw i64 %indvars.iv41 to i16
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i.loopexit, %.split.us.i.i.loopexit29, %.thread167.split.i.i, %.thread167.split.us.split.us.i.i, %.thread167.split.us.split.preheader.i.i
  %.us-phi210.i.i = phi i16 [ %spec.select.i.i, %.thread167.split.us.split.us.i.i ], [ %umax243.i.i, %.thread167.split.i.i ], [ %i.ap, %.thread167.split.us.split.preheader.i.i ], [ %i.dt, %.split.us.i.i.loopexit29 ], [ %i.du, %.split.us.i.i.loopexit ] ; 2 uses
  %i.dv = zext i16 %.us-phi210.i.i to i64         ; 3 uses
  %i.dw = icmp samesign ult i64 %indvars.iv102.i, %i.dv ; 2 uses
  br i1 %i.dw, label %.preheader176.lr.ph.i.i, label %._crit_edge219.split.i.i

.preheader176.lr.ph.i.i:                          ; preds = %.split.us.i.i
  %i.dx = icmp samesign uge i64 %indvars.iv97.i, %i.cx
  %i.dy = and i64 %indvars.iv.next82.i, 65535
  %i.dz = icmp samesign uge i64 %indvars.iv.i, %i.dy
  %brmerge.i.i = or i1 %i.dz, %i.dx
  br i1 %brmerge.i.i, label %._crit_edge219.split.i.i, label %.preheader176.i.i

.preheader176.i.i:                                ; preds = %.preheader176.lr.ph.i.i, %._crit_edge217.i.i
  %indvars.iv263.i.i = phi i64 [ %indvars.iv.next264.i.i, %._crit_edge217.i.i ], [ %indvars.iv102.i, %.preheader176.lr.ph.i.i ] ; 2 uses
  br label %.preheader175.i.i

._crit_edge219.split.i.i:                         ; preds = %._crit_edge217.i.i, %.preheader176.lr.ph.i.i, %.split.us.i.i
  %.not147.i.i = icmp slt i32 %.23145.i, %.246.i
  br i1 %.not147.i.i, label %bb.p, label %bb.o

.preheader175.i.i:                                ; preds = %._crit_edge.i.i, %.preheader176.i.i
  %indvars.iv258.i.i = phi i64 [ %indvars.iv97.i, %.preheader176.i.i ], [ %indvars.iv.next259.i.i, %._crit_edge.i.i ] ; 2 uses
  br label %bb.n

._crit_edge217.i.i:                               ; preds = %._crit_edge.i.i
  %indvars.iv.next264.i.i = add nuw nsw i64 %indvars.iv263.i.i, 1 ; 2 uses
  %exitcond267.not.i.i = icmp eq i64 %indvars.iv.next264.i.i, %i.dv
  br i1 %exitcond267.not.i.i, label %._crit_edge219.split.i.i, label %.preheader176.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %bb.n
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1 ; 2 uses
  %exitcond262.not.i.i = icmp eq i64 %indvars.iv.next259.i.i, %i.cx
  br i1 %exitcond262.not.i.i, label %._crit_edge217.i.i, label %.preheader175.i.i, !llvm.loop !42

bb.n:                                             ; preds = %bb.n, %.preheader175.i.i
  %indvars.iv253.i.i = phi i64 [ %indvars.iv.i, %.preheader175.i.i ], [ %indvars.iv.next254.i.i, %bb.n ] ; 2 uses
  %i.ea = load i16, ptr %i.aj, align 8
  %i.eb = zext i16 %i.ea to i64
  %i.ec = load i16, ptr %i.ai, align 2
  %i.ed = zext i16 %i.ec to i64
  %i.ee = mul nuw nsw i64 %indvars.iv263.i.i, %i.ed
  %reass.add.i158.i.i = add nuw nsw i64 %i.ee, %indvars.iv258.i.i
  %reass.mul.i159.i.i = mul nuw nsw i64 %reass.add.i158.i.i, %i.eb
  %i.ef = add nuw nsw i64 %reass.mul.i159.i.i, %indvars.iv253.i.i
  %i.eg = and i64 %i.ef, 4294967295
  call void @bit_set(ptr noundef %i.ae, i64 noundef %i.eg) #10
  %indvars.iv.next254.i.i = add nuw nsw i64 %indvars.iv253.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next254.i.i to i16
  %exitcond = icmp eq i16 %lftr.wideiv, %indvars124.i
  br i1 %exitcond, label %._crit_edge.i.i, label %bb.n, !llvm.loop !43

bb.o:                                             ; preds = %._crit_edge219.split.i.i
  %i.eh = shl nsw i32 %.246.i, 1                  ; 2 uses
  %i.ei = sext i32 %i.eh to i64
  %i.ej = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.b, i64 noundef %i.ei, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 699, ptr noundef nonnull @__func__._build_region) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge219.split.i.i
  %.4.i = phi i32 [ %.246.i, %._crit_edge219.split.i.i ], [ %i.eh, %bb.o ]
  %i.ek = load ptr, ptr %i.b, align 8
  %i.el = add nsw i32 %.23145.i, 1
  %i.em = sext i32 %.23145.i to i64
  %i.en = getelementptr inbounds [24 x i8], ptr %i.ek, i64 %i.em ; 7 uses
  %i.eo = trunc nuw i64 %indvars.iv.i to i16      ; 2 uses
  store i16 %i.eo, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  store i16 %i.at, ptr %i.ep, align 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i16 %i.aq, ptr %i.eq, align 4
  %i.er = sub i16 %indvars124.i, %i.eo
  %i.es = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  store i16 %i.er, ptr %i.es, align 2
  %i.et = sub i16 %.0119184.fr.i.i, %i.at
  %i.eu = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store i16 %i.et, ptr %i.eu, align 8
  %i.ev = sub i16 %.us-phi210.i.i, %i.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 10
  store i16 %i.ev, ptr %i.ew, align 2
  %i.ex = call ptr @hostlist_create(ptr noundef null) #10 ; 3 uses
  br i1 %i.dw, label %.preheader174.lr.ph.i.i, label %_build_region.exit.i

.preheader174.lr.ph.i.i:                          ; preds = %bb.p
  %i.ey = icmp samesign uge i64 %indvars.iv97.i, %i.cx
  %i.ez = and i64 %indvars.iv.next82.i, 65535
  %i.fa = icmp samesign uge i64 %indvars.iv.i, %i.ez
  %brmerge232.i.i = or i1 %i.fa, %i.ey
  br i1 %brmerge232.i.i, label %_build_region.exit.i, label %.preheader174.i.i

.preheader174.i.i:                                ; preds = %.preheader174.lr.ph.i.i, %._crit_edge224.i.i
  %indvars.iv279.i.i = phi i64 [ %indvars.iv.next280.i.i, %._crit_edge224.i.i ], [ %indvars.iv102.i, %.preheader174.lr.ph.i.i ] ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge222.i.i, %.preheader174.i.i
  %indvars.iv274.i.i = phi i64 [ %indvars.iv97.i, %.preheader174.i.i ], [ %indvars.iv.next275.i.i, %._crit_edge222.i.i ] ; 2 uses
  br label %bb.q

._crit_edge224.i.i:                               ; preds = %._crit_edge222.i.i
  %indvars.iv.next280.i.i = add nuw nsw i64 %indvars.iv279.i.i, 1 ; 2 uses
  %exitcond283.not.i.i = icmp eq i64 %indvars.iv.next280.i.i, %i.dv
  br i1 %exitcond283.not.i.i, label %_build_region.exit.i, label %.preheader174.i.i, !llvm.loop !44

._crit_edge222.i.i:                               ; preds = %bb.q
  %indvars.iv.next275.i.i = add nuw nsw i64 %indvars.iv274.i.i, 1 ; 2 uses
  %exitcond278.not.i.i = icmp eq i64 %indvars.iv.next275.i.i, %i.cx
  br i1 %exitcond278.not.i.i, label %._crit_edge224.i.i, label %.preheader.i.i, !llvm.loop !45

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %indvars.iv268.i.i = phi i64 [ %indvars.iv.i, %.preheader.i.i ], [ %indvars.iv.next269.i.i, %bb.q ] ; 2 uses
  %i.fb = load i16, ptr %i.aj, align 8
  %i.fc = zext i16 %i.fb to i64
  %i.fd = load i16, ptr %i.ai, align 2
  %i.fe = zext i16 %i.fd to i64
  %i.ff = mul nuw nsw i64 %indvars.iv279.i.i, %i.fe
  %reass.add.i160.i.i = add nuw nsw i64 %i.ff, %indvars.iv274.i.i
  %reass.mul.i161.i.i = mul nuw nsw i64 %reass.add.i160.i.i, %i.fc
  %i.fg = add nuw nsw i64 %reass.mul.i161.i.i, %indvars.iv268.i.i
  %i.fh = load ptr, ptr %i.ak, align 8
  %i.fi = and i64 %i.fg, 4294967295
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = load ptr, ptr @node_record_table_ptr, align 8
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 280
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = call i32 @hostlist_push_host(ptr noundef %i.ex, ptr noundef %i.fq) #10 ; 0 uses
  %indvars.iv.next269.i.i = add nuw nsw i64 %indvars.iv268.i.i, 1 ; 2 uses
  %lftr.wideiv44 = trunc i64 %indvars.iv.next269.i.i to i16
  %exitcond45 = icmp eq i16 %lftr.wideiv44, %indvars124.i
  br i1 %exitcond45, label %._crit_edge222.i.i, label %bb.q, !llvm.loop !46

_build_region.exit.i:                             ; preds = %._crit_edge224.i.i, %.preheader174.lr.ph.i.i, %bb.p
  %i.fs = call ptr @hostlist_ranged_string_xmalloc(ptr noundef %i.ex) #10
  %i.ft = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %i.fs, ptr %i.ft, align 8
  call void @hostlist_destroy(ptr noundef %i.ex) #10
  br label %bb.r

bb.r:                                             ; preds = %_build_region.exit.i, %bb.e, %bb.d
  %.332.i = phi i32 [ %.23145.i, %bb.d ], [ %i.el, %_build_region.exit.i ], [ %.23145.i, %bb.e ] ; 2 uses
  %.3.i = phi i32 [ %.246.i, %bb.d ], [ %.4.i, %_build_region.exit.i ], [ %.246.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fu = load i16, ptr %i.aj, align 8            ; 3 uses
  %i.fv = zext i16 %i.fu to i64
  %i.fw = icmp samesign ult i64 %indvars.iv.next.i, %i.fv
  br i1 %i.fw, label %bb.d, label %._crit_edge.loopexit.i, !llvm.loop !47

bb.s:                                             ; preds = %._crit_edge62.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #10
  br label %_rebuild_regions.exit

_rebuild_regions.exit:                            ; preds = %._crit_edge62.i, %bb.s
  %i.fx = load ptr, ptr %i.b, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.fx, ptr %i.fy, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 %.029.lcssa.i, ptr %i.fz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_rebuild_regions.exit
  ret void
}

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @torus3d_record_table_destroy(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph20, label %.loopexit

.lr.ph20:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %._crit_edge ], [ 0, %.preheader ] ; 8 uses
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %indvars.iv23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @slurm_xfree(ptr noundef nonnull %i.i) #10
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.j, i64 %indvars.iv23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph20
  tail call void @slurm_bit_free(ptr noundef nonnull %i.l) #10
  %.pre = load ptr, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph20
  %i.n = phi ptr [ %.pre, %bb.c ], [ %i.j, %.lr.ph20 ]
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %indvars.iv23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr null, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw [56 x i8], ptr %i.q, i64 %indvars.iv23 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_free_placement.exit, %bb.d
  %.lcssa = phi ptr [ %i.r, %bb.d ], [ %i.ay, %_free_placement.exit ]
  tail call void @slurm_xfree(ptr noundef nonnull %.lcssa) #10
  %i.v = load ptr, ptr %i.b, align 8
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.v, i64 %indvars.iv23
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  tail call void @slurm_xfree(ptr noundef nonnull %i.x) #10
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %i.y = load i32, ptr %i.d, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next24, %i.z
  br i1 %i.aa, label %.lr.ph20, label %.loopexit, !llvm.loop !48

.lr.ph:                                           ; preds = %bb.d, %_free_placement.exit
  %i.ab = phi ptr [ %i.ax, %_free_placement.exit ], [ %i.q, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_free_placement.exit ], [ 0, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %indvars.iv23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.ae, i64 %indvars.iv ; 10 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_free_placement.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ag = load ptr, ptr %i.af, align 8
  %.not17.i = icmp eq ptr %i.ag, null
  br i1 %.not17.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.g
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %.not18.i = icmp eq ptr %i.am, null
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @slurm_bit_free(ptr noundef nonnull %i.al) #10
  %.pre.i = load ptr, ptr %i.af, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.an = phi ptr [ %.pre.i, %bb.f ], [ %i.ak, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.i
  store ptr null, ptr %i.ao, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ap = load i32, ptr %i.ah, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next.i, %i.aq
  br i1 %i.ar, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !49

.loopexit.i:                                      ; preds = %bb.g, %.preheader.i, %bb.e
  tail call void @slurm_xfree(ptr noundef nonnull %i.af) #10
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  tail call void @slurm_xfree(ptr noundef nonnull %i.as) #10
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  tail call void @slurm_xfree(ptr noundef nonnull %i.at) #10
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  tail call void @slurm_xfree(ptr noundef nonnull %i.au) #10
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  tail call void @slurm_xfree(ptr noundef nonnull %i.av) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i32 0, ptr %i.aw, align 8
  %.pre26 = load ptr, ptr %i.b, align 8
  br label %_free_placement.exit

_free_placement.exit:                             ; preds = %.lr.ph, %.loopexit.i
  %i.ax = phi ptr [ %i.ab, %.lr.ph ], [ %.pre26, %.loopexit.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [56 x i8], ptr %i.ax, i64 %indvars.iv23 ; 2 uses
end_hunk_1
