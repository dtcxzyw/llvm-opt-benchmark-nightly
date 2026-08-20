inline.NumInlined: 33
inline.NumDeleted: 15
begin_hunk_0_@torus3d_coord_to_index:bb.a
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
  %i.z = icmp sgt i32 %i.sr, 0
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
  %indvars.iv.i.a = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i.a, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i.a
  store i32 -2, ptr %i.bv, align 4
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i.a, %i.ax
  br i1 %exitcond.not, label %bb.r, label %bb.s, !llvm.loop !8

bb.t:                                             ; preds = %bb.r
  %i.bw = icmp sgt i32 %i.bt, 0
  br i1 %i.bw, label %.lr.ph93.i, label %_validate_regions_config.exit

.lr.ph93.i:                                       ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i76, %.lr.ph93.i
  %.2 = phi ptr [ null, %.lr.ph93.i ], [ %.5, %._crit_edge.i76 ] ; 6 uses
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph93.i ], [ %indvars.iv.next.i77, %._crit_edge.i76 ] ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %indvars.iv.i70 ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 6 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 2            ; 2 uses
  %i.cc = zext i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = zext i16 %i.ce to i64
  %i.cg = mul nuw nsw i64 %i.cf, %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  %i.ci = load i16, ptr %i.ch, align 2            ; 2 uses
  %i.cj = zext i16 %i.ci to i64
  %i.ck = mul nuw nsw i64 %i.cg, %i.cj            ; 3 uses
  %i.cl = zext i16 %i.cb to i32                   ; 2 uses
  %i.cm = zext i16 %i.ce to i32                   ; 2 uses
  %i.cn = mul nuw i32 %i.cm, %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %.not.i71 = icmp eq ptr %i.cp, null
  br i1 %.not.i71, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = load i8, ptr %i.cp, align 1
  %.not74.i = icmp eq i8 %i.cq, 0
  br i1 %.not74.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cr = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.12) #10 ; 0 uses
  br label %.thread.i

bb.x:                                             ; preds = %bb.v
  %i.cs = load i16, ptr %i.bz, align 8
  %i.ct = zext i16 %i.cs to i32
  %i.cu = add nuw nsw i32 %i.ct, %i.cl
  %i.cv = load i16, ptr %i.ab, align 8
  %i.cw = zext i16 %i.cv to i32
  %i.cx = icmp samesign ugt i32 %i.cu, %i.cw
  br i1 %i.cx, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bz, i64 2 ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = zext i16 %i.cz to i32
  %i.db = add nuw nsw i32 %i.da, %i.cm
  %i.dc = load i16, ptr %i.ao, align 2
  %i.dd = zext i16 %i.dc to i32
  %i.de = icmp samesign ugt i32 %i.db, %i.dd
  br i1 %i.de, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 4
  %i.dh = zext i16 %i.dg to i32
  %i.di = zext i16 %i.ci to i32
  %i.dj = add nuw nsw i32 %i.dh, %i.di
  %i.dk = load i16, ptr %i.aq, align 4
  %i.dl = zext i16 %i.dk to i32
  %i.dm = icmp samesign ugt i32 %i.dj, %i.dl
  br i1 %i.dm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.dn = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.13) #10 ; 0 uses
  br label %.thread.i

bb.ab:                                            ; preds = %bb.z
  %i.do = call ptr @hostlist_create(ptr noundef nonnull %i.cp) #10 ; 6 uses
  %.not75.i = icmp eq ptr %i.do, null
  br i1 %.not75.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dp = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.14) #10 ; 0 uses
  br label %.thread.i

bb.ad:                                            ; preds = %bb.ab
  %i.dq = call i32 @hostlist_count(ptr noundef nonnull %i.do) #10
  %i.dr = sext i32 %i.dq to i64
  %.not76.i = icmp eq i64 %i.ck, %i.dr
  br i1 %.not76.i, label %.preheader.i72, label %bb.ae

.preheader.i72:                                   ; preds = %bb.ad
  %.not94.i = icmp eq i64 %i.ck, 0
  br i1 %.not94.i, label %._crit_edge.i76, label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.preheader.i72
  %i.ds = zext i32 %i.cn to i64
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dt = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.15) #10 ; 0 uses
  call void @hostlist_destroy(ptr noundef nonnull %i.do) #10
  br label %.thread.i

bb.af:                                            ; preds = %bb.am, %.lr.ph.i73
  %.3 = phi ptr [ %.2, %.lr.ph.i73 ], [ %.4, %bb.am ] ; 4 uses
  %.090.i = phi i64 [ 0, %.lr.ph.i73 ], [ %i.fh, %bb.am ] ; 4 uses
  %i.du = load i16, ptr %i.ca, align 2
  %i.dv = load i16, ptr %i.cd, align 8
  %i.dw = call ptr @hostlist_shift(ptr noundef nonnull %i.do) #10 ; 4 uses
  %i.dx = call ptr @find_node_record(ptr noundef %i.dw) #10 ; 2 uses
  %.not77.i = icmp eq ptr %i.dx, null
  br i1 %.not77.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %.not78.i = icmp eq ptr %.3, null
  br i1 %.not78.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dy = call ptr @hostlist_create(ptr noundef null) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.6 = phi ptr [ %i.dy, %bb.ah ], [ %.3, %bb.ag ] ; 2 uses
  %i.dz = call i32 @hostlist_push_host(ptr noundef %.6, ptr noundef %i.dw) #10 ; 0 uses
  br label %bb.am

bb.aj:                                            ; preds = %bb.af
  %i.ea = udiv i64 %.090.i, %i.ds
  %i.eb = trunc i64 %i.ea to i16
  %i.ec = zext i16 %i.du to i64                   ; 2 uses
  %i.ed = udiv i64 %.090.i, %i.ec
  %i.ee = zext i16 %i.dv to i64
  %i.ef = urem i64 %i.ed, %i.ee
  %i.eg = trunc nuw i64 %i.ef to i16
  %i.eh = urem i64 %.090.i, %i.ec
  %i.ei = trunc nuw i64 %i.eh to i16
  %i.ej = load i16, ptr %i.bz, align 8
  %i.ek = add i16 %i.ej, %i.ei
  %i.el = load i16, ptr %i.cy, align 2
  %i.em = add i16 %i.el, %i.eg
  %i.en = load i16, ptr %i.df, align 4
  %i.eo = add i16 %i.en, %i.eb
  %i.ep = zext i16 %i.ek to i64
  %i.eq = zext i16 %i.em to i64
  %i.er = load i16, ptr %i.bd, align 8
  %i.es = zext i16 %i.er to i64
  %i.et = zext i16 %i.eo to i64
  %i.eu = load i16, ptr %i.bf, align 2
  %i.ev = zext i16 %i.eu to i64
  %i.ew = mul nuw nsw i64 %i.ev, %i.et
  %reass.add.i.i = add nuw nsw i64 %i.ew, %i.eq
  %reass.mul.i.i = mul nuw nsw i64 %reass.add.i.i, %i.es
  %i.ex = add nuw nsw i64 %reass.mul.i.i, %i.ep
  %i.ey = load ptr, ptr %i.bn, align 8
  %i.ez = and i64 %i.ex, 4294967295
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4
  %.not79.i74 = icmp eq i32 %i.fb, -2
  br i1 %.not79.i74, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dx, i64 216
  %i.fd = load i32, ptr %i.fc, align 8            ; 2 uses
  store i32 %i.fd, ptr %i.fa, align 4
  %i.fe = load ptr, ptr %i.br, align 8
  %i.ff = zext i32 %i.fd to i64
  call void @bit_set(ptr noundef %i.fe, i64 noundef %i.ff) #10
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fg = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.16) #10 ; 0 uses
  call void @free(ptr noundef %i.dw) #10
  call void @hostlist_destroy(ptr noundef nonnull %i.do) #10
  br label %.thread.i

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %.4 = phi ptr [ %.6, %bb.ai ], [ %.3, %bb.ak ]  ; 2 uses
  call void @free(ptr noundef %i.dw) #10
  %i.fh = add nuw nsw i64 %.090.i, 1              ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %i.fh, %i.ck
  br i1 %exitcond.not.i75, label %._crit_edge.i76, label %bb.af, !llvm.loop !11

._crit_edge.i76:                                  ; preds = %bb.am, %.preheader.i72
  %.5 = phi ptr [ %.2, %.preheader.i72 ], [ %.4, %bb.am ] ; 2 uses
  call void @hostlist_destroy(ptr noundef nonnull %i.do) #10
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %i.fi = load i32, ptr %i.bs, align 8
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next.i77, %i.fj
  br i1 %i.fk, label %bb.u, label %_validate_regions_config.exit, !llvm.loop !12

bb.an:                                            ; preds = %bb.r
  %i.fl = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not111.i = icmp eq ptr %i.fl, null
  br i1 %.not111.i, label %_validate_regions_config.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = load i8, ptr %i.fl, align 1
  %.not112.i = icmp eq i8 %i.fm, 0
end_hunk_0
begin_hunk_1_@torus3d_record_validate:bb.a
  %i.xb = load i32, ptr %i.xa, align 8
  %i.xc = icmp sgt i32 %i.xb, 0
  br i1 %i.xc, label %.lr.ph.i24.i, label %_log_placement.exit.i

.lr.ph.i24.i:                                     ; preds = %.preheader.i.i, %bb.dc
  %indvars.iv.i25.i = phi i64 [ %indvars.iv.next.i26.i, %bb.dc ], [ 0, %.preheader.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.xd = load ptr, ptr %i.vy, align 8
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %indvars.iv.i25.i
  %i.xf = load ptr, ptr %i.xe, align 8
  %i.xg = call ptr @bitmap2node_name(ptr noundef %i.xf) #10
  store ptr %i.xg, ptr %i.g, align 8
  %i.xh = call i32 @get_log_level() #10
  %i.xi = icmp sgt i32 %i.xh, 4
  br i1 %i.xi, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.lr.ph.i24.i
  %i.xj = load ptr, ptr %i.g, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.29, ptr noundef nonnull @plugin_type, ptr noundef nonnull @__func__._log_placement, ptr noundef %i.xj) #10
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i24.i
  call void @slurm_xfree(ptr noundef nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %indvars.iv.next.i26.i = add nuw nsw i64 %indvars.iv.i25.i, 1 ; 2 uses
  %i.xk = load i32, ptr %i.xa, align 8
  %i.xl = sext i32 %i.xk to i64
  %i.xm = icmp slt i64 %indvars.iv.next.i26.i, %i.xl
  br i1 %i.xm, label %.lr.ph.i24.i, label %_log_placement.exit.i, !llvm.loop !32

_log_placement.exit.i:                            ; preds = %bb.dc, %.preheader.i.i, %bb.da
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %i.xn = load i32, ptr %i.vp, align 8
  %i.xo = sext i32 %i.xn to i64
  %i.xp = icmp slt i64 %indvars.iv.next.i57, %i.xo
  br i1 %i.xp, label %bb.cy, label %._crit_edge.i54, !llvm.loop !33

_log_toruses.exit:                                ; preds = %._crit_edge.i54, %bb.d, %.preheader, %._crit_edge208
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.n, ptr %i.xq, align 8
  ret i32 0

.lr.ph207:                                        ; preds = %.preheader, %bb.de
  %.pr324 = phi i32 [ %.pr, %bb.de ], [ %i.sr, %.preheader ]
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %bb.de ], [ 0, %.preheader ] ; 2 uses
  %i.xr = load ptr, ptr %i.s, align 8
  %i.xs = getelementptr inbounds nuw [56 x i8], ptr %i.xr, i64 %indvars.iv321 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 32
  %i.xu = load i32, ptr %i.xt, align 8
  %i.xv = icmp sgt i32 %i.xu, 0
  br i1 %i.xv, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %.lr.ph207
  %i.xw = load ptr, ptr %i.n, align 8
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xs, i64 16
  %i.xy = load ptr, ptr %i.xx, align 8
  call void @bit_or(ptr noundef %i.xw, ptr noundef %i.xy) #10
  %.pr.pre = load i32, ptr %i.p, align 8
  br label %bb.de

bb.de:                                            ; preds = %.lr.ph207, %bb.dd
  %.pr = phi i32 [ %.pr324, %.lr.ph207 ], [ %.pr.pre, %bb.dd ] ; 3 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %i.xz = sext i32 %.pr to i64
  %i.ya = icmp slt i64 %indvars.iv.next322, %i.xz
  br i1 %i.ya, label %.lr.ph207, label %._crit_edge208, !llvm.loop !34
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
  %.not65.i = icmp eq i16 %i.ah, 0
  br i1 %.not65.i, label %._crit_edge62.i, label %.preheader35.lr.ph.i

.preheader35.lr.ph.i:                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 50 ; 10 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 5 uses
  %i.al = load i16, ptr %i.ai, align 2            ; 3 uses
  %.not66.i = icmp eq i16 %i.al, 0
  br i1 %.not66.i, label %._crit_edge62.i, label %.preheader35.i

.preheader35.i:                                   ; preds = %.preheader35.lr.ph.i, %._crit_edge54.i
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %._crit_edge54.i ], [ 1, %.preheader35.lr.ph.i ] ; 2 uses
  %i.am = phi i16 [ %i.av, %._crit_edge54.i ], [ %i.ah, %.preheader35.lr.ph.i ] ; 2 uses
  %i.an = phi i16 [ %i.aw, %._crit_edge54.i ], [ %i.al, %.preheader35.lr.ph.i ] ; 3 uses
  %i.ao = phi i16 [ %i.ax, %._crit_edge54.i ], [ %i.al, %.preheader35.lr.ph.i ] ; 2 uses
  %indvars.iv102.i = phi i64 [ %.pre109.i, %._crit_edge54.i ], [ 0, %.preheader35.lr.ph.i ] ; 8 uses
  %.02859.i = phi i32 [ %.1.lcssa.i, %._crit_edge54.i ], [ 8, %.preheader35.lr.ph.i ] ; 3 uses
  %.02958.i = phi i32 [ %.130.lcssa.i, %._crit_edge54.i ], [ 0, %.preheader35.lr.ph.i ] ; 3 uses
  %.not67.i = icmp eq i16 %i.ao, 0
  %.pre109.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 4 uses
  br i1 %.not67.i, label %._crit_edge54.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader35.i
  %i.ap = load i16, ptr %i.aj, align 8            ; 2 uses
  %.not68.i = icmp eq i16 %i.ap, 0
  br i1 %.not68.i, label %._crit_edge54.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.aq = trunc nuw i64 %.pre109.i to i16         ; 3 uses
  %i.ar = trunc nuw i64 %indvars.iv102.i to i16   ; 2 uses
  br label %.preheader.i

._crit_edge62.i:                                  ; preds = %._crit_edge54.i, %.preheader35.lr.ph.i, %bb.c
  %.029.lcssa.i = phi i32 [ 0, %bb.c ], [ 0, %.preheader35.lr.ph.i ], [ %.130.lcssa.i, %._crit_edge54.i ]
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_rebuild_regions.exit, label %bb.s

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.as = phi i16 [ %i.an, %.preheader.preheader.i ], [ %i.ba, %._crit_edge.i ]
  %i.at = phi i16 [ %i.ap, %.preheader.preheader.i ], [ %i.bb, %._crit_edge.i ] ; 2 uses
  %indvars.iv97.i = phi i64 [ 0, %.preheader.preheader.i ], [ %.pre110.i, %._crit_edge.i ] ; 10 uses
  %indvars.iv86.i = phi i64 [ 1, %.preheader.preheader.i ], [ %indvars.iv.next87.i, %._crit_edge.i ] ; 2 uses
  %.152.i = phi i32 [ %.02859.i, %.preheader.preheader.i ], [ %.2.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.13051.i = phi i32 [ %.02958.i, %.preheader.preheader.i ], [ %.231.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not69.i = icmp eq i16 %i.at, 0
  %.pre110.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 4 uses
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.au = trunc nuw i64 %.pre110.i to i16
  %2 = trunc nuw i64 %indvars.iv97.i to i16       ; 3 uses
  %3 = add i16 %2, 2
  br label %bb.d

._crit_edge54.loopexit72.i:                       ; preds = %._crit_edge.i
  %.pre108.i = load i16, ptr %i.ag, align 4
  br label %._crit_edge54.i

._crit_edge54.i:                                  ; preds = %._crit_edge54.loopexit72.i, %.preheader.lr.ph.i, %.preheader35.i
  %i.av = phi i16 [ %i.am, %.preheader.lr.ph.i ], [ %.pre108.i, %._crit_edge54.loopexit72.i ], [ %i.am, %.preheader35.i ] ; 2 uses
  %i.aw = phi i16 [ %i.an, %.preheader.lr.ph.i ], [ %i.ba, %._crit_edge54.loopexit72.i ], [ %i.an, %.preheader35.i ]
  %i.ax = phi i16 [ %i.ao, %.preheader.lr.ph.i ], [ %i.ba, %._crit_edge54.loopexit72.i ], [ 0, %.preheader35.i ]
  %.130.lcssa.i = phi i32 [ %.02958.i, %.preheader.lr.ph.i ], [ %.231.lcssa.i, %._crit_edge54.loopexit72.i ], [ %.02958.i, %.preheader35.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.02859.i, %.preheader.lr.ph.i ], [ %.2.lcssa.i, %._crit_edge54.loopexit72.i ], [ %.02859.i, %.preheader35.i ]
  %i.ay = zext i16 %i.av to i64
  %i.az = icmp samesign ult i64 %.pre109.i, %i.ay
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br i1 %i.az, label %.preheader35.i, label %._crit_edge62.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %bb.r
  %.pre.i = load i16, ptr %i.ai, align 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ba = phi i16 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.as, %.preheader.i ] ; 4 uses
  %i.bb = phi i16 [ %i.ft, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ]
  %.231.lcssa.i = phi i32 [ %.332.i, %._crit_edge.loopexit.i ], [ %.13051.i, %.preheader.i ] ; 2 uses
  %.2.lcssa.i = phi i32 [ %.3.i, %._crit_edge.loopexit.i ], [ %.152.i, %.preheader.i ] ; 2 uses
  %i.bc = zext i16 %i.ba to i64
  %i.bd = icmp samesign ult i64 %.pre110.i, %i.bc
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1
  br i1 %i.bd, label %.preheader.i, label %._crit_edge54.loopexit72.i, !llvm.loop !37

bb.d:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 12 uses
  %i.be = phi i16 [ %i.at, %.lr.ph.i ], [ %i.ft, %bb.r ]
  %.246.i = phi i32 [ %.152.i, %.lr.ph.i ], [ %.3.i, %bb.r ] ; 5 uses
  %.23145.i = phi i32 [ %.13051.i, %.lr.ph.i ], [ %.332.i, %bb.r ] ; 5 uses
  %i.bf = zext i16 %i.be to i64
  %i.bg = load i16, ptr %i.ai, align 2
  %i.bh = zext i16 %i.bg to i64
  %i.bi = mul nuw nsw i64 %indvars.iv102.i, %i.bh
  %reass.add.i.i = add nuw nsw i64 %i.bi, %indvars.iv97.i
  %reass.mul.i.i = mul nuw nsw i64 %reass.add.i.i, %i.bf
  %i.bj = add nuw nsw i64 %reass.mul.i.i, %indvars.iv.i
  %i.bk = load ptr, ptr %i.ak, align 8
  %i.bl = and i64 %i.bj, 4294967295               ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bn, -2
  br i1 %i.bo, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.bl) #10
  %.not24.i = icmp eq i32 %i.bp, 0
  br i1 %.not24.i, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.e, %bb.g
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.g ], [ %indvars.iv.i, %bb.e ] ; 3 uses
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 7 uses
  %i.bq = load i16, ptr %i.aj, align 8
  %i.br = zext i16 %i.bq to i64                   ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv.next82.i, %i.br
  %.pre284.i.i = load i16, ptr %i.ai, align 2     ; 3 uses
  br i1 %i.bs, label %bb.f, label %.thread.i.i

bb.f:                                             ; preds = %.preheader
  %i.bt = zext i16 %.pre284.i.i to i64
  %i.bu = mul nuw nsw i64 %indvars.iv102.i, %i.bt
  %reass.add.i.i.i = add nuw nsw i64 %i.bu, %indvars.iv97.i
  %reass.mul.i.i.i = mul nuw nsw i64 %reass.add.i.i.i, %i.br
  %i.bv = add nuw nsw i64 %reass.mul.i.i.i, %indvars.iv.next82.i
  %i.bw = load ptr, ptr %i.ak, align 8
  %i.bx = and i64 %i.bv, 4294967295               ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = icmp eq i32 %i.bz, -2
  br i1 %i.ca, label %.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cb = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.bx) #10
  %.not.i.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i.i, label %.preheader, label %..thread_crit_edge.i.i

..thread_crit_edge.i.i:                           ; preds = %bb.g
  %.pre.i.i = load i16, ptr %i.ai, align 2
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.preheader, %bb.f, %..thread_crit_edge.i.i
  %i.cc = phi i16 [ %.pre.i.i, %..thread_crit_edge.i.i ], [ %.pre284.i.i, %bb.f ], [ %.pre284.i.i, %.preheader ] ; 2 uses
  %indvars124.i = trunc i64 %indvars.iv.next82.i to i16 ; 3 uses
  %i.cd = zext i16 %i.cc to i64
  %i.ce = icmp samesign ult i64 %.pre110.i, %i.cd
  br i1 %i.ce, label %.preheader179.lr.ph.i.i, label %.thread167.i.i

.preheader179.lr.ph.i.i:                          ; preds = %.thread.i.i
  %.not173186.i.i.not = icmp samesign ugt i64 %indvars.iv.i, %indvars.iv81.i
  br i1 %.not173186.i.i.not, label %.preheader179.lr.ph.split.i.i, label %.preheader179.us.i.i

.preheader179.us.i.i:                             ; preds = %.preheader179.lr.ph.i.i, %..critedge.loopexit_crit_edge.us.i.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %..critedge.loopexit_crit_edge.us.i.i ], [ %indvars.iv86.i, %.preheader179.lr.ph.i.i ] ; 3 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %indvars.iv81.i
  br i1 %exitcond.not.i.i, label %..critedge.loopexit_crit_edge.us.i.i, label %bb.i, !llvm.loop !38

bb.i:                                             ; preds = %bb.h, %.preheader179.us.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i, %.preheader179.us.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 3 uses
  %i.cf = load i16, ptr %i.aj, align 8
  %i.cg = zext i16 %i.cf to i64
  %i.ch = load i16, ptr %i.ai, align 2
  %i.ci = zext i16 %i.ch to i64
  %i.cj = mul nuw nsw i64 %indvars.iv102.i, %i.ci
  %reass.add.i154.us.i.i = add nuw nsw i64 %i.cj, %indvars.iv88.i
  %reass.mul.i155.us.i.i = mul nuw nsw i64 %reass.add.i154.us.i.i, %i.cg
  %i.ck = add nuw nsw i64 %reass.mul.i155.us.i.i, %indvars.iv.i.i
  %i.cl = load ptr, ptr %i.ak, align 8
  %i.cm = and i64 %i.ck, 4294967295               ; 2 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = icmp eq i32 %i.co, -2
  br i1 %i.cp, label %.thread167.i.loopexit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.cm) #10
  %.not146.us.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not146.us.i.i, label %bb.h, label %.thread167.i.loopexit.i

..critedge.loopexit_crit_edge.us.i.i:             ; preds = %bb.h
  %indvars.iv.next89.i = add nuw nsw i64 %indvars.iv88.i, 1 ; 3 uses
  %i.cr = load i16, ptr %i.ai, align 2
  %i.cs = zext i16 %i.cr to i64
  %i.ct = icmp samesign ult i64 %indvars.iv.next89.i, %i.cs
  br i1 %i.ct, label %.preheader179.us.i.i, label %.thread167.i.loopexit71.i

.preheader179.lr.ph.split.i.i:                    ; preds = %.preheader179.lr.ph.i.i
  %umax.i.i = call i16 @llvm.umax.i16(i16 %i.cc, i16 %3)
  br label %.thread167.i.i

.thread167.i.loopexit71.i:                        ; preds = %..critedge.loopexit_crit_edge.us.i.i
  %i.cu = trunc nuw i64 %indvars.iv.next89.i to i16
  br label %.thread167.i.i

.thread167.i.loopexit.i:                          ; preds = %bb.j, %bb.i
  %i.cv = trunc nuw i64 %indvars.iv88.i to i16
  br label %.thread167.i.i

.thread167.i.i:                                   ; preds = %.thread167.i.loopexit.i, %.thread167.i.loopexit71.i, %.preheader179.lr.ph.split.i.i, %.thread.i.i
  %.0119184.i.i = phi i16 [ %umax.i.i, %.preheader179.lr.ph.split.i.i ], [ %i.au, %.thread.i.i ], [ %i.cu, %.thread167.i.loopexit71.i ], [ %i.cv, %.thread167.i.loopexit.i ]
  %.0119184.fr.i.i = freeze i16 %.0119184.i.i     ; 2 uses
  %i.cw = zext i16 %.0119184.fr.i.i to i64        ; 6 uses
  %i.cx = icmp samesign ult i64 %indvars.iv97.i, %i.cw
  br i1 %i.cx, label %.thread167.split.us.i.i, label %.thread167.split.i.i

.thread167.split.us.i.i:                          ; preds = %.thread167.i.i
  %i.cy = and i64 %indvars.iv.next82.i, 65535     ; 2 uses
  %.not233.i.i = icmp samesign ult i64 %indvars.iv.i, %i.cy
  %i.cz = load i16, ptr %i.ag, align 4            ; 2 uses
  br i1 %.not233.i.i, label %.thread167.split.us.split.preheader.i.i, label %.thread167.split.us.split.us.i.i

.thread167.split.us.split.preheader.i.i:          ; preds = %.thread167.split.us.i.i
  %i.da = zext i16 %i.cz to i64
  %i.db = icmp samesign ult i64 %.pre109.i, %i.da
  br i1 %i.db, label %.preheader178.us.i.i, label %.split.us.i.i

.thread167.split.us.split.us.i.i:                 ; preds = %.thread167.split.us.i.i
  %spec.select.i.i = call i16 @llvm.umax.i16(i16 %i.aq, i16 %i.cz)
  br label %.split.us.i.i

.thread167.split.us.split.i.loopexit.i:           ; preds = %.thread170.us.i.i
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 3 uses
  %i.dc = load i16, ptr %i.ag, align 4
  %i.dd = zext i16 %i.dc to i64
  %i.de = icmp samesign ult i64 %indvars.iv.next42, %i.dd
  br i1 %i.de, label %.preheader178.us.i.i, label %.split.us.i.i.loopexit29, !llvm.loop !39

bb.k:                                             ; preds = %bb.m
  %indvars.iv.next245.i.i = add nuw nsw i64 %indvars.iv244.i.i, 1 ; 2 uses
  %exitcond249.not.i.i = icmp eq i64 %indvars.iv.next245.i.i, %i.cy
  br i1 %exitcond249.not.i.i, label %.thread170.us.i.i, label %bb.l, !llvm.loop !40

bb.l:                                             ; preds = %.preheader177.us206.i.i, %bb.k
  %indvars.iv244.i.i = phi i64 [ %indvars.iv.i, %.preheader177.us206.i.i ], [ %indvars.iv.next245.i.i, %bb.k ] ; 2 uses
  %i.df = load i16, ptr %i.aj, align 8
  %i.dg = zext i16 %i.df to i64
  %i.dh = load i16, ptr %i.ai, align 2
  %i.di = zext i16 %i.dh to i64
  %i.dj = mul nuw nsw i64 %indvars.iv41, %i.di
  %reass.add.i156.us.i.i = add nuw nsw i64 %i.dj, %indvars.iv250.i.i
  %reass.mul.i157.us.i.i = mul nuw nsw i64 %reass.add.i156.us.i.i, %i.dg
  %i.dk = add nuw nsw i64 %reass.mul.i157.us.i.i, %indvars.iv244.i.i
  %i.dl = load ptr, ptr %i.ak, align 8
  %i.dm = and i64 %i.dk, 4294967295               ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = icmp eq i32 %i.do, -2
  br i1 %i.dp, label %.split.us.i.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = call i32 @slurm_bit_test(ptr noundef %i.ae, i64 noundef %i.dm) #10
  %.not148.us.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not148.us.i.i, label %bb.k, label %.split.us.i.i.loopexit

.thread170.us.i.i:                                ; preds = %bb.k
  %indvars.iv.next251.i.i = add nuw nsw i64 %indvars.iv250.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next251.i.i, %i.cw
  br i1 %exitcond.not.i, label %.thread167.split.us.split.i.loopexit.i, label %.preheader177.us206.i.i, !llvm.loop !39

.preheader177.us206.i.i:                          ; preds = %.preheader178.us.i.i, %.thread170.us.i.i
  %indvars.iv250.i.i = phi i64 [ %indvars.iv97.i, %.preheader178.us.i.i ], [ %indvars.iv.next251.i.i, %.thread170.us.i.i ] ; 2 uses
  br label %bb.l

.preheader178.us.i.i:                             ; preds = %.thread167.split.us.split.preheader.i.i, %.thread167.split.us.split.i.loopexit.i
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.thread167.split.us.split.i.loopexit.i ], [ %indvars.iv39, %.thread167.split.us.split.preheader.i.i ] ; 3 uses
  br label %.preheader177.us206.i.i

.thread167.split.i.i:                             ; preds = %.thread167.i.i
  %i.dr = load i16, ptr %i.ag, align 4
  %umax243.i.i = call i16 @llvm.umax.i16(i16 %i.dr, i16 %i.aq)
  br label %.split.us.i.i

.split.us.i.i.loopexit29:                         ; preds = %.thread167.split.us.split.i.loopexit.i
  %i.ds = trunc nuw i64 %indvars.iv.next42 to i16
  br label %.split.us.i.i

.split.us.i.i.loopexit:                           ; preds = %bb.l, %bb.m
  %i.dt = trunc nuw i64 %indvars.iv41 to i16
  br label %.split.us.i.i

.split.us.i.i:                                    ; preds = %.split.us.i.i.loopexit, %.split.us.i.i.loopexit29, %.thread167.split.i.i, %.thread167.split.us.split.us.i.i, %.thread167.split.us.split.preheader.i.i
  %.us-phi210.i.i = phi i16 [ %spec.select.i.i, %.thread167.split.us.split.us.i.i ], [ %umax243.i.i, %.thread167.split.i.i ], [ %i.aq, %.thread167.split.us.split.preheader.i.i ], [ %i.ds, %.split.us.i.i.loopexit29 ], [ %i.dt, %.split.us.i.i.loopexit ] ; 2 uses
  %i.du = zext i16 %.us-phi210.i.i to i64         ; 3 uses
  %i.dv = icmp samesign ult i64 %indvars.iv102.i, %i.du ; 2 uses
  br i1 %i.dv, label %.preheader176.lr.ph.i.i, label %._crit_edge219.split.i.i

.preheader176.lr.ph.i.i:                          ; preds = %.split.us.i.i
  %i.dw = icmp samesign uge i64 %indvars.iv97.i, %i.cw
  %i.dx = and i64 %indvars.iv.next82.i, 65535
  %i.dy = icmp samesign uge i64 %indvars.iv.i, %i.dx
  %brmerge.i.i = or i1 %i.dy, %i.dw
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
  %exitcond267.not.i.i = icmp eq i64 %indvars.iv.next264.i.i, %i.du
  br i1 %exitcond267.not.i.i, label %._crit_edge219.split.i.i, label %.preheader176.i.i, !llvm.loop !41

._crit_edge.i.i:                                  ; preds = %bb.n
  %indvars.iv.next259.i.i = add nuw nsw i64 %indvars.iv258.i.i, 1 ; 2 uses
  %exitcond262.not.i.i = icmp eq i64 %indvars.iv.next259.i.i, %i.cw
  br i1 %exitcond262.not.i.i, label %._crit_edge217.i.i, label %.preheader175.i.i, !llvm.loop !42

bb.n:                                             ; preds = %bb.n, %.preheader175.i.i
  %indvars.iv253.i.i = phi i64 [ %indvars.iv.i, %.preheader175.i.i ], [ %indvars.iv.next254.i.i, %bb.n ] ; 2 uses
  %i.dz = load i16, ptr %i.aj, align 8
  %i.ea = zext i16 %i.dz to i64
  %i.eb = load i16, ptr %i.ai, align 2
  %i.ec = zext i16 %i.eb to i64
  %i.ed = mul nuw nsw i64 %indvars.iv263.i.i, %i.ec
  %reass.add.i158.i.i = add nuw nsw i64 %i.ed, %indvars.iv258.i.i
  %reass.mul.i159.i.i = mul nuw nsw i64 %reass.add.i158.i.i, %i.ea
  %i.ee = add nuw nsw i64 %reass.mul.i159.i.i, %indvars.iv253.i.i
  %i.ef = and i64 %i.ee, 4294967295
  call void @bit_set(ptr noundef %i.ae, i64 noundef %i.ef) #10
  %indvars.iv.next254.i.i = add nuw nsw i64 %indvars.iv253.i.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next254.i.i to i16
  %exitcond = icmp eq i16 %lftr.wideiv, %indvars124.i
  br i1 %exitcond, label %._crit_edge.i.i, label %bb.n, !llvm.loop !43

bb.o:                                             ; preds = %._crit_edge219.split.i.i
  %i.eg = shl nsw i32 %.246.i, 1                  ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = call ptr @slurm_xrecalloc(ptr noundef nonnull %i.b, i64 noundef %i.eh, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.1, i32 noundef 699, ptr noundef nonnull @__func__._build_region) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge219.split.i.i
  %.4.i = phi i32 [ %.246.i, %._crit_edge219.split.i.i ], [ %i.eg, %bb.o ]
  %i.ej = load ptr, ptr %i.b, align 8
  %i.ek = add nsw i32 %.23145.i, 1
  %i.el = sext i32 %.23145.i to i64
  %i.em = getelementptr inbounds [24 x i8], ptr %i.ej, i64 %i.el ; 7 uses
  %i.en = trunc nuw i64 %indvars.iv.i to i16      ; 2 uses
  store i16 %i.en, ptr %i.em, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i16 %2, ptr %i.eo, align 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  store i16 %i.ar, ptr %i.ep, align 4
  %i.eq = sub i16 %indvars124.i, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 6
  store i16 %i.eq, ptr %i.er, align 2
  %i.es = sub i16 %.0119184.fr.i.i, %2
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  store i16 %i.es, ptr %i.et, align 8
  %i.eu = sub i16 %.us-phi210.i.i, %i.ar
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 10
  store i16 %i.eu, ptr %i.ev, align 2
  %i.ew = call ptr @hostlist_create(ptr noundef null) #10 ; 3 uses
  br i1 %i.dv, label %.preheader174.lr.ph.i.i, label %_build_region.exit.i

.preheader174.lr.ph.i.i:                          ; preds = %bb.p
  %i.ex = icmp samesign uge i64 %indvars.iv97.i, %i.cw
  %i.ey = and i64 %indvars.iv.next82.i, 65535
  %i.ez = icmp samesign uge i64 %indvars.iv.i, %i.ey
  %brmerge232.i.i = or i1 %i.ez, %i.ex
  br i1 %brmerge232.i.i, label %_build_region.exit.i, label %.preheader174.i.i

.preheader174.i.i:                                ; preds = %.preheader174.lr.ph.i.i, %._crit_edge224.i.i
  %indvars.iv279.i.i = phi i64 [ %indvars.iv.next280.i.i, %._crit_edge224.i.i ], [ %indvars.iv102.i, %.preheader174.lr.ph.i.i ] ; 2 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge222.i.i, %.preheader174.i.i
  %indvars.iv274.i.i = phi i64 [ %indvars.iv97.i, %.preheader174.i.i ], [ %indvars.iv.next275.i.i, %._crit_edge222.i.i ] ; 2 uses
  br label %bb.q

._crit_edge224.i.i:                               ; preds = %._crit_edge222.i.i
  %indvars.iv.next280.i.i = add nuw nsw i64 %indvars.iv279.i.i, 1 ; 2 uses
  %exitcond283.not.i.i = icmp eq i64 %indvars.iv.next280.i.i, %i.du
  br i1 %exitcond283.not.i.i, label %_build_region.exit.i, label %.preheader174.i.i, !llvm.loop !44

._crit_edge222.i.i:                               ; preds = %bb.q
  %indvars.iv.next275.i.i = add nuw nsw i64 %indvars.iv274.i.i, 1 ; 2 uses
  %exitcond278.not.i.i = icmp eq i64 %indvars.iv.next275.i.i, %i.cw
  br i1 %exitcond278.not.i.i, label %._crit_edge224.i.i, label %.preheader.i.i, !llvm.loop !45

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %indvars.iv268.i.i = phi i64 [ %indvars.iv.i, %.preheader.i.i ], [ %indvars.iv.next269.i.i, %bb.q ] ; 2 uses
  %i.fa = load i16, ptr %i.aj, align 8
  %i.fb = zext i16 %i.fa to i64
  %i.fc = load i16, ptr %i.ai, align 2
  %i.fd = zext i16 %i.fc to i64
  %i.fe = mul nuw nsw i64 %indvars.iv279.i.i, %i.fd
  %reass.add.i160.i.i = add nuw nsw i64 %i.fe, %indvars.iv274.i.i
  %reass.mul.i161.i.i = mul nuw nsw i64 %reass.add.i160.i.i, %i.fb
  %i.ff = add nuw nsw i64 %reass.mul.i161.i.i, %indvars.iv268.i.i
  %i.fg = load ptr, ptr %i.ak, align 8
  %i.fh = and i64 %i.ff, 4294967295
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = load ptr, ptr @node_record_table_ptr, align 8
  %i.fl = zext i32 %i.fj to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 280
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call i32 @hostlist_push_host(ptr noundef %i.ew, ptr noundef %i.fp) #10 ; 0 uses
  %indvars.iv.next269.i.i = add nuw nsw i64 %indvars.iv268.i.i, 1 ; 2 uses
  %lftr.wideiv44 = trunc i64 %indvars.iv.next269.i.i to i16
  %exitcond45 = icmp eq i16 %lftr.wideiv44, %indvars124.i
  br i1 %exitcond45, label %._crit_edge222.i.i, label %bb.q, !llvm.loop !46

_build_region.exit.i:                             ; preds = %._crit_edge224.i.i, %.preheader174.lr.ph.i.i, %bb.p
  %i.fr = call ptr @hostlist_ranged_string_xmalloc(ptr noundef %i.ew) #10
  %i.fs = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store ptr %i.fr, ptr %i.fs, align 8
  call void @hostlist_destroy(ptr noundef %i.ew) #10
  br label %bb.r

bb.r:                                             ; preds = %_build_region.exit.i, %bb.e, %bb.d
  %.332.i = phi i32 [ %.23145.i, %bb.d ], [ %i.ek, %_build_region.exit.i ], [ %.23145.i, %bb.e ] ; 2 uses
  %.3.i = phi i32 [ %.246.i, %bb.d ], [ %.4.i, %_build_region.exit.i ], [ %.246.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ft = load i16, ptr %i.aj, align 8            ; 3 uses
  %i.fu = zext i16 %i.ft to i64
  %i.fv = icmp samesign ult i64 %indvars.iv.next.i, %i.fu
  br i1 %i.fv, label %bb.d, label %._crit_edge.loopexit.i, !llvm.loop !47

bb.s:                                             ; preds = %._crit_edge62.i
  call void @slurm_bit_free(ptr noundef nonnull %i.a) #10
  br label %_rebuild_regions.exit

_rebuild_regions.exit:                            ; preds = %._crit_edge62.i, %bb.s
  %i.fw = load ptr, ptr %i.b, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store ptr %i.fw, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 %.029.lcssa.i, ptr %i.fy, align 8
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
end_hunk_1
