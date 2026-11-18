Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/rocker_of_dpa?download=true
inline.NumInlined: 245
inline.NumDeleted: 74
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@of_dpa_flow_fill:bb.a
  store i8 1, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.l, i64 30
  store i16 %i.fe, ptr %i.fg, align 2
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.fh = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #18 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.g, ptr %i.fi, align 8
  %i.fj = load ptr, ptr %2, align 8
  store ptr %i.fj, ptr %i.fh, align 8
  store ptr %i.fh, ptr %2, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.b, %bb.az
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @qmp_query_rocker_of_dpa_groups(ptr noundef %0, i1 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.of_dpa_group_fill_context, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %4, align 8
  store i8 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %i.c = tail call ptr @rocker_find(ptr noundef %0) #17 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 2554, ptr noundef nonnull @__func__.qmp_query_rocker_of_dpa_groups, ptr noundef nonnull @.str.1, ptr noundef %0) #17
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @rocker_get_world(ptr noundef nonnull %i.c, i32 noundef 0) #17 ; 2 uses
  %.not13 = icmp eq ptr %i.d, null
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 2560, ptr noundef nonnull @__func__.qmp_query_rocker_of_dpa_groups, ptr noundef nonnull @.str.2, ptr noundef %0) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.e = tail call ptr @world_private(ptr noundef nonnull %i.d) #17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  call void @g_hash_table_foreach(ptr noundef %i.g, ptr noundef nonnull @of_dpa_group_fill, ptr noundef nonnull %4) #17
  %i.h = load ptr, ptr %4, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @of_dpa_group_fill(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i8, ptr %i.a, align 8               ; 2 uses
  %.not = icmp eq i8 %i.b, 9
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext i8 %i.b to i32
  %i.d = load i32, ptr %1, align 8
  %i.e = lshr i32 %i.d, 28
  %.not81 = icmp eq i32 %i.e, %i.c
  br i1 %.not81, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call noalias dereferenceable_or_null(80) ptr @g_malloc0(i64 noundef 80) #18 ; 35 uses
  %i.g = load i32, ptr %1, align 8                ; 8 uses
  store i32 %i.g, ptr %i.f, align 8
  %i.h = lshr i32 %i.g, 28                        ; 2 uses
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i8 %i.i, ptr %i.j, align 4
  switch i32 %i.h, label %.loopexit [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 4, label %bb.k
    i32 3, label %bb.k
    i32 2, label %bb.m
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  store i8 1, ptr %i.k, align 1
  %i.l = lshr i32 %i.g, 16
  %i.m = trunc nuw i32 %i.l to i16
  %i.n = and i16 %i.m, 4095
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  store i16 %i.n, ptr %i.o, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i8 1, ptr %i.p, align 8
  %i.q = and i32 %i.g, 65535
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.q, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.u, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i8 1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.y = load i8, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 45
  store i8 %i.y, ptr %i.z, align 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %i.aa, align 8
  %i.ab = and i32 %i.g, 268435455
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i16, ptr %i.ah, align 8            ; 2 uses
  %.not87 = icmp eq i16 %i.ai, 0
  br i1 %.not87, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 1, ptr %i.aj, align 8
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  store i16 %rev.i, ptr %i.ak, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.am = load i32, ptr %i.al, align 1
  %i.an = getelementptr i8, ptr %i.al, i64 4
  %i.ao = load i16, ptr %i.an, align 1
  %i.ap = zext i16 %i.ao to i32
  %i.aq = or i32 %i.am, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %.not89 = icmp eq i32 %i.as, 0
  br i1 %.not89, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = tail call ptr @qemu_mac_strdup_printf(ptr noundef nonnull %i.al) #17
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.at, ptr %i.au, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 1
  %i.ax = getelementptr i8, ptr %i.av, i64 4
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i32
  %i.ba = or i32 %i.aw, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %.not91 = icmp eq i32 %i.bc, 0
  br i1 %.not91, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = tail call ptr @qemu_mac_strdup_printf(ptr noundef nonnull %i.av) #17
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.bd, ptr %i.be, align 8
  br label %.loopexit

bb.k:                                             ; preds = %bb.c, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  store i8 1, ptr %i.bf, align 1
  %i.bg = lshr i32 %i.g, 16
  %i.bh = trunc nuw i32 %i.bg to i16
  %i.bi = and i16 %i.bh, 4095
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %i.bk, align 8
  %i.bl = and i32 %i.g, 65535
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.bl, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 8
  %.not94 = icmp eq i16 %i.bo, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %3 = getelementptr inbounds nuw i8, ptr %i.f, i64 46
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  store i8 1, ptr %3, align 2
  %i.br = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #18 ; 3 uses
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %i.bq, align 8
  store ptr %i.bw, ptr %i.br, align 8
  store ptr %i.br, ptr %i.bq, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i16, ptr %i.bn, align 8
  %i.by = zext i16 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.l, label %.loopexit, !llvm.loop !11

bb.m:                                             ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %i.ca, align 8
  %i.cb = and i32 %i.g, 268435455
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.cb, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 %i.cf, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ci = load i16, ptr %i.ch, align 8            ; 2 uses
  %.not82 = icmp eq i16 %i.ci, 0
  br i1 %.not82, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i8 1, ptr %i.cj, align 8
  %rev.i92 = tail call noundef i16 @llvm.bswap.i16(i16 %i.ci)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 42
  store i16 %rev.i92, ptr %i.ck, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = getelementptr i8, ptr %i.cl, i64 4
  %i.co = load i16, ptr %i.cn, align 1
  %i.cp = zext i16 %i.co to i32
  %i.cq = or i32 %i.cm, %i.cp
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %.not83 = icmp eq i32 %i.cs, 0
  br i1 %.not83, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = tail call ptr @qemu_mac_strdup_printf(ptr noundef nonnull %i.cl) #17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %i.ct, ptr %i.cu, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 1
  %i.cx = getelementptr i8, ptr %i.cv, i64 4
  %i.cy = load i16, ptr %i.cx, align 1
  %i.cz = zext i16 %i.cy to i32
  %i.da = or i32 %i.cw, %i.cz
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = zext i1 %i.db to i32
  %.not85 = icmp eq i32 %i.dc, 0
  br i1 %.not85, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dd = tail call ptr @qemu_mac_strdup_printf(ptr noundef nonnull %i.cv) #17
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.dd, ptr %i.de, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.dg = load i8, ptr %i.df, align 2             ; 2 uses
  %.not86 = icmp eq i8 %i.dg, 0
  br i1 %.not86, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store i8 1, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 73
  store i8 %i.dg, ptr %i.di, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %bb.c, %bb.d, %bb.j, %bb.i, %bb.t, %bb.s
  %i.dj = tail call noalias dereferenceable_or_null(16) ptr @g_malloc(i64 noundef 16) #18 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.f, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %2, align 8
  store ptr %i.dl, ptr %i.dj, align 8
  store ptr %i.dj, ptr %2, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @of_dpa_world_alloc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @world_alloc(ptr noundef %0, i64 noundef 32, i32 noundef 0, ptr noundef nonnull @of_dpa_ops) #17
  ret ptr %i.a
}

declare ptr @world_alloc(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #4

declare ptr @qemu_mac_strdup_printf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @inet_ntoa(i32) local_unnamed_addr #5

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -12, 1) i32 @of_dpa_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @world_private(ptr noundef %0) #17 ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @rocker_int64_hash, ptr noundef nonnull @rocker_int64_equal, ptr noundef null, ptr noundef nonnull @g_free) #17 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.b, ptr %i.c, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @g_hash_table_new_full(ptr noundef nonnull @g_int_hash, ptr noundef nonnull @g_int_equal, ptr noundef null, ptr noundef nonnull @g_free) #17 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.e, align 8
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 100, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 100, ptr %i.g, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.c, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.h) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -12, %bb.d ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @of_dpa_uninit(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @world_private(ptr noundef %0) #17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_hash_table_destroy(ptr noundef %i.e) #17
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @of_dpa_ig(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.of_dpa_flow_context, align 8 ; 13 uses
  %i.a = add i32 %3, 2                            ; 3 uses
  %.sink53.i.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sink53.i.sroa.gep19 = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @g_malloc_n(i64 noundef %i.b, i64 noundef 16) #19 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 152, i1 false)
  store i32 %1, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 %i.a, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = tail call ptr @world_private(ptr noundef %0) #17
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 5 uses
  %i.j = icmp ult i64 %i.i, 14
  br i1 %i.j, label %of_dpa_flow_pkt_parse.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %2, align 8                ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  %.val44.val.i = load i16, ptr %i.m, align 1     ; 2 uses
  %.not.i = icmp eq i16 %.val44.val.i, -32512
  br i1 %.not.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %i.i, 18
  br i1 %i.o, label %of_dpa_flow_pkt_parse.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 14 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.r, ptr %i.n, align 8
  %.val.val.pre.i = load i16, ptr %i.r, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.s = phi ptr [ %i.p, %bb.d ], [ null, %bb.b ] ; 2 uses
  %.val.val.i = phi i16 [ %.val.val.pre.i, %bb.d ], [ %.val44.val.i, %bb.b ]
  %i.t = phi i64 [ 16, %bb.d ], [ 12, %bb.b ]     ; 2 uses
  %.042.i = phi i64 [ 18, %bb.d ], [ 14, %bb.b ]  ; 2 uses
  %rev.i45.i = tail call noundef i16 @llvm.bswap.i16(i16 %.val.val.i)
  switch i16 %rev.i45.i, label %bb.h [
    i16 2048, label %bb.f
    i16 -31011, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = add nuw nsw i64 %.042.i, 20
  %i.v = icmp ult i64 %i.i, %i.u
  br i1 %i.v, label %of_dpa_flow_pkt_parse.exit, label %.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.w = add nuw nsw i64 %.042.i, 40
  %i.x = icmp ult i64 %i.i, %i.w
  br i1 %i.x, label %of_dpa_flow_pkt_parse.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %bb.f
  %.sink53.i.sroa.phi = phi ptr [ %.sink53.i.sroa.gep, %bb.f ], [ %.sink53.i.sroa.gep19, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %.sink53.i.sroa.phi, align 8
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.t
  store ptr %i.k, ptr %i.c, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 14, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.s, ptr %i.ac, align 8
  %.not.i.i = icmp eq ptr %i.s, null              ; 2 uses
  %.neg22 = select i1 %.not.i.i, i64 0, i64 -4
  %i.ad = select i1 %.not.i.i, i64 0, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.af, ptr %i.ag, align 8
  %.neg21 = add i64 %i.i, %.neg22
  %i.ah = add i64 %.neg21, -14
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = icmp sgt i32 %3, 1
  br i1 %i.aj, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %wide.trip.count.i = zext nneg i32 %3 to i64
  %i.ak = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.al = icmp eq i32 %3, 2
  br i1 %i.al, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ak, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.am = shl nuw nsw i64 %indvars.iv.i, 32
  %sext.i = add nuw i64 %i.am, 8589934592
  %i.an = ashr exact i64 %sext.i, 28
end_hunk_0
