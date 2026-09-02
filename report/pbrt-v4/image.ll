Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 118
begin_hunk_0_@qoi_encode:bb.a
  %i.cw = sub i8 %i.cd, %i.ce                     ; 2 uses
  %i.cx = add i8 %i.cw, 8
  %or.cond21 = icmp ult i8 %i.cx, 16
  %i.cy = add i8 %i.ce, 32                        ; 2 uses
  %i.cz = icmp ult i8 %i.cy, 64
  %or.cond27 = select i1 %or.cond21, i1 %i.cz, i1 false
  %i.da = add i8 %i.cv, 8                         ; 2 uses
  %i.db = icmp ult i8 %i.da, 16
  %or.cond33 = select i1 %or.cond27, i1 %i.db, i1 false
  br i1 %or.cond33, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dc = or disjoint i8 %i.cy, -128
  %i.dd = sext i32 %.1211 to i64
  %i.de = getelementptr i8, ptr %i.u, i64 %i.dd   ; 2 uses
  store i8 %i.dc, ptr %i.de, align 1, !tbaa !37
  %i.df = shl nsw i8 %i.cw, 4
  %i.dg = or disjoint i8 %i.da, %i.df
  %i.dh = xor i8 %i.dg, -128
  %i.di = add nsw i32 %.1211, 2
  %i.dj = getelementptr i8, ptr %i.de, i64 1
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !37
  br label %bb.y

bb.w:                                             ; preds = %bb.u
  %i.dk = sext i32 %.1211 to i64
  %i.dl = getelementptr i8, ptr %i.u, i64 %i.dk   ; 4 uses
  store i8 -2, ptr %i.dl, align 1, !tbaa !37
  %i.dm = getelementptr i8, ptr %i.dl, i64 1
  store i8 %i.ap, ptr %i.dm, align 1, !tbaa !37
  %i.dn = getelementptr i8, ptr %i.dl, i64 2
  store i8 %i.ar, ptr %i.dn, align 1, !tbaa !37
  %i.do = add nsw i32 %.1211, 4
  %i.dp = getelementptr i8, ptr %i.dl, i64 3
  store i8 %i.at, ptr %i.dp, align 1, !tbaa !37
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  %i.dq = sext i32 %.1211 to i64
  %i.dr = getelementptr i8, ptr %i.u, i64 %i.dq   ; 5 uses
  store i8 -1, ptr %i.dr, align 1, !tbaa !37
  %i.ds = getelementptr i8, ptr %i.dr, i64 1
  store i8 %i.ap, ptr %i.ds, align 1, !tbaa !37
  %i.dt = getelementptr i8, ptr %i.dr, i64 2
  store i8 %i.ar, ptr %i.dt, align 1, !tbaa !37
  %i.du = getelementptr i8, ptr %i.dr, i64 3
  store i8 %i.at, ptr %i.du, align 1, !tbaa !37
  %i.dv = add nsw i32 %.1211, 5
  %i.dw = getelementptr i8, ptr %i.dr, i64 4
  store i8 %.sroa.26.1, ptr %i.dw, align 1, !tbaa !37
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %bb.x, %bb.v, %bb.w, %bb.t, %bb.l, %bb.m
  %.2212 = phi i32 [ %i.bc, %bb.m ], [ %.0210213, %bb.l ], [ %i.bz, %bb.q ], [ %i.cs, %bb.t ], [ %i.di, %bb.v ], [ %i.do, %bb.w ], [ %i.dv, %bb.x ] ; 2 uses
  %.2 = phi i32 [ 0, %bb.m ], [ %i.ax, %bb.l ], [ %.1, %bb.q ], [ %.1, %bb.t ], [ %.1, %bb.v ], [ %.1, %bb.w ], [ %.1, %bb.x ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.dx = icmp samesign ult i64 %indvars.iv.next, %i.ak
  br i1 %i.dx, label %bb.i, label %.preheader.loopexit, !llvm.loop !246

bb.z:                                             ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.preheader
  %.0172 = phi ptr [ null, %bb.a ], [ %i.u, %.preheader ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret ptr %.0172
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noundef ptr @qoi_decode(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [64 x %union.qoi_rgba_t], align 16  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %3, 3
  %i.d = and i32 %3, -5
  %i.e = icmp ne i32 %i.d, 0
  %or.cond5 = and i1 %i.c, %i.e
  %i.f = icmp slt i32 %1, 22
  %or.cond7 = or i1 %i.f, %or.cond5
  br i1 %or.cond7, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1, !tbaa !37
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !37
  %i.k = zext i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !37
  %i.n = zext i8 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !37
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw i32 %i.h, 24
  %i.s = shl nuw nsw i32 %i.k, 16
  %i.t = or disjoint i32 %i.s, %i.r
  %i.u = shl nuw nsw i32 %i.n, 8
  %i.v = or disjoint i32 %i.t, %i.u
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 1              ; 2 uses
  %i.z = tail call i32 @llvm.bswap.i32(i32 %i.y)  ; 3 uses
  store i32 %i.z, ptr %2, align 4, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i32, ptr %i.aa, align 1            ; 2 uses
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %i.ab) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37  ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 %i.af, ptr %i.ag, align 4, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !36
  %i.ak = icmp eq i32 %i.y, 0
  %i.al = icmp eq i32 %i.ab, 0
  %or.cond124 = select i1 %i.ak, i1 true, i1 %i.al
  br i1 %or.cond124, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = zext nneg i8 %i.af to i32
  %i.an = add i8 %i.af, -5
  %or.cond116 = icmp ult i8 %i.an, -2
  br i1 %or.cond116, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = icmp ugt i8 %i.ai, 1
  %i.ap = icmp ne i32 %i.w, 1903126886
  %or.cond9 = or i1 %i.ap, %i.ao
  br i1 %or.cond9, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = udiv i32 400000000, %i.z
  %.not = icmp ult i32 %i.ac, %i.aq
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i32 %3, 0
  %spec.select = select i1 %i.ar, i32 %i.am, i32 %3 ; 3 uses
  %i.as = mul i32 %i.ac, %i.z
  %i.at = mul i32 %i.as, %spec.select             ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = tail call noalias ptr @malloc(i64 noundef %i.au) #33 ; 4 uses
  %.not115 = icmp eq ptr %i.av, null
  br i1 %.not115, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %4, i8 0, i64 256, i1 false)
  %i.aw = add nsw i32 %1, -8
  %i.ax = icmp sgt i32 %i.at, 0
  br i1 %i.ax, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.h
  %i.ay = icmp eq i32 %spec.select, 4
  %i.az = zext nneg i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 2 uses
  %.0102131 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.w ] ; 2 uses
  %.sroa.0.0129 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.2, %bb.w ] ; 5 uses
  %.sroa.13.0128 = phi i8 [ 0, %.lr.ph ], [ %.sroa.13.2, %bb.w ] ; 5 uses
  %.sroa.22.0127 = phi i8 [ 0, %.lr.ph ], [ %.sroa.22.2, %bb.w ] ; 5 uses
  %.sroa.31.0126 = phi i8 [ -1, %.lr.ph ], [ %.sroa.31.2, %bb.w ] ; 6 uses
  %.0121125 = phi i32 [ 14, %.lr.ph ], [ %.2123, %bb.w ] ; 8 uses
  %i.ba = icmp sgt i32 %.0102131, 0
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bb = add nsw i32 %.0102131, -1
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.bc = icmp slt i32 %.0121125, %i.aw
  br i1 %i.bc, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bd = add nsw i32 %.0121125, 1                ; 6 uses
  %i.be = sext i32 %.0121125 to i64
  %i.bf = getelementptr i8, ptr %0, i64 %i.be     ; 6 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !37  ; 6 uses
  %i.bh = zext i8 %i.bg to i32                    ; 3 uses
  switch i8 %i.bg, label %bb.o [
    i8 -2, label %bb.m
    i8 -1, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bi = sext i32 %i.bd to i64
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !37
  %i.bl = getelementptr i8, ptr %i.bf, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !37
  %i.bn = add nsw i32 %.0121125, 4
  %i.bo = getelementptr i8, ptr %i.bf, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.bq = sext i32 %i.bd to i64
  %i.br = getelementptr inbounds i8, ptr %0, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !37
  %i.bt = getelementptr i8, ptr %i.bf, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !37
  %i.bv = getelementptr i8, ptr %i.bf, i64 3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !37
  %i.bx = add nsw i32 %.0121125, 5
  %i.by = getelementptr i8, ptr %i.bf, i64 4
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !37
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.ca = lshr i32 %i.bh, 6
  switch i32 %i.ca, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.p:                                             ; preds = %bb.o
  %i.cb = zext i8 %i.bg to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.cb ; 4 uses
  %.sroa.0.0.copyload = load i8, ptr %i.cc, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %.sroa.13.0.copyload = load i8, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %.sroa.22.0.copyload = load i8, ptr %.sroa.22.0..sroa_idx, align 2
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  %.sroa.31.0.copyload = load i8, ptr %.sroa.31.0..sroa_idx, align 1, !tbaa !37
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.cd = lshr i8 %i.bg, 4
  %i.ce = and i8 %i.cd, 3
  %i.cf = add i8 %.sroa.0.0129, -2
  %i.cg = add i8 %i.cf, %i.ce
  %i.ch = lshr i8 %i.bg, 2
  %i.ci = and i8 %i.ch, 3
  %i.cj = add i8 %.sroa.13.0128, -2
  %i.ck = add i8 %i.cj, %i.ci
  %i.cl = and i8 %i.bg, 3
  %i.cm = add i8 %.sroa.22.0127, -2
  %i.cn = add i8 %i.cm, %i.cl
  br label %bb.t

bb.r:                                             ; preds = %bb.o
  %i.co = add nsw i32 %.0121125, 2
  %i.cp = sext i32 %i.bd to i64
  %i.cq = getelementptr inbounds i8, ptr %0, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !37
  %5 = zext i8 %i.cr to i32                       ; 2 uses
  %6 = and i32 %i.bh, 63                          ; 2 uses
  %7 = add nsw i32 %6, -40                        ; 2 uses
  %8 = lshr i32 %5, 4
  %9 = add nsw i32 %8, %7
  %10 = trunc nsw i32 %9 to i8
  %i.cs = add i8 %.sroa.0.0129, %10
  %11 = trunc nuw nsw i32 %6 to i8
  %i.ct = add i8 %.sroa.13.0128, -32
  %i.cu = add i8 %i.ct, %11
  %12 = and i32 %5, 15
  %13 = add nsw i32 %12, %7
  %14 = trunc nsw i32 %13 to i8
  %i.cv = add i8 %.sroa.22.0127, %14
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.cw = and i32 %i.bh, 63
  br label %bb.t

default.unreachable:                              ; preds = %bb.o
  unreachable

bb.t:                                             ; preds = %bb.n, %bb.q, %bb.s, %bb.r, %bb.p, %bb.m
  %.1122 = phi i32 [ %i.bd, %bb.p ], [ %i.bd, %bb.q ], [ %i.co, %bb.r ], [ %i.bd, %bb.s ], [ %i.bn, %bb.m ], [ %i.bx, %bb.n ]
  %.sroa.31.1 = phi i8 [ %.sroa.31.0.copyload, %bb.p ], [ %.sroa.31.0126, %bb.q ], [ %.sroa.31.0126, %bb.r ], [ %.sroa.31.0126, %bb.s ], [ %.sroa.31.0126, %bb.m ], [ %i.bz, %bb.n ] ; 3 uses
  %.sroa.22.1 = phi i8 [ %.sroa.22.0.copyload, %bb.p ], [ %i.cn, %bb.q ], [ %i.cv, %bb.r ], [ %.sroa.22.0127, %bb.s ], [ %i.bp, %bb.m ], [ %i.bw, %bb.n ] ; 3 uses
  %.sroa.13.1 = phi i8 [ %.sroa.13.0.copyload, %bb.p ], [ %i.ck, %bb.q ], [ %i.cu, %bb.r ], [ %.sroa.13.0128, %bb.s ], [ %i.bm, %bb.m ], [ %i.bu, %bb.n ] ; 3 uses
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.copyload, %bb.p ], [ %i.cg, %bb.q ], [ %i.cs, %bb.r ], [ %.sroa.0.0129, %bb.s ], [ %i.bk, %bb.m ], [ %i.bs, %bb.n ] ; 3 uses
  %.1 = phi i32 [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ %i.cw, %bb.s ], [ 0, %bb.m ], [ 0, %bb.n ]
  %i.cx = zext i8 %.sroa.0.1 to i64
  %i.cy = mul nuw nsw i64 %i.cx, 3
  %i.cz = zext i8 %.sroa.13.1 to i64
  %i.da = mul nuw nsw i64 %i.cz, 5
  %i.db = zext i8 %.sroa.22.1 to i64
  %i.dc = mul nuw nsw i64 %i.db, 7
  %i.dd = zext i8 %.sroa.31.1 to i64
  %i.de = mul nuw nsw i64 %i.dd, 11
  %i.df = add nuw nsw i64 %i.dc, %i.de
  %i.dg = add nuw nsw i64 %i.df, %i.da
  %i.dh = add nuw nsw i64 %i.dg, %i.cy
  %i.di = and i64 %i.dh, 63
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.di ; 4 uses
  store i8 %.sroa.0.1, ptr %i.dj, align 4
  %.sroa.13.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 %.sroa.13.1, ptr %.sroa.13.0..sroa_idx41, align 1
  %.sroa.22.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  store i8 %.sroa.22.1, ptr %.sroa.22.0..sroa_idx46, align 2
  %.sroa.31.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %i.dj, i64 3
  store i8 %.sroa.31.1, ptr %.sroa.31.0..sroa_idx51, align 1, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.t, %bb.j
  %.2123 = phi i32 [ %.0121125, %bb.j ], [ %.1122, %bb.t ], [ %.0121125, %bb.k ]
  %.sroa.31.2 = phi i8 [ %.sroa.31.0126, %bb.j ], [ %.sroa.31.1, %bb.t ], [ %.sroa.31.0126, %bb.k ] ; 2 uses
  %.sroa.22.2 = phi i8 [ %.sroa.22.0127, %bb.j ], [ %.sroa.22.1, %bb.t ], [ %.sroa.22.0127, %bb.k ] ; 2 uses
  %.sroa.13.2 = phi i8 [ %.sroa.13.0128, %bb.j ], [ %.sroa.13.1, %bb.t ], [ %.sroa.13.0128, %bb.k ] ; 2 uses
  %.sroa.0.2 = phi i8 [ %.sroa.0.0129, %bb.j ], [ %.sroa.0.1, %bb.t ], [ %.sroa.0.0129, %bb.k ] ; 2 uses
  %.2 = phi i32 [ %i.bb, %bb.j ], [ %.1, %bb.t ], [ 0, %bb.k ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.av, i64 %indvars.iv ; 4 uses
  store i8 %.sroa.0.2, ptr %i.dk, align 1, !tbaa !37
  %i.dl = getelementptr i8, ptr %i.dk, i64 1
  store i8 %.sroa.13.2, ptr %i.dl, align 1, !tbaa !37
  %i.dm = getelementptr i8, ptr %i.dk, i64 2
  store i8 %.sroa.22.2, ptr %i.dm, align 1, !tbaa !37
  br i1 %i.ay, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dn = getelementptr i8, ptr %i.dk, i64 3
  store i8 %.sroa.31.2, ptr %i.dn, align 1, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.az ; 2 uses
  %i.do = trunc nuw i64 %indvars.iv.next to i32
  %i.dp = icmp sgt i32 %i.at, %i.do
  br i1 %i.dp, label %bb.i, label %.loopexit, !llvm.loop !247

.loopexit:                                        ; preds = %bb.w, %bb.h, %bb.g, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.a ], [ null, %bb.g ], [ null, %bb.b ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.d ], [ %i.av, %bb.h ], [ %i.av, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt8ToStringB5cxx11ENS_11PixelFormatE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %1, label %bb.b [
    i32 0, label %._crit_edge.i.i
    i32 1, label %._crit_edge.i.i4
    i32 2, label %._crit_edge.i.i8
  ]

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !43
  store i32 909455957, ptr %i.a, align 8
  br label %bb.c

._crit_edge.i.i4:                                 ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !43
  store i32 1718378824, ptr %i.b, align 8
  br label %bb.c

._crit_edge.i.i8:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.c, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 64, ptr noundef nonnull @.str.5) #34
  unreachable

bb.c:                                             ; preds = %._crit_edge.i.i8, %._crit_edge.i.i4, %._crit_edge.i.i
  %.sink = phi i64 [ 5, %._crit_edge.i.i8 ], [ 4, %._crit_edge.i.i4 ], [ 4, %._crit_edge.i.i ]
  %.sink14 = phi i64 [ 21, %._crit_edge.i.i8 ], [ 20, %._crit_edge.i.i4 ], [ 20, %._crit_edge.i.i ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.d, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.sink14
  store i8 0, ptr %i.e, align 1, !tbaa !37
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !43
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.136) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i64 %i.d, ptr %i.a, align 8, !tbaa !47
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !48
  %i.g = load i64, ptr %i.a, align 8, !tbaa !47
  store i64 %i.g, ptr %i.b, align 8, !tbaa !37
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !37
  store i8 %i.i, ptr %i.h, align 1, !tbaa !37
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !46
  %i.l = load ptr, ptr %0, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 1, 5) i32 @_ZN4pbrt10TexelBytesENS_11PixelFormatE(i32 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 78, ptr noundef nonnull @.str.6) #34
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4pbrt10TexelBytesENS_11PixelFormatE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  ret i32 %switch.ext
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt18ImageChannelValues8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !43, !alias.scope !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !46, !alias.scope !250
  store i8 0, ptr %i.a, align 8, !tbaa !37, !alias.scope !250
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEEEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.7, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN4pbrt12StringPrintfIJRNS_13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !48, !alias.scope !250 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !37, !alias.scope !250
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.c

end_hunk_0
