inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 62
begin_hunk_0_@mz_compress:bb.a
  %.not8.i16.i = icmp eq ptr %i.ar, null
  br i1 %.not8.i16.i, label %mz_compress2.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.m, align 8
  %i.at = load ptr, ptr %i.n, align 8
  call void %i.as(ptr noundef %i.at, ptr noundef nonnull %i.ar) #36, !inline_history !6
  br label %mz_compress2.exit

mz_compress2.exit:                                ; preds = %bb.b, %bb.a, %mz_deflateEnd.exit.i, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ -10000, %bb.a ], [ %i.ap, %mz_deflateEnd.exit.i ], [ 0, %bb.f ], [ -4, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i64 128, 0) i64 @mz_compressBound(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = mul i64 %0, 110
  %i.b = udiv i64 %i.a, 100
  %i.c = add nuw nsw i64 %i.b, 128
  %i.d = udiv i64 %0, 31744
  %i.e = mul nuw nsw i64 %i.d, 5
  %i.f = add i64 %0, 133
  %i.g = add i64 %i.f, %i.e
  %..i = tail call range(i64 128, 0) i64 @llvm.umax.i64(i64 %i.c, i64 %i.g)
  ret i64 %..i
}

; Function Attrs: nounwind uwtable
define range(i32 -10000, 1) i32 @mz_inflateInit2(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 15, label %bb.c
    i32 -15, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not31 = icmp eq ptr %i.f, null
  br i1 %.not31, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr @miniz_def_alloc_func, ptr %i.e, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = phi ptr [ @miniz_def_alloc_func, %bb.d ], [ %i.f, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not32 = icmp eq ptr %i.i, null
  br i1 %.not32, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr @miniz_def_free_func, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr %i.g(ptr noundef %i.k, i64 noundef 1, i64 noundef 41168) #36 ; 6 uses
  %.not33 = icmp eq ptr %i.l, null
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.l, ptr %i.m, align 8
  store i32 0, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8376
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 41164
  store i32 1, ptr %i.o, align 4
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8392
  store i32 %1, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ -2, %bb.a ], [ 0, %bb.h ], [ -10000, %bb.b ], [ -4, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -4, 1) i32 @mz_inflateInit(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %mz_inflateInit2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not31.i = icmp eq ptr %i.f, null
  br i1 %.not31.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @miniz_def_alloc_func, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ @miniz_def_alloc_func, %bb.c ], [ %i.f, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %.not32.i = icmp eq ptr %i.i, null
  br i1 %.not32.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @miniz_def_free_func, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr %i.g(ptr noundef %i.k, i64 noundef 1, i64 noundef 41168) #36, !inline_history !7 ; 6 uses
  %.not33.i = icmp eq ptr %i.l, null
  br i1 %.not33.i, label %mz_inflateInit2.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.l, ptr %i.m, align 8
  store i32 0, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8376
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 41164
  store i32 1, ptr %i.o, align 4
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8392
  store i32 15, ptr %i.p, align 8
  br label %mz_inflateInit2.exit

mz_inflateInit2.exit:                             ; preds = %bb.a, %bb.f, %bb.g
  %.0.i = phi i32 [ -2, %bb.a ], [ 0, %bb.g ], [ -4, %bb.f ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -2, 1) i32 @mz_inflateReset(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #14 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8376
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 41164
  store i32 1, ptr %i.h, align 4
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %i.g, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -5, 2) i32 @mz_inflate(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8              ; 14 uses
  %.not130 = icmp eq ptr %i.d, null
  br i1 %.not130, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %1, 1
  %spec.store.select = select i1 %i.e, i32 2, i32 %1 ; 2 uses
  %i.f = icmp ne i32 %spec.store.select, 4        ; 2 uses
  switch i32 %1, label %.loopexit [
    i32 4, label %bb.d
    i32 2, label %bb.d
    i32 0, label %bb.d
    i32 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8392
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp sgt i32 %i.h, 0
  %spec.select = select i1 %i.i, i32 9, i32 8     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8384 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  store i32 0, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 41164 ; 5 uses
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8388 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4              ; 2 uses
  %i.s = icmp ne i32 %i.r, 0
  %or.cond5 = and i1 %i.f, %i.s
  br i1 %or.cond5, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %spec.store.select, 4        ; 3 uses
  %i.u = zext i1 %i.t to i32
  %i.v = or i32 %i.r, %i.u
  store i32 %i.v, ptr %i.q, align 4
  %i.w = icmp ne i32 %i.m, 0
  %or.cond7 = select i1 %i.t, i1 %i.w, i1 false
  br i1 %or.cond7, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.x = or disjoint i32 %spec.select, 4
  %i.y = load i32, ptr %i.j, align 8
  %i.z = zext i32 %i.y to i64
  store i64 %i.z, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  store i64 %i.ac, ptr %i.b, align 8
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = call i32 @tinfl_decompress(ptr noundef nonnull %i.d, ptr noundef %i.ad, ptr noundef nonnull %i.a, ptr noundef %i.af, ptr noundef %i.af, ptr noundef nonnull %i.b, i32 noundef %i.x) ; 3 uses
  store i32 %i.ag, ptr %i.n, align 4
  %i.ah = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = and i64 %i.ah, 4294967295               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store ptr %i.ak, ptr %0, align 8
  %i.al = trunc i64 %i.ah to i32
  %i.am = load i32, ptr %i.j, align 8
  %i.an = sub i32 %i.am, %i.al
  store i32 %i.an, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = add i64 %i.ap, %i.aj
  store i64 %i.aq, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.at, ptr %i.au, align 8
  %i.av = load i64, ptr %i.b, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.ae, align 8
  %i.ax = and i64 %i.av, 4294967295               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  store ptr %i.ay, ptr %i.ae, align 8
  %i.az = trunc i64 %i.av to i32
  %i.ba = load i32, ptr %i.aa, align 8
  %i.bb = sub i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.aa, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = add i64 %i.bd, %i.ax
  store i64 %i.be, ptr %i.bc, align 8
  %i.bf = icmp slt i32 %i.ag, 0
  br i1 %i.bf, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not139 = icmp eq i32 %i.ag, 0
  br i1 %.not139, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 -1, ptr %i.n, align 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.f
  %i.bg = or disjoint i32 %spec.select, 2
  %spec.select140 = select i1 %i.f, i32 %i.bg, i32 %spec.select
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 8380 ; 6 uses
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %.not131 = icmp eq i32 %i.bi, 0
  br i1 %.not131, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8376 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8396 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.br = icmp ne i32 %i.k, 0
  %.pre = load i32, ptr %i.bj, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %. = tail call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.bt) ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8396
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8376 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bz
  %i.cb = zext i32 %. to i64                      ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.ca, i64 %i.cb, i1 false)
  %i.cc = load ptr, ptr %i.bu, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb
  store ptr %i.cd, ptr %i.bu, align 8
  %i.ce = load i32, ptr %i.bs, align 8
  %i.cf = sub i32 %i.ce, %.
  store i32 %i.cf, ptr %i.bs, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = add i64 %i.ch, %i.cb
  store i64 %i.ci, ptr %i.cg, align 8
  %i.cj = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.ck = sub i32 %i.cj, %.
  store i32 %i.ck, ptr %i.bh, align 4
  %i.cl = load i32, ptr %i.bx, align 8
  %i.cm = add i32 %i.cl, %.
  %i.cn = and i32 %i.cm, 32767
  store i32 %i.cn, ptr %i.bx, align 8
  %i.co = load i32, ptr %i.n, align 4
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %.not138 = icmp eq i32 %i.cj, %.
  %i.cq = zext i1 %.not138 to i32
  br label %.loopexit

bb.m:                                             ; preds = %.backedge, %.preheader
  %i.cr = phi i32 [ %.pre, %.preheader ], [ %i.ed, %.backedge ] ; 2 uses
  %i.cs = load i32, ptr %i.j, align 8
  %i.ct = zext i32 %i.cs to i64
  store i64 %i.ct, ptr %i.a, align 8
  %i.cu = sub i32 32768, %i.cr
  %i.cv = zext i32 %i.cu to i64
  store i64 %i.cv, ptr %i.b, align 8
  %i.cw = load ptr, ptr %0, align 8
  %i.cx = zext i32 %i.cr to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.cx
  %i.cz = call i32 @tinfl_decompress(ptr noundef nonnull %i.d, ptr noundef %i.cw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.b, i32 noundef %spec.select140) ; 4 uses
  store i32 %i.cz, ptr %i.n, align 4
  %i.da = load i64, ptr %i.a, align 8             ; 2 uses
  %i.db = load ptr, ptr %0, align 8
  %i.dc = and i64 %i.da, 4294967295               ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc
  store ptr %i.dd, ptr %0, align 8
  %i.de = trunc i64 %i.da to i32
  %i.df = load i32, ptr %i.j, align 8
  %i.dg = sub i32 %i.df, %i.de
  store i32 %i.dg, ptr %i.j, align 8
  %i.dh = load i64, ptr %i.bl, align 8
  %i.di = add i64 %i.dh, %i.dc
  store i64 %i.di, ptr %i.bl, align 8
  %i.dj = load i32, ptr %i.bm, align 4
  %i.dk = zext i32 %i.dj to i64
  store i64 %i.dk, ptr %i.bn, align 8
  %i.dl = load i64, ptr %i.b, align 8
  %i.dm = trunc i64 %i.dl to i32                  ; 2 uses
  store i32 %i.dm, ptr %i.bh, align 4
  %i.dn = load i32, ptr %i.bo, align 8
  %.141 = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 %i.dm) ; 7 uses
  %i.do = load ptr, ptr %i.bp, align 8
  %i.dp = load i32, ptr %i.bj, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.dq
  %i.ds = zext i32 %.141 to i64                   ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.do, ptr nonnull align 1 %i.dr, i64 %i.ds, i1 false)
  %i.dt = load ptr, ptr %i.bp, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store ptr %i.du, ptr %i.bp, align 8
  %i.dv = load i32, ptr %i.bo, align 8
  %i.dw = sub i32 %i.dv, %.141
  store i32 %i.dw, ptr %i.bo, align 8
  %i.dx = load i64, ptr %i.bq, align 8
  %i.dy = add i64 %i.dx, %i.ds
  store i64 %i.dy, ptr %i.bq, align 8
  %i.dz = load i32, ptr %i.bh, align 4            ; 4 uses
  %i.ea = sub i32 %i.dz, %.141
  store i32 %i.ea, ptr %i.bh, align 4
  %i.eb = load i32, ptr %i.bj, align 8
  %i.ec = add i32 %i.eb, %.141
  %i.ed = and i32 %i.ec, 32767                    ; 2 uses
  store i32 %i.ed, ptr %i.bj, align 8
  %i.ee = icmp slt i32 %i.cz, 0
  br i1 %i.ee, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = icmp ne i32 %i.cz, 1
  %or.cond9 = select i1 %i.ef, i1 true, i1 %i.br
  br i1 %or.cond9, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.eg = icmp eq i32 %i.cz, 0                    ; 2 uses
  br i1 %i.t, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  br i1 %i.eg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not137 = icmp eq i32 %i.dz, %.141
  %i.eh = select i1 %.not137, i32 1, i32 -5
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.ei = load i32, ptr %i.bo, align 8
  %.not136 = icmp eq i32 %i.ei, 0
  br i1 %.not136, label %.loopexit, label %.backedge

bb.s:                                             ; preds = %bb.o
  br i1 %i.eg, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ej = load i32, ptr %i.j, align 8
  %.not132 = icmp eq i32 %i.ej, 0
  br i1 %.not132, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ek = load i32, ptr %i.bo, align 8
  %.not133 = icmp ne i32 %i.ek, 0
  %.not134 = icmp eq i32 %i.dz, %.141
  %or.cond = select i1 %.not133, i1 %.not134, i1 false
  br i1 %or.cond, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.u, %bb.r
  br label %bb.m

.critedge:                                        ; preds = %bb.s
  %.not135 = icmp eq i32 %i.dz, %.141
  %i.el = zext i1 %.not135 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.u, %bb.t, %bb.r, %bb.n, %bb.m, %bb.c, %.critedge, %bb.k, %bb.l, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a, %bb.b, %bb.q, %bb.i
  %.0 = phi i32 [ -2, %bb.a ], [ -2, %bb.c ], [ -3, %bb.d ], [ -2, %bb.e ], [ -5, %bb.i ], [ -3, %bb.g ], [ 1, %bb.h ], [ %i.cq, %bb.l ], [ %i.eh, %bb.q ], [ -2, %bb.b ], [ 0, %bb.k ], [ %i.el, %.critedge ], [ 0, %bb.u ], [ 0, %bb.t ], [ -3, %bb.m ], [ -5, %bb.r ], [ -5, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -4, 3) i32 @tinfl_decompress(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = alloca [3 x ptr], align 16               ; 6 uses
  %i.c = alloca [3 x ptr], align 16               ; 6 uses
  %i.d = alloca [17 x i32], align 16              ; 18 uses
  %i.e = alloca [16 x i32], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  %i.f = load i64, ptr %2, align 8                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f ; 22 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %5, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.k = and i32 %6, 4
  %.not1543 = icmp eq i32 %i.k, 0                 ; 3 uses
  br i1 %.not1543, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %4 to i64
  %i.m = ptrtoint ptr %3 to i64
  %i.n = load i64, ptr %5, align 8
  %i.o = xor i64 %i.m, -1
  %i.p = add i64 %i.o, %i.l
  %i.q = add i64 %i.p, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.q, %bb.d ], [ -1, %bb.c ]   ; 4 uses
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = and i64 %i.s, %i.r
  %.not1544 = icmp ne i64 %i.t, 0
  %i.u = icmp ult ptr %4, %3
  %or.cond1621 = or i1 %i.u, %.not1544
  br i1 %or.cond1621, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %5, align 8
  store i64 0, ptr %2, align 8
  br label %bb.fs

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 6216 ; 6 uses
  store ptr %i.v, ptr %i.b, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7368 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7496 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.y, ptr %i.z, align 16
  %i.aa = getelementptr i8, ptr %0, i64 7572      ; 3 uses
  store ptr %i.aa, ptr %i.c, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7860 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 7892 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.ae, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %.84.fr2003 = freeze i32 %i.ag                  ; 36 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 34 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 34 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4            ; 33 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8            ; 34 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 37 uses
  %i.ar = load i32, ptr %0, align 8               ; 9 uses
  switch i32 %i.ar, label %.thread1657 [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 36, label %bb.fo
    i32 3, label %.preheader2174
    i32 5, label %bb.x
    i32 6, label %.preheader2065
    i32 7, label %bb.ah
    i32 39, label %bb.fo
    i32 51, label %.preheader2073
    i32 52, label %bb.ar
    i32 9, label %bb.au
    i32 38, label %bb.av
    i32 10, label %bb.fo
    i32 11, label %.preheader2155
    i32 14, label %.preheader2166
    i32 35, label %bb.fo
    i32 16, label %bb.ch
    i32 17, label %bb.fo
    i32 18, label %.preheader2089
    i32 21, label %bb.fo
    i32 23, label %bb.df
    i32 24, label %bb.dl
    i32 25, label %.preheader2118
    i32 26, label %bb.eg
    i32 27, label %.preheader2107
    i32 37, label %bb.fo
    i32 53, label %bb.et
    i32 32, label %bb.ez
    i32 41, label %.preheader2081
    i32 42, label %bb.fj
    i32 34, label %bb.fn
  ]

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %i.av, align 8
  %i.aw = and i32 %6, 1
  %.not1549 = icmp eq i32 %i.aw, 0
  br i1 %.not1549, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.01089 = phi i64 [ 0, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %.01008 = phi i32 [ 0, %bb.h ], [ %i.ao, %bb.g ] ; 2 uses
  %.0919 = phi i32 [ 0, %bb.h ], [ %i.am, %bb.g ] ; 2 uses
  %.0840 = phi i32 [ 0, %bb.h ], [ %i.ak, %bb.g ] ; 2 uses
  %.0837 = phi i32 [ 0, %bb.h ], [ %.84.fr2003, %bb.g ] ; 2 uses
  %.not1550.not = icmp eq i64 %i.f, 0
  br i1 %.not1550.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = and i32 %6, 2
  %.not1617 = icmp eq i32 %i.ax, 0
  store i32 1, ptr %0, align 8
  %spec.select1675 = select i1 %.not1617, i32 -4, i32 1
  br label %.thread1657

bb.k:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.az = load i8, ptr %1, align 1
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ba, ptr %i.bb, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.01181 = phi ptr [ %i.ay, %bb.k ], [ %1, %bb.g ] ; 4 uses
  %.11090 = phi i64 [ %.01089, %bb.k ], [ %i.ai, %bb.g ] ; 3 uses
  %.11009 = phi i32 [ %.01008, %bb.k ], [ %i.ao, %bb.g ] ; 3 uses
  %.1920 = phi i32 [ %.0919, %bb.k ], [ %i.am, %bb.g ]
  %.1841 = phi i32 [ %.0840, %bb.k ], [ %i.ak, %bb.g ] ; 3 uses
  %.1838 = phi i32 [ %.0837, %bb.k ], [ %.84.fr2003, %bb.g ] ; 3 uses
  %.not1551 = icmp ult ptr %.01181, %i.g
  br i1 %.not1551, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = and i32 %6, 2
  %.not1616 = icmp eq i32 %i.bc, 0
  store i32 2, ptr %0, align 8
  %spec.select1677 = select i1 %.not1616, i32 -4, i32 1
  br label %.thread1657

bb.n:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.01181, i64 1 ; 2 uses
  %i.be = load i8, ptr %.01181, align 1
  %i.bf = zext i8 %i.be to i32                    ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bf, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i32, ptr %i.bh, align 8            ; 4 uses
  %i.bj = shl i32 %i.bi, 8
  %i.bk = or disjoint i32 %i.bj, %i.bf
  %i.bl = urem i32 %i.bk, 31
  %i.bm = and i32 %i.bf, 32
  %i.bn = or disjoint i32 %i.bl, %i.bm
  %or.cond1622 = icmp ne i32 %i.bn, 0
  %i.bo = and i32 %i.bi, 15
  %i.bp = icmp ne i32 %i.bo, 8
  %narrow = select i1 %or.cond1622, i1 true, i1 %i.bp
  %i.bq = zext i1 %narrow to i32                  ; 2 uses
  br i1 %.not1543, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.br = icmp ugt i32 %i.bi, 127
  br i1 %i.br, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
