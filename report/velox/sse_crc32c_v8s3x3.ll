Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/sse_crc32c_v8s3x3?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5folly6detail17sse_crc32c_v8s3x3EPKhmj(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
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
  %.0247.lcssa = phi ptr [ %0, %bb.a ], [ %3, %.lr.ph ], [ %12, %.lr.ph.1 ], [ %21, %.lr.ph.2 ], [ %30, %.lr.ph.3 ], [ %39, %.lr.ph.4 ], [ %48, %.lr.ph.5 ], [ %i.f, %.lr.ph.6 ], [ %57, %.lr.ph.7 ] ; 3 uses
  %.0241.lcssa = phi i64 [ %1, %bb.a ], [ %6, %.lr.ph ], [ %15, %.lr.ph.1 ], [ %24, %.lr.ph.2 ], [ %33, %.lr.ph.3 ], [ %42, %.lr.ph.4 ], [ %51, %.lr.ph.5 ], [ %i.i, %.lr.ph.6 ], [ %60, %.lr.ph.7 ] ; 3 uses
  %.0240.lcssa = phi i32 [ %2, %bb.a ], [ %5, %.lr.ph ], [ %14, %.lr.ph.1 ], [ %23, %.lr.ph.2 ], [ %32, %.lr.ph.3 ], [ %41, %.lr.ph.4 ], [ %50, %.lr.ph.5 ], [ %i.h, %.lr.ph.6 ], [ %59, %.lr.ph.7 ] ; 2 uses
  %.lcssa307 = phi i64 [ %i.b, %bb.a ], [ %8, %.lr.ph ], [ %17, %.lr.ph.1 ], [ %26, %.lr.ph.2 ], [ %35, %.lr.ph.3 ], [ %44, %.lr.ph.4 ], [ %53, %.lr.ph.5 ], [ %i.k, %.lr.ph.6 ], [ %61, %.lr.ph.7 ]
  %i.o = and i64 %.lcssa307, 8
  %i.p = icmp ne i64 %i.o, 0
  %i.q = icmp ugt i64 %.0241.lcssa, 7
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.r = zext i32 %.0240.lcssa to i64
  %i.s = load i64, ptr %.0247.lcssa, align 8, !tbaa !13
  %i.t = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.r, i64 %i.s)
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %.0247.lcssa, i64 8
  %i.w = add i64 %.0241.lcssa, -8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1248 = phi ptr [ %i.v, %bb.b ], [ %.0247.lcssa, %._crit_edge ] ; 11 uses
  %.1242 = phi i64 [ %i.w, %bb.b ], [ %.0241.lcssa, %._crit_edge ] ; 5 uses
  %.1 = phi i32 [ %i.u, %bb.b ], [ %.0240.lcssa, %._crit_edge ] ; 2 uses
  %i.x = icmp ugt i64 %.1242, 207
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = add i64 %.1242, -8
  %i.z = udiv i64 %i.y, 200                       ; 6 uses
  %i.aa = mul nuw nsw i64 %i.z, 24                ; 2 uses
  %i.ab = load <2 x i64>, ptr %.1248, align 1, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %.1248, i64 16
  %i.ad = load <2 x i64>, ptr %i.ac, align 1, !tbaa !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1248, i64 32
  %i.af = load <2 x i64>, ptr %i.ae, align 1, !tbaa !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.1248, i64 48
  %i.ah = load <2 x i64>, ptr %i.ag, align 1, !tbaa !12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.1248, i64 64
  %i.aj = load <2 x i64>, ptr %i.ai, align 1, !tbaa !12 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.1248, i64 80
  %i.al = load <2 x i64>, ptr %i.ak, align 1, !tbaa !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1248, i64 96
  %i.an = load <2 x i64>, ptr %i.am, align 1, !tbaa !12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.1248, i64 112
  %i.ap = load <2 x i64>, ptr %i.ao, align 1, !tbaa !12 ; 2 uses
  %i.aq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1, i64 0
  %i.ar = bitcast <4 x i32> %i.aq to <2 x i64>
  %i.as = xor <2 x i64> %i.ab, %i.ar              ; 2 uses
  %i.at = shl nuw i64 %i.z, 7
  %i.au = getelementptr inbounds nuw i8, ptr %.1248, i64 %i.at ; 2 uses
  %.2243314 = add i64 %.1242, -200                ; 2 uses
  %i.av = icmp ugt i64 %.2243314, 207
  %i.aw = mul nuw nsw i64 %i.z, 48                ; 3 uses
  br i1 %i.av, label %.lr.ph330, label %._crit_edge331

.lr.ph330:                                        ; preds = %bb.d, %.lr.ph330
  %.2243328 = phi i64 [ %.2243, %.lr.ph330 ], [ %.2243314, %bb.d ] ; 2 uses
  %.0327 = phi <2 x i64> [ %i.cr, %.lr.ph330 ], [ %i.ap, %bb.d ] ; 2 uses
  %.0230326 = phi <2 x i64> [ %i.cn, %.lr.ph330 ], [ %i.an, %bb.d ] ; 2 uses
  %.0231325 = phi <2 x i64> [ %i.cj, %.lr.ph330 ], [ %i.al, %bb.d ] ; 2 uses
  %.0232324 = phi <2 x i64> [ %i.cf, %.lr.ph330 ], [ %i.aj, %bb.d ] ; 2 uses
  %.0233323 = phi <2 x i64> [ %i.cb, %.lr.ph330 ], [ %i.ah, %bb.d ] ; 2 uses
  %.0234322 = phi <2 x i64> [ %i.bx, %.lr.ph330 ], [ %i.af, %bb.d ] ; 2 uses
  %.0235321 = phi <2 x i64> [ %i.bt, %.lr.ph330 ], [ %i.ad, %bb.d ] ; 2 uses
  %.0236320 = phi <2 x i64> [ %i.bp, %.lr.ph330 ], [ %i.as, %bb.d ] ; 2 uses
  %.0237319 = phi i64 [ %i.dr, %.lr.ph330 ], [ 0, %bb.d ]
  %.0238318 = phi i64 [ %i.do, %.lr.ph330 ], [ 0, %bb.d ]
  %.1248.pn317 = phi ptr [ %.0239, %.lr.ph330 ], [ %.1248, %bb.d ] ; 8 uses
  %.2316 = phi i64 [ %i.dl, %.lr.ph330 ], [ 0, %bb.d ]
  %.2249315 = phi ptr [ %i.ds, %.lr.ph330 ], [ %i.au, %bb.d ] ; 6 uses
  %.0239 = getelementptr inbounds nuw i8, ptr %.1248.pn317, i64 128 ; 2 uses
  %i.ax = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0236320, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.ay = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0236320, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.az = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0235321, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.ba = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0235321, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0234322, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bc = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0234322, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bd = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0233323, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.be = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0233323, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bf = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0232324, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0232324, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0231325, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bi = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0231325, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bj = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0230326, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bk = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0230326, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bl = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0327, <2 x i64> <i64 1771228834, i64 poison>, i8 0)
  %i.bm = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0327, <2 x i64> <i64 poison, i64 221995154>, i8 17)
  %i.bn = load <2 x i64>, ptr %.0239, align 1, !tbaa !12
  %i.bo = xor <2 x i64> %i.ay, %i.ax
  %i.bp = xor <2 x i64> %i.bo, %i.bn              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.1248.pn317, i64 144
  %i.br = load <2 x i64>, ptr %i.bq, align 1, !tbaa !12
  %i.bs = xor <2 x i64> %i.ba, %i.az
  %i.bt = xor <2 x i64> %i.bs, %i.br              ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.1248.pn317, i64 160
  %i.bv = load <2 x i64>, ptr %i.bu, align 1, !tbaa !12
  %i.bw = xor <2 x i64> %i.bc, %i.bb
  %i.bx = xor <2 x i64> %i.bw, %i.bv              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.1248.pn317, i64 176
  %i.bz = load <2 x i64>, ptr %i.by, align 1, !tbaa !12
  %i.ca = xor <2 x i64> %i.be, %i.bd
  %i.cb = xor <2 x i64> %i.ca, %i.bz              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1248.pn317, i64 192
  %i.cd = load <2 x i64>, ptr %i.cc, align 1, !tbaa !12
  %i.ce = xor <2 x i64> %i.bg, %i.bf
  %i.cf = xor <2 x i64> %i.ce, %i.cd              ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.1248.pn317, i64 208
  %i.ch = load <2 x i64>, ptr %i.cg, align 1, !tbaa !12
  %i.ci = xor <2 x i64> %i.bi, %i.bh
  %i.cj = xor <2 x i64> %i.ci, %i.ch              ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.1248.pn317, i64 224
  %i.cl = load <2 x i64>, ptr %i.ck, align 1, !tbaa !12
  %i.cm = xor <2 x i64> %i.bk, %i.bj
  %i.cn = xor <2 x i64> %i.cm, %i.cl              ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1248.pn317, i64 240
  %i.cp = load <2 x i64>, ptr %i.co, align 1, !tbaa !12
  %i.cq = xor <2 x i64> %i.bm, %i.bl
  %i.cr = xor <2 x i64> %i.cq, %i.cp              ; 2 uses
  %i.cs = load i64, ptr %.2249315, align 8, !tbaa !13
  %i.ct = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.2316, i64 %i.cs)
  %i.cu = getelementptr inbounds nuw i8, ptr %.2249315, i64 %i.aa ; 3 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !13
  %i.cw = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.0238318, i64 %i.cv)
  %i.cx = getelementptr inbounds nuw i8, ptr %.2249315, i64 %i.aw ; 3 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !13
  %i.cz = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.0237319, i64 %i.cy)
  %i.da = getelementptr inbounds nuw i8, ptr %.2249315, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !13
  %i.dc = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.ct, i64 %i.db)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !13
  %i.df = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.cw, i64 %i.de)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !13
  %i.di = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.cz, i64 %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %.2249315, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !13
  %i.dl = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.dc, i64 %i.dk) ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !13
  %i.do = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.df, i64 %i.dn) ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !13
  %i.dr = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.di, i64 %i.dq) ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.2249315, i64 24 ; 2 uses
  %.2243 = add i64 %.2243328, -200                ; 2 uses
  %i.dt = icmp ugt i64 %.2243, 207
  br i1 %i.dt, label %.lr.ph330, label %._crit_edge331, !llvm.loop !15

._crit_edge331:                                   ; preds = %.lr.ph330, %bb.d
  %.2249.lcssa = phi ptr [ %i.au, %bb.d ], [ %i.ds, %.lr.ph330 ] ; 6 uses
  %.2243.in.lcssa = phi i64 [ %.1242, %bb.d ], [ %.2243328, %.lr.ph330 ]
  %.2.lcssa = phi i64 [ 0, %bb.d ], [ %i.dl, %.lr.ph330 ]
  %.0238.lcssa = phi i64 [ 0, %bb.d ], [ %i.do, %.lr.ph330 ]
  %.0237.lcssa = phi i64 [ 0, %bb.d ], [ %i.dr, %.lr.ph330 ]
  %.0236.lcssa = phi <2 x i64> [ %i.as, %bb.d ], [ %i.bp, %.lr.ph330 ] ; 2 uses
  %.0235.lcssa = phi <2 x i64> [ %i.ad, %bb.d ], [ %i.bt, %.lr.ph330 ]
  %.0234.lcssa = phi <2 x i64> [ %i.af, %bb.d ], [ %i.bx, %.lr.ph330 ] ; 2 uses
  %.0233.lcssa = phi <2 x i64> [ %i.ah, %bb.d ], [ %i.cb, %.lr.ph330 ]
  %.0232.lcssa = phi <2 x i64> [ %i.aj, %bb.d ], [ %i.cf, %.lr.ph330 ] ; 2 uses
  %.0231.lcssa = phi <2 x i64> [ %i.al, %bb.d ], [ %i.cj, %.lr.ph330 ]
  %.0230.lcssa = phi <2 x i64> [ %i.an, %bb.d ], [ %i.cn, %.lr.ph330 ] ; 2 uses
  %.0.lcssa = phi <2 x i64> [ %i.ap, %bb.d ], [ %i.cr, %.lr.ph330 ]
  %i.du = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0236.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.dv = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0236.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.dw = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0234.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.dx = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0234.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.dy = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0232.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.dz = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0232.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.ea = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0230.lcssa, <2 x i64> <i64 4060876286, i64 poison>, i8 0)
  %i.eb = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %.0230.lcssa, <2 x i64> <i64 poison, i64 1228700967>, i8 17)
  %i.ec = xor <2 x i64> %i.du, %.0235.lcssa
  %i.ed = xor <2 x i64> %i.ec, %i.dv              ; 2 uses
  %i.ee = xor <2 x i64> %i.dy, %.0231.lcssa
  %i.ef = xor <2 x i64> %i.ee, %i.dz              ; 2 uses
  %i.eg = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ed, <2 x i64> <i64 1034342603, i64 poison>, i8 0)
  %i.eh = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ed, <2 x i64> <i64 poison, i64 3125789326>, i8 17)
  %i.ei = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ef, <2 x i64> <i64 1034342603, i64 poison>, i8 0)
  %i.ej = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ef, <2 x i64> <i64 poison, i64 3125789326>, i8 17)
  %i.ek = xor <2 x i64> %i.dw, %.0233.lcssa
  %i.el = xor <2 x i64> %i.ek, %i.dx
  %i.em = xor <2 x i64> %i.el, %i.eg
  %i.en = xor <2 x i64> %i.em, %i.eh              ; 2 uses
  %i.eo = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.en, <2 x i64> <i64 1947135746, i64 poison>, i8 0)
  %i.ep = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.en, <2 x i64> <i64 poison, i64 2655706616>, i8 17)
  %i.eq = xor <2 x i64> %i.ea, %.0.lcssa
  %i.er = xor <2 x i64> %i.eq, %i.eb
  %i.es = xor <2 x i64> %i.er, %i.ei
  %i.et = xor <2 x i64> %i.es, %i.ej
  %i.eu = xor <2 x i64> %i.et, %i.eo
  %i.ev = xor <2 x i64> %i.eu, %i.ep              ; 2 uses
  %i.ew = load i64, ptr %.2249.lcssa, align 8, !tbaa !13
  %i.ex = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.2.lcssa, i64 %i.ew)
  %i.ey = getelementptr inbounds nuw i8, ptr %.2249.lcssa, i64 %i.aa ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !13
  %i.fa = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.0238.lcssa, i64 %i.ez)
  %i.fb = getelementptr inbounds nuw i8, ptr %.2249.lcssa, i64 %i.aw ; 3 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !13
  %i.fd = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.0237.lcssa, i64 %i.fc)
  %i.fe = getelementptr inbounds nuw i8, ptr %.2249.lcssa, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !13
  %i.fg = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.ex, i64 %i.ff)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !13
  %i.fj = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.fa, i64 %i.fi)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !13
  %i.fm = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.fd, i64 %i.fl)
  %i.fn = getelementptr inbounds nuw i8, ptr %.2249.lcssa, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !13
  %i.fp = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.fg, i64 %i.fo)
  %i.fq = trunc nuw i64 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !13
  %i.ft = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.fj, i64 %i.fs)
  %i.fu = trunc nuw i64 %i.ft to i32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !13
  %i.fx = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.fm, i64 %i.fw)
  %i.fy = getelementptr inbounds nuw i8, ptr %.2249.lcssa, i64 24
  %i.fz = mul i64 %i.z, 384                       ; 2 uses
  %i.ga = or disjoint i64 %i.fz, 31               ; 2 uses
  %i.gb = icmp ugt i64 %i.fz, 191
  br i1 %i.gb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge331, %.lr.ph.i
  %.025.i = phi i64 [ %i.gg, %.lr.ph.i ], [ %i.ga, %._crit_edge331 ] ; 3 uses
  %.01824.i = phi i64 [ %i.ge, %.lr.ph.i ], [ -2, %._crit_edge331 ]
  %i.gc = shl i64 %.01824.i, 1
  %i.gd = and i64 %.025.i, 1
  %i.ge = or disjoint i64 %i.gc, %i.gd            ; 2 uses
  %i.gf = lshr i64 %.025.i, 1
  %i.gg = add nsw i64 %i.gf, -16                  ; 2 uses
  %i.gh = icmp ugt i64 %.025.i, 415
  br i1 %i.gh, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !17

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.gi = xor i64 %i.ge, -1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %._crit_edge331
  %.018.lcssa.i = phi i64 [ 1, %._crit_edge331 ], [ %i.gi, %._crit_edge.loopexit.i ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.ga, %._crit_edge331 ], [ %i.gg, %._crit_edge.loopexit.i ] ; 3 uses
  %i.gj = trunc nuw nsw i64 %.0.lcssa.i to i32
  %i.gk = and i32 %i.gj, 31
  %i.gl = lshr exact i32 -2147483648, %i.gk       ; 3 uses
  %i.gm = lshr i64 %.0.lcssa.i, 5                 ; 4 uses
  %.not27.i = icmp eq i64 %i.gm, 0
  br i1 %.not27.i, label %.preheader.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %._crit_edge.i
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
  %.lcssa473.unr = phi i32 [ poison, %.lr.ph31.i.preheader ], [ %i.gn, %.lr.ph31.i.prol ]
  %.129.i.unr = phi i64 [ %i.gm, %.lr.ph31.i.preheader ], [ %i.go, %.lr.ph31.i.prol ]
  %.02028.i.unr = phi i32 [ %i.gl, %.lr.ph31.i.preheader ], [ %i.gn, %.lr.ph31.i.prol ]
  %i.gp = icmp ult i64 %.0.lcssa.i, 256
  br i1 %i.gp, label %.preheader.i, label %.lr.ph31.i

.preheader.i:                                     ; preds = %.lr.ph31.i.prol.loopexit, %.lr.ph31.i, %._crit_edge.i
  %.020.lcssa.i = phi i32 [ %i.gl, %._crit_edge.i ], [ %.lcssa473.unr, %.lr.ph31.i.prol.loopexit ], [ %i.gy, %.lr.ph31.i ] ; 2 uses
  %i.gq = lshr i64 %.018.lcssa.i, 1               ; 2 uses
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
  %.11935.i = phi i64 [ %i.ha, %.lr.ph36.i ], [ %.018.lcssa.i, %.preheader.i ]
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
  %i.hk = mul nuw i64 %i.z, 192
  %i.hl = or disjoint i64 %i.hk, 31
  br label %.lr.ph.i269

.lr.ph.i269:                                      ; preds = %_ZN5folly6detailL6xnmodpEm.exit, %.lr.ph.i269
  %.025.i270 = phi i64 [ %i.hq, %.lr.ph.i269 ], [ %i.hl, %_ZN5folly6detailL6xnmodpEm.exit ] ; 3 uses
  %.01824.i271 = phi i64 [ %i.ho, %.lr.ph.i269 ], [ -2, %_ZN5folly6detailL6xnmodpEm.exit ]
  %i.hm = shl i64 %.01824.i271, 1
  %i.hn = and i64 %.025.i270, 1
  %i.ho = or disjoint i64 %i.hm, %i.hn            ; 2 uses
  %i.hp = lshr i64 %.025.i270, 1
  %i.hq = add nsw i64 %i.hp, -16                  ; 4 uses
  %i.hr = icmp ugt i64 %.025.i270, 415
  br i1 %i.hr, label %.lr.ph.i269, label %._crit_edge.loopexit.i272, !llvm.loop !17

._crit_edge.loopexit.i272:                        ; preds = %.lr.ph.i269
  %i.hs = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.fq, i64 0
  %i.ht = bitcast <4 x i32> %i.hs to <2 x i64>
  %i.hu = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i, i64 0
  %i.hv = bitcast <4 x i32> %i.hu to <2 x i64>
  %i.hw = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ht, <2 x i64> %i.hv, i8 0)
  %i.hx = xor i64 %i.ho, -1                       ; 2 uses
  %i.hy = trunc nuw nsw i64 %i.hq to i32
  %i.hz = and i32 %i.hy, 31
  %i.ia = lshr exact i32 -2147483648, %i.hz       ; 3 uses
  %i.ib = lshr i64 %i.hq, 5                       ; 4 uses
  %.not27.i256 = icmp eq i64 %i.ib, 0
  br i1 %.not27.i256, label %.preheader.i261, label %.lr.ph31.i257.preheader

.lr.ph31.i257.preheader:                          ; preds = %._crit_edge.loopexit.i272
  %xtraiter492 = and i64 %i.ib, 7                 ; 2 uses
  %lcmp.mod493.not = icmp eq i64 %xtraiter492, 0
  br i1 %lcmp.mod493.not, label %.lr.ph31.i257.prol.loopexit, label %.lr.ph31.i257.prol

.lr.ph31.i257.prol:                               ; preds = %.lr.ph31.i257.preheader, %.lr.ph31.i257.prol
  %.129.i258.prol = phi i64 [ %i.id, %.lr.ph31.i257.prol ], [ %i.ib, %.lr.ph31.i257.preheader ]
  %.02028.i259.prol = phi i32 [ %i.ic, %.lr.ph31.i257.prol ], [ %i.ia, %.lr.ph31.i257.preheader ]
  %prol.iter494 = phi i64 [ %prol.iter494.next, %.lr.ph31.i257.prol ], [ 0, %.lr.ph31.i257.preheader ]
  %i.ic = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i259.prol, i32 0) ; 3 uses
  %i.id = add nsw i64 %.129.i258.prol, -1         ; 2 uses
  %prol.iter494.next = add i64 %prol.iter494, 1   ; 2 uses
  %prol.iter494.cmp.not = icmp eq i64 %prol.iter494.next, %xtraiter492
  br i1 %prol.iter494.cmp.not, label %.lr.ph31.i257.prol.loopexit, label %.lr.ph31.i257.prol, !llvm.loop !22

.lr.ph31.i257.prol.loopexit:                      ; preds = %.lr.ph31.i257.prol, %.lr.ph31.i257.preheader
  %.lcssa469.unr = phi i32 [ poison, %.lr.ph31.i257.preheader ], [ %i.ic, %.lr.ph31.i257.prol ]
  %.129.i258.unr = phi i64 [ %i.ib, %.lr.ph31.i257.preheader ], [ %i.id, %.lr.ph31.i257.prol ]
  %.02028.i259.unr = phi i32 [ %i.ia, %.lr.ph31.i257.preheader ], [ %i.ic, %.lr.ph31.i257.prol ]
  %i.ie = icmp ult i64 %i.hq, 256
  br i1 %i.ie, label %.preheader.i261, label %.lr.ph31.i257

.preheader.i261:                                  ; preds = %.lr.ph31.i257.prol.loopexit, %.lr.ph31.i257, %._crit_edge.loopexit.i272
  %.020.lcssa.i262 = phi i32 [ %i.ia, %._crit_edge.loopexit.i272 ], [ %.lcssa469.unr, %.lr.ph31.i257.prol.loopexit ], [ %i.in, %.lr.ph31.i257 ] ; 2 uses
  %i.if = lshr i64 %i.hx, 1                       ; 2 uses
  %.not2333.i263 = icmp eq i64 %i.if, 0
  br i1 %.not2333.i263, label %_ZN5folly6detailL6xnmodpEm.exit273, label %.lr.ph36.i264

.lr.ph31.i257:                                    ; preds = %.lr.ph31.i257.prol.loopexit, %.lr.ph31.i257
  %.129.i258 = phi i64 [ %i.io, %.lr.ph31.i257 ], [ %.129.i258.unr, %.lr.ph31.i257.prol.loopexit ]
  %.02028.i259 = phi i32 [ %i.in, %.lr.ph31.i257 ], [ %.02028.i259.unr, %.lr.ph31.i257.prol.loopexit ]
  %i.ig = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i259, i32 0)
  %i.ih = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ig, i32 0)
  %i.ii = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ih, i32 0)
  %i.ij = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ii, i32 0)
  %i.ik = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ij, i32 0)
  %i.il = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ik, i32 0)
  %i.im = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.il, i32 0)
  %i.in = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.im, i32 0) ; 2 uses
  %i.io = add nsw i64 %.129.i258, -8              ; 2 uses
  %.not.i260.7 = icmp eq i64 %i.io, 0
  br i1 %.not.i260.7, label %.preheader.i261, label %.lr.ph31.i257, !llvm.loop !20

.lr.ph36.i264:                                    ; preds = %.preheader.i261, %.lr.ph36.i264
  %i.ip = phi i64 [ %i.iy, %.lr.ph36.i264 ], [ %i.if, %.preheader.i261 ] ; 2 uses
  %.11935.i265 = phi i64 [ %i.ip, %.lr.ph36.i264 ], [ %i.hx, %.preheader.i261 ]
  %.12134.i266 = phi i32 [ %i.ix, %.lr.ph36.i264 ], [ %.020.lcssa.i262, %.preheader.i261 ]
  %i.iq = and i64 %.11935.i265, 1
  %i.ir = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i266, i64 0
  %i.is = bitcast <4 x i32> %i.ir to <2 x i64>    ; 2 uses
  %i.it = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.is, <2 x i64> %i.is, i8 0)
  %i.iu = extractelement <2 x i64> %i.it, i64 0
  %i.iv = shl i64 %i.iu, %i.iq
  %i.iw = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.iv)
  %i.ix = trunc nuw i64 %i.iw to i32              ; 2 uses
  %i.iy = lshr i64 %i.ip, 1                       ; 2 uses
  %.not23.i267 = icmp eq i64 %i.iy, 0
  br i1 %.not23.i267, label %_ZN5folly6detailL6xnmodpEm.exit273, label %.lr.ph36.i264, !llvm.loop !21

_ZN5folly6detailL6xnmodpEm.exit273:               ; preds = %.lr.ph36.i264, %.preheader.i261
  %.121.lcssa.i268 = phi i32 [ %.020.lcssa.i262, %.preheader.i261 ], [ %i.ix, %.lr.ph36.i264 ]
  %i.iz = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.fu, i64 0
  %i.ja = bitcast <4 x i32> %i.iz to <2 x i64>
  %i.jb = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i268, i64 0
  %i.jc = bitcast <4 x i32> %i.jb to <2 x i64>
  %i.jd = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ja, <2 x i64> %i.jc, i8 0)
  %i.je = xor <2 x i64> %i.jd, %i.hw
  %i.jf = extractelement <2 x i64> %i.ev, i64 0
  %i.jg = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.jf)
  %i.jh = extractelement <2 x i64> %i.ev, i64 1
  %i.ji = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.jg, i64 %i.jh)
  %i.jj = trunc nuw i64 %i.ji to i32
  %i.jk = mul i64 %i.z, 576                       ; 2 uses
  %i.jl = or disjoint i64 %i.jk, 31               ; 2 uses
  %i.jm = icmp ugt i64 %i.jk, 191
  br i1 %i.jm, label %.lr.ph.i290, label %._crit_edge.i274

.lr.ph.i290:                                      ; preds = %_ZN5folly6detailL6xnmodpEm.exit273, %.lr.ph.i290
  %.025.i291 = phi i64 [ %i.jr, %.lr.ph.i290 ], [ %i.jl, %_ZN5folly6detailL6xnmodpEm.exit273 ] ; 3 uses
  %.01824.i292 = phi i64 [ %i.jp, %.lr.ph.i290 ], [ -2, %_ZN5folly6detailL6xnmodpEm.exit273 ]
  %i.jn = shl i64 %.01824.i292, 1
  %i.jo = and i64 %.025.i291, 1
  %i.jp = or disjoint i64 %i.jn, %i.jo            ; 2 uses
  %i.jq = lshr i64 %.025.i291, 1
  %i.jr = add nsw i64 %i.jq, -16                  ; 2 uses
  %i.js = icmp ugt i64 %.025.i291, 415
  br i1 %i.js, label %.lr.ph.i290, label %._crit_edge.loopexit.i293, !llvm.loop !17

._crit_edge.loopexit.i293:                        ; preds = %.lr.ph.i290
  %i.jt = xor i64 %i.jp, -1
  br label %._crit_edge.i274

._crit_edge.i274:                                 ; preds = %._crit_edge.loopexit.i293, %_ZN5folly6detailL6xnmodpEm.exit273
  %.018.lcssa.i275 = phi i64 [ 1, %_ZN5folly6detailL6xnmodpEm.exit273 ], [ %i.jt, %._crit_edge.loopexit.i293 ] ; 2 uses
  %.0.lcssa.i276 = phi i64 [ %i.jl, %_ZN5folly6detailL6xnmodpEm.exit273 ], [ %i.jr, %._crit_edge.loopexit.i293 ] ; 3 uses
  %i.ju = trunc nuw nsw i64 %.0.lcssa.i276 to i32
  %i.jv = and i32 %i.ju, 31
  %i.jw = lshr exact i32 -2147483648, %i.jv       ; 3 uses
  %i.jx = lshr i64 %.0.lcssa.i276, 5              ; 4 uses
  %.not27.i277 = icmp eq i64 %i.jx, 0
  br i1 %.not27.i277, label %.preheader.i282, label %.lr.ph31.i278.preheader

.lr.ph31.i278.preheader:                          ; preds = %._crit_edge.i274
  %xtraiter495 = and i64 %i.jx, 7                 ; 2 uses
  %lcmp.mod496.not = icmp eq i64 %xtraiter495, 0
  br i1 %lcmp.mod496.not, label %.lr.ph31.i278.prol.loopexit, label %.lr.ph31.i278.prol

.lr.ph31.i278.prol:                               ; preds = %.lr.ph31.i278.preheader, %.lr.ph31.i278.prol
  %.129.i279.prol = phi i64 [ %i.jz, %.lr.ph31.i278.prol ], [ %i.jx, %.lr.ph31.i278.preheader ]
  %.02028.i280.prol = phi i32 [ %i.jy, %.lr.ph31.i278.prol ], [ %i.jw, %.lr.ph31.i278.preheader ]
  %prol.iter497 = phi i64 [ %prol.iter497.next, %.lr.ph31.i278.prol ], [ 0, %.lr.ph31.i278.preheader ]
  %i.jy = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i280.prol, i32 0) ; 3 uses
  %i.jz = add nsw i64 %.129.i279.prol, -1         ; 2 uses
  %prol.iter497.next = add i64 %prol.iter497, 1   ; 2 uses
  %prol.iter497.cmp.not = icmp eq i64 %prol.iter497.next, %xtraiter495
  br i1 %prol.iter497.cmp.not, label %.lr.ph31.i278.prol.loopexit, label %.lr.ph31.i278.prol, !llvm.loop !23

.lr.ph31.i278.prol.loopexit:                      ; preds = %.lr.ph31.i278.prol, %.lr.ph31.i278.preheader
  %.lcssa465.unr = phi i32 [ poison, %.lr.ph31.i278.preheader ], [ %i.jy, %.lr.ph31.i278.prol ]
  %.129.i279.unr = phi i64 [ %i.jx, %.lr.ph31.i278.preheader ], [ %i.jz, %.lr.ph31.i278.prol ]
  %.02028.i280.unr = phi i32 [ %i.jw, %.lr.ph31.i278.preheader ], [ %i.jy, %.lr.ph31.i278.prol ]
  %i.ka = icmp ult i64 %.0.lcssa.i276, 256
  br i1 %i.ka, label %.preheader.i282, label %.lr.ph31.i278

.preheader.i282:                                  ; preds = %.lr.ph31.i278.prol.loopexit, %.lr.ph31.i278, %._crit_edge.i274
  %.020.lcssa.i283 = phi i32 [ %i.jw, %._crit_edge.i274 ], [ %.lcssa465.unr, %.lr.ph31.i278.prol.loopexit ], [ %i.kj, %.lr.ph31.i278 ] ; 2 uses
  %i.kb = lshr i64 %.018.lcssa.i275, 1            ; 2 uses
  %.not2333.i284 = icmp eq i64 %i.kb, 0
  br i1 %.not2333.i284, label %_ZN5folly6detailL6xnmodpEm.exit294, label %.lr.ph36.i285

.lr.ph31.i278:                                    ; preds = %.lr.ph31.i278.prol.loopexit, %.lr.ph31.i278
  %.129.i279 = phi i64 [ %i.kk, %.lr.ph31.i278 ], [ %.129.i279.unr, %.lr.ph31.i278.prol.loopexit ]
  %.02028.i280 = phi i32 [ %i.kj, %.lr.ph31.i278 ], [ %.02028.i280.unr, %.lr.ph31.i278.prol.loopexit ]
  %i.kc = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %.02028.i280, i32 0)
  %i.kd = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kc, i32 0)
  %i.ke = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kd, i32 0)
  %i.kf = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ke, i32 0)
  %i.kg = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kf, i32 0)
  %i.kh = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kg, i32 0)
  %i.ki = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.kh, i32 0)
  %i.kj = tail call noundef i32 @llvm.x86.sse42.crc32.32.32(i32 %i.ki, i32 0) ; 2 uses
  %i.kk = add nsw i64 %.129.i279, -8              ; 2 uses
  %.not.i281.7 = icmp eq i64 %i.kk, 0
  br i1 %.not.i281.7, label %.preheader.i282, label %.lr.ph31.i278, !llvm.loop !20

.lr.ph36.i285:                                    ; preds = %.preheader.i282, %.lr.ph36.i285
  %i.kl = phi i64 [ %i.ku, %.lr.ph36.i285 ], [ %i.kb, %.preheader.i282 ] ; 2 uses
  %.11935.i286 = phi i64 [ %i.kl, %.lr.ph36.i285 ], [ %.018.lcssa.i275, %.preheader.i282 ]
  %.12134.i287 = phi i32 [ %i.kt, %.lr.ph36.i285 ], [ %.020.lcssa.i283, %.preheader.i282 ]
  %i.km = and i64 %.11935.i286, 1
  %i.kn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.12134.i287, i64 0
  %i.ko = bitcast <4 x i32> %i.kn to <2 x i64>    ; 2 uses
  %i.kp = tail call <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.ko, <2 x i64> %i.ko, i8 0)
  %i.kq = extractelement <2 x i64> %i.kp, i64 0
  %i.kr = shl i64 %i.kq, %i.km
  %i.ks = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.kr)
  %i.kt = trunc nuw i64 %i.ks to i32              ; 2 uses
  %i.ku = lshr i64 %i.kl, 1                       ; 2 uses
  %.not23.i288 = icmp eq i64 %i.ku, 0
  br i1 %.not23.i288, label %_ZN5folly6detailL6xnmodpEm.exit294, label %.lr.ph36.i285, !llvm.loop !21

_ZN5folly6detailL6xnmodpEm.exit294:               ; preds = %.lr.ph36.i285, %.preheader.i282
  %.121.lcssa.i289 = phi i32 [ %.020.lcssa.i283, %.preheader.i282 ], [ %i.kt, %.lr.ph36.i285 ]
  %i.kv = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %i.jj, i64 0
  %i.kw = bitcast <4 x i32> %i.kv to <2 x i64>
  %i.kx = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.121.lcssa.i289, i64 0
  %i.ky = bitcast <4 x i32> %i.kx to <2 x i64>
  %i.kz = tail call noundef <2 x i64> @llvm.x86.pclmulqdq(<2 x i64> %i.kw, <2 x i64> %i.ky, i8 0)
  %foldExtExtBinop = xor <2 x i64> %i.kz, %i.je
  %i.la = extractelement <2 x i64> %foldExtExtBinop, i64 0
  %i.lb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.aw ; 2 uses
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !13
  %i.ld = xor i64 %i.la, %i.lc
  %i.le = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.fx, i64 %i.ld)
  %i.lf = trunc nuw i64 %i.le to i32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.lh = add nsw i64 %.2243.in.lcssa, -208
  br label %bb.e

bb.e:                                             ; preds = %_ZN5folly6detailL6xnmodpEm.exit294, %bb.c
  %.3250 = phi ptr [ %i.lg, %_ZN5folly6detailL6xnmodpEm.exit294 ], [ %.1248, %bb.c ] ; 3 uses
  %.3244 = phi i64 [ %i.lh, %_ZN5folly6detailL6xnmodpEm.exit294 ], [ %.1242, %bb.c ] ; 5 uses
  %.3 = phi i32 [ %i.lf, %_ZN5folly6detailL6xnmodpEm.exit294 ], [ %.1, %bb.c ] ; 2 uses
  %i.li = icmp samesign ugt i64 %.3244, 7
  br i1 %i.li, label %.lr.ph349.preheader, label %.preheader

.lr.ph349.preheader:                              ; preds = %bb.e
  %i.lj = zext i32 %.3 to i64                     ; 2 uses
  %i.lk = add i64 %.3244, -8                      ; 2 uses
  %i.ll = lshr i64 %i.lk, 3
  %i.lm = add nuw nsw i64 %i.ll, 1
  %xtraiter498 = and i64 %i.lm, 7                 ; 2 uses
  %lcmp.mod499.not = icmp eq i64 %xtraiter498, 0
  br i1 %lcmp.mod499.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol

.lr.ph349.prol:                                   ; preds = %.lr.ph349.preheader, %.lr.ph349.prol
  %.4347.prol = phi i64 [ %i.lo, %.lr.ph349.prol ], [ %i.lj, %.lr.ph349.preheader ]
  %.4245346.prol = phi i64 [ %i.lq, %.lr.ph349.prol ], [ %.3244, %.lr.ph349.preheader ]
  %.4251345.prol = phi ptr [ %i.lp, %.lr.ph349.prol ], [ %.3250, %.lr.ph349.preheader ] ; 2 uses
  %prol.iter500 = phi i64 [ %prol.iter500.next, %.lr.ph349.prol ], [ 0, %.lr.ph349.preheader ]
  %i.ln = load i64, ptr %.4251345.prol, align 8, !tbaa !13
  %i.lo = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.4347.prol, i64 %i.ln) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.4251345.prol, i64 8 ; 3 uses
  %i.lq = add nsw i64 %.4245346.prol, -8          ; 3 uses
  %prol.iter500.next = add i64 %prol.iter500, 1   ; 2 uses
  %prol.iter500.cmp.not = icmp eq i64 %prol.iter500.next, %xtraiter498
  br i1 %prol.iter500.cmp.not, label %.lr.ph349.prol.loopexit, label %.lr.ph349.prol, !llvm.loop !24

.lr.ph349.prol.loopexit:                          ; preds = %.lr.ph349.prol, %.lr.ph349.preheader
  %.4347.unr = phi i64 [ %i.lj, %.lr.ph349.preheader ], [ %i.lo, %.lr.ph349.prol ]
  %.4245346.unr = phi i64 [ %.3244, %.lr.ph349.preheader ], [ %i.lq, %.lr.ph349.prol ]
  %.4251345.unr = phi ptr [ %.3250, %.lr.ph349.preheader ], [ %i.lp, %.lr.ph349.prol ]
  %.lcssa463.unr = phi i64 [ poison, %.lr.ph349.preheader ], [ %i.lo, %.lr.ph349.prol ]
  %.lcssa462.unr = phi ptr [ poison, %.lr.ph349.preheader ], [ %i.lp, %.lr.ph349.prol ]
  %.lcssa461.unr = phi i64 [ poison, %.lr.ph349.preheader ], [ %i.lq, %.lr.ph349.prol ]
  %i.lr = icmp ult i64 %i.lk, 56
  br i1 %i.lr, label %.preheader.loopexit, label %.lr.ph349

.preheader.loopexit:                              ; preds = %.lr.ph349, %.lr.ph349.prol.loopexit
  %.lcssa463 = phi i64 [ %.lcssa463.unr, %.lr.ph349.prol.loopexit ], [ %i.mu, %.lr.ph349 ]
  %.lcssa462 = phi ptr [ %.lcssa462.unr, %.lr.ph349.prol.loopexit ], [ %i.mv, %.lr.ph349 ]
  %.lcssa461 = phi i64 [ %.lcssa461.unr, %.lr.ph349.prol.loopexit ], [ %i.mw, %.lr.ph349 ]
  %i.ls = trunc nuw i64 %.lcssa463 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.e
  %.4251.lcssa = phi ptr [ %.3250, %bb.e ], [ %.lcssa462, %.preheader.loopexit ] ; 2 uses
  %.4245.lcssa = phi i64 [ %.3244, %bb.e ], [ %.lcssa461, %.preheader.loopexit ] ; 5 uses
  %.4.lcssa = phi i32 [ %.3, %bb.e ], [ %i.ls, %.preheader.loopexit ] ; 3 uses
  %.not353 = icmp eq i64 %.4245.lcssa, 0
  br i1 %.not353, label %._crit_edge358, label %.lr.ph357.preheader

.lr.ph357.preheader:                              ; preds = %.preheader
  %xtraiter501 = and i64 %.4245.lcssa, 7          ; 2 uses
  %lcmp.mod502.not = icmp eq i64 %xtraiter501, 0
  br i1 %lcmp.mod502.not, label %.lr.ph357.prol.loopexit, label %.lr.ph357.prol

.lr.ph357.prol:                                   ; preds = %.lr.ph357.preheader, %.lr.ph357.prol
  %.5356.prol = phi i32 [ %i.lv, %.lr.ph357.prol ], [ %.4.lcssa, %.lr.ph357.preheader ]
  %.5246355.prol = phi i64 [ %i.lw, %.lr.ph357.prol ], [ %.4245.lcssa, %.lr.ph357.preheader ]
  %.5252354.prol = phi ptr [ %i.lt, %.lr.ph357.prol ], [ %.4251.lcssa, %.lr.ph357.preheader ] ; 2 uses
  %prol.iter503 = phi i64 [ %prol.iter503.next, %.lr.ph357.prol ], [ 0, %.lr.ph357.preheader ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.5252354.prol, i64 1 ; 2 uses
  %i.lu = load i8, ptr %.5252354.prol, align 1, !tbaa !12
  %i.lv = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %.5356.prol, i8 %i.lu) ; 3 uses
  %i.lw = add nsw i64 %.5246355.prol, -1          ; 2 uses
  %prol.iter503.next = add i64 %prol.iter503, 1   ; 2 uses
  %prol.iter503.cmp.not = icmp eq i64 %prol.iter503.next, %xtraiter501
  br i1 %prol.iter503.cmp.not, label %.lr.ph357.prol.loopexit, label %.lr.ph357.prol, !llvm.loop !25

.lr.ph357.prol.loopexit:                          ; preds = %.lr.ph357.prol, %.lr.ph357.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph357.preheader ], [ %i.lv, %.lr.ph357.prol ]
  %.5356.unr = phi i32 [ %.4.lcssa, %.lr.ph357.preheader ], [ %i.lv, %.lr.ph357.prol ]
  %.5246355.unr = phi i64 [ %.4245.lcssa, %.lr.ph357.preheader ], [ %i.lw, %.lr.ph357.prol ]
  %.5252354.unr = phi ptr [ %.4251.lcssa, %.lr.ph357.preheader ], [ %i.lt, %.lr.ph357.prol ]
  %i.lx = icmp ult i64 %.4245.lcssa, 8
  br i1 %i.lx, label %._crit_edge358, label %.lr.ph357

.lr.ph349:                                        ; preds = %.lr.ph349.prol.loopexit, %.lr.ph349
  %.4347 = phi i64 [ %i.mu, %.lr.ph349 ], [ %.4347.unr, %.lr.ph349.prol.loopexit ]
  %.4245346 = phi i64 [ %i.mw, %.lr.ph349 ], [ %.4245346.unr, %.lr.ph349.prol.loopexit ]
  %.4251345 = phi ptr [ %i.mv, %.lr.ph349 ], [ %.4251345.unr, %.lr.ph349.prol.loopexit ] ; 9 uses
  %i.ly = load i64, ptr %.4251345, align 8, !tbaa !13
  %i.lz = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %.4347, i64 %i.ly)
  %i.ma = getelementptr inbounds nuw i8, ptr %.4251345, i64 8
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !13
  %i.mc = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.lz, i64 %i.mb)
  %i.md = getelementptr inbounds nuw i8, ptr %.4251345, i64 16
  %i.me = load i64, ptr %i.md, align 8, !tbaa !13
  %i.mf = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.mc, i64 %i.me)
  %i.mg = getelementptr inbounds nuw i8, ptr %.4251345, i64 24
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !13
  %i.mi = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.mf, i64 %i.mh)
  %i.mj = getelementptr inbounds nuw i8, ptr %.4251345, i64 32
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !13
  %i.ml = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.mi, i64 %i.mk)
  %i.mm = getelementptr inbounds nuw i8, ptr %.4251345, i64 40
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !13
  %i.mo = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.ml, i64 %i.mn)
  %i.mp = getelementptr inbounds nuw i8, ptr %.4251345, i64 48
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !13
  %i.mr = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.mo, i64 %i.mq)
  %i.ms = getelementptr inbounds nuw i8, ptr %.4251345, i64 56
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !13
  %i.mu = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 %i.mr, i64 %i.mt) ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.4251345, i64 64 ; 2 uses
  %i.mw = add nsw i64 %.4245346, -64              ; 3 uses
  %i.mx = icmp ugt i64 %i.mw, 7
  br i1 %i.mx, label %.lr.ph349, label %.preheader.loopexit, !llvm.loop !26

.lr.ph357:                                        ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357
  %.5356 = phi i32 [ %i.nv, %.lr.ph357 ], [ %.5356.unr, %.lr.ph357.prol.loopexit ]
  %.5246355 = phi i64 [ %i.nw, %.lr.ph357 ], [ %.5246355.unr, %.lr.ph357.prol.loopexit ]
  %.5252354 = phi ptr [ %i.nt, %.lr.ph357 ], [ %.5252354.unr, %.lr.ph357.prol.loopexit ] ; 9 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.5252354, i64 1
  %i.mz = load i8, ptr %.5252354, align 1, !tbaa !12
  %i.na = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %.5356, i8 %i.mz)
  %i.nb = getelementptr inbounds nuw i8, ptr %.5252354, i64 2
  %i.nc = load i8, ptr %i.my, align 1, !tbaa !12
  %i.nd = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.na, i8 %i.nc)
  %i.ne = getelementptr inbounds nuw i8, ptr %.5252354, i64 3
  %i.nf = load i8, ptr %i.nb, align 1, !tbaa !12
  %i.ng = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.nd, i8 %i.nf)
  %i.nh = getelementptr inbounds nuw i8, ptr %.5252354, i64 4
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !12
  %i.nj = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ng, i8 %i.ni)
  %i.nk = getelementptr inbounds nuw i8, ptr %.5252354, i64 5
  %i.nl = load i8, ptr %i.nh, align 1, !tbaa !12
  %i.nm = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.nj, i8 %i.nl)
  %i.nn = getelementptr inbounds nuw i8, ptr %.5252354, i64 6
  %i.no = load i8, ptr %i.nk, align 1, !tbaa !12
  %i.np = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.nm, i8 %i.no)
  %i.nq = getelementptr inbounds nuw i8, ptr %.5252354, i64 7
  %i.nr = load i8, ptr %i.nn, align 1, !tbaa !12
  %i.ns = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.np, i8 %i.nr)
  %i.nt = getelementptr inbounds nuw i8, ptr %.5252354, i64 8
  %i.nu = load i8, ptr %i.nq, align 1, !tbaa !12
  %i.nv = tail call noundef i32 @llvm.x86.sse42.crc32.32.8(i32 %i.ns, i8 %i.nu) ; 2 uses
  %i.nw = add nsw i64 %.5246355, -8               ; 2 uses
  %.not.7 = icmp eq i64 %i.nw, 0
  br i1 %.not.7, label %._crit_edge358, label %.lr.ph357, !llvm.loop !27

._crit_edge358:                                   ; preds = %.lr.ph357.prol.loopexit, %.lr.ph357, %.preheader
  %.5.lcssa = phi i32 [ %.4.lcssa, %.preheader ], [ %.lcssa.unr, %.lr.ph357.prol.loopexit ], [ %i.nv, %.lr.ph357 ]
  ret i32 %.5.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.8(i32, i8) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.x86.sse42.crc32.64.64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse42.crc32.32.32(i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+pclmul,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
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
