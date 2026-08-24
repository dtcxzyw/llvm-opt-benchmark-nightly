Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dcadct?download=true
inline.NumInlined: 62
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumUnrolled: 56
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_dcadct_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @imdct_half_32, ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @imdct_half_64, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @imdct_half_32(ptr nofree noundef writeonly captures(none) initializes((0, 128)) %0, ptr nofree noundef readonly captures(none) %1) #1 {
.preheader74.preheader:
  %i.a = alloca [32 x i32], align 16              ; 15 uses
  %i.b = alloca [32 x i32], align 16              ; 59 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = load <32 x i32>, ptr %1, align 4, !tbaa !11
  %i.k = tail call <32 x i32> @llvm.abs.v32i32(<32 x i32> %i.j, i1 true)
  %i.l = tail call i32 @llvm.vector.reduce.add.v32i32(<32 x i32> %i.k)
  %i.m = icmp samesign ugt i32 %i.l, 4194304
  %i.n = select i1 %i.m, i32 2, i32 0             ; 4 uses
  %2 = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %3 = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer ; 23 uses
  %5 = add nsw <4 x i32> %2, %4
  %6 = ashr <4 x i32> %5, %4                      ; 6 uses
  store <4 x i32> %6, ptr %i.a, align 16, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %7 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %8 = add nsw <4 x i32> %7, %4
  %9 = ashr <4 x i32> %8, %4                      ; 5 uses
  store <4 x i32> %9, ptr %i.o, align 16, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %10 = load <4 x i32>, ptr %i.d, align 4, !tbaa !11
  %11 = add nsw <4 x i32> %10, %4
  %12 = ashr <4 x i32> %11, %4                    ; 6 uses
  store <4 x i32> %12, ptr %i.p, align 16, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %13 = load <4 x i32>, ptr %i.e, align 4, !tbaa !11
  %14 = add nsw <4 x i32> %13, %4
  %15 = ashr <4 x i32> %14, %4                    ; 5 uses
  store <4 x i32> %15, ptr %i.q, align 16, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %16 = load <4 x i32>, ptr %i.f, align 4, !tbaa !11
  %17 = add nsw <4 x i32> %16, %4
  %18 = ashr <4 x i32> %17, %4                    ; 6 uses
  store <4 x i32> %18, ptr %i.r, align 16, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %19 = load <4 x i32>, ptr %i.g, align 4, !tbaa !11
  %20 = add nsw <4 x i32> %19, %4
  %21 = ashr <4 x i32> %20, %4                    ; 5 uses
  store <4 x i32> %21, ptr %i.s, align 16, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  %i.u = load <4 x i32>, ptr %i.h, align 4, !tbaa !11
  %i.v = add nsw <4 x i32> %i.u, %4
  %i.w = ashr <4 x i32> %i.v, %4                  ; 6 uses
  store <4 x i32> %i.w, ptr %i.t, align 16, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %23 = load <4 x i32>, ptr %i.i, align 4, !tbaa !11
  %i.aa = add nsw <4 x i32> %23, %4
  %i.ab = ashr <4 x i32> %i.aa, %4                ; 6 uses
  store <4 x i32> %i.ab, ptr %i.x, align 16, !tbaa !11
  %i.ac = extractelement <4 x i32> %6, i64 0
  %24 = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %26 = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %27 = shufflevector <4 x i32> %6, <4 x i32> %9, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %28 = shufflevector <4 x i32> %6, <4 x i32> %9, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ad = add nsw <4 x i32> %27, %28
  store <4 x i32> %i.ad, ptr %i.b, align 16, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 12 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %29 = shufflevector <4 x i32> %12, <4 x i32> %15, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ai = shufflevector <4 x i32> %12, <4 x i32> %15, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aj = add nsw <4 x i32> %29, %i.ai
  store <4 x i32> %i.aj, ptr %i.ae, align 16, !tbaa !11
  %30 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 9 uses
  %31 = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %32 = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 3 uses
  %34 = shufflevector <4 x i32> %18, <4 x i32> %21, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %35 = shufflevector <4 x i32> %18, <4 x i32> %21, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ak = add nsw <4 x i32> %34, %35
  store <4 x i32> %i.ak, ptr %30, align 16, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 4 uses
  %36 = shufflevector <4 x i32> %i.w, <4 x i32> %i.ab, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ap = shufflevector <4 x i32> %i.w, <4 x i32> %i.ab, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.aq = add nsw <4 x i32> %36, %i.ap
  store <4 x i32> %i.aq, ptr %i.al, align 16, !tbaa !11
  %37 = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 10 uses
  store i32 %i.ac, ptr %37, align 16, !tbaa !11
  %38 = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %39 = shufflevector <4 x i32> %6, <4 x i32> %9, <4 x i32> <i32 1, i32 4, i32 5, i32 7>
  %40 = shufflevector <4 x i32> %6, <4 x i32> %9, <4 x i32> <i32 2, i32 3, i32 6, i32 poison>
  %41 = shufflevector <4 x i32> %40, <4 x i32> %12, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ar = add nsw <4 x i32> %39, %41
  store <4 x i32> %i.ar, ptr %38, align 4, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %42 = shufflevector <4 x i32> %12, <4 x i32> %15, <4 x i32> <i32 1, i32 4, i32 5, i32 7>
  %43 = shufflevector <4 x i32> %12, <4 x i32> %15, <4 x i32> <i32 2, i32 3, i32 6, i32 poison>
  %44 = shufflevector <4 x i32> %43, <4 x i32> %18, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.au = add nsw <4 x i32> %42, %44
  store <4 x i32> %i.au, ptr %i.as, align 4, !tbaa !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %45 = shufflevector <4 x i32> %18, <4 x i32> %21, <4 x i32> <i32 1, i32 4, i32 5, i32 7>
  %46 = shufflevector <4 x i32> %18, <4 x i32> %21, <4 x i32> <i32 2, i32 3, i32 6, i32 poison>
  %47 = shufflevector <4 x i32> %46, <4 x i32> %i.w, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.aw = add nsw <4 x i32> %45, %47
  store <4 x i32> %i.aw, ptr %i.av, align 4, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %48 = shufflevector <4 x i32> %i.w, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %49 = shufflevector <4 x i32> %i.w, <4 x i32> %i.ab, <2 x i32> <i32 1, i32 4>
  %50 = add nsw <2 x i32> %48, %49
  store <2 x i32> %50, ptr %i.ax, align 4, !tbaa !11
  %shift = shufflevector <4 x i32> %i.ab, <4 x i32> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ab, %shift
  %51 = extractelement <4 x i32> %foldExtExtBinop, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  store i32 %51, ptr %i.ay, align 4, !tbaa !11
  %i.az = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.ba = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.az, <4 x i32> splat (i32 -8388608))
  %i.bb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ba, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.bb, ptr %i.b, align 16, !tbaa !11
  %i.bc = load <4 x i32>, ptr %i.ae, align 16, !tbaa !11
  %i.bd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bc, <4 x i32> splat (i32 -8388608))
  %i.be = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bd, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.be, ptr %i.ae, align 16, !tbaa !11
  %i.bf = load <4 x i32>, ptr %30, align 16, !tbaa !11
  %i.bg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bf, <4 x i32> splat (i32 -8388608))
  %i.bh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bg, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.bh, ptr %30, align 16, !tbaa !11
  %i.bi = load <4 x i32>, ptr %i.al, align 16, !tbaa !11
  %i.bj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bi, <4 x i32> splat (i32 -8388608))
  %i.bk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bj, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.bk, ptr %i.al, align 16, !tbaa !11
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 68 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.bo = load <4 x i32>, ptr %37, align 16, !tbaa !11
  %i.bp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bo, <4 x i32> splat (i32 -8388608))
  %i.bq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bp, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.bq, ptr %37, align 16, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 84 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 92 ; 4 uses
  %i.bv = load <4 x i32>, ptr %i.br, align 16, !tbaa !11
  %i.bw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bv, <4 x i32> splat (i32 -8388608))
  %i.bx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bw, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.bx, ptr %i.br, align 16, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 9 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 2 uses
  %i.cc = load <4 x i32>, ptr %i.by, align 16, !tbaa !11
  %i.cd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cc, <4 x i32> splat (i32 -8388608))
  %i.ce = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cd, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ce, ptr %i.by, align 16, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 6 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !11
  %i.ci = tail call i32 @llvm.smax.i32(i32 %i.ch, i32 -8388608)
  %.0.i.i.i.29 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ci, i32 8388607)
  store i32 %.0.i.i.i.29, ptr %i.cg, align 4, !tbaa !11
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 6 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !11
  %i.cm = tail call i32 @llvm.smax.i32(i32 %i.cl, i32 -8388608)
  %.0.i.i.i.31 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.cm, i32 8388607)
  store i32 %.0.i.i.i.31, ptr %i.ck, align 4, !tbaa !11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !11 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !11 ; 2 uses
  %i.ct = add nsw i32 %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !11 ; 2 uses
  %i.cw = add nsw i32 %i.cv, %i.cs
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !11
  %i.cz = add nsw i32 %i.cy, %i.cv
  %i.da = load <8 x i32>, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %i.db = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dc = shufflevector <8 x i32> %i.da, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dd = add nsw <4 x i32> %i.db, %i.dc
  %i.de = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dd, <4 x i32> splat (i32 -8388608))
  %i.df = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.de, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.df, ptr %i.a, align 16, !tbaa !11
  %i.dg = load <8 x i32>, ptr %30, align 16, !tbaa !11 ; 2 uses
  %i.dh = shufflevector <8 x i32> %i.dg, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.di = shufflevector <8 x i32> %i.dg, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dj = add nsw <4 x i32> %i.dh, %i.di
  %i.dk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dj, <4 x i32> splat (i32 -8388608))
  %i.dl = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dk, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.dl, ptr %i.o, align 16, !tbaa !11
  %i.dm = load <3 x i32>, ptr %i.ae, align 16, !tbaa !11
  %i.dn = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.do = load <6 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.dp = shufflevector <6 x i32> %i.do, <6 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 5>
  %i.dq = shufflevector <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> %i.dn, <4 x i32> <i32 0, i32 6, i32 poison, i32 poison>
  %i.dr = shufflevector <3 x i32> %i.dm, <3 x i32> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ds = shufflevector <4 x i32> %i.dq, <4 x i32> %i.dr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dt = add nsw <4 x i32> %i.dp, %i.ds
  %i.du = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dt, <4 x i32> splat (i32 -8388608))
  %i.dv = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.du, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.dv, ptr %i.p, align 16, !tbaa !11
  %i.dw = load <8 x i32>, ptr %i.cn, align 4, !tbaa !11 ; 2 uses
  %i.dx = shufflevector <8 x i32> %i.dw, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.dy = shufflevector <8 x i32> %i.dw, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dz = add nsw <4 x i32> %i.dx, %i.dy
  %i.ea = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dz, <4 x i32> splat (i32 -8388608))
  %i.eb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ea, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.eb, ptr %i.q, align 16, !tbaa !11
  %i.ec = load <7 x i32>, ptr %37, align 16, !tbaa !11
  %i.ed = shufflevector <7 x i32> %i.ec, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ee = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ed, <4 x i32> splat (i32 -8388608))
  %i.ef = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ee, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ef, ptr %i.r, align 16, !tbaa !11
  %i.eg = load <7 x i32>, ptr %i.at, align 16, !tbaa !11
  %i.eh = shufflevector <7 x i32> %i.eg, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ei = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eh, <4 x i32> splat (i32 -8388608))
  %i.ej = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ei, <4 x i32> splat (i32 8388607)) ; 3 uses
  %i.ek = extractelement <4 x i32> %i.ej, i64 2
  store i32 %i.ek, ptr %i.cf, align 16, !tbaa !11
  %i.el = extractelement <4 x i32> %i.ej, i64 3
  store i32 %i.el, ptr %i.cj, align 8, !tbaa !11
  store <4 x i32> %i.ej, ptr %i.s, align 16, !tbaa !11
  %i.em = load <7 x i32>, ptr %i.bl, align 4, !tbaa !11 ; 2 uses
  %i.en = shufflevector <7 x i32> %i.em, <7 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.eo = load i32, ptr %i.co, align 4, !tbaa !11
  %i.ep = shufflevector <7 x i32> %i.em, <7 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 7, i32 0, i32 2, i32 4>
  %i.eq = add nsw <4 x i32> %i.en, %i.ep
  %i.er = add nsw i32 %i.cq, %i.eo
  %i.es = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eq, <4 x i32> splat (i32 -8388608))
  %i.et = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.es, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.et, ptr %i.t, align 16, !tbaa !11
  %i.eu = tail call i32 @llvm.smax.i32(i32 %i.er, i32 -8388608)
  %.0.i.i.i58.28 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.eu, i32 8388607)
  store i32 %.0.i.i.i58.28, ptr %i.x, align 16, !tbaa !11
  %i.ev = tail call i32 @llvm.smax.i32(i32 %i.ct, i32 -8388608)
  %.0.i.i.i58.29 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ev, i32 8388607)
  store i32 %.0.i.i.i58.29, ptr %i.y, align 4, !tbaa !11
  %i.ew = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 -8388608)
  %.0.i.i.i58.30 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ew, i32 8388607)
  store i32 %.0.i.i.i58.30, ptr %i.z, align 8, !tbaa !11
  %i.ex = tail call i32 @llvm.smax.i32(i32 %i.cz, i32 -8388608)
  %.0.i.i.i58.31 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ex, i32 8388607)
  store i32 %.0.i.i.i58.31, ptr %22, align 4, !tbaa !11
  call fastcc void @dct_a(ptr noundef %i.a, ptr noundef %i.b)
  call fastcc void @dct_b(ptr noundef %i.p, ptr noundef %30)
  call fastcc void @dct_b(ptr noundef %i.r, ptr noundef %37)
  call fastcc void @dct_b(ptr noundef %i.t, ptr noundef %i.by)
  %i.ey = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.ez = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ey, <4 x i32> splat (i32 -8388608))
  %i.fa = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ez, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fa, ptr %i.b, align 16, !tbaa !11
  %i.fb = load <4 x i32>, ptr %i.ae, align 16, !tbaa !11
  %i.fc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fb, <4 x i32> splat (i32 -8388608))
  %i.fd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fc, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fd, ptr %i.ae, align 16, !tbaa !11
  %i.fe = load i32, ptr %30, align 16, !tbaa !11
  %i.ff = tail call i32 @llvm.smax.i32(i32 %i.fe, i32 -8388608)
  %.0.i.i.i63.8 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ff, i32 8388607) ; 2 uses
  %i.fg = load i32, ptr %31, align 4, !tbaa !11
  %i.fh = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 -8388608)
  %.0.i.i.i63.9 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.fh, i32 8388607) ; 2 uses
  %i.fi = load <4 x i32>, ptr %32, align 8, !tbaa !11
  %i.fj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fi, <4 x i32> splat (i32 -8388608))
  %i.fk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fj, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fk, ptr %32, align 8, !tbaa !11
  %i.fl = load <4 x i32>, ptr %i.an, align 8, !tbaa !11
  %i.fm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fl, <4 x i32> splat (i32 -8388608))
  %i.fn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fm, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fn, ptr %i.an, align 8, !tbaa !11
  %i.fo = load <4 x i32>, ptr %i.bm, align 8, !tbaa !11
  %i.fp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fo, <4 x i32> splat (i32 -8388608))
  %i.fq = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fp, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fq, ptr %i.bm, align 8, !tbaa !11
  %i.fr = load i32, ptr %i.bt, align 8, !tbaa !11
  %i.fs = tail call i32 @llvm.smax.i32(i32 %i.fr, i32 -8388608)
  %.0.i.i.i63.22 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.fs, i32 8388607)
  store i32 %.0.i.i.i63.22, ptr %i.bt, align 8, !tbaa !11
  %i.ft = load i32, ptr %i.bu, align 4, !tbaa !11
  %i.fu = tail call i32 @llvm.smax.i32(i32 %i.ft, i32 -8388608)
  %.0.i.i.i63.23 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.fu, i32 8388607)
  store i32 %.0.i.i.i63.23, ptr %i.bu, align 4, !tbaa !11
  %i.fv = load i32, ptr %i.by, align 16, !tbaa !11
  %i.fw = tail call i32 @llvm.smax.i32(i32 %i.fv, i32 -8388608)
  %.0.i.i.i63.24 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.fw, i32 8388607)
  store i32 %.0.i.i.i63.24, ptr %i.by, align 16, !tbaa !11
  %i.fx = load <4 x i32>, ptr %i.bz, align 4, !tbaa !11
  %i.fy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fx, <4 x i32> splat (i32 -8388608))
  %i.fz = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.fy, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.fz, ptr %i.bz, align 4, !tbaa !11
  %i.ga = load <2 x i32>, ptr %i.cg, align 4, !tbaa !11
  %i.gb = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ga, <2 x i32> splat (i32 -8388608))
  %i.gc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.gb, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.gc, ptr %i.cg, align 4, !tbaa !11
  %i.gd = load i32, ptr %i.ck, align 4, !tbaa !11
  %i.ge = tail call i32 @llvm.smax.i32(i32 %i.gd, i32 -8388608)
  %.0.i.i.i63.31 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ge, i32 8388607)
  store i32 %.0.i.i.i63.31, ptr %i.ck, align 4, !tbaa !11
  %i.gf = load i32, ptr %i.b, align 16, !tbaa !11 ; 2 uses
  %i.gg = add nsw i32 %.0.i.i.i63.8, %i.gf
  %i.gh = sext i32 %i.gg to i64
  %i.gi = mul nsw i64 %i.gh, 4199362
  %i.gj = add nsw i64 %i.gi, 4194304
  %i.gk = lshr i64 %i.gj, 23
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = load i32, ptr %24, align 4, !tbaa !11   ; 2 uses
  %i.gn = add nsw i32 %.0.i.i.i63.9, %i.gm
  %i.go = sext i32 %i.gn to i64
  %i.gp = mul nsw i64 %i.go, 4240198
  %i.gq = add nsw i64 %i.gp, 4194304
  %i.gr = lshr i64 %i.gq, 23
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = load i32, ptr %25, align 8, !tbaa !11   ; 2 uses
  %i.gu = load i32, ptr %32, align 8, !tbaa !11   ; 2 uses
  %i.gv = add nsw i32 %i.gu, %i.gt
  %i.gw = sext i32 %i.gv to i64
  %i.gx = mul nsw i64 %i.gw, 4323885
  %i.gy = add nsw i64 %i.gx, 4194304
  %i.gz = lshr i64 %i.gy, 23
  %i.ha = trunc i64 %i.gz to i32
  %i.hb = load i32, ptr %26, align 4, !tbaa !11   ; 2 uses
  %i.hc = load i32, ptr %33, align 4, !tbaa !11   ; 2 uses
  %i.hd = add nsw i32 %i.hc, %i.hb
  %i.he = sext i32 %i.hd to i64
  %i.hf = mul nsw i64 %i.he, 4454708
  %i.hg = add nsw i64 %i.hf, 4194304
  %i.hh = lshr i64 %i.hg, 23
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = load i32, ptr %i.ae, align 16, !tbaa !11 ; 2 uses
  %i.hk = load i32, ptr %i.al, align 16, !tbaa !11 ; 2 uses
  %i.hl = add nsw i32 %i.hk, %i.hj
  %i.hm = sext i32 %i.hl to i64
  %i.hn = mul nsw i64 %i.hm, 4639772
  %i.ho = add nsw i64 %i.hn, 4194304
  %i.hp = lshr i64 %i.ho, 23
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = load i32, ptr %i.af, align 4, !tbaa !11 ; 2 uses
  %i.hs = load i32, ptr %i.am, align 4, !tbaa !11 ; 2 uses
  %i.ht = add nsw i32 %i.hs, %i.hr
  %i.hu = sext i32 %i.ht to i64
  %i.hv = mul nsw i64 %i.hu, 4890013
  %i.hw = add nsw i64 %i.hv, 4194304
  %i.hx = lshr i64 %i.hw, 23
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = load i32, ptr %i.ag, align 8, !tbaa !11 ; 2 uses
  %i.ia = load i32, ptr %i.an, align 8, !tbaa !11 ; 2 uses
  %i.ib = add nsw i32 %i.ia, %i.hz
  %i.ic = sext i32 %i.ib to i64
  %i.id = mul nsw i64 %i.ic, 5221943
  %i.ie = add nsw i64 %i.id, 4194304
  %i.if = lshr i64 %i.ie, 23
  %i.ig = trunc i64 %i.if to i32
  %i.ih = load i32, ptr %i.ah, align 4, !tbaa !11 ; 2 uses
  %i.ii = load i32, ptr %i.ao, align 4, !tbaa !11 ; 2 uses
  %i.ij = add nsw i32 %i.ii, %i.ih
  %i.ik = sext i32 %i.ij to i64
  %i.il = mul nsw i64 %i.ik, 5660703
  %i.im = add nsw i64 %i.il, 4194304
  %i.in = lshr i64 %i.im, 23
  %i.io = trunc i64 %i.in to i32
  %i.ip = sub nsw i32 %i.ih, %i.ii
  %i.iq = sext i32 %i.ip to i64
  %i.ir = mul i64 %i.iq, 36028797012718345
  %i.is = add i64 %i.ir, 4194304
  %i.it = lshr i64 %i.is, 23
  %i.iu = trunc i64 %i.it to i32
  %i.iv = sub nsw i32 %i.hz, %i.ia
  %i.iw = sext i32 %i.iv to i64
  %i.ix = mul i64 %i.iw, 36028797011922993
  %i.iy = add i64 %i.ix, 4194304
  %i.iz = lshr i64 %i.iy, 23
  %i.ja = trunc i64 %i.iz to i32
  %i.jb = sub nsw i32 %i.hr, %i.hs
  %i.jc = sext i32 %i.jb to i64
  %i.jd = mul i64 %i.jc, 36028797010805474
  %i.je = add i64 %i.jd, 4194304
  %i.jf = lshr i64 %i.je, 23
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = sub nsw i32 %i.hj, %i.hk
  %i.ji = sext i32 %i.jh to i64
  %i.jj = mul i64 %i.ji, 36028797009153994
  %i.jk = add i64 %i.jj, 4194304
  %i.jl = lshr i64 %i.jk, 23
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = sub nsw i32 %i.hb, %i.hc
  %i.jo = sext i32 %i.jn to i64
  %i.jp = mul i64 %i.jo, 36028797006513892
  %i.jq = add i64 %i.jp, 4194304
  %i.jr = lshr i64 %i.jq, 23
  %i.js = trunc i64 %i.jr to i32
  %i.jt = sub nsw i32 %i.gt, %i.gu
  %i.ju = sext i32 %i.jt to i64
  %i.jv = mul i64 %i.ju, 36028797001702048
  %i.jw = add i64 %i.jv, 4194304
  %i.jx = lshr i64 %i.jw, 23
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = sub nsw i32 %i.gm, %.0.i.i.i63.9
  %i.ka = sext i32 %i.jz to i64
  %i.kb = mul i64 %i.ka, 36028796990378876
  %i.kc = add i64 %i.kb, 4194304
  %i.kd = lshr i64 %i.kc, 23
  %i.ke = trunc i64 %i.kd to i32
  %i.kf = sub nsw i32 %i.gf, %.0.i.i.i63.8
  %i.kg = sext i32 %i.kf to i64
  %i.kh = mul i64 %i.kg, 36028796933483984
  %i.ki = add i64 %i.kh, 4194304
  %i.kj = lshr i64 %i.ki, 23
  %i.kk = trunc i64 %i.kj to i32
  %i.kl = load i32, ptr %i.by, align 16, !tbaa !11
  %i.km = sext i32 %i.kl to i64
  %i.kn = mul nsw i64 %i.km, 4214598
  %i.ko = add nsw i64 %i.kn, 4194304
  %i.kp = lshr i64 %i.ko, 23
  %i.kq = trunc i64 %i.kp to i32                  ; 2 uses
  %i.kr = load i32, ptr %i.bz, align 4, !tbaa !11
  %i.ks = sext i32 %i.kr to i64
  %i.kt = mul nsw i64 %i.ks, 4383036
  %i.ku = add nsw i64 %i.kt, 4194304
  %i.kv = lshr i64 %i.ku, 23
  %i.kw = trunc i64 %i.kv to i32                  ; 2 uses
  %i.kx = load i32, ptr %i.ca, align 8, !tbaa !11
  %i.ky = sext i32 %i.kx to i64
  %i.kz = mul nsw i64 %i.ky, 4755871
  %i.la = add nsw i64 %i.kz, 4194304
  %i.lb = lshr i64 %i.la, 23
  %i.lc = trunc i64 %i.lb to i32                  ; 2 uses
  %i.ld = load i32, ptr %i.cb, align 4, !tbaa !11
  %i.le = sext i32 %i.ld to i64
  %i.lf = mul nsw i64 %i.le, 5425934
  %i.lg = add nsw i64 %i.lf, 4194304
  %i.lh = lshr i64 %i.lg, 23
  %i.li = trunc i64 %i.lh to i32                  ; 2 uses
  %i.lj = load i32, ptr %i.cf, align 16, !tbaa !11
  %i.lk = sext i32 %i.lj to i64
  %i.ll = mul nsw i64 %i.lk, 6611520
  %i.lm = add nsw i64 %i.ll, 4194304
  %i.ln = lshr i64 %i.lm, 23
  %i.lo = trunc i64 %i.ln to i32                  ; 2 uses
  %i.lp = load i32, ptr %i.cg, align 4, !tbaa !11
  %i.lq = sext i32 %i.lp to i64
  %i.lr = mul nsw i64 %i.lq, 8897610
  %i.ls = add nsw i64 %i.lr, 4194304
  %i.lt = lshr i64 %i.ls, 23
  %i.lu = trunc i64 %i.lt to i32                  ; 2 uses
  %i.lv = load i32, ptr %i.cj, align 8, !tbaa !11
  %i.lw = sext i32 %i.lv to i64
  %i.lx = mul nsw i64 %i.lw, 14448934
  %i.ly = add nsw i64 %i.lx, 4194304
  %i.lz = lshr i64 %i.ly, 23
  %i.ma = trunc i64 %i.lz to i32                  ; 2 uses
  %i.mb = load i32, ptr %i.ck, align 4, !tbaa !11
  %i.mc = sext i32 %i.mb to i64
  %i.md = mul nsw i64 %i.mc, 42791536
  %i.me = add nsw i64 %i.md, 4194304
  %i.mf = lshr i64 %i.me, 23
  %i.mg = trunc i64 %i.mf to i32                  ; 2 uses
  %i.mh = load i32, ptr %37, align 16, !tbaa !11  ; 2 uses
  %i.mi = add nsw i32 %i.mh, %i.kq
  %i.mj = load i32, ptr %i.bl, align 4, !tbaa !11 ; 2 uses
  %i.mk = add nsw i32 %i.mj, %i.kw
  %i.ml = load i32, ptr %i.bm, align 8, !tbaa !11 ; 2 uses
  %i.mm = add nsw i32 %i.ml, %i.lc
  %i.mn = load i32, ptr %i.bn, align 4, !tbaa !11 ; 2 uses
  %i.mo = add nsw i32 %i.mn, %i.li
  %i.mp = load i32, ptr %i.br, align 16, !tbaa !11 ; 2 uses
  %i.mq = add nsw i32 %i.mp, %i.lo
  %i.mr = load i32, ptr %i.bs, align 4, !tbaa !11 ; 2 uses
  %i.ms = add nsw i32 %i.mr, %i.lu
  %i.mt = load i32, ptr %i.bt, align 8, !tbaa !11 ; 2 uses
  %i.mu = add nsw i32 %i.mt, %i.ma
  %i.mv = load i32, ptr %i.bu, align 4, !tbaa !11 ; 2 uses
  %i.mw = add nsw i32 %i.mv, %i.mg
  %i.mx = sub nsw i32 %i.mv, %i.mg
  %i.my = sub nsw i32 %i.mt, %i.ma
  %i.mz = sub nsw i32 %i.mr, %i.lu
  %i.na = sub nsw i32 %i.mp, %i.lo
  %i.nb = sub nsw i32 %i.mn, %i.li
  %i.nc = sub nsw i32 %i.ml, %i.lc
  %i.nd = sub nsw i32 %i.mj, %i.kw
  %i.ne = sub nsw i32 %i.mh, %i.kq
  %i.nf = tail call i32 @llvm.smax.i32(i32 %i.gl, i32 -8388608)
  %.0.i.i.i68 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nf, i32 8388607) ; 2 uses
  %i.ng = tail call i32 @llvm.smax.i32(i32 %i.gs, i32 -8388608)
  %.0.i.i.i68.1 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ng, i32 8388607) ; 2 uses
  %i.nh = tail call i32 @llvm.smax.i32(i32 %i.ha, i32 -8388608)
  %.0.i.i.i68.2 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nh, i32 8388607) ; 2 uses
  %i.ni = tail call i32 @llvm.smax.i32(i32 %i.hi, i32 -8388608)
  %.0.i.i.i68.3 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ni, i32 8388607) ; 2 uses
  %i.nj = tail call i32 @llvm.smax.i32(i32 %i.hq, i32 -8388608)
  %.0.i.i.i68.4 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nj, i32 8388607) ; 2 uses
  %i.nk = tail call i32 @llvm.smax.i32(i32 %i.hy, i32 -8388608)
  %.0.i.i.i68.5 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nk, i32 8388607) ; 2 uses
  %i.nl = tail call i32 @llvm.smax.i32(i32 %i.ig, i32 -8388608)
  %.0.i.i.i68.6 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nl, i32 8388607) ; 2 uses
  %i.nm = tail call i32 @llvm.smax.i32(i32 %i.io, i32 -8388608)
  %.0.i.i.i68.7 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nm, i32 8388607) ; 2 uses
  %i.nn = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 -8388608)
  %.0.i.i.i68.8 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nn, i32 8388607) ; 2 uses
  %i.no = tail call i32 @llvm.smax.i32(i32 %i.ja, i32 -8388608)
  %.0.i.i.i68.9 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.no, i32 8388607) ; 2 uses
  %i.np = tail call i32 @llvm.smax.i32(i32 %i.jg, i32 -8388608)
  %.0.i.i.i68.10 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.np, i32 8388607) ; 2 uses
  %i.nq = tail call i32 @llvm.smax.i32(i32 %i.jm, i32 -8388608)
  %.0.i.i.i68.11 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nq, i32 8388607) ; 2 uses
  %i.nr = tail call i32 @llvm.smax.i32(i32 %i.js, i32 -8388608)
  %.0.i.i.i68.12 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nr, i32 8388607) ; 2 uses
  %i.ns = tail call i32 @llvm.smax.i32(i32 %i.jy, i32 -8388608)
  %.0.i.i.i68.13 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ns, i32 8388607) ; 2 uses
  %i.nt = tail call i32 @llvm.smax.i32(i32 %i.ke, i32 -8388608)
  %.0.i.i.i68.14 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nt, i32 8388607) ; 2 uses
  %i.nu = tail call i32 @llvm.smax.i32(i32 %i.kk, i32 -8388608)
  %.0.i.i.i68.15 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nu, i32 8388607) ; 2 uses
  %i.nv = tail call i32 @llvm.smax.i32(i32 %i.mi, i32 -8388608)
  %.0.i.i.i68.16 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nv, i32 8388607) ; 2 uses
  %i.nw = tail call i32 @llvm.smax.i32(i32 %i.mk, i32 -8388608)
  %.0.i.i.i68.17 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nw, i32 8388607) ; 2 uses
  %i.nx = tail call i32 @llvm.smax.i32(i32 %i.mm, i32 -8388608)
  %.0.i.i.i68.18 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nx, i32 8388607) ; 2 uses
  %i.ny = tail call i32 @llvm.smax.i32(i32 %i.mo, i32 -8388608)
  %.0.i.i.i68.19 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ny, i32 8388607) ; 2 uses
  %i.nz = tail call i32 @llvm.smax.i32(i32 %i.mq, i32 -8388608)
  %.0.i.i.i68.20 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.nz, i32 8388607) ; 2 uses
  %i.oa = tail call i32 @llvm.smax.i32(i32 %i.ms, i32 -8388608)
  %.0.i.i.i68.21 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.oa, i32 8388607) ; 2 uses
  %i.ob = tail call i32 @llvm.smax.i32(i32 %i.mu, i32 -8388608)
  %.0.i.i.i68.22 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ob, i32 8388607) ; 2 uses
  %i.oc = tail call i32 @llvm.smax.i32(i32 %i.mw, i32 -8388608)
  %.0.i.i.i68.23 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.oc, i32 8388607) ; 2 uses
  %i.od = tail call i32 @llvm.smax.i32(i32 %i.mx, i32 -8388608)
  %.0.i.i.i68.24 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.od, i32 8388607) ; 2 uses
  %i.oe = tail call i32 @llvm.smax.i32(i32 %i.my, i32 -8388608)
  %.0.i.i.i68.25 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.oe, i32 8388607) ; 2 uses
  %i.of = tail call i32 @llvm.smax.i32(i32 %i.mz, i32 -8388608)
  %.0.i.i.i68.26 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.of, i32 8388607) ; 2 uses
  %i.og = tail call i32 @llvm.smax.i32(i32 %i.na, i32 -8388608)
  %.0.i.i.i68.27 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.og, i32 8388607) ; 2 uses
  %i.oh = tail call i32 @llvm.smax.i32(i32 %i.nb, i32 -8388608)
  %.0.i.i.i68.28 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.oh, i32 8388607) ; 2 uses
  %i.oi = tail call i32 @llvm.smax.i32(i32 %i.nc, i32 -8388608)
  %.0.i.i.i68.29 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.oi, i32 8388607) ; 2 uses
  %i.oj = tail call i32 @llvm.smax.i32(i32 %i.nd, i32 -8388608)
  %.0.i.i.i68.30 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.oj, i32 8388607) ; 2 uses
  %i.ok = tail call i32 @llvm.smax.i32(i32 %i.ne, i32 -8388608)
  %.0.i.i.i68.31 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.ok, i32 8388607) ; 2 uses
  %i.ol = add nsw i32 %.0.i.i.i68.16, %.0.i.i.i68
  %i.om = sext i32 %i.ol to i64
  %i.on = mul nsw i64 %i.om, 1048892
  %i.oo = add nsw i64 %i.on, 4194304
  %i.op = lshr i64 %i.oo, 23
  %i.oq = trunc i64 %i.op to i32
  store i32 %i.oq, ptr %i.b, align 16, !tbaa !11
  %i.or = add nsw i32 %.0.i.i.i68.17, %.0.i.i.i68.1
  %i.os = sext i32 %i.or to i64
  %i.ot = mul nsw i64 %i.os, 1051425
  %i.ou = add nsw i64 %i.ot, 4194304
  %i.ov = lshr i64 %i.ou, 23
  %i.ow = trunc i64 %i.ov to i32
  store i32 %i.ow, ptr %24, align 4, !tbaa !11
  %i.ox = add nsw i32 %.0.i.i.i68.18, %.0.i.i.i68.2
  %i.oy = sext i32 %i.ox to i64
  %i.oz = mul nsw i64 %i.oy, 1056522
  %i.pa = add nsw i64 %i.oz, 4194304
  %i.pb = lshr i64 %i.pa, 23
  %i.pc = trunc i64 %i.pb to i32
  store i32 %i.pc, ptr %25, align 8, !tbaa !11
  %i.pd = add nsw i32 %.0.i.i.i68.19, %.0.i.i.i68.3
  %i.pe = sext i32 %i.pd to i64
  %i.pf = mul nsw i64 %i.pe, 1064244
  %i.pg = add nsw i64 %i.pf, 4194304
  %i.ph = lshr i64 %i.pg, 23
  %i.pi = trunc i64 %i.ph to i32
  store i32 %i.pi, ptr %26, align 4, !tbaa !11
  %i.pj = add nsw i32 %.0.i.i.i68.20, %.0.i.i.i68.4
  %i.pk = sext i32 %i.pj to i64
  %i.pl = mul nsw i64 %i.pk, 1074689
  %i.pm = add nsw i64 %i.pl, 4194304
  %i.pn = lshr i64 %i.pm, 23
  %i.po = trunc i64 %i.pn to i32
  store i32 %i.po, ptr %i.ae, align 16, !tbaa !11
  %i.pp = add nsw i32 %.0.i.i.i68.21, %.0.i.i.i68.5
  %i.pq = sext i32 %i.pp to i64
  %i.pr = mul nsw i64 %i.pq, 1087987
  %i.ps = add nsw i64 %i.pr, 4194304
  %i.pt = lshr i64 %i.ps, 23
  %i.pu = trunc i64 %i.pt to i32
  store i32 %i.pu, ptr %i.af, align 4, !tbaa !11
  %i.pv = add nsw i32 %.0.i.i.i68.22, %.0.i.i.i68.6
  %i.pw = sext i32 %i.pv to i64
  %i.px = mul nsw i64 %i.pw, 1104313
  %i.py = add nsw i64 %i.px, 4194304
  %i.pz = lshr i64 %i.py, 23
  %i.qa = trunc i64 %i.pz to i32
  store i32 %i.qa, ptr %i.ag, align 8, !tbaa !11
  %i.qb = add nsw i32 %.0.i.i.i68.23, %.0.i.i.i68.7
  %i.qc = sext i32 %i.qb to i64
  %i.qd = mul nsw i64 %i.qc, 1123884
  %i.qe = add nsw i64 %i.qd, 4194304
  %i.qf = lshr i64 %i.qe, 23
  %i.qg = trunc i64 %i.qf to i32
  store i32 %i.qg, ptr %i.ah, align 4, !tbaa !11
  %i.qh = add nsw i32 %.0.i.i.i68.24, %.0.i.i.i68.8
  %i.qi = sext i32 %i.qh to i64
  %i.qj = mul nsw i64 %i.qi, 1146975
  %i.qk = add nsw i64 %i.qj, 4194304
  %i.ql = lshr i64 %i.qk, 23
  %i.qm = trunc i64 %i.ql to i32
  store i32 %i.qm, ptr %30, align 16, !tbaa !11
  %i.qn = add nsw i32 %.0.i.i.i68.25, %.0.i.i.i68.9
  %i.qo = sext i32 %i.qn to i64
  %i.qp = mul nsw i64 %i.qo, 1173922
  %i.qq = add nsw i64 %i.qp, 4194304
  %i.qr = lshr i64 %i.qq, 23
  %i.qs = trunc i64 %i.qr to i32
  store i32 %i.qs, ptr %31, align 4, !tbaa !11
  %i.qt = add nsw i32 %.0.i.i.i68.26, %.0.i.i.i68.10
  %i.qu = sext i32 %i.qt to i64
  %i.qv = mul nsw i64 %i.qu, 1205139
  %i.qw = add nsw i64 %i.qv, 4194304
  %i.qx = lshr i64 %i.qw, 23
  %i.qy = trunc i64 %i.qx to i32
  store i32 %i.qy, ptr %32, align 8, !tbaa !11
  %i.qz = add nsw i32 %.0.i.i.i68.27, %.0.i.i.i68.11
  %i.ra = sext i32 %i.qz to i64
  %i.rb = mul nsw i64 %i.ra, 1241133
  %i.rc = add nsw i64 %i.rb, 4194304
  %i.rd = lshr i64 %i.rc, 23
  %i.re = trunc i64 %i.rd to i32
  store i32 %i.re, ptr %33, align 4, !tbaa !11
  %i.rf = add nsw i32 %.0.i.i.i68.28, %.0.i.i.i68.12
  %i.rg = sext i32 %i.rf to i64
  %i.rh = mul nsw i64 %i.rg, 1282529
  %i.ri = add nsw i64 %i.rh, 4194304
  %i.rj = lshr i64 %i.ri, 23
  %i.rk = trunc i64 %i.rj to i32
  store i32 %i.rk, ptr %i.al, align 16, !tbaa !11
  %i.rl = add nsw i32 %.0.i.i.i68.29, %.0.i.i.i68.13
  %i.rm = sext i32 %i.rl to i64
  %i.rn = mul nsw i64 %i.rm, 1330095
  %i.ro = add nsw i64 %i.rn, 4194304
  %i.rp = lshr i64 %i.ro, 23
  %i.rq = trunc i64 %i.rp to i32
  store i32 %i.rq, ptr %i.am, align 4, !tbaa !11
  %i.rr = add nsw i32 %.0.i.i.i68.30, %.0.i.i.i68.14
  %i.rs = sext i32 %i.rr to i64
  %i.rt = mul nsw i64 %i.rs, 1384791
  %i.ru = add nsw i64 %i.rt, 4194304
  %i.rv = lshr i64 %i.ru, 23
  %i.rw = trunc i64 %i.rv to i32
  store i32 %i.rw, ptr %i.an, align 8, !tbaa !11
  %i.rx = add nsw i32 %.0.i.i.i68.31, %.0.i.i.i68.15
  %i.ry = sext i32 %i.rx to i64
  %i.rz = mul nsw i64 %i.ry, 1447815
  %i.sa = add nsw i64 %i.rz, 4194304
  %i.sb = lshr i64 %i.sa, 23
  %i.sc = trunc i64 %i.sb to i32
  store i32 %i.sc, ptr %i.ao, align 4, !tbaa !11
  %i.sd = sub nsw i32 %.0.i.i.i68.15, %.0.i.i.i68.31
  %i.se = sext i32 %i.sd to i64
  %i.sf = mul i64 %i.se, 36028797017443280
  %i.sg = add i64 %i.sf, 4194304
  %i.sh = lshr i64 %i.sg, 23
  %i.si = trunc i64 %i.sh to i32
  store i32 %i.si, ptr %37, align 16, !tbaa !11
  %i.sj = sub nsw i32 %.0.i.i.i68.14, %.0.i.i.i68.30
  %i.sk = sext i32 %i.sj to i64
  %i.sl = mul i64 %i.sk, 36028797017358610
  %i.sm = add i64 %i.sl, 4194304
  %i.sn = lshr i64 %i.sm, 23
  %i.so = trunc i64 %i.sn to i32
  store i32 %i.so, ptr %i.bl, align 4, !tbaa !11
  %i.sp = sub nsw i32 %.0.i.i.i68.13, %.0.i.i.i68.29
  %i.sq = sext i32 %i.sp to i64
  %i.sr = mul i64 %i.sq, 36028797017259608
  %i.ss = add i64 %i.sr, 4194304
  %i.st = lshr i64 %i.ss, 23
  %i.su = trunc i64 %i.st to i32
  store i32 %i.su, ptr %i.bm, align 8, !tbaa !11
  %i.sv = sub nsw i32 %.0.i.i.i68.12, %.0.i.i.i68.28
  %i.sw = sext i32 %i.sv to i64
  %i.sx = mul i64 %i.sw, 36028797017142917
  %i.sy = add i64 %i.sx, 4194304
  %i.sz = lshr i64 %i.sy, 23
  %i.ta = trunc i64 %i.sz to i32
  store i32 %i.ta, ptr %i.bn, align 4, !tbaa !11
  %i.tb = sub nsw i32 %.0.i.i.i68.11, %.0.i.i.i68.27
  %i.tc = sext i32 %i.tb to i64
  %i.td = mul i64 %i.tc, 36028797017004004
  %i.te = add i64 %i.td, 4194304
  %i.tf = lshr i64 %i.te, 23
  %i.tg = trunc i64 %i.tf to i32
  store i32 %i.tg, ptr %i.br, align 16, !tbaa !11
  %i.th = sub nsw i32 %.0.i.i.i68.10, %.0.i.i.i68.26
  %i.ti = sext i32 %i.th to i64
  %i.tj = mul i64 %i.ti, 36028797016836600
  %i.tk = add i64 %i.tj, 4194304
  %i.tl = lshr i64 %i.tk, 23
  %i.tm = trunc i64 %i.tl to i32
  store i32 %i.tm, ptr %i.bs, align 4, !tbaa !11
  %i.tn = sub nsw i32 %.0.i.i.i68.9, %.0.i.i.i68.25
  %i.to = sext i32 %i.tn to i64
  %i.tp = mul i64 %i.to, 36028797016631785
  %i.tq = add i64 %i.tp, 4194304
  %i.tr = lshr i64 %i.tq, 23
  %i.ts = trunc i64 %i.tr to i32
  store i32 %i.ts, ptr %i.bt, align 8, !tbaa !11
  %i.tt = sub nsw i32 %.0.i.i.i68.8, %.0.i.i.i68.24
  %i.tu = sext i32 %i.tt to i64
  %i.tv = mul i64 %i.tu, 36028797016376433
  %i.tw = add i64 %i.tv, 4194304
  %i.tx = lshr i64 %i.tw, 23
  %i.ty = trunc i64 %i.tx to i32
  store i32 %i.ty, ptr %i.bu, align 4, !tbaa !11
  %i.tz = sub nsw i32 %.0.i.i.i68.7, %.0.i.i.i68.23
  %i.ua = sext i32 %i.tz to i64
  %i.ub = mul i64 %i.ua, 36028797016050407
  %i.uc = add i64 %i.ub, 4194304
  %i.ud = lshr i64 %i.uc, 23
  %i.ue = trunc i64 %i.ud to i32
  store i32 %i.ue, ptr %i.by, align 16, !tbaa !11
  %i.uf = sub nsw i32 %.0.i.i.i68.6, %.0.i.i.i68.22
  %i.ug = sext i32 %i.uf to i64
  %i.uh = mul i64 %i.ug, 36028797015621166
  %i.ui = add i64 %i.uh, 4194304
  %i.uj = lshr i64 %i.ui, 23
  %i.uk = trunc i64 %i.uj to i32
  store i32 %i.uk, ptr %i.bz, align 4, !tbaa !11
  %i.ul = sub nsw i32 %.0.i.i.i68.5, %.0.i.i.i68.21
  %i.um = sext i32 %i.ul to i64
  %i.un = mul i64 %i.um, 36028797015032488
  %i.uo = add i64 %i.un, 4194304
  %i.up = lshr i64 %i.uo, 23
  %i.uq = trunc i64 %i.up to i32
  store i32 %i.uq, ptr %i.ca, align 8, !tbaa !11
  %i.ur = sub nsw i32 %.0.i.i.i68.4, %.0.i.i.i68.20
  %i.us = sext i32 %i.ur to i64
  %i.ut = mul i64 %i.us, 36028797014178162
  %i.uu = add i64 %i.ut, 4194304
  %i.uv = lshr i64 %i.uu, 23
  %i.uw = trunc i64 %i.uv to i32
  store i32 %i.uw, ptr %i.cb, align 4, !tbaa !11
  %i.ux = sub nsw i32 %.0.i.i.i68.3, %.0.i.i.i68.19
  %i.uy = sext i32 %i.ux to i64
  %i.uz = mul i64 %i.uy, 36028797012830578
  %i.va = add i64 %i.uz, 4194304
  %i.vb = lshr i64 %i.va, 23
  %i.vc = trunc i64 %i.vb to i32
  store i32 %i.vc, ptr %i.cf, align 16, !tbaa !11
  %i.vd = sub nsw i32 %.0.i.i.i68.2, %.0.i.i.i68.18
  %i.ve = sext i32 %i.vd to i64
  %i.vf = mul i64 %i.ve, 36028797010397918
  %i.vg = add i64 %i.vf, 4194304
  %i.vh = lshr i64 %i.vg, 23
  %i.vi = trunc i64 %i.vh to i32
  store i32 %i.vi, ptr %i.cg, align 4, !tbaa !11
  %i.vj = sub nsw i32 %.0.i.i.i68.1, %.0.i.i.i68.17
  %i.vk = sext i32 %i.vj to i64
  %i.vl = mul i64 %i.vk, 36028797004710148
  %i.vm = add i64 %i.vl, 4194304
  %i.vn = lshr i64 %i.vm, 23
  %i.vo = trunc i64 %i.vn to i32
  store i32 %i.vo, ptr %i.cj, align 8, !tbaa !11
  %i.vp = sub nsw i32 %.0.i.i.i68, %.0.i.i.i68.16
  %i.vq = sext i32 %i.vp to i64
  %i.vr = mul i64 %i.vq, 36028796976236848
  %i.vs = add i64 %i.vr, 4194304
  %i.vt = lshr i64 %i.vs, 23
  %i.vu = trunc i64 %i.vt to i32
  store i32 %i.vu, ptr %i.ck, align 4, !tbaa !11
  %i.vv = load <4 x i32>, ptr %i.b, align 16, !tbaa !11
  %i.vw = shl nsw <4 x i32> %i.vv, %4
  %i.vx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.vw, <4 x i32> splat (i32 -8388608))
  %i.vy = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.vx, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.vy, ptr %i.b, align 16, !tbaa !11
  %i.vz = load <4 x i32>, ptr %i.ae, align 16, !tbaa !11
  %i.wa = shl nsw <4 x i32> %i.vz, %4
  %i.wb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.wa, <4 x i32> splat (i32 -8388608))
  %i.wc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wb, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.wc, ptr %i.ae, align 16, !tbaa !11
  %i.wd = load <4 x i32>, ptr %30, align 16, !tbaa !11
  %i.we = shl nsw <4 x i32> %i.wd, %4
  %i.wf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.we, <4 x i32> splat (i32 -8388608))
  %i.wg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wf, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.wg, ptr %30, align 16, !tbaa !11
  %i.wh = load <4 x i32>, ptr %i.al, align 16, !tbaa !11
  %i.wi = shl nsw <4 x i32> %i.wh, %4
  %i.wj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.wi, <4 x i32> splat (i32 -8388608))
  %i.wk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wj, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.wk, ptr %i.al, align 16, !tbaa !11
  %i.wl = load <4 x i32>, ptr %37, align 16, !tbaa !11
  %i.wm = shl nsw <4 x i32> %i.wl, %4
  %i.wn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.wm, <4 x i32> splat (i32 -8388608))
  %i.wo = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wn, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.wo, ptr %37, align 16, !tbaa !11
  %i.wp = load <4 x i32>, ptr %i.br, align 16, !tbaa !11
  %i.wq = shl nsw <4 x i32> %i.wp, %4
  %i.wr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.wq, <4 x i32> splat (i32 -8388608))
  %i.ws = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.wr, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.ws, ptr %i.br, align 16, !tbaa !11
  %i.wt = load i32, ptr %i.by, align 16, !tbaa !11
  %i.wu = shl nsw i32 %i.wt, %i.n
  %i.wv = tail call i32 @llvm.smax.i32(i32 %i.wu, i32 -8388608)
  %.0.i.i.24 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.wv, i32 8388607)
  store i32 %.0.i.i.24, ptr %i.by, align 16, !tbaa !11
  %i.ww = load i32, ptr %i.bz, align 4, !tbaa !11
  %i.wx = shl nsw i32 %i.ww, %i.n
  %i.wy = tail call i32 @llvm.smax.i32(i32 %i.wx, i32 -8388608)
  %.0.i.i.25 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.wy, i32 8388607) ; 2 uses
  %i.wz = load <4 x i32>, ptr %i.cf, align 16, !tbaa !11
  %i.xa = shl nsw <4 x i32> %i.wz, %4
  %i.xb = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xa, <4 x i32> splat (i32 -8388608))
  %i.xc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xb, <4 x i32> splat (i32 8388607)) ; 3 uses
  %i.xd = shufflevector <4 x i32> %i.xc, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.xe = load <4 x i32>, ptr %i.b, align 16, !tbaa !11 ; 3 uses
  %i.xf = sub nsw <4 x i32> %i.xe, %i.xd
  %i.xg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xf, <4 x i32> splat (i32 -8388608))
  %i.xh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.xg, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.xh, ptr %0, align 4, !tbaa !11
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.xo = load <4 x i32>, ptr %i.ah, align 4, !tbaa !11 ; 3 uses
  %i.xp = load <4 x i32>, ptr %i.bs, align 4, !tbaa !11 ; 3 uses
  %i.xq = shufflevector <4 x i32> %i.xp, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.xr = load <4 x i32>, ptr %i.af, align 4
  %i.xs = load i32, ptr %i.ag, align 8, !tbaa !11
  %i.xt = load <2 x i32>, ptr %i.ca, align 8, !tbaa !11
  %i.xu = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.xv = shufflevector <2 x i32> %i.xu, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.xw = shl nsw <2 x i32> %i.xt, %i.xv
  %i.xx = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.xw, <2 x i32> splat (i32 -8388608))
  %i.xy = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.xx, <2 x i32> splat (i32 8388607)) ; 2 uses
  %i.xz = shufflevector <2 x i32> %i.xy, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ya = load <2 x i32>, ptr %i.ae, align 16, !tbaa !11
  %i.yb = load i32, ptr %i.ae, align 16, !tbaa !11
  %i.yc = shufflevector <2 x i32> %i.xy, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.yd = shufflevector <4 x i32> %i.xc, <4 x i32> %i.yc, <2 x i32> <i32 0, i32 5>
  %i.ye = shufflevector <4 x i32> %i.xe, <4 x i32> poison, <2 x i32> <i32 3, i32 poison>
  %i.yf = insertelement <2 x i32> %i.ye, i32 %i.yb, i64 1
  %i.yg = add nsw <2 x i32> %i.yd, %i.yf
  %i.yh = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yg, <2 x i32> splat (i32 -8388608))
  %i.yi = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.yh, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.yi, ptr %i.xi, align 4, !tbaa !11
  %i.yj = sub nsw <2 x i32> %i.ya, %i.xz
  %i.yk = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yj, <2 x i32> splat (i32 -8388608))
  %i.yl = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.yk, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.yl, ptr %i.xj, align 4, !tbaa !11
  %i.ym = sub nsw i32 %i.xs, %.0.i.i.25
  %i.yn = tail call i32 @llvm.smax.i32(i32 %i.ym, i32 -8388608)
  %.0.i.i72.6 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.yn, i32 8388607)
  store i32 %.0.i.i72.6, ptr %i.xl, align 4, !tbaa !11
  %i.yo = shufflevector <4 x i32> %i.xp, <4 x i32> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %i.yp = shufflevector <4 x i32> %i.yc, <4 x i32> %i.yo, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.yq = insertelement <4 x i32> %i.yp, i32 %.0.i.i.25, i64 1
  %i.yr = shufflevector <4 x i32> %i.xo, <4 x i32> %i.xr, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  %i.ys = add nsw <4 x i32> %i.yq, %i.yr
  %i.yt = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ys, <4 x i32> splat (i32 -8388608))
  %i.yu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yt, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.yu, ptr %i.xk, align 4, !tbaa !11
  %i.yv = sub nsw <4 x i32> %i.xo, %i.xq
  %i.yw = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.yv, <4 x i32> splat (i32 -8388608))
  %i.yx = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.yw, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.yx, ptr %i.xm, align 4, !tbaa !11
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.za = load <4 x i32>, ptr %33, align 4, !tbaa !11 ; 3 uses
  %i.zb = load <4 x i32>, ptr %i.bl, align 4, !tbaa !11 ; 3 uses
  %i.zc = shufflevector <4 x i32> %i.zb, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.zd = shufflevector <4 x i32> %i.xp, <4 x i32> %i.zb, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  %i.ze = shufflevector <4 x i32> %i.xo, <4 x i32> %i.za, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.zf = add nsw <4 x i32> %i.zd, %i.ze
  %i.zg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.zf, <4 x i32> splat (i32 -8388608))
  %i.zh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zg, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.zh, ptr %i.xn, align 4, !tbaa !11
  %i.zi = sub nsw <4 x i32> %i.za, %i.zc
  %i.zj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.zi, <4 x i32> splat (i32 -8388608))
  %i.zk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zj, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.zk, ptr %i.yy, align 4, !tbaa !11
  %i.zl = shufflevector <4 x i32> %i.zb, <4 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.zm = shufflevector <4 x i32> %i.za, <4 x i32> poison, <2 x i32> <i32 2, i32 3>
  %i.zn = add nsw <2 x i32> %i.zl, %i.zm
  %i.zo = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.zn, <2 x i32> splat (i32 -8388608))
  %i.zp = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.zo, <2 x i32> splat (i32 8388607))
  store <2 x i32> %i.zp, ptr %i.yz, align 4, !tbaa !11
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.zr = load <4 x i32>, ptr %i.ao, align 4      ; 2 uses
  %i.zs = load i32, ptr %37, align 16, !tbaa !11
  %i.zt = load i32, ptr %i.ao, align 4, !tbaa !11
  %i.zu = shufflevector <4 x i32> %i.xc, <4 x i32> %i.zr, <4 x i32> <i32 3, i32 2, i32 1, i32 4> ; 2 uses
  %i.zv = shufflevector <4 x i32> %i.xe, <4 x i32> %i.zr, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.zw = sub nsw <4 x i32> %i.zu, %i.zv
  %i.zx = add nsw <4 x i32> %i.zu, %i.zv
  %i.zy = shufflevector <4 x i32> %i.zw, <4 x i32> %i.zx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.zz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.zy, <4 x i32> splat (i32 -8388608))
  %i.aaa = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.zz, <4 x i32> splat (i32 8388607))
  store <4 x i32> %i.aaa, ptr %i.zq, align 4, !tbaa !11
  %i.aab = add nsw i32 %i.zs, %i.zt
  %i.aac = tail call i32 @llvm.smax.i32(i32 %i.aab, i32 -8388608)
  %.0.i.i73.15 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.aac, i32 8388607)
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %.0.i.i73.15, ptr %i.aad, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @imdct_half_64(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #2 {
vector.ph:
  %i.a = alloca [64 x i32], align 16              ; 222 uses
  %i.b = alloca [64 x i32], align 16              ; 220 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %wide.load152 = load <4 x i32>, ptr %i.c, align 4, !tbaa !11
  %i.d = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.e = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152, i1 true)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.f, align 4, !tbaa !11
  %wide.load152.1 = load <4 x i32>, ptr %i.g, align 4, !tbaa !11
  %i.h = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.1, i1 true)
  %i.i = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.1, i1 true)
  %i.j = add nuw <4 x i32> %i.h, %i.d
  %i.k = add nuw <4 x i32> %i.i, %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load.2 = load <4 x i32>, ptr %i.l, align 4, !tbaa !11
  %wide.load152.2 = load <4 x i32>, ptr %i.m, align 4, !tbaa !11
  %i.n = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.2, i1 true)
  %i.o = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.2, i1 true)
  %i.p = add <4 x i32> %i.n, %i.j
  %i.q = add <4 x i32> %i.o, %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load.3 = load <4 x i32>, ptr %i.r, align 4, !tbaa !11
  %wide.load152.3 = load <4 x i32>, ptr %i.s, align 4, !tbaa !11
  %i.t = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.3, i1 true)
  %i.u = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.3, i1 true)
  %i.v = add <4 x i32> %i.t, %i.p
  %i.w = add <4 x i32> %i.u, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load.4 = load <4 x i32>, ptr %i.x, align 4, !tbaa !11
  %wide.load152.4 = load <4 x i32>, ptr %i.y, align 4, !tbaa !11
  %i.z = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.4, i1 true)
  %i.aa = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.4, i1 true)
  %i.ab = add <4 x i32> %i.z, %i.v
  %i.ac = add <4 x i32> %i.aa, %i.w
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load.5 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !11
  %wide.load152.5 = load <4 x i32>, ptr %i.ae, align 4, !tbaa !11
  %i.af = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.5, i1 true)
  %i.ag = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.5, i1 true)
  %i.ah = add <4 x i32> %i.af, %i.ab
  %i.ai = add <4 x i32> %i.ag, %i.ac
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load.6 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !11
  %wide.load152.6 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !11
  %i.al = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.6, i1 true)
  %i.am = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.6, i1 true)
  %i.an = add <4 x i32> %i.al, %i.ah
  %i.ao = add <4 x i32> %i.am, %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load.7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !11
  %wide.load152.7 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !11
  %i.ar = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load.7, i1 true)
  %i.as = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load152.7, i1 true)
  %i.at = add <4 x i32> %i.ar, %i.an
  %i.au = add <4 x i32> %i.as, %i.ao
  %bin.rdx = add <4 x i32> %i.au, %i.at
  %i.av = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %i.aw = icmp samesign ugt i32 %i.av, 4194304
  %i.ax = select i1 %i.aw, i32 2, i32 0           ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 32 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.load156 = load <4 x i32>, ptr %1, align 4, !tbaa !11
  %wide.load157 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !11
  %i.az = add nsw <4 x i32> %wide.load156, %broadcast.splat
  %i.ba = add nsw <4 x i32> %wide.load157, %broadcast.splat
  %i.bb = ashr <4 x i32> %i.az, %broadcast.splat
  %i.bc = ashr <4 x i32> %i.ba, %broadcast.splat
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <4 x i32> %i.bb, ptr %i.a, align 16, !tbaa !11
  store <4 x i32> %i.bc, ptr %i.bd, align 16, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %wide.load156.1 = load <4 x i32>, ptr %i.be, align 4, !tbaa !11
  %wide.load157.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !11
  %i.bg = add nsw <4 x i32> %wide.load156.1, %broadcast.splat
  %i.bh = add nsw <4 x i32> %wide.load157.1, %broadcast.splat
  %i.bi = ashr <4 x i32> %i.bg, %broadcast.splat
  %i.bj = ashr <4 x i32> %i.bh, %broadcast.splat
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <4 x i32> %i.bi, ptr %i.bk, align 16, !tbaa !11
  store <4 x i32> %i.bj, ptr %i.bl, align 16, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %wide.load156.2 = load <4 x i32>, ptr %i.bm, align 4, !tbaa !11
  %wide.load157.2 = load <4 x i32>, ptr %i.bn, align 4, !tbaa !11
  %i.bo = add nsw <4 x i32> %wide.load156.2, %broadcast.splat
  %i.bp = add nsw <4 x i32> %wide.load157.2, %broadcast.splat
  %i.bq = ashr <4 x i32> %i.bo, %broadcast.splat
  %i.br = ashr <4 x i32> %i.bp, %broadcast.splat
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <4 x i32> %i.bq, ptr %i.bs, align 16, !tbaa !11
  store <4 x i32> %i.br, ptr %i.bt, align 16, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 112
  %wide.load156.3 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !11
  %wide.load157.3 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !11
  %i.bw = add nsw <4 x i32> %wide.load156.3, %broadcast.splat
  %i.bx = add nsw <4 x i32> %wide.load157.3, %broadcast.splat
  %i.by = ashr <4 x i32> %i.bw, %broadcast.splat
  %i.bz = ashr <4 x i32> %i.bx, %broadcast.splat
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <4 x i32> %i.by, ptr %i.ca, align 16, !tbaa !11
  store <4 x i32> %i.bz, ptr %i.cb, align 16, !tbaa !11
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %wide.load156.4 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !11
  %wide.load157.4 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !11
  %i.ce = add nsw <4 x i32> %wide.load156.4, %broadcast.splat
  %i.cf = add nsw <4 x i32> %wide.load157.4, %broadcast.splat
  %i.cg = ashr <4 x i32> %i.ce, %broadcast.splat
  %i.ch = ashr <4 x i32> %i.cf, %broadcast.splat
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <4 x i32> %i.cg, ptr %i.ci, align 16, !tbaa !11
  store <4 x i32> %i.ch, ptr %i.cj, align 16, !tbaa !11
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %wide.load156.5 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !11
  %wide.load157.5 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !11
  %i.cm = add nsw <4 x i32> %wide.load156.5, %broadcast.splat
  %i.cn = add nsw <4 x i32> %wide.load157.5, %broadcast.splat
  %i.co = ashr <4 x i32> %i.cm, %broadcast.splat
  %i.cp = ashr <4 x i32> %i.cn, %broadcast.splat
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <4 x i32> %i.co, ptr %i.cq, align 16, !tbaa !11
  store <4 x i32> %i.cp, ptr %i.cr, align 16, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 208
  %wide.load156.6 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !11
  %wide.load157.6 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !11
  %i.cu = add nsw <4 x i32> %wide.load156.6, %broadcast.splat
  %i.cv = add nsw <4 x i32> %wide.load157.6, %broadcast.splat
  %i.cw = ashr <4 x i32> %i.cu, %broadcast.splat
  %i.cx = ashr <4 x i32> %i.cv, %broadcast.splat
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <4 x i32> %i.cw, ptr %i.cy, align 16, !tbaa !11
  store <4 x i32> %i.cx, ptr %i.cz, align 16, !tbaa !11
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 240
  %wide.load156.7 = load <4 x i32>, ptr %i.da, align 4, !tbaa !11
  %wide.load157.7 = load <4 x i32>, ptr %i.db, align 4, !tbaa !11
  %i.dc = add nsw <4 x i32> %wide.load156.7, %broadcast.splat
  %i.dd = add nsw <4 x i32> %wide.load157.7, %broadcast.splat
  %i.de = ashr <4 x i32> %i.dc, %broadcast.splat
  %i.df = ashr <4 x i32> %i.dd, %broadcast.splat
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <4 x i32> %i.de, ptr %i.dg, align 16, !tbaa !11
  store <4 x i32> %i.df, ptr %i.dh, align 16, !tbaa !11
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.dp = load <8 x i32>, ptr %i.a, align 16, !tbaa !11 ; 2 uses
  %i.dq = shufflevector <8 x i32> %i.dp, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.dr = shufflevector <8 x i32> %i.dp, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ds = add nsw <4 x i32> %i.dq, %i.dr
  store <4 x i32> %i.ds, ptr %i.b, align 16, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 36
end_hunk_0
