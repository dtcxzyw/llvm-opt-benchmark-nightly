Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/chmd?download=true
inline.NumInlined: 17
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@chmd_fast_find:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.o = load i32, ptr %i.n, align 8, !tbaa !65   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.q = load i32, ptr %i.p, align 8, !tbaa !44
  %i.r = icmp ult i32 %i.o, %i.q
  br i1 %i.r, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.c
  %i.s = getelementptr i8, ptr %1, i64 132
  %i.t = getelementptr i8, ptr %1, i64 136
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.h
  %.0 = phi i32 [ %i.ag, %bb.h ], [ %i.o, %.preheader ]
  %i.u = tail call fastcc ptr @read_chunk(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.m, i32 noundef %.0) ; 3 uses
  %.not84 = icmp eq ptr %i.u, null
  br i1 %.not84, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  tail call void %i.w(ptr noundef nonnull %i.m) #13
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !18
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %.val88 = load i32, ptr %i.s, align 4, !tbaa !66
  %.val89 = load i32, ptr %i.t, align 8, !tbaa !86
  %i.z = call fastcc i32 @search_chunk(i32 %.val88, i32 %.val89, ptr noundef %i.u, ptr noundef %2, ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !67
  %i.ad = icmp eq i8 %i.ac, 76
  br i1 %i.ad, label %.loopexit92, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.af = call fastcc i64 @read_encint(ptr noundef %i.a, ptr noundef %i.ae, ptr noundef %i.c)
  %i.ag = trunc i64 %i.af to i32
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !64
  %.not85 = icmp eq i32 %i.ah, 0
  br i1 %.not85, label %bb.d, label %.loopexit93

bb.i:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.al = getelementptr i8, ptr %1, i64 132
  %i.am = getelementptr i8, ptr %1, i64 136
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %.065 = phi i32 [ -1, %bb.i ], [ %i.ar, %bb.n ] ; 2 uses
  %.1 = phi i32 [ %i.aj, %bb.i ], [ %i.au, %bb.n ] ; 3 uses
  %i.an = load i32, ptr %i.ak, align 8, !tbaa !69
  %.not82 = icmp ugt i32 %.1, %i.an
  br i1 %.not82, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = tail call fastcc ptr @read_chunk(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.m, i32 noundef %.1) ; 3 uses
  %.not83 = icmp eq ptr %i.ao, null
  br i1 %.not83, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !18
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %.val = load i32, ptr %i.al, align 4, !tbaa !66
  %.val87 = load i32, ptr %i.am, align 8, !tbaa !86
  %i.ar = call fastcc i32 @search_chunk(i32 %.val, i32 %.val87, ptr noundef %i.ao, ptr noundef %2, ptr noundef %i.a, ptr noundef %i.b) ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.loopexit92, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load i32, ptr %i.at, align 1            ; 2 uses
  %i.av = icmp eq i32 %.1, %i.au
  br i1 %i.av, label %.loopexit, label %bb.j

.loopexit92:                                      ; preds = %bb.m, %bb.g
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !45  ; 3 uses
  %i.ax = call fastcc i64 @read_encint(ptr noundef %i.a, ptr noundef %i.aw, ptr noundef %i.c)
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = icmp eq i64 %i.ay, 0
  %.v = select i1 %i.az, i64 48, i64 72
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.v
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !46
  %i.bc = call fastcc i64 @read_encint(ptr noundef %i.a, ptr noundef %i.aw, ptr noundef %i.c)
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !55
  %i.be = call fastcc i64 @read_encint(ptr noundef %i.a, ptr noundef %i.aw, ptr noundef %i.c)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !51
  %i.bg = load i32, ptr %i.c, align 4, !tbaa !64
  %.not86 = icmp eq i32 %i.bg, 0
  br i1 %.not86, label %bb.o, label %.loopexit93

.loopexit:                                        ; preds = %bb.n, %bb.j, %bb.f, %bb.l
  %i.bh = phi i32 [ 0, %bb.f ], [ %i.aq, %bb.l ], [ 0, %bb.j ], [ 0, %bb.n ]
  %.166.ph = phi i32 [ %i.z, %bb.f ], [ %.065, %bb.l ], [ %.065, %bb.j ], [ %i.ar, %bb.n ]
  %i.bi = icmp slt i32 %.166.ph, 0
  %spec.select = select i1 %i.bi, i32 8, i32 %i.bh
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.loopexit92
  %i.bj = phi i32 [ %spec.select, %.loopexit ], [ 0, %.loopexit92 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !41
  tail call void %i.bl(ptr noundef nonnull %i.m) #13
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 %i.bj, ptr %i.bm, align 8, !tbaa !18
  br label %bb.p

.loopexit93:                                      ; preds = %bb.h, %.loopexit92
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41
  tail call void %i.bo(ptr noundef nonnull %i.m) #13
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 8, ptr %i.bp, align 8, !tbaa !18
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.a, %.loopexit93, %bb.o, %bb.e
  %.067 = phi i32 [ 1, %bb.a ], [ 8, %.loopexit93 ], [ %i.bj, %bb.o ], [ %i.y, %bb.e ], [ 2, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.067
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @mspack_destroy_chm_decompressor(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
  %.not16 = icmp eq ptr %i.d, null
  br i1 %.not16, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not17 = icmp eq ptr %i.f, null
  br i1 %.not17, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  tail call void %i.h(ptr noundef nonnull %i.f) #13
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = phi ptr [ %.pre, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 2 uses
  %.not18 = icmp eq ptr %i.k, null
  br i1 %.not18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @lzxd_free(ptr noundef nonnull %i.k) #13
  %.pre19 = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = phi ptr [ %.pre19, %bb.f ], [ %i.i, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  tail call void %i.n(ptr noundef %i.l) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  tail call void %i.p(ptr noundef nonnull %0) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  ret void
}

declare void @lzxd_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @chmd_real_open(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [84 x i8], align 16               ; 20 uses
  %i.b = alloca ptr, align 8                      ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.bw, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 21 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49
  %i.h = tail call ptr %i.g(ptr noundef nonnull %i.f, ptr noundef %1, i32 noundef 0) #13 ; 21 uses
  %.not37 = icmp eq ptr %i.h, null
  br i1 %.not37, label %bb.bv, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = tail call ptr %i.j(ptr noundef nonnull %i.f, i64 noundef 168) #13 ; 30 uses
  %.not38 = icmp eq ptr %i.k, null
  br i1 %.not38, label %bb.bu, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 0, ptr %i.d, align 4, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store ptr null, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store ptr %i.k, ptr %i.p, align 8, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i32 0, ptr %i.q, align 8, !tbaa !89
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  store ptr %i.k, ptr %i.r, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i32 1, ptr %i.s, align 8, !tbaa !91
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.z = call i32 %i.y(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 56) #13, !inline_history !87
  %.not.i = icmp eq i32 %i.z, 56
  br i1 %.not.i, label %bb.e, label %chmd_read_headers.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.a, align 16
  %.not235.i = icmp eq i32 %i.aa, 1179866185
  br i1 %.not235.i, label %bb.f, label %chmd_read_headers.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.ac = load i128, ptr %i.ab, align 1
  %i.ad = xor i128 %i.ac, -25389626061930456423905625597236085488
  %i.ae = getelementptr i8, ptr %i.ab, i64 16
  %i.af = load i128, ptr %i.ae, align 1
  %i.ag = xor i128 %i.af, -25389626061930456423905625597236085487
  %i.ah = or i128 %i.ad, %i.ag
  %i.ai = icmp ne i128 %i.ah, 0
  %i.aj = zext i1 %i.ai to i32
  %.not236.i = icmp eq i32 %i.aj, 0
  br i1 %.not236.i, label %bb.g, label %chmd_read_headers.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  store i32 %i.al, ptr %i.k, align 8, !tbaa !92
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %3 = load i8, ptr %i.am, align 16, !tbaa !67
  %4 = zext i8 %3 to i32
  %5 = shl nuw i32 %4, 24
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !67
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 16
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %12 = load i8, ptr %11, align 2, !tbaa !67
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  %17 = load i8, ptr %16, align 1, !tbaa !67
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %15, %18
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %19, ptr %i.an, align 4, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !94
  %i.ar = icmp ugt i32 %i.al, 3
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !58
  call void (ptr, ptr, ...) %i.at(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1) #13, !inline_history !87
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.av = call i32 %i.au(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 40) #13, !inline_history !87
  %.not237.i = icmp eq i32 %i.av, 40
  br i1 %.not237.i, label %bb.j, label %chmd_read_headers.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aw = load i64, ptr %i.a, align 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 3 uses
  %i.ay = load i64, ptr %i.am, align 16
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 16
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.be = call i32 %i.bd(ptr noundef nonnull %i.h, i64 noundef %i.aw, i32 noundef 0) #13, !inline_history !87
  %.not238.i = icmp eq i32 %i.be, 0
  br i1 %.not238.i, label %bb.k, label %chmd_read_headers.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.bg = call i32 %i.bf(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 24) #13, !inline_history !87
  %.not239.i = icmp eq i32 %i.bg, 24
  br i1 %.not239.i, label %bb.l, label %chmd_read_headers.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bj = load i64, ptr %i.bi, align 8
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !70
  %i.bk = call i32 @mspack_sys_filelen(ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull %i.c) #13
  %.not240.i = icmp eq i32 %i.bk, 0
  br i1 %.not240.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bl = load i64, ptr %i.bh, align 8, !tbaa !56 ; 4 uses
  %i.bm = load i64, ptr %i.c, align 8, !tbaa !70  ; 4 uses
  %i.bn = icmp sgt i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !58
  %i.bq = sub nsw i64 %i.bl, %i.bm
  call void (ptr, ptr, ...) %i.bp(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.2, i64 noundef %i.bq) #13, !inline_history !87
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.br = icmp slt i64 %i.bl, %i.bm
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !58
  %i.bu = sub nsw i64 %i.bm, %i.bl
  call void (ptr, ptr, ...) %i.bt(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.3, i64 noundef %i.bu) #13, !inline_history !87
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.l
  %i.bv = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.bw = load i64, ptr %i.ax, align 8, !tbaa !71
  %i.bx = call i32 %i.bv(ptr noundef nonnull %i.h, i64 noundef %i.bw, i32 noundef 0) #13, !inline_history !87
  %.not241.i = icmp eq i32 %i.bx, 0
  br i1 %.not241.i, label %bb.r, label %chmd_read_headers.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !59
  %i.bz = call i32 %i.by(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, i32 noundef 84) #13, !inline_history !87
  %.not242.i = icmp eq i32 %i.bz, 84
  br i1 %.not242.i, label %bb.s, label %chmd_read_headers.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !57
  %i.cc = call i64 %i.cb(ptr noundef nonnull %i.h) #13, !inline_history !87 ; 2 uses
  store i64 %i.cc, ptr %i.ax, align 8, !tbaa !71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 132 ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.cf = load <4 x i32>, ptr %i.am, align 16
  %i.cg = load i32, ptr %i.am, align 16           ; 5 uses
  store <4 x i32> %i.cf, ptr %i.cd, align 4, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.ci = load i32, ptr %i.ch, align 4            ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  store i32 %i.ci, ptr %i.cj, align 8, !tbaa !44
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 148 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 152 ; 3 uses
  %i.cm = load <2 x i32>, ptr %i.ba, align 16
  %i.cn = load i32, ptr %i.ba, align 16
  store <2 x i32> %i.cm, ptr %i.ck, align 4, !tbaa !64
  %i.co = load i32, ptr %i.k, align 8, !tbaa !92
  %i.cp = icmp ult i32 %i.co, 3
  br i1 %i.cp, label %bb.t, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.s
  %.pre.i = load i64, ptr %i.az, align 8, !tbaa !54
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cq = mul i32 %i.ci, %i.cg
  %i.cr = zext i32 %i.cq to i64
  %i.cs = add nsw i64 %i.cc, %i.cr                ; 2 uses
  store i64 %i.cs, ptr %i.az, align 8, !tbaa !54
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i
  %i.ct = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.cs, %bb.t ]
  %i.cu = load i64, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %i.cv = icmp sgt i64 %i.ct, %i.cu
  %i.cw = icmp ult i32 %i.cg, 22
  %or.cond277.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond277.i, label %bb.bq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = add i32 %i.ci, -100001
  %or.cond266.i = icmp ult i32 %i.cx, -100000
  %i.cy = icmp ugt i32 %i.cg, 8192
  %or.cond267.i = or i1 %i.cy, %or.cond266.i
  %narrow.i = mul nuw nsw i32 %i.ci, %i.cg
  %i.cz = zext nneg i32 %narrow.i to i64
  %i.da = icmp slt i64 %i.cu, %i.cz
  %or.cond269.i = select i1 %or.cond267.i, i1 true, i1 %i.da
  br i1 %or.cond269.i, label %bb.bq, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not243.i = icmp eq i32 %i.cg, 4096
  br i1 %.not243.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !58
  call void (ptr, ptr, ...) %i.dc(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.4) #13, !inline_history !87
  %.pre301.i = load i32, ptr %i.ck, align 4, !tbaa !68
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dd = phi i32 [ %.pre301.i, %bb.x ], [ %i.cn, %bb.w ]
  %.not244.i = icmp eq i32 %i.dd, 0
  br i1 %.not244.i, label %.thread325.i, label %bb.z

.thread325.i:                                     ; preds = %bb.y
  %i.de = load i32, ptr %i.cl, align 8, !tbaa !69
  br label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !58
  call void (ptr, ptr, ...) %i.dg(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.5) #13, !inline_history !87
  %.pr.i = load i32, ptr %i.ck, align 4, !tbaa !68 ; 2 uses
  %i.dh = load i32, ptr %i.cl, align 8, !tbaa !69 ; 2 uses
  %i.di = icmp ugt i32 %.pr.i, %i.dh
  br i1 %i.di, label %bb.bq, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread325.i
  %i.dj = phi i32 [ %i.de, %.thread325.i ], [ %i.dh, %bb.z ]
  %i.dk = phi i32 [ 0, %.thread325.i ], [ %.pr.i, %bb.z ] ; 2 uses
  %i.dl = load i32, ptr %i.ce, align 8, !tbaa !65 ; 2 uses
  %.not245.i = icmp eq i32 %i.dl, -1
  br i1 %.not245.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load i32, ptr %i.cj, align 8, !tbaa !44
  %.not246.i = icmp ult i32 %i.dl, %i.dm
  br i1 %.not246.i, label %bb.ac, label %bb.bq

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not247.i = icmp eq i32 %2, 0
  br i1 %.not247.i, label %chmd_read_headers.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not248.i = icmp eq i32 %i.dk, 0
  %.pre306.i = load i32, ptr %i.cd, align 4, !tbaa !66 ; 2 uses
  br i1 %.not248.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dn = zext i32 %i.dk to i64
  %i.do = zext i32 %.pre306.i to i64
  %i.dp = mul nuw nsw i64 %i.do, %i.dn
  %i.dq = load ptr, ptr %i.bc, align 8, !tbaa !53
  %i.dr = call i32 %i.dq(ptr noundef nonnull %i.h, i64 noundef %i.dp, i32 noundef 1) #13, !inline_history !87
  %.not249.i = icmp eq i32 %i.dr, 0
  br i1 %.not249.i, label %._crit_edge302.i, label %chmd_read_headers.exit.thread

._crit_edge302.i:                                 ; preds = %bb.ae
  %.pre303.i = load i32, ptr %i.cl, align 8, !tbaa !69
end_hunk_0
begin_hunk_1_@read_reset_table:bb.a
  ]

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bx
  %i.ce = load i32, ptr %i.cd, align 1
  %i.cf = zext i32 %i.ce to i64
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bx
  %i.ch = load i64, ptr %i.cg, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s
  %.sink = phi i64 [ %i.cf, %bb.s ], [ %i.ch, %bb.t ]
  store i64 %.sink, ptr %4, align 8, !tbaa !70
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.p, %bb.q, %bb.r
  %i.ci = phi i32 [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 1, %.sink.split ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !34
  call void %i.ck(ptr noundef nonnull %i.ag) #13
  br label %read_sys_file.exit.thread

read_sys_file.exit.thread:                        ; preds = %bb.j, %bb.n, %bb.l, %bb.h, %find_sys_file.exit, %bb.e, %bb.u, %bb.o
  %.057 = phi i32 [ %i.ci, %bb.u ], [ 0, %find_sys_file.exit ], [ 0, %bb.e ], [ 0, %bb.o ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.j ]
  ret i32 %.057
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_spaninfo(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.mschmd_file, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !74
  %i.f = call i32 @chmd_fast_find(ptr noundef nonnull %0, ptr noundef %i.e, ptr noundef nonnull @.str.11, ptr noundef nonnull %3, i32 noundef 40)
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp ne ptr %i.i, null
  %or.cond.i = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond.i, label %bb.c, label %find_sys_file.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12
  %i.m = call ptr %i.l(ptr noundef %i.b, i64 noundef 40) #13, !inline_history !0 ; 3 uses
  store ptr %i.m, ptr %i.c, align 8, !tbaa !73
  %.not18.i = icmp eq ptr %i.m, null
  br i1 %.not18.i, label %find_sys_file.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !76
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr @.str.11, ptr %i.o, align 8, !tbaa !72
  %i.p = load ptr, ptr %1, align 8, !tbaa !74
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35
  store ptr %i.r, ptr %i.n, align 8, !tbaa !33
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !73   ; 2 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !35
  br label %bb.e

find_sys_file.exit:                               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.t = phi ptr [ %i.d, %bb.a ], [ %i.s, %bb.d ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !51
  %.not19 = icmp eq i64 %i.v, 8
  br i1 %.not19, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %2, align 8, !tbaa !70
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !17   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %.not29.i = icmp eq ptr %i.y, null
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !52
  %.not30.i = icmp eq i32 %i.aa, 0
  br i1 %.not30.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 8, ptr %i.ab, align 8, !tbaa !18
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !51  ; 2 uses
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !12
  %sext.i = shl i64 %i.ac, 32
  %i.ag = ashr exact i64 %sext.i, 32
  %i.ah = call ptr %i.af(ptr noundef %i.w, i64 noundef %i.ag) #13, !inline_history !1 ; 6 uses
  %.not31.i = icmp eq ptr %i.ah, null
  br i1 %.not31.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 6, ptr %i.ai, align 8, !tbaa !18
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !54
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !55
  %i.av = add nsw i64 %i.au, %i.as
  %i.aw = call i32 %i.ak(ptr noundef %i.ao, i64 noundef %i.av, i32 noundef 0) #13, !inline_history !1
  %.not32.i = icmp eq i32 %i.aw, 0
  br i1 %.not32.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 5, ptr %i.ax, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !34
  call void %i.az(ptr noundef nonnull %i.ah) #13, !inline_history !1
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.bc = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bf = call i32 %i.bb(ptr noundef %i.be, ptr noundef nonnull %i.ah, i32 noundef %i.ad) #13, !inline_history !1
  %.not33.i = icmp eq i32 %i.bf, %i.ad
  br i1 %.not33.i, label %read_sys_file.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 3, ptr %i.bg, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  call void %i.bi(ptr noundef nonnull %i.ah) #13, !inline_history !1
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.l, %bb.n, %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !18
  br label %bb.p

read_sys_file.exit:                               ; preds = %bb.m
  %i.bl = load i64, ptr %i.ah, align 1
  store i64 %i.bl, ptr %2, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34
  call void %i.bn(ptr noundef nonnull %i.ah) #13
  %i.bo = load i64, ptr %2, align 8, !tbaa !70
  %i.bp = icmp slt i64 %i.bo, 1
  %spec.select = select i1 %i.bp, i32 8, i32 0
  br label %bb.p

bb.p:                                             ; preds = %find_sys_file.exit, %read_sys_file.exit, %bb.e, %bb.o
  %.0 = phi i32 [ %spec.select, %read_sys_file.exit ], [ 8, %find_sys_file.exit ], [ %i.bk, %bb.o ], [ 8, %bb.e ]
  ret i32 %.0
}

declare ptr @lzxd_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"mspack_system", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80}
!12 = !{!11, !10, i64 56}
!13 = !{!"mschm_decompressor", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!14 = !{!"p1 _ZTS13mspack_system", !10, i64 0}
!15 = !{!"p1 _ZTS23mschmd_decompress_state", !10, i64 0}
!16 = !{!"mschm_decompressor_p", !13, i64 0, !14, i64 48, !15, i64 56, !7, i64 64}
!17 = !{!16, !14, i64 48}
!18 = !{!16, !7, i64 64}
!19 = !{!16, !15, i64 56}
!20 = !{!"p1 omnipotent char", !10, i64 0}
!21 = !{!"long", !6, i64 0}
!22 = !{!"p1 _ZTS11mschmd_file", !10, i64 0}
!23 = !{!"p1 _ZTS13mschmd_header", !10, i64 0}
!24 = !{!"mschmd_section", !23, i64 0, !7, i64 8}
!25 = !{!"mschmd_sec_uncompressed", !24, i64 0, !21, i64 16}
!26 = !{!"mschmd_sec_mscompressed", !24, i64 0, !22, i64 16, !22, i64 24, !22, i64 32, !22, i64 40}
!27 = !{!"any p2 pointer", !10, i64 0}
!28 = !{!"p2 omnipotent char", !27, i64 0}
!29 = !{!"mschmd_header", !7, i64 0, !7, i64 4, !7, i64 8, !20, i64 16, !21, i64 24, !22, i64 32, !22, i64 40, !25, i64 48, !26, i64 72, !21, i64 120, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !28, i64 160}
!30 = !{!29, !22, i64 32}
!31 = !{!"p1 _ZTS14mschmd_section", !10, i64 0}
!32 = !{!"mschmd_file", !22, i64 0, !31, i64 8, !21, i64 16, !21, i64 24, !20, i64 32}
!33 = !{!32, !22, i64 0}
!34 = !{!11, !10, i64 64}
!35 = !{!29, !22, i64 40}
!36 = !{!"p1 _ZTS11lzxd_stream", !10, i64 0}
!37 = !{!"p1 _ZTS11mspack_file", !10, i64 0}
!38 = !{!"mschmd_decompress_state", !23, i64 0, !21, i64 8, !21, i64 16, !21, i64 24, !36, i64 32, !11, i64 40, !37, i64 128, !37, i64 136}
!39 = !{!38, !23, i64 0}
!40 = !{!38, !37, i64 128}
!41 = !{!11, !10, i64 8}
!42 = !{!38, !36, i64 32}
!43 = !{!29, !28, i64 160}
!44 = !{!29, !7, i64 128}
!45 = !{!20, !20, i64 0}
!46 = !{!32, !31, i64 8}
!47 = !{!24, !23, i64 0}
!48 = !{!38, !21, i64 16}
!49 = !{!11, !10, i64 0}
!50 = !{!29, !20, i64 16}
!51 = !{!32, !21, i64 24}
!52 = !{!24, !7, i64 8}
!53 = !{!11, !10, i64 32}
!54 = !{!29, !21, i64 64}
!55 = !{!32, !21, i64 16}
!56 = !{!29, !21, i64 24}
!57 = !{!11, !10, i64 40}
!58 = !{!11, !10, i64 48}
!59 = !{!11, !10, i64 16}
!60 = !{!11, !10, i64 24}
!61 = !{!38, !21, i64 8}
!62 = !{!38, !21, i64 24}
!63 = !{!38, !37, i64 136}
!64 = !{!7, !7, i64 0}
!65 = !{!29, !7, i64 144}
!66 = !{!29, !7, i64 132}
!67 = !{!6, !6, i64 0}
!68 = !{!29, !7, i64 148}
!69 = !{!29, !7, i64 152}
!70 = !{!21, !21, i64 0}
!71 = !{!29, !21, i64 120}
!72 = !{!32, !20, i64 32}
!73 = !{!22, !22, i64 0}
!74 = !{!26, !23, i64 0}
!75 = !{!31, !31, i64 0}
!76 = !{i64 0, i64 8, !73, i64 8, i64 8, !75, i64 16, i64 8, !70, i64 24, i64 8, !70, i64 32, i64 8, !45}
!77 = !{!16, !10, i64 0}
!78 = !{!16, !10, i64 8}
!79 = !{!16, !10, i64 16}
!80 = !{!16, !10, i64 24}
!81 = !{!16, !10, i64 32}
!82 = !{!16, !10, i64 40}
!83 = !{!10, !10, i64 0}
!84 = !{i64 0, i64 8, !83, i64 8, i64 8, !83, i64 16, i64 8, !83, i64 24, i64 8, !83, i64 32, i64 8, !83, i64 40, i64 8, !83, i64 48, i64 8, !83, i64 56, i64 8, !83, i64 64, i64 8, !83, i64 72, i64 8, !83, i64 80, i64 8, !83}
!85 = !{!38, !10, i64 64}
!86 = !{!29, !7, i64 136}
!87 = distinct !{null}
!88 = !{!29, !23, i64 48}
!89 = !{!29, !7, i64 56}
!90 = !{!29, !23, i64 72}
!91 = !{!29, !7, i64 80}
!92 = !{!29, !7, i64 0}
!93 = !{!29, !7, i64 4}
!94 = !{!29, !7, i64 8}
!95 = !{!11, !10, i64 72}
!96 = !{!29, !22, i64 88}
!97 = !{!29, !22, i64 96}
!98 = !{!29, !22, i64 112}
!99 = !{!29, !22, i64 104}
!100 = !{!"p1 int", !10, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!26, !22, i64 16}
!103 = !{!26, !22, i64 32}
end_hunk_1
