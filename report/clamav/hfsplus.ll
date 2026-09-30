Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/hfsplus?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hfsplus_validate_catalog:bb.a
  %i.f = load i64, ptr %i.e, align 1, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i32, ptr %i.g, align 1, !tbaa !33
  %i.i = mul i32 %i.h, %i.b
  %i.j = zext i32 %i.i to i64
  %i.k = icmp ugt i64 %i.f, %i.j
  br i1 %i.k, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = zext i16 %.18.val to i32
  %i.m = mul i32 %.22.val, %i.l
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %i.f, %i.n
  br i1 %i.o, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.a
  %.str.43.sink = phi ptr [ @.str.42, %bb.b ], [ @.str.41, %bb.a ], [ @.str.43, %bb.c ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.43.sink) #11
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 26, %.sink.split ]
  ret i32 %.0
}

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @hfsplus_walk_catalog(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 22 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 22 uses
  %i.d = alloca ptr, align 8                      ; 15 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %struct.hfsPlusCatalogFile, align 4 ; 20 uses
  %i.g = alloca [8192 x i8], align 16             ; 9 uses
  %6 = alloca %struct.z_stream_s, align 8         ; 11 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca [4096 x i8], align 16             ; 8 uses
  %i.k = alloca [4096 x i8], align 16             ; 9 uses
  %7 = alloca %struct.z_stream_s, align 8         ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 -1, ptr %i.c, align 4, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 0, ptr %i.e, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store ptr null, ptr %i.f, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.m = load i32, ptr %i.l, align 1, !tbaa !64
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.m, i32 1000)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.o = load i32, ptr %i.n, align 1, !tbaa !62
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 18
  %i.q = load i16, ptr %i.p, align 1, !tbaa !63   ; 5 uses
  %i.r = zext i16 %i.q to i64                     ; 2 uses
  %i.s = tail call ptr @cli_max_malloc(i64 noundef %i.r) #11 ; 11 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.b, label %.preheader132

.preheader132:                                    ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  %i.u = lshr i16 %i.q, 2
  %i.v = add i16 %i.q, -2
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 42 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 88 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 164 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 240 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 244 ; 2 uses
  %.not.i = icmp eq ptr %3, null
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 16 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = zext i16 %i.q to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.44, i32 noundef %i.bb) #11
  br label %bb.gp

bb.c:                                             ; preds = %._crit_edge487, %.preheader132
  %.0280 = phi i32 [ 0, %.preheader132 ], [ %.1281.lcssa, %._crit_edge487 ] ; 2 uses
  %.0278 = phi i32 [ %i.o, %.preheader132 ], [ %i.bh, %._crit_edge487 ] ; 3 uses
  %.0276 = phi i32 [ 0, %.preheader132 ], [ %i.be, %._crit_edge487 ] ; 2 uses
  %.0249 = phi i32 [ -1, %.preheader132 ], [ %.1250.lcssa, %._crit_edge487 ] ; 8 uses
  %.0238 = phi i1 [ false, %.preheader132 ], [ %.1239.lcssa, %._crit_edge487 ] ; 2 uses
  %i.bc = icmp eq i32 %.0280, 0
  br i1 %i.bc, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.bd = icmp eq i32 %.0278, 0
  br i1 %i.bd, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #11
  br label %.preheader

bb.f:                                             ; preds = %bb.d
  %i.be = add i32 %.0276, 1
  %i.bf = icmp ugt i32 %.0276, %spec.select
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46) #11
  br label %.preheader

bb.h:                                             ; preds = %bb.f
  %i.bg = call fastcc i32 @hfsplus_fetch_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.t, i32 noundef %.0278, ptr noundef nonnull %i.s, i64 noundef %i.r) ; 2 uses
  %.not351 = icmp eq i32 %i.bg, 0
  br i1 %.not351, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47) #11
  br label %.preheader

bb.j:                                             ; preds = %bb.h
  %.sroa.0.0.copyload8 = load i32, ptr %i.s, align 1
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.10.0.copyload = load i8, ptr %.sroa.10.0..sroa_idx, align 1 ; 2 uses
  %.sroa.12.0.copyload = load i8, ptr %.sroa.12.0..sroa_idx, align 1 ; 2 uses
  %.sroa.14.0.copyload = load i16, ptr %.sroa.14.0..sroa_idx, align 1 ; 2 uses
  %i.bh = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload8) ; 3 uses
  %i.bi = call i32 @llvm.bswap.i32(i32 %.sroa.7.0.copyload)
  %rev.i = call i16 @llvm.bswap.i16(i16 %.sroa.14.0.copyload) ; 4 uses
  %i.bj = sext i8 %.sroa.10.0.copyload to i32
  %i.bk = zext i8 %.sroa.12.0.copyload to i32
  %i.bl = zext i16 %rev.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.48, i32 noundef %i.bh, i32 noundef %i.bi, i32 noundef %i.bj, i32 noundef %i.bk, i32 noundef %i.bl) #11
  %i.bm = icmp ne i8 %.sroa.10.0.copyload, -1
  %i.bn = icmp ne i8 %.sroa.12.0.copyload, 1
  %or.cond = or i1 %i.bm, %i.bn
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #11
  br label %.preheader

bb.l:                                             ; preds = %bb.j
  %i.bo = icmp ult i16 %i.u, %rev.i
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.50) #11
  br label %.preheader

bb.n:                                             ; preds = %bb.l
  %i.bp = shl nuw nsw i16 %rev.i, 1
  %i.bq = sub i16 %i.q, %i.bp
  %i.br = add i16 %i.bq, -2                       ; 3 uses
  %.not513 = icmp eq i16 %.sroa.14.0.copyload, 0
  br i1 %.not513, label %._crit_edge487, label %.lr.ph486

.lr.ph486:                                        ; preds = %bb.n
  %i.bs = zext i16 %i.br to i32
  %i.bt = zext i16 %i.br to i64
  %wide.trip.count = zext nneg i16 %rev.i to i64
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph486, %bb.ec
  %indvars.iv832 = phi i64 [ 0, %.lr.ph486 ], [ %indvars.iv.next833, %bb.ec ] ; 2 uses
  %i.bu = phi i32 [ 0, %.lr.ph486 ], [ %i.ll, %bb.ec ] ; 3 uses
  %.1239483 = phi i1 [ %.0238, %.lr.ph486 ], [ %.21, %bb.ec ] ; 12 uses
  %.1250481 = phi i32 [ %.0249, %.lr.ph486 ], [ %.8257, %bb.ec ] ; 20 uses
  %.0273477 = phi i16 [ 14, %.lr.ph486 ], [ %14, %bb.ec ]
  %.1281475 = phi i32 [ 0, %.lr.ph486 ], [ %.22302, %bb.ec ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  store ptr null, ptr %i.d, align 8, !tbaa !66
  %i.bv = trunc nuw i64 %indvars.iv832 to i16
  %i.bw = shl i16 %i.bv, 1
  %i.bx = sub i16 %i.v, %i.bw
  %i.by = zext i16 %i.bx to i64
  %8 = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.by ; 2 uses
  %9 = load i8, ptr %8, align 1, !tbaa !39
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 1
  %12 = load i8, ptr %i.bz, align 1, !tbaa !39
  %13 = zext i8 %12 to i16
  %14 = or disjoint i16 %11, %13                  ; 5 uses
  %i.ca = zext i16 %14 to i32                     ; 4 uses
  %.not352 = icmp ule i16 %i.br, %14
  %i.cb = icmp ult i16 %14, %.0273477
  %or.cond416 = or i1 %.not352, %i.cb
  br i1 %or.cond416, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.51, i32 noundef %i.ca, i32 noundef %i.bu) #11
  br label %.thread119

bb.q:                                             ; preds = %bb.o
  %i.cc = zext i16 %14 to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.cc ; 5 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !39
  %i.cf = zext i8 %i.ce to i16
  %i.cg = shl nuw i16 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !39
  %i.cj = zext i8 %i.ci to i16                    ; 2 uses
  %i.ck = or disjoint i16 %i.cg, %i.cj
  %i.cl = and i16 %i.cj, 1
  %i.cm = add i16 %i.ck, %i.cl                    ; 2 uses
  %i.cn = zext i16 %i.cm to i32                   ; 3 uses
  %i.co = add nuw nsw i32 %i.cn, %i.ca            ; 2 uses
  %i.cp = add nuw nsw i32 %i.co, 4
  %.not353 = icmp samesign ult i32 %i.cp, %i.bs
  br i1 %.not353, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.52, i32 noundef %i.ca, i32 noundef %i.bu) #11
  br label %.thread119

bb.s:                                             ; preds = %bb.q
  %i.cq = icmp ugt i16 %i.cm, 5
  br i1 %i.cq, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 6
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !39
  %i.ct = zext i8 %i.cs to i32
  %i.cu = shl nuw nsw i32 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 7
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !39
  %i.cx = zext i8 %i.cw to i32
  %i.cy = or disjoint i32 %i.cu, %i.cx            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.not354 = icmp eq i32 %i.cy, 0
  br i1 %.not354, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = shl nuw nsw i32 %i.cy, 1                ; 2 uses
  %i.db = add nsw i32 %i.cn, -6
  %.not355 = icmp samesign ugt i32 %i.da, %i.db
  br i1 %.not355, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = zext nneg i32 %i.da to i64
  %i.dd = call i32 @cli_codepage_to_utf8(ptr noundef nonnull %i.cz, i64 noundef %i.dc, i16 noundef zeroext 1201, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #11
  %.not356 = icmp eq i32 %i.dd, 0
  br i1 %.not356, label %._crit_edge840, label %bb.w

._crit_edge840:                                   ; preds = %bb.v
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !66
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.53) #11
  store ptr null, ptr %i.d, align 8, !tbaa !66
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge840, %bb.w
  %i.de = phi ptr [ %.pre, %._crit_edge840 ], [ null, %bb.w ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.54, ptr noundef %i.de) #11
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %bb.u, %bb.x, %bb.s
  %i.df = add nuw nsw i32 %i.co, 2
  %i.dg = zext nneg i32 %i.df to i64              ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.dg ; 2 uses
  %.0.copyload = load i16, ptr %i.dh, align 1     ; 2 uses
  %rev = call i16 @llvm.bswap.i16(i16 %.0.copyload)
  %i.di = sext i16 %rev to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.55, i32 noundef %i.bu, i32 noundef %i.ca, i32 noundef %i.cn, i32 noundef %i.di) #11
  %.not357 = icmp eq i16 %.0.copyload, 512
  br i1 %.not357, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !66  ; 2 uses
  %.not405 = icmp eq ptr %i.dj, null
  br i1 %.not405, label %bb.ec, label %.sink.split

bb.aa:                                            ; preds = %bb.y
  %i.dk = add nuw nsw i64 %i.dg, 248
  %.not358 = icmp samesign ult i64 %i.dk, %i.bt
  br i1 %.not358, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.56) #11
  br label %.thread119

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(248) %5, ptr noundef nonnull align 1 dereferenceable(248) %i.dh, i64 248, i1 false)
  %i.dl = load i32, ptr %i.w, align 4, !tbaa !99  ; 2 uses
  %i.dm = call i32 @llvm.bswap.i32(i32 %i.dl)
  store i32 %i.dm, ptr %i.w, align 4, !tbaa !99
  %i.dn = load i16, ptr %i.x, align 2, !tbaa !100
  %rev362 = call i16 @llvm.bswap.i16(i16 %i.dn)   ; 2 uses
  store i16 %rev362, ptr %i.x, align 2, !tbaa !100
  %i.do = zext i16 %rev362 to i32                 ; 2 uses
  %i.dp = and i32 %i.do, 61440
  %i.dq = icmp eq i32 %i.dp, 32768
  br i1 %i.dq, label %bb.ad, label %bb.ea

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.dr = load i64, ptr %i.y, align 4, !tbaa !35
  %i.ds = call i64 @llvm.bswap.i64(i64 %i.dr)
  store i64 %i.ds, ptr %i.y, align 4, !tbaa !35
  %i.dt = load <4 x i32>, ptr %i.z, align 4, !tbaa !32
  %i.du = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.dt)
  store <4 x i32> %i.du, ptr %i.z, align 4, !tbaa !32
  %i.dv = load <4 x i32>, ptr %i.aa, align 4, !tbaa !32
  %i.dw = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.dv)
  store <4 x i32> %i.dw, ptr %i.aa, align 4, !tbaa !32
  %i.dx = load <4 x i32>, ptr %i.ab, align 4, !tbaa !32
  %i.dy = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.dx)
  store <4 x i32> %i.dy, ptr %i.ab, align 4, !tbaa !32
  %i.dz = load <4 x i32>, ptr %i.ac, align 4, !tbaa !32
  %i.ea = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.dz)
  store <4 x i32> %i.ea, ptr %i.ac, align 4, !tbaa !32
  %i.eb = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.ec = call i32 @llvm.bswap.i32(i32 %i.eb)
  store i32 %i.ec, ptr %i.ad, align 4, !tbaa !37
  %i.ed = load i32, ptr %i.ae, align 4, !tbaa !38
  %i.ee = call i32 @llvm.bswap.i32(i32 %i.ed)
  store i32 %i.ee, ptr %i.ae, align 4, !tbaa !38
  call fastcc void @forkdata_print(ptr noundef nonnull @.str.57, ptr noundef %i.y)
  %i.ef = load i64, ptr %i.af, align 4, !tbaa !35 ; 2 uses
  %i.eg = call i64 @llvm.bswap.i64(i64 %i.ef)     ; 2 uses
  store i64 %i.eg, ptr %i.af, align 4, !tbaa !35
  %i.eh = load <4 x i32>, ptr %i.ag, align 4, !tbaa !32
  %i.ei = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.eh)
  store <4 x i32> %i.ei, ptr %i.ag, align 4, !tbaa !32
  %i.ej = load <4 x i32>, ptr %i.ah, align 4, !tbaa !32
  %i.ek = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.ej)
  store <4 x i32> %i.ek, ptr %i.ah, align 4, !tbaa !32
  %i.el = load <4 x i32>, ptr %i.ai, align 4, !tbaa !32
  %i.em = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.el)
  store <4 x i32> %i.em, ptr %i.ai, align 4, !tbaa !32
  %i.en = load <4 x i32>, ptr %i.aj, align 4, !tbaa !32
  %i.eo = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.en)
  store <4 x i32> %i.eo, ptr %i.aj, align 4, !tbaa !32
  %i.ep = load i32, ptr %i.ak, align 4, !tbaa !37
  %i.eq = call i32 @llvm.bswap.i32(i32 %i.ep)
  store i32 %i.eq, ptr %i.ak, align 4, !tbaa !37
  %i.er = load i32, ptr %i.al, align 4, !tbaa !38
  %i.es = call i32 @llvm.bswap.i32(i32 %i.er)
  store i32 %i.es, ptr %i.al, align 4, !tbaa !38
  call fastcc void @forkdata_print(ptr noundef nonnull @.str.58, ptr noundef %i.af)
  br i1 %.not.i, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = load i32, ptr %i.am, align 1, !tbaa !64
  %spec.select.i = call i32 @llvm.umin.i32(i32 %i.et, i32 1000)
  %i.eu = load i32, ptr %i.an, align 1, !tbaa !62 ; 2 uses
  %i.ev = load i16, ptr %i.ao, align 1, !tbaa !63 ; 5 uses
  %i.ew = zext i16 %i.ev to i64                   ; 2 uses
  %i.ex = call ptr @cli_max_malloc(i64 noundef %i.ew) #11 ; 12 uses
  %.not141.i = icmp eq ptr %i.ex, null
  br i1 %.not141.i, label %.thread191.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ae
  %i.ey = icmp eq i32 %i.eu, 0
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 9
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 10
  %i.ez = lshr i16 %i.ev, 2
  %i.fa = add i16 %i.ev, -2
  br i1 %i.ey, label %.thread38, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  %i.fb = add nuw nsw i32 %spec.select.i, 1
  br label %bb.af

.thread191.i:                                     ; preds = %bb.ae
  %i.fc = zext i16 %i.ev to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.111, i32 noundef %i.fc) #11
  br label %.thread

bb.af:                                            ; preds = %.preheader.split.preheader.i, %.loopexit.i
  %i.fd = phi i32 [ 1, %.preheader.split.preheader.i ], [ %i.gx, %.loopexit.i ] ; 2 uses
  %i.fe = call fastcc i32 @hfsplus_fetch_node(ptr noundef nonnull readonly %0, ptr noundef readonly %1, ptr noundef readonly %3, ptr noundef nonnull readonly %i.ap, i32 noundef %i.eu, ptr noundef nonnull %i.ex, i64 noundef %i.ew)
  %.not144.i = icmp eq i32 %i.fe, 0
  br i1 %.not144.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.114) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.ah:                                            ; preds = %bb.af
  %.sroa.0.0.copyload163.i = load i32, ptr %i.ex, align 1
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.9.0.copyload.i = load i8, ptr %.sroa.9.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.11.0.copyload.i = load i8, ptr %.sroa.11.0..sroa_idx.i, align 1 ; 2 uses
  %.sroa.13.0.copyload.i = load i16, ptr %.sroa.13.0..sroa_idx.i, align 1 ; 2 uses
  %i.ff = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload163.i)
  %i.fg = call i32 @llvm.bswap.i32(i32 %.sroa.6.0.copyload.i)
  %rev.i.i = call i16 @llvm.bswap.i16(i16 %.sroa.13.0.copyload.i) ; 4 uses
  %i.fh = sext i8 %.sroa.9.0.copyload.i to i32
  %i.fi = zext i8 %.sroa.11.0.copyload.i to i32
  %i.fj = zext i16 %rev.i.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.115, i32 noundef %i.ff, i32 noundef %i.fg, i32 noundef %i.fh, i32 noundef %i.fi, i32 noundef %i.fj) #11
  %i.fk = icmp ne i8 %.sroa.9.0.copyload.i, -1
  %i.fl = icmp ne i8 %.sroa.11.0.copyload.i, 1
  %or.cond.i = or i1 %i.fk, %i.fl
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.116) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.aj:                                            ; preds = %bb.ah
  %i.fm = icmp ult i16 %i.ez, %rev.i.i
  br i1 %i.fm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.117) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.al:                                            ; preds = %bb.aj
  %i.fn = shl nuw nsw i16 %rev.i.i, 1
  %i.fo = sub i16 %i.ev, %i.fn
  %i.fp = add i16 %i.fo, -2                       ; 3 uses
  %.not228.i = icmp eq i16 %.sroa.13.0.copyload.i, 0
  br i1 %.not228.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al
  %i.fq = zext i16 %i.fp to i32
  %i.fr = zext i16 %i.fp to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i16 %rev.i.i to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.az, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.az ] ; 5 uses
  %.0115226.i = phi i16 [ 14, %.lr.ph.i ], [ %21, %bb.az ]
  %i.fs = trunc nuw i64 %indvars.iv.i to i16
  %i.ft = shl i16 %i.fs, 1
  %i.fu = sub i16 %i.fa, %i.ft
  %i.fv = zext i16 %i.fu to i64
  %15 = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fv ; 2 uses
  %16 = load i8, ptr %15, align 1, !tbaa !39
  %17 = zext i8 %16 to i16
  %18 = shl nuw i16 %17, 8
  %i.fw = getelementptr inbounds nuw i8, ptr %15, i64 1
  %19 = load i8, ptr %i.fw, align 1, !tbaa !39
  %20 = zext i8 %19 to i16
  %21 = or disjoint i16 %18, %20                  ; 5 uses
  %i.fx = zext i16 %21 to i32                     ; 4 uses
  %.not145.i = icmp ule i16 %i.fp, %21
  %i.fy = icmp ult i16 %21, %.0115226.i
  %or.cond160.i = or i1 %.not145.i, %i.fy
  br i1 %or.cond160.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fz = trunc i64 %indvars.iv.i to i32
  %i.ga = and i32 %i.fz, 65535
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.118, i32 noundef %i.fx, i32 noundef %i.ga) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.ao:                                            ; preds = %bb.am
  %i.gb = zext i16 %21 to i64                     ; 2 uses
  %i.gc = add nuw nsw i64 %i.gb, 14               ; 2 uses
  %.not146.i = icmp samesign ult i64 %i.gc, %i.fr
  br i1 %.not146.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gd = trunc i64 %indvars.iv.i to i32
  %i.ge = and i32 %i.gd, 65535
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.119, i32 noundef %i.fx, i32 noundef %i.ge) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.aq:                                            ; preds = %bb.ao
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.gb ; 7 uses
  %.sroa.016.0.copyload.i = load i16, ptr %i.gf, align 1
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %.sroa.719.0.copyload.i = load i32, ptr %.sroa.719.0..sroa_idx.i, align 1
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 12
  %.sroa.18.0.copyload.i = load i16, ptr %.sroa.18.0..sroa_idx.i, align 1 ; 2 uses
  %rev.i419 = call i16 @llvm.bswap.i16(i16 %.sroa.016.0.copyload.i)
  %i.gg = zext i16 %rev.i419 to i32
  %i.gh = add nuw nsw i32 %i.fx, 4
  %i.gi = add nuw nsw i32 %i.gh, %i.gg
  %.not151.i = icmp samesign ult i32 %i.gi, %i.fq
  br i1 %.not151.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gj = trunc i64 %indvars.iv.i to i32
  %i.gk = and i32 %i.gj, 65535
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.120, i32 noundef %i.fx, i32 noundef %i.gk) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.as:                                            ; preds = %bb.aq
  %rev150.i = call i16 @llvm.bswap.i16(i16 %.sroa.18.0.copyload.i) ; 2 uses
  %i.gl = zext i16 %rev150.i to i64
  %i.gm = add nuw nsw i64 %i.gc, %i.gl
  %.not152.i = icmp samesign ult i64 %i.gm, %i.fr
  br i1 %.not152.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gn = zext i16 %rev150.i to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.121, i32 noundef %i.gn) #11
  br label %hfsplus_check_attribute.exit.thread30

bb.au:                                            ; preds = %bb.as
  %i.go = icmp eq i32 %.sroa.719.0.copyload.i, %i.dl
  %i.gp = icmp eq i16 %.sroa.18.0.copyload.i, 4352
  %or.cond161.i = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %or.cond161.i, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gf, i64 14
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(34) %i.gq, ptr noundef nonnull readonly dereferenceable(34) @__const.hfsplus_walk_catalog.COMPRESSED_ATTR, i64 34)
  %i.gr = icmp eq i32 %bcmp.i, 0
  br i1 %i.gr, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %.sroa.0.0.copyload.i = load i32, ptr %i.gs, align 1 ; 2 uses
  %.not159.i = icmp eq i32 %.sroa.0.0.copyload.i, 268435456
  br i1 %.not159.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gt = call i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i)
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.122, i32 noundef %i.gt) #11
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %.sroa.109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 60
  %.sroa.109.0.copyload.i = load i32, ptr %.sroa.109.0..sroa_idx.i, align 1 ; 2 uses
  %i.gu = call i32 @llvm.bswap.i32(i32 %.sroa.109.0.copyload.i) ; 4 uses
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %i.gw = icmp ugt i32 %i.gu, 8192
  br i1 %i.gw, label %hfsplus_check_attribute.exit.thread30, label %bb.ba

bb.az:                                            ; preds = %bb.ax, %bb.av, %bb.au
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.am

.loopexit.i:                                      ; preds = %bb.az, %bb.al
  %i.gx = add nuw nsw i32 %i.fd, 1
  %exitcond255.i = icmp eq i32 %i.fd, %i.fb
  br i1 %exitcond255.i, label %.thread38, label %bb.af

hfsplus_check_attribute.exit.thread30:            ; preds = %bb.ak, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.ag, %bb.ai, %bb.ay
  call void @free(ptr noundef nonnull %i.ex) #11
  br label %.thread

.thread:                                          ; preds = %hfsplus_check_attribute.exit.thread30, %.thread191.i, %bb.ad
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.59) #11
  br label %bb.dt

.thread38:                                        ; preds = %.loopexit.i, %.preheader.i
  %.str.112.sink = phi ptr [ @.str.112, %.preheader.i ], [ @.str.113, %.loopexit.i ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.112.sink) #11
  call void @free(ptr noundef nonnull %i.ex) #11
  br label %bb.dt

bb.ba:                                            ; preds = %bb.ay
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gf, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr nonnull align 1 %i.gy, i64 %i.gv, i1 false)
  call void @free(ptr noundef nonnull %i.ex) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.60) #11
  %i.gz = icmp samesign ult i32 %i.gu, 16
  br i1 %i.gz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.61) #11
  br label %.thread111

bb.bc:                                            ; preds = %bb.ba
  %.sroa.0.0.copyload = load i32, ptr %i.g, align 16 ; 3 uses
  %.sroa.11.0.copyload = load i32, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %.sroa.19.0.copyload = load i64, ptr %.sroa.19.0..sroa_idx, align 8 ; 2 uses
  %i.ha = icmp eq i32 %.sroa.0.0.copyload, 1718644067 ; 2 uses
  %i.hb = call i32 @llvm.bswap.i32(i32 %.sroa.11.0.copyload)
  %i.hc = call i64 @llvm.bswap.i64(i64 %.sroa.19.0.copyload)
  %.sroa.19.0 = select i1 %i.ha, i64 %i.hc, i64 %.sroa.19.0.copyload ; 8 uses
  %.sroa.11.0 = select i1 %i.ha, i32 %i.hb, i32 %.sroa.11.0.copyload ; 3 uses
  switch i32 %.sroa.0.0.copyload, label %bb.bd [
    i32 1718644067, label %bb.be
    i32 1668116582, label %bb.be
  ]

bb.bd:                                            ; preds = %bb.bc
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.62, i32 noundef %.sroa.0.0.copyload) #11
  br label %.thread111

bb.be:                                            ; preds = %bb.bc, %bb.bc
  %i.hd = call i32 @cli_gentempfd(ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #11 ; 2 uses
  %.not376 = icmp eq i32 %i.hd, 0
  br i1 %.not376, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.63) #11
  br label %.thread111

bb.bg:                                            ; preds = %bb.be
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.64, i32 noundef %.sroa.11.0, i64 noundef %.sroa.19.0) #11
  switch i32 %.sroa.11.0, label %bb.dk [
    i32 3, label %bb.bh
    i32 4, label %bb.cd
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.he = icmp eq i32 %.sroa.109.0.copyload.i, 268435456
  br i1 %i.he, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.65) #11
  br label %.thread111

bb.bj:                                            ; preds = %bb.bh
  %i.hf = load i8, ptr %i.av, align 16, !tbaa !39
  %i.hg = and i8 %i.hf, 15
  %i.hh = icmp eq i8 %i.hg, 15
  br i1 %i.hh, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.hi = add nsw i64 %i.gv, -17
  %.not394 = icmp eq i64 %i.hi, %.sroa.19.0
  br i1 %.not394, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.66) #11
  br label %.thread111

bb.bm:                                            ; preds = %bb.bk
  %i.hj = load i32, ptr %i.c, align 4, !tbaa !32
  %i.hk = call i64 @cli_writen(i32 noundef %i.hj, ptr noundef nonnull %i.ba, i64 noundef %.sroa.19.0) #11
  br label %bb.cb

bb.bn:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.hl = icmp ugt i64 %.sroa.19.0, 65536
  br i1 %i.hl, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.67) #11
  br label %.thread44

bb.bp:                                            ; preds = %bb.bn
  %i.hm = call noalias ptr @malloc(i64 noundef %.sroa.19.0) #12 ; 9 uses
  %.not392 = icmp eq ptr %i.hm, null
  br i1 %.not392, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.68) #11
  br label %.thread44

bb.br:                                            ; preds = %bb.bp
  %i.hn = add nsw i32 %i.gu, -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  store i32 %i.hn, ptr %i.ax, align 8, !tbaa !103
  store ptr %i.av, ptr %6, align 8, !tbaa !104
  %i.ho = trunc nuw nsw i64 %.sroa.19.0 to i32
  store i32 %i.ho, ptr %i.ay, align 8, !tbaa !105
  store ptr %i.hm, ptr %i.az, align 8, !tbaa !106
  %i.hp = call i32 @inflateInit2_(ptr noundef nonnull %6, i32 noundef 15, ptr noundef nonnull @.str.69, i32 noundef 112) #11 ; 2 uses
  switch i32 %i.hp, label %bb.bv [
    i32 0, label %bb.bw
end_hunk_0
begin_hunk_1_@hfsplus_scanfile:bb.a
bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.125) #11
  br label %.thread12

bb.g:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !66
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.126, ptr noundef %i.j) #11
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load i32, ptr %i.e, align 1, !tbaa !65
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread6, %bb.g
  %.07236.lcssa = phi i64 [ %i.c, %bb.g ], [ %.3, %.thread6 ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.128, i64 noundef %.07236.lcssa) #11
  br label %.thread18

.lr.ph:                                           ; preds = %bb.g, %.thread6
  %.0723689 = phi i64 [ %.3, %.thread6 ], [ %i.c, %bb.g ]
  %indvars.iv88 = phi i64 [ %indvars.iv.next, %.thread6 ], [ 0, %bb.g ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv88, 8
  br i1 %exitcond.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv88 to i32
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv88 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.129, i32 noundef %i.q) #11
  %i.s = load i32, ptr %i.r, align 1, !tbaa !37   ; 5 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.130) #11
  br label %.thread12

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.v = load i32, ptr %i.u, align 1, !tbaa !38   ; 4 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.131) #11
  br label %.thread18

bb.l:                                             ; preds = %bb.j
  %i.x = and i32 %i.s, 268435456
  %i.y = and i32 %i.x, %i.v
  %or.cond107.not.not = icmp eq i32 %i.y, 0
  br i1 %or.cond107.not.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.132) #11
  br label %.thread12

bb.n:                                             ; preds = %bb.l
  %i.z = add i32 %i.s, -1
  %i.aa = add i32 %i.z, %i.v                      ; 2 uses
  %i.ab = load i32, ptr %i.l, align 1, !tbaa !34  ; 3 uses
  %i.ac = icmp ugt i32 %i.s, %i.ab
  %i.ad = icmp ugt i32 %i.aa, %i.ab
  %or.cond108 = or i1 %i.ac, %i.ad
  %i.ae = icmp ugt i32 %i.v, %i.ab
  %or.cond109 = or i1 %i.ae, %or.cond108
  br i1 %or.cond109, label %bb.o, label %.preheader

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.133) #11
  br label %.thread12

.preheader:                                       ; preds = %bb.n, %bb.u
  %.173 = phi i64 [ %i.ap, %bb.u ], [ %.0723689, %bb.n ] ; 3 uses
  %.068 = phi i32 [ %i.ar, %bb.u ], [ %i.s, %bb.n ] ; 3 uses
  %.not102 = icmp ugt i32 %.068, %i.aa
  br i1 %.not102, label %.thread6, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.af = load i32, ptr %i.m, align 1, !tbaa !33  ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.173. = call i64 @llvm.umin.i64(i64 %.173, i64 %i.ag) ; 3 uses
  %i.ah = mul i32 %i.af, %.068
  %i.ai = zext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.am = call ptr %i.al(ptr noundef %i.aj, i64 noundef range(i64 0, 8589934590) %i.ai, i64 noundef range(i64 0, 4294967296) %i.ag, i32 noundef 0) #11, !inline_history !0 ; 2 uses
  %.not103 = icmp eq ptr %i.am, null
  br i1 %.not103, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.134) #11
  br label %.thread12

bb.r:                                             ; preds = %bb.p
  %i.an = load i32, ptr %i.b, align 4, !tbaa !32
  %i.ao = call i64 @cli_writen(i32 noundef %i.an, ptr noundef nonnull %i.am, i64 noundef %.173.) #11
  %.not104 = icmp eq i64 %i.ao, %.173.
  br i1 %.not104, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.135) #11
  br label %.thread12

bb.t:                                             ; preds = %bb.r
  %i.ap = sub nuw i64 %.173, %.173.               ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.thread6.thread, label %bb.u

.thread6.thread:                                  ; preds = %bb.t
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.136) #11
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.127) #11
  br label %.thread18

bb.u:                                             ; preds = %bb.t
  %i.ar = add i32 %.068, 1
  %i.as = load i32, ptr %i.e, align 1, !tbaa !65
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.128, i64 noundef %i.ap) #11
  br label %.thread6

.thread6:                                         ; preds = %.preheader, %bb.v
  %.3 = phi i64 [ %i.ap, %bb.v ], [ %.173, %.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv88, 1
  %i.au = load i32, ptr %i.e, align 1, !tbaa !65
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %._crit_edge, label %.lr.ph

.thread18:                                        ; preds = %bb.k, %._crit_edge, %.thread6.thread
  %.not105 = icmp eq ptr %4, null
  br i1 %.not105, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread18
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !66
  store ptr %i.aw, ptr %4, align 8, !tbaa !66
  br label %.thread12

bb.x:                                             ; preds = %.thread18
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !32
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !66
  %i.az = call i32 @cli_magic_scan_desc(i32 noundef %i.ax, ptr noundef %i.ay, ptr noundef nonnull %0, ptr noundef %5, i32 noundef 0) #11
  br label %.thread12

.thread12:                                        ; preds = %bb.q, %bb.s, %bb.i, %bb.o, %bb.m, %bb.x, %bb.w, %bb.d, %bb.f, %bb.c
  %.5 = phi i32 [ 0, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.f ], [ 0, %bb.w ], [ %i.az, %bb.x ], [ 26, %bb.i ], [ 26, %bb.m ], [ 26, %bb.o ], [ 19, %bb.q ], [ 14, %bb.s ] ; 2 uses
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !32  ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread12
  %i.bc = call i32 @close(i32 noundef %i.ba) #11  ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread12
  %i.bd = icmp eq ptr %4, null
  %i.be = icmp ne i32 %.5, 0
  %or.cond = select i1 %i.bd, i1 true, i1 %i.be
  %i.bf = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bg = icmp ne ptr %i.bf, null
  %or.cond3 = select i1 %or.cond, i1 %i.bg, i1 false
  br i1 %or.cond3, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !60
  %.not106 = icmp eq i32 %i.bk, 0
  br i1 %.not106, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bl = call i32 @cli_unlink(ptr noundef nonnull %i.bf) #11 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bm = phi ptr [ %.pre, %bb.ab ], [ %i.bf, %bb.aa ]
  call void @free(ptr noundef %i.bm) #11
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.5
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 27) i32 @hfsplus_seek_to_cmpf_resource(i32 noundef range(i32 0, -1) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hfsPlusResourceHeader, align 16 ; 7 uses
  %3 = alloca %struct.hfsPlusResourceMap, align 1 ; 5 uses
  %4 = alloca %struct.hfsPlusResourceType, align 1 ; 6 uses
  %5 = alloca %struct.hfsPlusReferenceEntry, align 1 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 16) #11
  %.not = icmp eq i64 %i.b, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.137) #11
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load <4 x i32>, ptr %2, align 16, !tbaa !32
  %i.e = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.d) ; 2 uses
  store <4 x i32> %i.e, ptr %2, align 16, !tbaa !32
  %i.f = extractelement <4 x i32> %i.e, i64 1
  %i.g = zext i32 %i.f to i64
  %i.h = call i64 @lseek(i32 noundef %0, i64 noundef %i.g, i32 noundef 0) #11
  %i.i = load i32, ptr %i.c, align 4, !tbaa !115
  %i.j = zext i32 %i.i to i64
  %.not22 = icmp eq i64 %i.h, %i.j
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.138) #11
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.k = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %3, i64 noundef 30) #11
  %.not23 = icmp eq i64 %i.k, 30
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.139) #11
  br label %bb.x

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 22 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.n = load <4 x i16>, ptr %i.l, align 1, !tbaa !116
  %i.o = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.n) ; 2 uses
  store <4 x i16> %i.o, ptr %i.l, align 1, !tbaa !116
  %i.p = extractelement <4 x i16> %i.o, i64 3
  %.not2739 = icmp slt i16 %i.p, 0
  br i1 %.not2739, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.n
  %.042 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.n ] ; 2 uses
  %.01841 = phi i32 [ -1, %.lr.ph ], [ %.1, %bb.n ] ; 2 uses
  %.01940 = phi i32 [ 0, %.lr.ph ], [ %i.ad, %bb.n ] ; 2 uses
  %i.s = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %4, i64 noundef 8) #11
  %.not33 = icmp eq i64 %i.s, 8
  br i1 %.not33, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.140) #11
  br label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.t = load i16, ptr %i.q, align 1, !tbaa !118
  %rev34 = call i16 @llvm.bswap.i16(i16 %i.t)     ; 2 uses
  store i16 %rev34, ptr %i.q, align 1, !tbaa !118
  %i.u = load i16, ptr %i.r, align 1, !tbaa !119
  %rev35 = call i16 @llvm.bswap.i16(i16 %i.u)
  store i16 %rev35, ptr %i.r, align 1, !tbaa !119
  %i.v = load i32, ptr %4, align 1
  %i.w = icmp ne i32 %i.v, 1718644067
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.not36 = icmp eq i32 %.01841, -1
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.142) #11
  br label %bb.x

bb.m:                                             ; preds = %bb.k
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.143) #11
  %.pre = load i16, ptr %i.q, align 1, !tbaa !118
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.z = phi i16 [ %.pre, %bb.m ], [ %rev34, %bb.j ]
  %.1 = phi i32 [ %.042, %bb.m ], [ %.01841, %bb.j ] ; 3 uses
  %i.aa = zext i16 %i.z to i32
  %i.ab = add nuw nsw i32 %.042, 1
  %i.ac = add nuw nsw i32 %i.ab, %i.aa
  %i.ad = add nuw nsw i32 %.01940, 1
  %i.ae = load i16, ptr %i.m, align 1, !tbaa !121
  %i.af = sext i16 %i.ae to i32
  %.not27.not = icmp slt i32 %.01940, %i.af
  br i1 %.not27.not, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %i.ag = icmp slt i32 %.1, 0
  br i1 %i.ag, label %._crit_edge.thread, label %bb.o

._crit_edge.thread:                               ; preds = %bb.g, %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.144) #11
  br label %bb.x

bb.o:                                             ; preds = %._crit_edge
  %i.ah = zext nneg i32 %.1 to i64
  %i.ai = mul nuw nsw i64 %i.ah, 12
  %i.aj = call i64 @lseek(i32 noundef %0, i64 noundef %i.ai, i32 noundef 1) #11
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.145) #11
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.al = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %5, i64 noundef 12) #11
  %.not28 = icmp eq i64 %i.al, 12
  br i1 %.not28, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.146) #11
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 5
  %6 = load i8, ptr %i.am, align 1, !tbaa !39
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 16
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 6
  %10 = load i8, ptr %9, align 1, !tbaa !39
  %i.an = zext i8 %10 to i64
  %i.ao = shl nuw nsw i64 %i.an, 8
  %11 = or disjoint i64 %i.ao, %8
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !39
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %11, %i.ar
  %i.at = load i32, ptr %2, align 16, !tbaa !122
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.as, %i.au
  %i.aw = call i64 @lseek(i32 noundef %0, i64 noundef %i.av, i32 noundef 0) #11
  %i.ax = icmp slt i64 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.147) #11
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ay = call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.a, i64 noundef 4) #11
  %.not29 = icmp eq i64 %i.ay, 4
  br i1 %.not29, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.148) #11
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.az = load i32, ptr %i.a, align 4, !tbaa !32
  %i.ba = call i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = zext i32 %i.ba to i64
  store i64 %i.bb, ptr %1, align 8, !tbaa !67
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.p, %._crit_edge.thread, %bb.l, %bb.i, %bb.f, %bb.d, %bb.b
  %.020 = phi i32 [ 12, %bb.b ], [ 13, %bb.d ], [ 12, %bb.f ], [ 12, %bb.i ], [ 26, %bb.l ], [ 26, %._crit_edge.thread ], [ 13, %bb.p ], [ 12, %bb.r ], [ 13, %bb.t ], [ 12, %bb.v ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret i32 %.020
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 21) i32 @hfsplus_read_block_table(i32 noundef range(i32 0, -1) %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %1, i64 noundef 4) #11
  %.not = icmp eq i64 %i.a, 4
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !32
  %i.c = zext i32 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call ptr @cli_max_malloc(i64 noundef %i.d) #11 ; 3 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !69
  %.not35 = icmp eq ptr %i.e, null
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %1, align 4, !tbaa !32
  %i.g = zext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call i64 @cli_readn(i32 noundef %0, ptr noundef nonnull %i.e, i64 noundef %i.h) #11
  %i.j = load i32, ptr %1, align 4, !tbaa !32
  %i.k = zext i32 %i.j to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  %.not36 = icmp eq i64 %i.i, %i.l
  br i1 %.not36, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.str.149.sink = phi ptr [ @.str.149, %bb.a ], [ @.str.150, %bb.b ], [ @.str.151, %bb.c ]
  %.031.ph = phi i32 [ 12, %bb.a ], [ 20, %bb.b ], [ 12, %bb.c ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull %.str.149.sink) #11
  %i.m = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @free(ptr noundef %i.m) #11
  store ptr null, ptr %2, align 8, !tbaa !69
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %.03138 = phi i32 [ %.031.ph, %bb.d ], [ 0, %bb.c ]
  ret i32 %.03138
}

declare i64 @cli_readn(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @cli_unlink(ptr noundef) local_unnamed_addr #2

declare i32 @cli_magic_scan_desc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

declare i32 @cli_checklimits(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.bswap.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"p1 long", !9, i64 0}
!12 = !{!"p1 _ZTS11cli_matcher", !9, i64 0}
!13 = !{!"p1 _ZTS9cl_engine", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"p1 _ZTS15cl_scan_options", !9, i64 0}
!16 = !{!"p1 _ZTS14cli_scan_layer", !9, i64 0}
!17 = !{!"p1 _ZTS7cl_fmap", !9, i64 0}
!18 = !{!"p1 _ZTS9cli_dconf", !9, i64 0}
!19 = !{!"p1 _ZTS10bitset_tag", !9, i64 0}
!20 = !{!"p1 _ZTS10cli_events", !9, i64 0}
!21 = !{!"p1 _ZTS11json_object", !9, i64 0}
!22 = !{!"timeval", !14, i64 0, !14, i64 8}
!23 = !{!"_Bool", !5, i64 0}
!24 = !{!"cli_ctx_tag", !10, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !13, i64 32, !14, i64 40, !15, i64 48, !6, i64 56, !6, i64 60, !16, i64 64, !6, i64 72, !6, i64 76, !9, i64 80, !17, i64 88, !14, i64 96, !18, i64 104, !19, i64 112, !9, i64 120, !20, i64 128, !21, i64 136, !21, i64 144, !22, i64 152, !23, i64 168, !23, i64 169}
!25 = !{!24, !17, i64 88}
!26 = !{!"cl_fmap", !9, i64 0, !9, i64 8, !9, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !23, i64 56, !23, i64 57, !23, i64 58, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !5, i64 152, !5, i64 155, !5, i64 158, !11, i64 256, !10, i64 264, !10, i64 272}
!27 = !{!26, !14, i64 88}
!28 = !{!26, !9, i64 104}
!29 = !{!"short", !5, i64 0}
!30 = !{!"hfsPlusForkData", !14, i64 0, !6, i64 8, !6, i64 12, !5, i64 16}
!31 = !{!"hfsPlusVolumeHeader", !29, i64 0, !29, i64 2, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !14, i64 72, !5, i64 80, !30, i64 112, !30, i64 192, !30, i64 272, !30, i64 352, !30, i64 432}
!32 = !{!6, !6, i64 0}
!33 = !{!31, !6, i64 40}
!34 = !{!31, !6, i64 44}
!35 = !{!30, !14, i64 0}
!36 = !{!"hfsPlusExtentDescriptor", !6, i64 0, !6, i64 4}
!37 = !{!36, !6, i64 0}
!38 = !{!36, !6, i64 4}
!39 = !{!5, !5, i64 0}
!40 = !{!24, !13, i64 32}
!41 = !{!"any p2 pointer", !9, i64 0}
!42 = !{!"p2 _ZTS11cli_matcher", !41, i64 0}
!43 = !{!"p1 _ZTS7cli_cdb", !9, i64 0}
!44 = !{!"p1 _ZTS13regex_matcher", !9, i64 0}
!45 = !{!"p1 _ZTS10phishcheck", !9, i64 0}
!46 = !{!"p1 _ZTS9cli_ftype", !9, i64 0}
!47 = !{!"p2 _ZTS8cli_pwdb", !41, i64 0}
!48 = !{!"p1 _ZTS12icon_matcher", !9, i64 0}
!49 = !{!"p1 _ZTS5CACHE", !9, i64 0}
!50 = !{!"p1 _ZTS10cli_dbinfo", !9, i64 0}
!51 = !{!"p1 _ZTS2MP", !9, i64 0}
!52 = !{!"p1 _ZTS9cli_crt_t", !9, i64 0}
!53 = !{!"", !52, i64 0, !6, i64 8}
!54 = !{!"p1 _ZTS6cli_bc", !9, i64 0}
!55 = !{!"p1 _ZTS12cli_bcengine", !9, i64 0}
!56 = !{!"cli_environment", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 93, !5, i64 158, !5, i64 223, !5, i64 288, !5, i64 353, !5, i64 418, !5, i64 483, !5, i64 484, !5, i64 485, !5, i64 486, !5, i64 487, !5, i64 488, !5, i64 489, !5, i64 490, !5, i64 491}
!57 = !{!"cli_all_bc", !54, i64 0, !6, i64 8, !55, i64 16, !56, i64 24, !6, i64 516}
!58 = !{!"p1 _ZTS12_yara_global", !9, i64 0}
!59 = !{!"cl_engine", !6, i64 0, !6, i64 4, !6, i64 8, !5, i64 12, !6, i64 20, !6, i64 24, !6, i64 28, !10, i64 32, !10, i64 40, !6, i64 48, !14, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !14, i64 80, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !42, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !43, i64 144, !44, i64 152, !44, i64 160, !45, i64 168, !18, i64 176, !46, i64 184, !46, i64 192, !47, i64 200, !12, i64 208, !12, i64 216, !10, i64 224, !48, i64 232, !49, i64 240, !50, i64 248, !14, i64 256, !51, i64 264, !53, i64 272, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360, !9, i64 368, !9, i64 376, !9, i64 384, !9, i64 392, !9, i64 400, !9, i64 408, !9, i64 416, !9, i64 424, !9, i64 432, !9, i64 440, !9, i64 448, !9, i64 456, !57, i64 464, !5, i64 984, !5, i64 1040, !6, i64 1068, !6, i64 1072, !6, i64 1076, !6, i64 1080, !14, i64 1088, !14, i64 1096, !14, i64 1104, !14, i64 1112, !14, i64 1120, !9, i64 1128, !9, i64 1136, !9, i64 1144, !9, i64 1152, !9, i64 1160, !9, i64 1168, !9, i64 1176, !9, i64 1184, !9, i64 1192, !6, i64 1200, !6, i64 1204, !6, i64 1208, !14, i64 1216, !14, i64 1224, !14, i64 1232, !58, i64 1240}
!60 = !{!59, !6, i64 48}
end_hunk_1
