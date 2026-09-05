Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/torus3d_record?download=true
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
  %i.z = icmp sgt i32 %i.sf, 0
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
  %indvars.iv.i = phi i64 [ 0, %bb.q ], [ %indvars.iv.next.i, %bb.s ] ; 2 uses
  %i.bu = load ptr, ptr %i.bn, align 8
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.i
  store i32 -2, ptr %i.bv, align 4
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %1 = and i64 %indvars.iv.next.i, 4294967295
  %2 = icmp samesign ugt i64 %i.ax, %1
  br i1 %2, label %bb.s, label %bb.r, !llvm.loop !11

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
  br i1 %exitcond.not.i75, label %._crit_edge.i76, label %bb.af, !llvm.loop !12

._crit_edge.i76:                                  ; preds = %bb.am, %.preheader.i72
  %.5 = phi ptr [ %.2, %.preheader.i72 ], [ %.4, %bb.am ] ; 2 uses
  call void @hostlist_destroy(ptr noundef nonnull %i.do) #10
  %indvars.iv.next.i77 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %i.fi = load i32, ptr %i.bs, align 8
  %i.fj = sext i32 %i.fi to i64
  %i.fk = icmp slt i64 %indvars.iv.next.i77, %i.fj
  br i1 %i.fk, label %bb.u, label %_validate_regions_config.exit, !llvm.loop !13

bb.an:                                            ; preds = %bb.r
  %i.fl = load ptr, ptr %i.ai, align 8            ; 3 uses
  %.not111.i = icmp eq ptr %i.fl, null
  br i1 %.not111.i, label %_validate_regions_config.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fm = load i8, ptr %i.fl, align 1
  %.not112.i = icmp eq i8 %i.fm, 0
end_hunk_0
