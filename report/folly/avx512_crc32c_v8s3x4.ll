Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/avx512_crc32c_v8s3x4?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5folly6detail20avx512_crc32c_v8s3x4EPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i64 %1, 0
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = and i64 %i.b, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = and i1 %i.a, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %4 = load i8, ptr %0, align 1, !tbaa !12
  %5 = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %2, i8 %4) ; 2 uses
  %6 = add i64 %1, -1                             ; 2 uses
  %7 = icmp ne i64 %6, 0
  %8 = ptrtoint ptr %3 to i64                     ; 2 uses
  %9 = and i64 %8, 7
  %10 = icmp ne i64 %9, 0
  %11 = select i1 %7, i1 %10, i1 false
  br i1 %11, label %.lr.ph.1, label %._crit_edge

.lr.ph.1:                                         ; preds = %.lr.ph
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %13 = load i8, ptr %3, align 1, !tbaa !12
  %14 = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %5, i8 %13) ; 2 uses
  %15 = add i64 %1, -2                            ; 2 uses
  %16 = icmp ne i64 %15, 0
  %17 = ptrtoint ptr %12 to i64                   ; 2 uses
  %18 = and i64 %17, 7
  %19 = icmp ne i64 %18, 0
  %20 = select i1 %16, i1 %19, i1 false
  br i1 %20, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %22 = load i8, ptr %12, align 1, !tbaa !12
  %23 = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %14, i8 %22) ; 2 uses
  %24 = add i64 %1, -3                            ; 2 uses
  %25 = icmp ne i64 %24, 0
  %26 = ptrtoint ptr %21 to i64                   ; 2 uses
  %27 = and i64 %26, 7
  %28 = icmp ne i64 %27, 0
  %29 = select i1 %25, i1 %28, i1 false
  br i1 %29, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %31 = load i8, ptr %21, align 1, !tbaa !12
  %32 = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %23, i8 %31) ; 2 uses
  %33 = add i64 %1, -4                            ; 2 uses
  %34 = icmp ne i64 %33, 0
  %35 = ptrtoint ptr %30 to i64                   ; 2 uses
  %36 = and i64 %35, 7
  %37 = icmp ne i64 %36, 0
  %38 = select i1 %34, i1 %37, i1 false
  br i1 %38, label %.lr.ph.4, label %._crit_edge

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 3 uses
  %40 = load i8, ptr %30, align 1, !tbaa !12
  %41 = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %32, i8 %40) ; 2 uses
  %42 = add i64 %1, -5                            ; 2 uses
  %43 = icmp ne i64 %42, 0
  %44 = ptrtoint ptr %39 to i64                   ; 2 uses
  %45 = and i64 %44, 7
  %46 = icmp ne i64 %45, 0
  %47 = select i1 %43, i1 %46, i1 false
  br i1 %47, label %.lr.ph.5, label %._crit_edge

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %48 = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %49 = load i8, ptr %39, align 1, !tbaa !12
  %50 = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %41, i8 %49) ; 2 uses
  %51 = add i64 %1, -6                            ; 2 uses
  %52 = icmp ne i64 %51, 0
  %53 = ptrtoint ptr %48 to i64                   ; 2 uses
  %54 = and i64 %53, 7
  %55 = icmp ne i64 %54, 0
  %56 = select i1 %52, i1 %55, i1 false
  br i1 %56, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 3 uses
  %i.g = load i8, ptr %48, align 1, !tbaa !12
  %i.h = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %50, i8 %i.g) ; 2 uses
  %i.i = add i64 %1, -7                           ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.l = and i64 %i.k, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = select i1 %i.j, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph.7, label %._crit_edge

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %57 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %58 = load i8, ptr %i.f, align 1, !tbaa !12
  %59 = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.h, i8 %58)
  %60 = add i64 %1, -8
  %61 = ptrtoint ptr %57 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.a
  %.0242.lcssa = phi ptr [ %0, %bb.a ], [ %3, %.lr.ph ], [ %12, %.lr.ph.1 ], [ %21, %.lr.ph.2 ], [ %30, %.lr.ph.3 ], [ %39, %.lr.ph.4 ], [ %48, %.lr.ph.5 ], [ %i.f, %.lr.ph.6 ], [ %57, %.lr.ph.7 ] ; 3 uses
  %.0236.lcssa = phi i64 [ %1, %bb.a ], [ %6, %.lr.ph ], [ %15, %.lr.ph.1 ], [ %24, %.lr.ph.2 ], [ %33, %.lr.ph.3 ], [ %42, %.lr.ph.4 ], [ %51, %.lr.ph.5 ], [ %i.i, %.lr.ph.6 ], [ %60, %.lr.ph.7 ] ; 3 uses
  %.0235.lcssa = phi i32 [ %2, %bb.a ], [ %5, %.lr.ph ], [ %14, %.lr.ph.1 ], [ %23, %.lr.ph.2 ], [ %32, %.lr.ph.3 ], [ %41, %.lr.ph.4 ], [ %50, %.lr.ph.5 ], [ %i.h, %.lr.ph.6 ], [ %59, %.lr.ph.7 ] ; 2 uses
  %.lcssa301 = phi i64 [ %i.b, %bb.a ], [ %8, %.lr.ph ], [ %17, %.lr.ph.1 ], [ %26, %.lr.ph.2 ], [ %35, %.lr.ph.3 ], [ %44, %.lr.ph.4 ], [ %53, %.lr.ph.5 ], [ %i.k, %.lr.ph.6 ], [ %61, %.lr.ph.7 ]
  %i.o = and i64 %.lcssa301, 8
  %i.p = icmp ne i64 %i.o, 0
  %i.q = icmp ugt i64 %.0236.lcssa, 7
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.r = zext i32 %.0235.lcssa to i64
  %i.s = load i64, ptr %.0242.lcssa, align 8, !tbaa !13
  %i.t = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.r, i64 %i.s)
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.0242.lcssa, i64 8
  %i.w = add i64 %.0236.lcssa, -8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1243 = phi ptr [ %i.v, %bb.b ], [ %.0242.lcssa, %._crit_edge ] ; 4 uses
  %.1237 = phi i64 [ %i.w, %bb.b ], [ %.0236.lcssa, %._crit_edge ] ; 4 uses
  %.1 = phi i32 [ %i.u, %bb.b ], [ %.0235.lcssa, %._crit_edge ] ; 2 uses
  %i.x = icmp ugt i64 %.1237, 223
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = udiv i64 %.1237, 224                     ; 6 uses
  %i.z = shl nuw nsw i64 %i.y, 5                  ; 2 uses
  %i.aa = mul nuw nsw i64 %i.y, 96
  %i.ab = getelementptr inbounds nuw i8, ptr %.1243, i64 %i.aa ; 10 uses
  %i.ac = load <2 x i64>, ptr %i.ab, align 1, !tbaa !12 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ae = load <2 x i64>, ptr %i.ad, align 1, !tbaa !12 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !12 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ai = load <2 x i64>, ptr %i.ah, align 1, !tbaa !12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ak = load <2 x i64>, ptr %i.aj, align 1, !tbaa !12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.am = load <2 x i64>, ptr %i.al, align 1, !tbaa !12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ao = load <2 x i64>, ptr %i.an, align 1, !tbaa !12 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !12 ; 2 uses
  %.2238308 = add i64 %.1237, -224                ; 3 uses
  %.0234309 = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 2 uses
  %i.ar = icmp ugt i64 %.2238308, 223
  %i.as = shl nuw nsw i64 %i.y, 6                 ; 2 uses
  %i.at = zext i32 %.1 to i64                     ; 2 uses
  br i1 %i.ar, label %.lr.ph326, label %._crit_edge327

.lr.ph326:                                        ; preds = %bb.d, %.lr.ph326
  %.0234324 = phi ptr [ %.0234, %.lr.ph326 ], [ %.0234309, %bb.d ] ; 3 uses
  %.2238323 = phi i64 [ %.2238, %.lr.ph326 ], [ %.2238308, %bb.d ]
  %.0322 = phi <2 x i64> [ %i.cg, %.lr.ph326 ], [ %i.aq, %bb.d ] ; 2 uses
  %.0225321 = phi <2 x i64> [ %i.cd, %.lr.ph326 ], [ %i.ao, %bb.d ] ; 2 uses
  %.0226320 = phi <2 x i64> [ %i.ca, %.lr.ph326 ], [ %i.am, %bb.d ] ; 2 uses
  %.0227319 = phi <2 x i64> [ %i.bx, %.lr.ph326 ], [ %i.ak, %bb.d ] ; 2 uses
  %.0228318 = phi <2 x i64> [ %i.bu, %.lr.ph326 ], [ %i.ai, %bb.d ] ; 2 uses
  %.0229317 = phi <2 x i64> [ %i.br, %.lr.ph326 ], [ %i.ag, %bb.d ] ; 2 uses
  %.0230316 = phi <2 x i64> [ %i.bo, %.lr.ph326 ], [ %i.ae, %bb.d ] ; 2 uses
  %.0231315 = phi <2 x i64> [ %i.bl, %.lr.ph326 ], [ %i.ac, %bb.d ] ; 2 uses
  %.0232314 = phi i64 [ %i.dp, %.lr.ph326 ], [ 0, %bb.d ]
  %.0233313 = phi i64 [ %i.dm, %.lr.ph326 ], [ 0, %bb.d ]
  %.pn312 = phi ptr [ %.0234324, %.lr.ph326 ], [ %i.ab, %bb.d ] ; 7 uses
  %.2311 = phi i64 [ %i.dj, %.lr.ph326 ], [ %i.at, %bb.d ]
  %.2244310 = phi ptr [ %i.dq, %.lr.ph326 ], [ %.1243, %bb.d ] ; 7 uses
  %i.au = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0231315, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.av = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0231315, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.aw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0230316, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.ax = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0230316, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.ay = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0229317, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.az = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0229317, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.ba = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0228318, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0228318, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0227319, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0227319, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.be = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0226320, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0226320, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0225321, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0225321, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0322, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0322, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bk = load <2 x i64>, ptr %.0234324, align 1, !tbaa !12
  %i.bl = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.av, <2 x i64> %i.au, <2 x i64> %i.bk, i32 150) ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn312, i64 144
  %i.bn = load <2 x i64>, ptr %i.bm, align 1, !tbaa !12
  %i.bo = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.ax, <2 x i64> %i.aw, <2 x i64> %i.bn, i32 150) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn312, i64 160
  %i.bq = load <2 x i64>, ptr %i.bp, align 1, !tbaa !12
  %i.br = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.az, <2 x i64> %i.ay, <2 x i64> %i.bq, i32 150) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn312, i64 176
  %i.bt = load <2 x i64>, ptr %i.bs, align 1, !tbaa !12
  %i.bu = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.bb, <2 x i64> %i.ba, <2 x i64> %i.bt, i32 150) ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn312, i64 192
  %i.bw = load <2 x i64>, ptr %i.bv, align 1, !tbaa !12
  %i.bx = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.bd, <2 x i64> %i.bc, <2 x i64> %i.bw, i32 150) ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.pn312, i64 208
  %i.bz = load <2 x i64>, ptr %i.by, align 1, !tbaa !12
  %i.ca = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.bf, <2 x i64> %i.be, <2 x i64> %i.bz, i32 150) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.pn312, i64 224
  %i.cc = load <2 x i64>, ptr %i.cb, align 1, !tbaa !12
  %i.cd = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.bh, <2 x i64> %i.bg, <2 x i64> %i.cc, i32 150) ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pn312, i64 240
  %i.cf = load <2 x i64>, ptr %i.ce, align 1, !tbaa !12
  %i.cg = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.bj, <2 x i64> %i.bi, <2 x i64> %i.cf, i32 150) ; 2 uses
  %i.ch = load i64, ptr %.2244310, align 8, !tbaa !13
  %i.ci = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.2311, i64 %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %.2244310, i64 %i.z ; 4 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !13
  %i.cl = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.0233313, i64 %i.ck)
  %i.cm = getelementptr inbounds nuw i8, ptr %.2244310, i64 %i.as ; 4 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !13
  %i.co = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.0232314, i64 %i.cn)
  %i.cp = getelementptr inbounds nuw i8, ptr %.2244310, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !13
  %i.cr = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ci, i64 %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !13
  %i.cu = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.cl, i64 %i.ct)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !13
  %i.cx = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.co, i64 %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %.2244310, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !13
  %i.da = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.cr, i64 %i.cz)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !13
  %i.dd = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.cu, i64 %i.dc)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !13
  %i.dg = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.cx, i64 %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %.2244310, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !13
  %i.dj = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.da, i64 %i.di) ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !13
  %i.dm = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.dd, i64 %i.dl) ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !13
  %i.dp = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.dg, i64 %i.do) ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.2244310, i64 32 ; 2 uses
  %.2238 = add i64 %.2238323, -224                ; 3 uses
  %.0234 = getelementptr inbounds nuw i8, ptr %.0234324, i64 128 ; 2 uses
  %i.dr = icmp ugt i64 %.2238, 223
  br i1 %i.dr, label %.lr.ph326, label %._crit_edge327, !llvm.loop !15

._crit_edge327:                                   ; preds = %.lr.ph326, %bb.d
  %.2244.lcssa = phi ptr [ %.1243, %bb.d ], [ %i.dq, %.lr.ph326 ] ; 6 uses
  %.2.lcssa = phi i64 [ %i.at, %bb.d ], [ %i.dj, %.lr.ph326 ]
  %.0233.lcssa = phi i64 [ 0, %bb.d ], [ %i.dm, %.lr.ph326 ]
  %.0232.lcssa = phi i64 [ 0, %bb.d ], [ %i.dp, %.lr.ph326 ]
  %.0231.lcssa = phi <2 x i64> [ %i.ac, %bb.d ], [ %i.bl, %.lr.ph326 ] ; 2 uses
  %.0230.lcssa = phi <2 x i64> [ %i.ae, %bb.d ], [ %i.bo, %.lr.ph326 ]
  %.0229.lcssa = phi <2 x i64> [ %i.ag, %bb.d ], [ %i.br, %.lr.ph326 ] ; 2 uses
  %.0228.lcssa = phi <2 x i64> [ %i.ai, %bb.d ], [ %i.bu, %.lr.ph326 ]
  %.0227.lcssa = phi <2 x i64> [ %i.ak, %bb.d ], [ %i.bx, %.lr.ph326 ] ; 2 uses
  %.0226.lcssa = phi <2 x i64> [ %i.am, %bb.d ], [ %i.ca, %.lr.ph326 ]
  %.0225.lcssa = phi <2 x i64> [ %i.ao, %bb.d ], [ %i.cd, %.lr.ph326 ] ; 2 uses
  %.0.lcssa = phi <2 x i64> [ %i.aq, %bb.d ], [ %i.cg, %.lr.ph326 ]
  %.2238.lcssa = phi i64 [ %.2238308, %bb.d ], [ %.2238, %.lr.ph326 ]
  %.0234.lcssa = phi ptr [ %.0234309, %bb.d ], [ %.0234, %.lr.ph326 ]
  %i.ds = load i64, ptr %.2244.lcssa, align 8, !tbaa !13
  %i.dt = getelementptr inbounds nuw i8, ptr %.2244.lcssa, i64 %i.z ; 4 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !13
  %i.dv = getelementptr inbounds nuw i8, ptr %.2244.lcssa, i64 %i.as ; 4 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %.2244.lcssa, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !13
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !13
  %i.ed = getelementptr inbounds nuw i8, ptr %.2244.lcssa, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !13
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !13
  %i.ej = getelementptr inbounds nuw i8, ptr %.2244.lcssa, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !13
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.em = load i64, ptr %i.el, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !13
  %i.ep = mul i64 %i.y, 1536
  %i.eq = add i64 %i.ep, -33
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge327, %.lr.ph.i
  %.025.i = phi i64 [ %i.ev, %.lr.ph.i ], [ %i.eq, %._crit_edge327 ] ; 3 uses
  %.01824.i = phi i64 [ %i.et, %.lr.ph.i ], [ -2, %._crit_edge327 ]
  %i.er = shl i64 %.01824.i, 1
  %i.es = and i64 %.025.i, 1
  %i.et = or disjoint i64 %i.er, %i.es            ; 2 uses
  %i.eu = lshr i64 %.025.i, 1
  %i.ev = add nsw i64 %i.eu, -16                  ; 4 uses
  %i.ew = icmp ugt i64 %.025.i, 415
  br i1 %i.ew, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !17

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ex = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0231.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.ey = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0231.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.ez = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0229.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.fa = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0229.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.fb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0227.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.fc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0227.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.fd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0225.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.fe = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0225.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.ff = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.ey, <2 x i64> %i.ex, <2 x i64> %.0230.lcssa, i32 150) ; 2 uses
  %i.fg = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.fa, <2 x i64> %i.ez, <2 x i64> %.0228.lcssa, i32 150)
  %i.fh = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.fc, <2 x i64> %i.fb, <2 x i64> %.0226.lcssa, i32 150) ; 2 uses
  %i.fi = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.fe, <2 x i64> %i.fd, <2 x i64> %.0.lcssa, i32 150)
  %i.fj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ff, <2 x i64> <i64 1034342603, i64 poison>, i8 0)
  %i.fk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ff, <2 x i64> <i64 poison, i64 3125789326>, i8 17)
  %i.fl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fh, <2 x i64> <i64 1034342603, i64 poison>, i8 0)
  %i.fm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fh, <2 x i64> <i64 poison, i64 3125789326>, i8 17)
  %i.fn = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.fk, <2 x i64> %i.fj, <2 x i64> %i.fg, i32 150) ; 2 uses
  %i.fo = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.fm, <2 x i64> %i.fl, <2 x i64> %i.fi, i32 150)
  %i.fp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fn, <2 x i64> <i64 1947135746, i64 poison>, i8 0)
  %i.fq = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.fn, <2 x i64> <i64 poison, i64 2655706616>, i8 17)
  %i.fr = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.fq, <2 x i64> %i.fp, <2 x i64> %i.fo, i32 150) ; 2 uses
  %i.fs = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.2.lcssa, i64 %i.ds)
  %i.ft = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.0233.lcssa, i64 %i.du)
  %i.fu = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.0232.lcssa, i64 %i.dw)
  %i.fv = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fs, i64 %i.dy)
  %i.fw = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ft, i64 %i.ea)
  %i.fx = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fu, i64 %i.ec)
  %i.fy = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fv, i64 %i.ee)
  %i.fz = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fw, i64 %i.eg)
  %i.ga = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fx, i64 %i.ei)
  %i.gb = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fy, i64 %i.ek)
  %i.gc = trunc nuw i64 %i.gb to i32
  %i.gd = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.fz, i64 %i.em)
  %i.ge = trunc nuw i64 %i.gd to i32
  %i.gf = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ga, i64 %i.eo)
  %i.gg = trunc nuw i64 %i.gf to i32
  %i.gh = shl i64 %i.y, 10
  %i.gi = xor i64 %i.et, -1                       ; 2 uses
  %i.gj = trunc nuw nsw i64 %i.ev to i32
  %i.gk = and i32 %i.gj, 31
  %i.gl = lshr exact i32 -2147483648, %i.gk       ; 3 uses
  %i.gm = lshr i64 %i.ev, 5                       ; 4 uses
  %.not27.i = icmp eq i64 %i.gm, 0
  br i1 %.not27.i, label %.preheader.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %._crit_edge.loopexit.i
  %xtraiter = and i64 %i.gm, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph31.i.prol.loopexit, label %.lr.ph31.i.prol

.lr.ph31.i.prol:                                  ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i.prol
  %.129.i.prol = phi i64 [ %i.go, %.lr.ph31.i.prol ], [ %i.gm, %.lr.ph31.i.preheader ]
  %.02028.i.prol = phi i32 [ %i.gn, %.lr.ph31.i.prol ], [ %i.gl, %.lr.ph31.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph31.i.prol ], [ 0, %.lr.ph31.i.preheader ]
  %i.gn = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i.prol, i32 0) ; 3 uses
  %i.go = add nsw i64 %.129.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph31.i.prol.loopexit, label %.lr.ph31.i.prol, !llvm.loop !18

.lr.ph31.i.prol.loopexit:                         ; preds = %.lr.ph31.i.prol, %.lr.ph31.i.preheader
  %.lcssa476.unr = phi i32 [ poison, %.lr.ph31.i.preheader ], [ %i.gn, %.lr.ph31.i.prol ]
  %.129.i.unr = phi i64 [ %i.gm, %.lr.ph31.i.preheader ], [ %i.go, %.lr.ph31.i.prol ]
  %.02028.i.unr = phi i32 [ %i.gl, %.lr.ph31.i.preheader ], [ %i.gn, %.lr.ph31.i.prol ]
  %i.gp = icmp ult i64 %i.ev, 256
  br i1 %i.gp, label %.preheader.i, label %.lr.ph31.i

.preheader.i:                                     ; preds = %.lr.ph31.i.prol.loopexit, %.lr.ph31.i, %._crit_edge.loopexit.i
  %.020.lcssa.i = phi i32 [ %i.gl, %._crit_edge.loopexit.i ], [ %.lcssa476.unr, %.lr.ph31.i.prol.loopexit ], [ %i.gy, %.lr.ph31.i ] ; 2 uses
  %i.gq = lshr i64 %i.gi, 1                       ; 2 uses
  %.not2333.i = icmp eq i64 %i.gq, 0
  br i1 %.not2333.i, label %_ZN5folly6detailL6xnmodpEm.exit, label %.lr.ph36.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.prol.loopexit, %.lr.ph31.i
  %.129.i = phi i64 [ %i.gz, %.lr.ph31.i ], [ %.129.i.unr, %.lr.ph31.i.prol.loopexit ]
  %.02028.i = phi i32 [ %i.gy, %.lr.ph31.i ], [ %.02028.i.unr, %.lr.ph31.i.prol.loopexit ]
  %i.gr = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i, i32 0)
  %i.gs = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.gr, i32 0)
  %i.gt = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.gs, i32 0)
  %i.gu = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.gt, i32 0)
  %i.gv = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.gu, i32 0)
  %i.gw = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.gv, i32 0)
  %i.gx = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.gw, i32 0)
  %i.gy = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.gx, i32 0) ; 2 uses
  %i.gz = add nsw i64 %.129.i, -8                 ; 2 uses
  %.not.i.7 = icmp eq i64 %i.gz, 0
  br i1 %.not.i.7, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !20

.lr.ph36.i:                                       ; preds = %.preheader.i, %.lr.ph36.i
  %i.ha = phi i64 [ %i.hj, %.lr.ph36.i ], [ %i.gq, %.preheader.i ] ; 2 uses
  %.11935.i = phi i64 [ %i.ha, %.lr.ph36.i ], [ %i.gi, %.preheader.i ]
  %.12134.i = phi i32 [ %i.hi, %.lr.ph36.i ], [ %.020.lcssa.i, %.preheader.i ]
  %i.hb = and i64 %.11935.i, 1
  %i.hc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i, i64 0
  %i.hd = bitcast <4 x i32> %i.hc to <2 x i64>    ; 2 uses
  %i.he = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.hd, <2 x i64> %i.hd, i8 0)
  %i.hf = extractelement <2 x i64> %i.he, i64 0
  %i.hg = shl i64 %i.hf, %i.hb
  %i.hh = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.hg)
  %i.hi = trunc nuw i64 %i.hh to i32              ; 2 uses
  %i.hj = lshr i64 %i.ha, 1                       ; 2 uses
  %.not23.i = icmp eq i64 %i.hj, 0
  br i1 %.not23.i, label %_ZN5folly6detailL6xnmodpEm.exit, label %.lr.ph36.i, !llvm.loop !21

_ZN5folly6detailL6xnmodpEm.exit:                  ; preds = %.lr.ph36.i, %.preheader.i
  %.121.lcssa.i = phi i32 [ %.020.lcssa.i, %.preheader.i ], [ %i.hi, %.lr.ph36.i ]
  %i.hk = mul i64 %i.y, 1280
  %i.hl = add i64 %i.hk, -33
  br label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %_ZN5folly6detailL6xnmodpEm.exit, %.lr.ph.i264
  %.025.i265 = phi i64 [ %i.hq, %.lr.ph.i264 ], [ %i.hl, %_ZN5folly6detailL6xnmodpEm.exit ] ; 3 uses
  %.01824.i266 = phi i64 [ %i.ho, %.lr.ph.i264 ], [ -2, %_ZN5folly6detailL6xnmodpEm.exit ]
  %i.hm = shl i64 %.01824.i266, 1
  %i.hn = and i64 %.025.i265, 1
  %i.ho = or disjoint i64 %i.hm, %i.hn            ; 2 uses
  %i.hp = lshr i64 %.025.i265, 1
  %i.hq = add nsw i64 %i.hp, -16                  ; 4 uses
  %i.hr = icmp ugt i64 %.025.i265, 415
  br i1 %i.hr, label %.lr.ph.i264, label %._crit_edge.loopexit.i267, !llvm.loop !17

._crit_edge.loopexit.i267:                        ; preds = %.lr.ph.i264
  %i.hs = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.gc, i64 0
  %i.ht = bitcast <4 x i32> %i.hs to <2 x i64>
  %i.hu = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i, i64 0
  %i.hv = bitcast <4 x i32> %i.hu to <2 x i64>
  %i.hw = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ht, <2 x i64> %i.hv, i8 0)
  %i.hx = xor i64 %i.ho, -1                       ; 2 uses
  %i.hy = trunc nuw nsw i64 %i.hq to i32
  %i.hz = and i32 %i.hy, 31
  %i.ia = lshr exact i32 -2147483648, %i.hz       ; 3 uses
  %i.ib = lshr i64 %i.hq, 5                       ; 4 uses
  %.not27.i251 = icmp eq i64 %i.ib, 0
  br i1 %.not27.i251, label %.preheader.i256, label %.lr.ph31.i252.preheader

.lr.ph31.i252.preheader:                          ; preds = %._crit_edge.loopexit.i267
  %xtraiter497 = and i64 %i.ib, 7                 ; 2 uses
  %lcmp.mod498.not = icmp eq i64 %xtraiter497, 0
  br i1 %lcmp.mod498.not, label %.lr.ph31.i252.prol.loopexit, label %.lr.ph31.i252.prol

.lr.ph31.i252.prol:                               ; preds = %.lr.ph31.i252.preheader, %.lr.ph31.i252.prol
  %.129.i253.prol = phi i64 [ %i.id, %.lr.ph31.i252.prol ], [ %i.ib, %.lr.ph31.i252.preheader ]
  %.02028.i254.prol = phi i32 [ %i.ic, %.lr.ph31.i252.prol ], [ %i.ia, %.lr.ph31.i252.preheader ]
  %prol.iter499 = phi i64 [ %prol.iter499.next, %.lr.ph31.i252.prol ], [ 0, %.lr.ph31.i252.preheader ]
  %i.ic = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i254.prol, i32 0) ; 3 uses
  %i.id = add nsw i64 %.129.i253.prol, -1         ; 2 uses
  %prol.iter499.next = add i64 %prol.iter499, 1   ; 2 uses
  %prol.iter499.cmp.not = icmp eq i64 %prol.iter499.next, %xtraiter497
  br i1 %prol.iter499.cmp.not, label %.lr.ph31.i252.prol.loopexit, label %.lr.ph31.i252.prol, !llvm.loop !22

.lr.ph31.i252.prol.loopexit:                      ; preds = %.lr.ph31.i252.prol, %.lr.ph31.i252.preheader
  %.lcssa472.unr = phi i32 [ poison, %.lr.ph31.i252.preheader ], [ %i.ic, %.lr.ph31.i252.prol ]
  %.129.i253.unr = phi i64 [ %i.ib, %.lr.ph31.i252.preheader ], [ %i.id, %.lr.ph31.i252.prol ]
  %.02028.i254.unr = phi i32 [ %i.ia, %.lr.ph31.i252.preheader ], [ %i.ic, %.lr.ph31.i252.prol ]
  %i.ie = icmp ult i64 %i.hq, 256
  br i1 %i.ie, label %.preheader.i256, label %.lr.ph31.i252

.preheader.i256:                                  ; preds = %.lr.ph31.i252.prol.loopexit, %.lr.ph31.i252, %._crit_edge.loopexit.i267
  %.020.lcssa.i257 = phi i32 [ %i.ia, %._crit_edge.loopexit.i267 ], [ %.lcssa472.unr, %.lr.ph31.i252.prol.loopexit ], [ %i.in, %.lr.ph31.i252 ] ; 2 uses
  %i.if = lshr i64 %i.hx, 1                       ; 2 uses
  %.not2333.i258 = icmp eq i64 %i.if, 0
  br i1 %.not2333.i258, label %_ZN5folly6detailL6xnmodpEm.exit268, label %.lr.ph36.i259

.lr.ph31.i252:                                    ; preds = %.lr.ph31.i252.prol.loopexit, %.lr.ph31.i252
  %.129.i253 = phi i64 [ %i.io, %.lr.ph31.i252 ], [ %.129.i253.unr, %.lr.ph31.i252.prol.loopexit ]
  %.02028.i254 = phi i32 [ %i.in, %.lr.ph31.i252 ], [ %.02028.i254.unr, %.lr.ph31.i252.prol.loopexit ]
  %i.ig = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i254, i32 0)
  %i.ih = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ig, i32 0)
  %i.ii = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ih, i32 0)
  %i.ij = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ii, i32 0)
  %i.ik = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ij, i32 0)
  %i.il = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ik, i32 0)
  %i.im = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.il, i32 0)
  %i.in = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.im, i32 0) ; 2 uses
  %i.io = add nsw i64 %.129.i253, -8              ; 2 uses
  %.not.i255.7 = icmp eq i64 %i.io, 0
  br i1 %.not.i255.7, label %.preheader.i256, label %.lr.ph31.i252, !llvm.loop !20

.lr.ph36.i259:                                    ; preds = %.preheader.i256, %.lr.ph36.i259
  %i.ip = phi i64 [ %i.iy, %.lr.ph36.i259 ], [ %i.if, %.preheader.i256 ] ; 2 uses
  %.11935.i260 = phi i64 [ %i.ip, %.lr.ph36.i259 ], [ %i.hx, %.preheader.i256 ]
  %.12134.i261 = phi i32 [ %i.ix, %.lr.ph36.i259 ], [ %.020.lcssa.i257, %.preheader.i256 ]
  %i.iq = and i64 %.11935.i260, 1
  %i.ir = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i261, i64 0
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>    ; 2 uses
  %i.it = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.is, <2 x i64> %i.is, i8 0)
  %i.iu = extractelement <2 x i64> %i.it, i64 0
  %i.iv = shl i64 %i.iu, %i.iq
  %i.iw = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.iv)
  %i.ix = trunc nuw i64 %i.iw to i32              ; 2 uses
  %i.iy = lshr i64 %i.ip, 1                       ; 2 uses
  %.not23.i262 = icmp eq i64 %i.iy, 0
  br i1 %.not23.i262, label %_ZN5folly6detailL6xnmodpEm.exit268, label %.lr.ph36.i259, !llvm.loop !21

_ZN5folly6detailL6xnmodpEm.exit268:               ; preds = %.lr.ph36.i259, %.preheader.i256
  %.121.lcssa.i263 = phi i32 [ %.020.lcssa.i257, %.preheader.i256 ], [ %i.ix, %.lr.ph36.i259 ]
  %i.iz = add i64 %i.gh, -33
  br label %.lr.ph.i285

.lr.ph.i285:                                      ; preds = %_ZN5folly6detailL6xnmodpEm.exit268, %.lr.ph.i285
  %.025.i286 = phi i64 [ %i.je, %.lr.ph.i285 ], [ %i.iz, %_ZN5folly6detailL6xnmodpEm.exit268 ] ; 3 uses
  %.01824.i287 = phi i64 [ %i.jc, %.lr.ph.i285 ], [ -2, %_ZN5folly6detailL6xnmodpEm.exit268 ]
  %i.ja = shl i64 %.01824.i287, 1
  %i.jb = and i64 %.025.i286, 1
  %i.jc = or disjoint i64 %i.ja, %i.jb            ; 2 uses
  %i.jd = lshr i64 %.025.i286, 1
  %i.je = add nsw i64 %i.jd, -16                  ; 4 uses
  %i.jf = icmp ugt i64 %.025.i286, 415
  br i1 %i.jf, label %.lr.ph.i285, label %._crit_edge.loopexit.i288, !llvm.loop !17

._crit_edge.loopexit.i288:                        ; preds = %.lr.ph.i285
  %i.jg = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.ge, i64 0
  %i.jh = bitcast <4 x i32> %i.jg to <2 x i64>
  %i.ji = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i263, i64 0
  %i.jj = bitcast <4 x i32> %i.ji to <2 x i64>
  %i.jk = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.jh, <2 x i64> %i.jj, i8 0)
  %i.jl = xor i64 %i.jc, -1                       ; 2 uses
  %i.jm = trunc nuw nsw i64 %i.je to i32
  %i.jn = and i32 %i.jm, 31
  %i.jo = lshr exact i32 -2147483648, %i.jn       ; 3 uses
  %i.jp = lshr i64 %i.je, 5                       ; 4 uses
  %.not27.i272 = icmp eq i64 %i.jp, 0
  br i1 %.not27.i272, label %.preheader.i277, label %.lr.ph31.i273.preheader

.lr.ph31.i273.preheader:                          ; preds = %._crit_edge.loopexit.i288
  %xtraiter500 = and i64 %i.jp, 7                 ; 2 uses
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  br i1 %lcmp.mod501.not, label %.lr.ph31.i273.prol.loopexit, label %.lr.ph31.i273.prol

.lr.ph31.i273.prol:                               ; preds = %.lr.ph31.i273.preheader, %.lr.ph31.i273.prol
  %.129.i274.prol = phi i64 [ %i.jr, %.lr.ph31.i273.prol ], [ %i.jp, %.lr.ph31.i273.preheader ]
  %.02028.i275.prol = phi i32 [ %i.jq, %.lr.ph31.i273.prol ], [ %i.jo, %.lr.ph31.i273.preheader ]
  %prol.iter502 = phi i64 [ %prol.iter502.next, %.lr.ph31.i273.prol ], [ 0, %.lr.ph31.i273.preheader ]
  %i.jq = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i275.prol, i32 0) ; 3 uses
  %i.jr = add nsw i64 %.129.i274.prol, -1         ; 2 uses
  %prol.iter502.next = add i64 %prol.iter502, 1   ; 2 uses
  %prol.iter502.cmp.not = icmp eq i64 %prol.iter502.next, %xtraiter500
  br i1 %prol.iter502.cmp.not, label %.lr.ph31.i273.prol.loopexit, label %.lr.ph31.i273.prol, !llvm.loop !23

.lr.ph31.i273.prol.loopexit:                      ; preds = %.lr.ph31.i273.prol, %.lr.ph31.i273.preheader
  %.lcssa468.unr = phi i32 [ poison, %.lr.ph31.i273.preheader ], [ %i.jq, %.lr.ph31.i273.prol ]
  %.129.i274.unr = phi i64 [ %i.jp, %.lr.ph31.i273.preheader ], [ %i.jr, %.lr.ph31.i273.prol ]
  %.02028.i275.unr = phi i32 [ %i.jo, %.lr.ph31.i273.preheader ], [ %i.jq, %.lr.ph31.i273.prol ]
  %i.js = icmp ult i64 %i.je, 256
  br i1 %i.js, label %.preheader.i277, label %.lr.ph31.i273

.preheader.i277:                                  ; preds = %.lr.ph31.i273.prol.loopexit, %.lr.ph31.i273, %._crit_edge.loopexit.i288
  %.020.lcssa.i278 = phi i32 [ %i.jo, %._crit_edge.loopexit.i288 ], [ %.lcssa468.unr, %.lr.ph31.i273.prol.loopexit ], [ %i.kb, %.lr.ph31.i273 ] ; 2 uses
  %i.jt = lshr i64 %i.jl, 1                       ; 2 uses
  %.not2333.i279 = icmp eq i64 %i.jt, 0
  br i1 %.not2333.i279, label %_ZN5folly6detailL6xnmodpEm.exit289, label %.lr.ph36.i280

.lr.ph31.i273:                                    ; preds = %.lr.ph31.i273.prol.loopexit, %.lr.ph31.i273
  %.129.i274 = phi i64 [ %i.kc, %.lr.ph31.i273 ], [ %.129.i274.unr, %.lr.ph31.i273.prol.loopexit ]
  %.02028.i275 = phi i32 [ %i.kb, %.lr.ph31.i273 ], [ %.02028.i275.unr, %.lr.ph31.i273.prol.loopexit ]
  %i.ju = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i275, i32 0)
  %i.jv = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ju, i32 0)
  %i.jw = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.jv, i32 0)
  %i.jx = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.jw, i32 0)
  %i.jy = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.jx, i32 0)
  %i.jz = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.jy, i32 0)
  %i.ka = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.jz, i32 0)
  %i.kb = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ka, i32 0) ; 2 uses
  %i.kc = add nsw i64 %.129.i274, -8              ; 2 uses
  %.not.i276.7 = icmp eq i64 %i.kc, 0
  br i1 %.not.i276.7, label %.preheader.i277, label %.lr.ph31.i273, !llvm.loop !20

.lr.ph36.i280:                                    ; preds = %.preheader.i277, %.lr.ph36.i280
  %i.kd = phi i64 [ %i.km, %.lr.ph36.i280 ], [ %i.jt, %.preheader.i277 ] ; 2 uses
  %.11935.i281 = phi i64 [ %i.kd, %.lr.ph36.i280 ], [ %i.jl, %.preheader.i277 ]
  %.12134.i282 = phi i32 [ %i.kl, %.lr.ph36.i280 ], [ %.020.lcssa.i278, %.preheader.i277 ]
  %i.ke = and i64 %.11935.i281, 1
  %i.kf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i282, i64 0
  %i.kg = bitcast <4 x i32> %i.kf to <2 x i64>    ; 2 uses
  %i.kh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kg, <2 x i64> %i.kg, i8 0)
  %i.ki = extractelement <2 x i64> %i.kh, i64 0
  %i.kj = shl i64 %i.ki, %i.ke
  %i.kk = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.kj)
  %i.kl = trunc nuw i64 %i.kk to i32              ; 2 uses
  %i.km = lshr i64 %i.kd, 1                       ; 2 uses
  %.not23.i283 = icmp eq i64 %i.km, 0
  br i1 %.not23.i283, label %_ZN5folly6detailL6xnmodpEm.exit289, label %.lr.ph36.i280, !llvm.loop !21

_ZN5folly6detailL6xnmodpEm.exit289:               ; preds = %.lr.ph36.i280, %.preheader.i277
  %.121.lcssa.i284 = phi i32 [ %.020.lcssa.i278, %.preheader.i277 ], [ %i.kl, %.lr.ph36.i280 ]
  %i.kn = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.gg, i64 0
  %i.ko = bitcast <4 x i32> %i.kn to <2 x i64>
  %i.kp = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i284, i64 0
  %i.kq = bitcast <4 x i32> %i.kp to <2 x i64>
  %i.kr = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ko, <2 x i64> %i.kq, i8 0)
  %i.ks = tail call <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64> %i.hw, <2 x i64> %i.jk, <2 x i64> %i.kr, i32 150)
  %i.kt = extractelement <2 x i64> %i.fr, i64 0
  %i.ku = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.kt)
  %shift = shufflevector <2 x i64> %i.fr, <2 x i64> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = xor <2 x i64> %i.ks, %shift
  %i.kv = extractelement <2 x i64> %foldExtExtBinop, i64 0
  %i.kw = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ku, i64 %i.kv)
  %i.kx = trunc nuw i64 %i.kw to i32
  br label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detailL6xnmodpEm.exit289, %bb.c
  %.3245 = phi ptr [ %.0234.lcssa, %_ZN5folly6detailL6xnmodpEm.exit289 ], [ %.1243, %bb.c ] ; 3 uses
  %.3239 = phi i64 [ %.2238.lcssa, %_ZN5folly6detailL6xnmodpEm.exit289 ], [ %.1237, %bb.c ] ; 5 uses
  %.3 = phi i32 [ %i.kx, %_ZN5folly6detailL6xnmodpEm.exit289 ], [ %.1, %bb.c ] ; 2 uses
  %i.ky = icmp samesign ugt i64 %.3239, 7
  br i1 %i.ky, label %.lr.ph346.preheader, label %.preheader

.lr.ph346.preheader:                              ; preds = %bb.e
  %i.kz = zext i32 %.3 to i64                     ; 2 uses
  %i.la = add i64 %.3239, -8                      ; 2 uses
  %i.lb = lshr i64 %i.la, 3
  %i.lc = add nuw nsw i64 %i.lb, 1
  %xtraiter503 = and i64 %i.lc, 7                 ; 2 uses
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph346.prol.loopexit, label %.lr.ph346.prol

.lr.ph346.prol:                                   ; preds = %.lr.ph346.preheader, %.lr.ph346.prol
  %.4344.prol = phi i64 [ %i.le, %.lr.ph346.prol ], [ %i.kz, %.lr.ph346.preheader ]
  %.4240343.prol = phi i64 [ %i.lg, %.lr.ph346.prol ], [ %.3239, %.lr.ph346.preheader ]
  %.4246342.prol = phi ptr [ %i.lf, %.lr.ph346.prol ], [ %.3245, %.lr.ph346.preheader ] ; 2 uses
  %prol.iter505 = phi i64 [ %prol.iter505.next, %.lr.ph346.prol ], [ 0, %.lr.ph346.preheader ]
  %i.ld = load i64, ptr %.4246342.prol, align 8, !tbaa !13
  %i.le = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.4344.prol, i64 %i.ld) ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.4246342.prol, i64 8 ; 3 uses
  %i.lg = add nsw i64 %.4240343.prol, -8          ; 3 uses
  %prol.iter505.next = add i64 %prol.iter505, 1   ; 2 uses
  %prol.iter505.cmp.not = icmp eq i64 %prol.iter505.next, %xtraiter503
  br i1 %prol.iter505.cmp.not, label %.lr.ph346.prol.loopexit, label %.lr.ph346.prol, !llvm.loop !24

.lr.ph346.prol.loopexit:                          ; preds = %.lr.ph346.prol, %.lr.ph346.preheader
  %.4344.unr = phi i64 [ %i.kz, %.lr.ph346.preheader ], [ %i.le, %.lr.ph346.prol ]
  %.4240343.unr = phi i64 [ %.3239, %.lr.ph346.preheader ], [ %i.lg, %.lr.ph346.prol ]
  %.4246342.unr = phi ptr [ %.3245, %.lr.ph346.preheader ], [ %i.lf, %.lr.ph346.prol ]
  %.lcssa466.unr = phi i64 [ poison, %.lr.ph346.preheader ], [ %i.le, %.lr.ph346.prol ]
  %.lcssa465.unr = phi ptr [ poison, %.lr.ph346.preheader ], [ %i.lf, %.lr.ph346.prol ]
  %.lcssa464.unr = phi i64 [ poison, %.lr.ph346.preheader ], [ %i.lg, %.lr.ph346.prol ]
  %i.lh = icmp ult i64 %i.la, 56
  br i1 %i.lh, label %.preheader.loopexit, label %.lr.ph346

.preheader.loopexit:                              ; preds = %.lr.ph346, %.lr.ph346.prol.loopexit
  %.lcssa466 = phi i64 [ %.lcssa466.unr, %.lr.ph346.prol.loopexit ], [ %i.mk, %.lr.ph346 ]
  %.lcssa465 = phi ptr [ %.lcssa465.unr, %.lr.ph346.prol.loopexit ], [ %i.ml, %.lr.ph346 ]
  %.lcssa464 = phi i64 [ %.lcssa464.unr, %.lr.ph346.prol.loopexit ], [ %i.mm, %.lr.ph346 ]
  %i.li = trunc nuw i64 %.lcssa466 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.4246.lcssa = phi ptr [ %.3245, %bb.e ], [ %.lcssa465, %.preheader.loopexit ] ; 2 uses
  %.4240.lcssa = phi i64 [ %.3239, %bb.e ], [ %.lcssa464, %.preheader.loopexit ] ; 5 uses
  %.4.lcssa = phi i32 [ %.3, %bb.e ], [ %i.li, %.preheader.loopexit ] ; 3 uses
  %.not350 = icmp eq i64 %.4240.lcssa, 0
  br i1 %.not350, label %._crit_edge355, label %.lr.ph354.preheader

.lr.ph354.preheader:                              ; preds = %.preheader
  %xtraiter506 = and i64 %.4240.lcssa, 7          ; 2 uses
  %lcmp.mod507.not = icmp eq i64 %xtraiter506, 0
  br i1 %lcmp.mod507.not, label %.lr.ph354.prol.loopexit, label %.lr.ph354.prol

.lr.ph354.prol:                                   ; preds = %.lr.ph354.preheader, %.lr.ph354.prol
  %.5353.prol = phi i32 [ %i.ll, %.lr.ph354.prol ], [ %.4.lcssa, %.lr.ph354.preheader ]
  %.5241352.prol = phi i64 [ %i.lm, %.lr.ph354.prol ], [ %.4240.lcssa, %.lr.ph354.preheader ]
  %.5247351.prol = phi ptr [ %i.lj, %.lr.ph354.prol ], [ %.4246.lcssa, %.lr.ph354.preheader ] ; 2 uses
  %prol.iter508 = phi i64 [ %prol.iter508.next, %.lr.ph354.prol ], [ 0, %.lr.ph354.preheader ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.5247351.prol, i64 1 ; 2 uses
  %i.lk = load i8, ptr %.5247351.prol, align 1, !tbaa !12
  %i.ll = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %.5353.prol, i8 %i.lk) ; 3 uses
  %i.lm = add nsw i64 %.5241352.prol, -1          ; 2 uses
  %prol.iter508.next = add i64 %prol.iter508, 1   ; 2 uses
  %prol.iter508.cmp.not = icmp eq i64 %prol.iter508.next, %xtraiter506
  br i1 %prol.iter508.cmp.not, label %.lr.ph354.prol.loopexit, label %.lr.ph354.prol, !llvm.loop !25

.lr.ph354.prol.loopexit:                          ; preds = %.lr.ph354.prol, %.lr.ph354.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph354.preheader ], [ %i.ll, %.lr.ph354.prol ]
  %.5353.unr = phi i32 [ %.4.lcssa, %.lr.ph354.preheader ], [ %i.ll, %.lr.ph354.prol ]
  %.5241352.unr = phi i64 [ %.4240.lcssa, %.lr.ph354.preheader ], [ %i.lm, %.lr.ph354.prol ]
  %.5247351.unr = phi ptr [ %.4246.lcssa, %.lr.ph354.preheader ], [ %i.lj, %.lr.ph354.prol ]
  %i.ln = icmp ult i64 %.4240.lcssa, 8
  br i1 %i.ln, label %._crit_edge355, label %.lr.ph354

.lr.ph346:                                        ; preds = %.lr.ph346.prol.loopexit, %.lr.ph346
  %.4344 = phi i64 [ %i.mk, %.lr.ph346 ], [ %.4344.unr, %.lr.ph346.prol.loopexit ]
  %.4240343 = phi i64 [ %i.mm, %.lr.ph346 ], [ %.4240343.unr, %.lr.ph346.prol.loopexit ]
  %.4246342 = phi ptr [ %i.ml, %.lr.ph346 ], [ %.4246342.unr, %.lr.ph346.prol.loopexit ] ; 9 uses
  %i.lo = load i64, ptr %.4246342, align 8, !tbaa !13
  %i.lp = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %.4344, i64 %i.lo)
  %i.lq = getelementptr inbounds nuw i8, ptr %.4246342, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !13
  %i.ls = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.lp, i64 %i.lr)
  %i.lt = getelementptr inbounds nuw i8, ptr %.4246342, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !13
  %i.lv = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ls, i64 %i.lu)
  %i.lw = getelementptr inbounds nuw i8, ptr %.4246342, i64 24
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !13
  %i.ly = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.lv, i64 %i.lx)
  %i.lz = getelementptr inbounds nuw i8, ptr %.4246342, i64 32
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !13
  %i.mb = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.ly, i64 %i.ma)
  %i.mc = getelementptr inbounds nuw i8, ptr %.4246342, i64 40
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !13
  %i.me = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.mb, i64 %i.md)
  %i.mf = getelementptr inbounds nuw i8, ptr %.4246342, i64 48
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !13
  %i.mh = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.me, i64 %i.mg)
  %i.mi = getelementptr inbounds nuw i8, ptr %.4246342, i64 56
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !13
  %i.mk = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 range(i64 0, 4294967296) %i.mh, i64 %i.mj) ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.4246342, i64 64 ; 2 uses
  %i.mm = add nsw i64 %.4240343, -64              ; 3 uses
  %i.mn = icmp ugt i64 %i.mm, 7
  br i1 %i.mn, label %.lr.ph346, label %.preheader.loopexit, !llvm.loop !26

.lr.ph354:                                        ; preds = %.lr.ph354.prol.loopexit, %.lr.ph354
  %.5353 = phi i32 [ %i.nl, %.lr.ph354 ], [ %.5353.unr, %.lr.ph354.prol.loopexit ]
  %.5241352 = phi i64 [ %i.nm, %.lr.ph354 ], [ %.5241352.unr, %.lr.ph354.prol.loopexit ]
  %.5247351 = phi ptr [ %i.nj, %.lr.ph354 ], [ %.5247351.unr, %.lr.ph354.prol.loopexit ] ; 9 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.5247351, i64 1
  %i.mp = load i8, ptr %.5247351, align 1, !tbaa !12
  %i.mq = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %.5353, i8 %i.mp)
  %i.mr = getelementptr inbounds nuw i8, ptr %.5247351, i64 2
  %i.ms = load i8, ptr %i.mo, align 1, !tbaa !12
  %i.mt = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.mq, i8 %i.ms)
  %i.mu = getelementptr inbounds nuw i8, ptr %.5247351, i64 3
  %i.mv = load i8, ptr %i.mr, align 1, !tbaa !12
  %i.mw = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.mt, i8 %i.mv)
  %i.mx = getelementptr inbounds nuw i8, ptr %.5247351, i64 4
  %i.my = load i8, ptr %i.mu, align 1, !tbaa !12
  %i.mz = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.mw, i8 %i.my)
  %i.na = getelementptr inbounds nuw i8, ptr %.5247351, i64 5
  %i.nb = load i8, ptr %i.mx, align 1, !tbaa !12
  %i.nc = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.mz, i8 %i.nb)
  %i.nd = getelementptr inbounds nuw i8, ptr %.5247351, i64 6
  %i.ne = load i8, ptr %i.na, align 1, !tbaa !12
  %i.nf = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.nc, i8 %i.ne)
  %i.ng = getelementptr inbounds nuw i8, ptr %.5247351, i64 7
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !12
  %i.ni = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.nf, i8 %i.nh)
  %i.nj = getelementptr inbounds nuw i8, ptr %.5247351, i64 8
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !12
  %i.nl = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ni, i8 %i.nk) ; 2 uses
  %i.nm = add nsw i64 %.5241352, -8               ; 2 uses
  %.not.7 = icmp eq i64 %i.nm, 0
  br i1 %.not.7, label %._crit_edge355, label %.lr.ph354, !llvm.loop !27

._crit_edge355:                                   ; preds = %.lr.ph354.prol.loopexit, %.lr.ph354, %.preheader
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph354.prol.loopexit ], [ %i.nl, %.lr.ph354 ]
  ret i32 %.5.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.avx512.pternlog.q.128(<2 x i64>, <2 x i64>, <2 x i64>, i32 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.8(i32, i8) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.32(i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !10, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
end_hunk_0
