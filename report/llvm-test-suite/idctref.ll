Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/idctref?download=true
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@c = internal unnamed_addr global [8 x [8 x double]] zeroinitializer, align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Initialize_Reference_IDCT() local_unnamed_addr #0 {
bb.a:
  store <2 x double> splat (double f0x3FD6A09E667F3BCD), ptr @c, align 16, !tbaa !9
  store <2 x double> splat (double f0x3FD6A09E667F3BCD), ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 16, !tbaa !9
  store <2 x double> splat (double f0x3FD6A09E667F3BCD), ptr getelementptr inbounds nuw (i8, ptr @c, i64 32), align 16, !tbaa !9
  store <2 x double> splat (double f0x3FD6A09E667F3BCD), ptr getelementptr inbounds nuw (i8, ptr @c, i64 48), align 16, !tbaa !9
  store <2 x double> <double f0x3FDF6297CFF75CB0, double f0x3FDA9B66290EA1A3>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 64), align 16, !tbaa !9
  store <2 x double> <double f0x3FD1C73B39AE68C9, double f0x3FB8F8B83C69A60D>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 80), align 16, !tbaa !9
  store <2 x double> <double f0xBFB8F8B83C69A608, double f0xBFD1C73B39AE68C6>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 96), align 16, !tbaa !9
  store <2 x double> <double f0xBFDA9B66290EA1A4, double f0xBFDF6297CFF75CB0>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 112), align 16, !tbaa !9
  store <2 x double> <double f0x3FDD906BCF328D46, double f0x3FC87DE2A6AEA964>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 128), align 16, !tbaa !9
  store <2 x double> <double f0xBFC87DE2A6AEA962, double f0xBFDD906BCF328D46>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 144), align 16, !tbaa !9
  store <2 x double> <double f0xBFDD906BCF328D47, double f0xBFC87DE2A6AEA96D>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 160), align 16, !tbaa !9
  store <2 x double> <double f0x3FC87DE2A6AEA967, double f0x3FDD906BCF328D44>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 176), align 16, !tbaa !9
  store <2 x double> <double f0x3FDA9B66290EA1A3, double f0xBFB8F8B83C69A608>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 192), align 16, !tbaa !9
  store <2 x double> <double f0xBFDF6297CFF75CB0, double f0xBFD1C73B39AE68C8>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 208), align 16, !tbaa !9
  store <2 x double> <double f0x3FD1C73B39AE68C5, double f0x3FDF6297CFF75CB0>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 224), align 16, !tbaa !9
  store <2 x double> <double f0x3FB8F8B83C69A61D, double f0xBFDA9B66290EA1A2>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 240), align 16, !tbaa !9
  store <2 x double> <double f0x3FD6A09E667F3BCD, double f0xBFD6A09E667F3BCC>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 256), align 16, !tbaa !9
  store <2 x double> <double f0xBFD6A09E667F3BCE, double f0x3FD6A09E667F3BCB>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 272), align 16, !tbaa !9
  store <2 x double> <double f0x3FD6A09E667F3BCE, double f0xBFD6A09E667F3BC5>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 288), align 16, !tbaa !9
  store <2 x double> <double f0xBFD6A09E667F3BC9, double f0x3FD6A09E667F3BC4>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 304), align 16, !tbaa !9
  store <2 x double> <double f0x3FD1C73B39AE68C9, double f0xBFDF6297CFF75CB0>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 320), align 16, !tbaa !9
  store <2 x double> <double f0x3FB8F8B83C69A60C, double f0x3FDA9B66290EA1A5>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 336), align 16, !tbaa !9
  store <2 x double> <double f0xBFDA9B66290EA1A2, double f0xBFB8F8B83C69A602>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 352), align 16, !tbaa !9
  store <2 x double> <double f0x3FDF6297CFF75CB2, double f0xBFD1C73B39AE68C2>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 368), align 16, !tbaa !9
  store <2 x double> <double f0x3FC87DE2A6AEA964, double f0xBFDD906BCF328D47>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 384), align 16, !tbaa !9
  store <2 x double> <double f0x3FDD906BCF328D44, double f0xBFC87DE2A6AEA965>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 400), align 16, !tbaa !9
  store <2 x double> <double f0xBFC87DE2A6AEA971, double f0x3FDD906BCF328D46>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 416), align 16, !tbaa !9
  store <2 x double> <double f0xBFDD906BCF328D43, double f0x3FC87DE2A6AEA95F>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 432), align 16, !tbaa !9
  store <2 x double> <double f0x3FB8F8B83C69A60D, double f0xBFD1C73B39AE68C8>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 448), align 16, !tbaa !9
  store <2 x double> <double f0x3FDA9B66290EA1A5, double f0xBFDF6297CFF75CB2>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 464), align 16, !tbaa !9
  store <2 x double> <double f0x3FDF6297CFF75CB0, double f0xBFDA9B66290EA1A1>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 480), align 16, !tbaa !9
  store <2 x double> <double f0x3FD1C73B39AE68C2, double f0xBFB8F8B83C69A616>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 496), align 16, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Reference_IDCT(ptr nofree noundef captures(none) %0) local_unnamed_addr #2 {
vector.ph:
  %i.a = alloca [64 x double], align 16           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = load double, ptr getelementptr inbounds nuw (i8, ptr @c, i64 504), align 8, !tbaa !9
  %i.c = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 440), align 8
  %i.d = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 376), align 8
  %i.e = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 312), align 8
  %i.f = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 248), align 8
  %i.g = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 184), align 8
  %i.h = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 120), align 8
  %i.i = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 56), align 8
  %i.j = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 496), align 16
  %i.k = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 432), align 16
  %i.l = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 368), align 16
  %i.m = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 304), align 16
  %i.n = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 240), align 16
  %i.o = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 176), align 16
  %i.p = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 112), align 16
  %i.q = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 48), align 16
  %i.r = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 488), align 8
  %i.s = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 424), align 8
  %i.t = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 360), align 8
  %i.u = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 296), align 8
  %i.v = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 232), align 8
  %i.w = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 168), align 8
  %i.x = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 104), align 8
  %i.y = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 40), align 8
  %i.z = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 480), align 16
  %i.aa = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 416), align 16
  %i.ab = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 352), align 16
  %i.ac = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 288), align 16
  %i.ad = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 224), align 16
  %i.ae = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 160), align 16
  %i.af = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 96), align 16
  %i.ag = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 32), align 16
  %i.ah = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 472), align 8
  %i.ai = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 408), align 8
  %i.aj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 344), align 8
  %i.ak = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 280), align 8
  %i.al = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 216), align 8
  %i.am = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 152), align 8
  %i.an = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 88), align 8
  %i.ao = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 24), align 8
  %i.ap = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 464), align 16
  %i.aq = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 400), align 16
  %i.ar = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 336), align 16
  %i.as = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 272), align 16
  %i.at = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 208), align 16
  %i.au = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 144), align 16
  %i.av = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 80), align 16
  %i.aw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 16
  %i.ax = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 456), align 8
  %i.ay = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 392), align 8
  %i.az = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 328), align 8
  %i.ba = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 264), align 8
  %i.bb = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 200), align 8
  %i.bc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 136), align 8
  %i.bd = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 72), align 8
  %i.be = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 8), align 8
  %i.bf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 448), align 16
  %i.bg = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 384), align 16
  %i.bh = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 320), align 16
  %i.bi = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 256), align 16
  %i.bj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 192), align 16
  %i.bk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 128), align 16
  %i.bl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 64), align 16
  %i.bm = load <2 x double>, ptr @c, align 16
  %broadcast.splatinsert192 = insertelement <2 x double> poison, double %i.b, i64 0
  %i.bn = shufflevector <2 x double> %i.bf, <2 x double> %i.ax, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bo = shufflevector <2 x double> %i.bg, <2 x double> %i.ay, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bp = shufflevector <2 x double> %i.bh, <2 x double> %i.az, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bq = shufflevector <2 x double> %i.bi, <2 x double> %i.ba, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.br = shufflevector <2 x double> %i.bj, <2 x double> %i.bb, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bs = shufflevector <2 x double> %i.bk, <2 x double> %i.bc, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bt = shufflevector <2 x double> %i.bl, <2 x double> %i.bd, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bu = shufflevector <2 x double> %i.bm, <2 x double> %i.be, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %1 = shufflevector <2 x double> %i.ap, <2 x double> %i.ah, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bv = shufflevector <2 x double> %i.aq, <2 x double> %i.ai, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %2 = shufflevector <2 x double> %i.ar, <2 x double> %i.aj, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bw = shufflevector <2 x double> %i.as, <2 x double> %i.ak, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %3 = shufflevector <2 x double> %i.at, <2 x double> %i.al, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bx = shufflevector <2 x double> %i.au, <2 x double> %i.am, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %4 = shufflevector <2 x double> %i.av, <2 x double> %i.an, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.by = shufflevector <2 x double> %i.aw, <2 x double> %i.ao, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %5 = shufflevector <2 x double> %i.z, <2 x double> %i.r, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bz = shufflevector <2 x double> %i.aa, <2 x double> %i.s, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %6 = shufflevector <2 x double> %i.ab, <2 x double> %i.t, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ca = shufflevector <2 x double> %i.ac, <2 x double> %i.u, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %7 = shufflevector <2 x double> %i.ad, <2 x double> %i.v, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cb = shufflevector <2 x double> %i.ae, <2 x double> %i.w, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %8 = shufflevector <2 x double> %i.af, <2 x double> %i.x, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cc = shufflevector <2 x double> %i.ag, <2 x double> %i.y, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cd = shufflevector <2 x double> %i.j, <2 x double> %broadcast.splatinsert192, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ce = shufflevector <2 x double> %i.k, <2 x double> %i.c, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cf = shufflevector <2 x double> %i.l, <2 x double> %i.d, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cg = shufflevector <2 x double> %i.m, <2 x double> %i.e, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ch = shufflevector <2 x double> %i.n, <2 x double> %i.f, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ci = shufflevector <2 x double> %i.o, <2 x double> %i.g, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cj = shufflevector <2 x double> %i.p, <2 x double> %i.h, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ck = shufflevector <2 x double> %i.q, <2 x double> %i.i, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cl = shufflevector <4 x double> %i.bn, <4 x double> %1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <4 x double> %i.bo, <4 x double> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cm = shufflevector <4 x double> %i.bp, <4 x double> %2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %10 = shufflevector <4 x double> %i.bq, <4 x double> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cn = shufflevector <4 x double> %i.br, <4 x double> %3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %11 = shufflevector <4 x double> %i.bs, <4 x double> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.co = shufflevector <4 x double> %i.bt, <4 x double> %4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %12 = shufflevector <4 x double> %i.bu, <4 x double> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cp = shufflevector <4 x double> %5, <4 x double> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %13 = shufflevector <4 x double> %i.bz, <4 x double> %i.ce, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cq = shufflevector <4 x double> %6, <4 x double> %i.cf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %14 = shufflevector <4 x double> %i.ca, <4 x double> %i.cg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cr = shufflevector <4 x double> %7, <4 x double> %i.ch, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %15 = shufflevector <4 x double> %i.cb, <4 x double> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %16 = shufflevector <4 x double> %8, <4 x double> %i.cj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cs = shufflevector <4 x double> %i.cc, <4 x double> %i.ck, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = shl nuw nsw i64 %index, 3               ; 9 uses
  %i.cu = shl i64 %index, 3                       ; 8 uses
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct ; 2 uses
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cy = load i16, ptr %i.cv, align 2, !tbaa !13
  %i.cz = load i16, ptr %i.cx, align 2, !tbaa !13
  %i.da = insertelement <2 x i16> poison, i16 %i.cy, i64 0
  %i.db = insertelement <2 x i16> %i.da, i16 %i.cz, i64 1
  %i.dc = sitofp <2 x i16> %i.db to <2 x double>  ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2 ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 18 ; 2 uses
  %i.dh = load i16, ptr %i.de, align 2, !tbaa !13
  %i.di = load i16, ptr %i.dg, align 2, !tbaa !13
  %i.dj = insertelement <2 x i16> poison, i16 %i.dh, i64 0
  %i.dk = insertelement <2 x i16> %i.dj, i16 %i.di, i64 1
  %i.dl = sitofp <2 x i16> %i.dk to <2 x double>  ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 20 ; 2 uses
  %i.dq = load i16, ptr %i.dn, align 2, !tbaa !13
  %i.dr = load i16, ptr %i.dp, align 2, !tbaa !13
  %i.ds = insertelement <2 x i16> poison, i16 %i.dq, i64 0
  %i.dt = insertelement <2 x i16> %i.ds, i16 %i.dr, i64 1
  %i.du = sitofp <2 x i16> %i.dt to <2 x double>  ; 3 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 6 ; 2 uses
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 22 ; 2 uses
  %i.dz = load i16, ptr %i.dw, align 2, !tbaa !13
  %i.ea = load i16, ptr %i.dy, align 2, !tbaa !13
  %i.eb = insertelement <2 x i16> poison, i16 %i.dz, i64 0
  %i.ec = insertelement <2 x i16> %i.eb, i16 %i.ea, i64 1
  %i.ed = sitofp <2 x i16> %i.ec to <2 x double>  ; 3 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ei = load i16, ptr %i.ef, align 2, !tbaa !13
  %i.ej = load i16, ptr %i.eh, align 2, !tbaa !13
  %i.ek = insertelement <2 x i16> poison, i16 %i.ei, i64 0
  %i.el = insertelement <2 x i16> %i.ek, i16 %i.ej, i64 1
  %i.em = sitofp <2 x i16> %i.el to <2 x double>  ; 3 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 10 ; 2 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 26 ; 2 uses
  %i.er = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.es = load i16, ptr %i.eq, align 2, !tbaa !13
  %i.et = insertelement <2 x i16> poison, i16 %i.er, i64 0
  %i.eu = insertelement <2 x i16> %i.et, i16 %i.es, i64 1
  %i.ev = sitofp <2 x i16> %i.eu to <2 x double>  ; 3 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12 ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 28 ; 2 uses
  %i.fa = load i16, ptr %i.ex, align 2, !tbaa !13
  %i.fb = load i16, ptr %i.ez, align 2, !tbaa !13
  %i.fc = insertelement <2 x i16> poison, i16 %i.fa, i64 0
  %i.fd = insertelement <2 x i16> %i.fc, i16 %i.fb, i64 1
  %i.fe = sitofp <2 x i16> %i.fd to <2 x double>  ; 3 uses
  %17 = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ct
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 14 ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.cu
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 30 ; 2 uses
  %19 = load i16, ptr %18, align 2, !tbaa !13
  %20 = load i16, ptr %i.fg, align 2, !tbaa !13
  %21 = insertelement <2 x i16> poison, i16 %19, i64 0
  %22 = insertelement <2 x i16> %21, i16 %20, i64 1
  %23 = sitofp <2 x i16> %22 to <2 x double>      ; 3 uses
  %24 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ct
  %i.fh = load i16, ptr %i.cv, align 2, !tbaa !13
  %i.fi = load i16, ptr %i.cx, align 2, !tbaa !13
  %i.fj = insertelement <2 x i16> poison, i16 %i.fh, i64 0
  %i.fk = insertelement <2 x i16> %i.fj, i16 %i.fi, i64 1
  %i.fl = sitofp <2 x i16> %i.fk to <2 x double>  ; 2 uses
  %25 = load i16, ptr %i.de, align 2, !tbaa !13
  %26 = load i16, ptr %i.dg, align 2, !tbaa !13
  %27 = insertelement <2 x i16> poison, i16 %25, i64 0
  %28 = insertelement <2 x i16> %27, i16 %26, i64 1
  %29 = sitofp <2 x i16> %28 to <2 x double>      ; 2 uses
  %30 = load i16, ptr %i.dn, align 2, !tbaa !13
  %31 = load i16, ptr %i.dp, align 2, !tbaa !13
  %32 = insertelement <2 x i16> poison, i16 %30, i64 0
  %33 = insertelement <2 x i16> %32, i16 %31, i64 1
  %34 = sitofp <2 x i16> %33 to <2 x double>      ; 2 uses
  %i.fm = load i16, ptr %i.dw, align 2, !tbaa !13
  %i.fn = load i16, ptr %i.dy, align 2, !tbaa !13
  %i.fo = insertelement <2 x i16> poison, i16 %i.fm, i64 0
  %i.fp = insertelement <2 x i16> %i.fo, i16 %i.fn, i64 1
  %i.fq = sitofp <2 x i16> %i.fp to <2 x double>  ; 2 uses
  %35 = load i16, ptr %i.ef, align 2, !tbaa !13
  %36 = load i16, ptr %i.eh, align 2, !tbaa !13
  %37 = insertelement <2 x i16> poison, i16 %35, i64 0
  %38 = insertelement <2 x i16> %37, i16 %36, i64 1
  %39 = sitofp <2 x i16> %38 to <2 x double>      ; 2 uses
  %i.fr = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.fs = load i16, ptr %i.eq, align 2, !tbaa !13
  %i.ft = insertelement <2 x i16> poison, i16 %i.fr, i64 0
  %i.fu = insertelement <2 x i16> %i.ft, i16 %i.fs, i64 1
  %i.fv = sitofp <2 x i16> %i.fu to <2 x double>  ; 2 uses
  %40 = load i16, ptr %i.ex, align 2, !tbaa !13
  %41 = load i16, ptr %i.ez, align 2, !tbaa !13
  %42 = insertelement <2 x i16> poison, i16 %40, i64 0
  %43 = insertelement <2 x i16> %42, i16 %41, i64 1
  %44 = sitofp <2 x i16> %43 to <2 x double>      ; 2 uses
  %i.fw = load i16, ptr %18, align 2, !tbaa !13
  %i.fx = load i16, ptr %i.fg, align 2, !tbaa !13
  %i.fy = insertelement <2 x i16> poison, i16 %i.fw, i64 0
  %i.fz = insertelement <2 x i16> %i.fy, i16 %i.fx, i64 1
  %i.ga = sitofp <2 x i16> %i.fz to <2 x double>  ; 2 uses
  %45 = shufflevector <2 x double> %23, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %46 = shufflevector <2 x double> %i.fe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %47 = shufflevector <2 x double> %i.ev, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %48 = shufflevector <2 x double> %i.em, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %49 = shufflevector <2 x double> %i.ed, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %50 = shufflevector <2 x double> %i.du, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gb = shufflevector <2 x double> %i.dl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %51 = shufflevector <2 x double> %i.dc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %52 = shufflevector <2 x double> %23, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %53 = shufflevector <2 x double> %i.fe, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %54 = shufflevector <2 x double> %i.ev, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %55 = shufflevector <2 x double> %i.em, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %56 = shufflevector <2 x double> %i.ed, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %57 = shufflevector <2 x double> %i.du, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gc = shufflevector <2 x double> %i.dl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %58 = shufflevector <2 x double> %i.dc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %59 = shufflevector <2 x double> %23, <2 x double> %i.ga, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %60 = shufflevector <2 x double> %i.fe, <2 x double> %44, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %61 = shufflevector <2 x double> %i.ev, <2 x double> %i.fv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %62 = shufflevector <2 x double> %i.em, <2 x double> %39, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %63 = shufflevector <2 x double> %i.ed, <2 x double> %i.fq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gd = shufflevector <2 x double> %i.du, <2 x double> %34, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %64 = shufflevector <2 x double> %29, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ge = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %65 = shufflevector <2 x double> %i.ga, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %66 = shufflevector <2 x double> %44, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %67 = shufflevector <2 x double> %i.fv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %68 = shufflevector <2 x double> %39, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %69 = shufflevector <2 x double> %i.fq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %70 = shufflevector <2 x double> %34, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %71 = shufflevector <2 x double> %29, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gf = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %72 = shufflevector <4 x double> %45, <4 x double> %52, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %73 = shufflevector <4 x double> %46, <4 x double> %53, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %74 = shufflevector <4 x double> %47, <4 x double> %54, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %75 = shufflevector <4 x double> %48, <4 x double> %55, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %76 = shufflevector <4 x double> %49, <4 x double> %56, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %77 = shufflevector <4 x double> %50, <4 x double> %57, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gg = shufflevector <4 x double> %i.gb, <4 x double> %i.gc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %78 = shufflevector <4 x double> %51, <4 x double> %58, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %79 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %12, <8 x double> %78, <8 x double> zeroinitializer)
  %80 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.co, <8 x double> %i.gg, <8 x double> %79)
  %81 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %11, <8 x double> %77, <8 x double> %80)
  %82 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cn, <8 x double> %76, <8 x double> %81)
  %83 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %10, <8 x double> %75, <8 x double> %82)
  %84 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cm, <8 x double> %74, <8 x double> %83)
  %85 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %9, <8 x double> %73, <8 x double> %84)
  %86 = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cl, <8 x double> %72, <8 x double> %85)
  %87 = shufflevector <4 x double> %59, <4 x double> %65, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %88 = shufflevector <4 x double> %60, <4 x double> %66, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %89 = shufflevector <4 x double> %61, <4 x double> %67, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %90 = shufflevector <4 x double> %62, <4 x double> %68, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %91 = shufflevector <4 x double> %63, <4 x double> %69, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %92 = shufflevector <4 x double> %i.gd, <4 x double> %70, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gh = shufflevector <4 x double> %64, <4 x double> %71, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %93 = shufflevector <4 x double> %i.ge, <4 x double> %i.gf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.gi = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cs, <8 x double> %93, <8 x double> zeroinitializer)
  %i.gj = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %16, <8 x double> %i.gh, <8 x double> %i.gi)
  %i.gk = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %15, <8 x double> %92, <8 x double> %i.gj)
  %i.gl = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cr, <8 x double> %91, <8 x double> %i.gk)
  %i.gm = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %14, <8 x double> %90, <8 x double> %i.gl)
  %i.gn = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cq, <8 x double> %89, <8 x double> %i.gm)
  %i.go = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %13, <8 x double> %88, <8 x double> %i.gn)
  %i.gp = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cp, <8 x double> %87, <8 x double> %i.go)
  %interleaved.vec = shufflevector <8 x double> %86, <8 x double> %i.gp, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x double> %interleaved.vec, ptr %24, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.gq = icmp eq i64 %index.next, 8
  br i1 %i.gq, label %.preheader38.preheader, label %vector.body, !llvm.loop !10

.preheader38.preheader:                           ; preds = %vector.body
  %wide.load = load <2 x double>, ptr @c, align 16, !tbaa !9
  %wide.load213 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 64), align 16, !tbaa !9
  %wide.load214 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 128), align 16, !tbaa !9
  %wide.load215 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 192), align 16, !tbaa !9
  %wide.load216 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 256), align 16, !tbaa !9
  %wide.load217 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 320), align 16, !tbaa !9
  %wide.load218 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 384), align 16, !tbaa !9
  %wide.load219 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 448), align 16, !tbaa !9
  %wide.load.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 16, !tbaa !9
  %wide.load213.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 80), align 16, !tbaa !9
  %wide.load214.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 144), align 16, !tbaa !9
  %wide.load215.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 208), align 16, !tbaa !9
  %wide.load216.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 272), align 16, !tbaa !9
  %wide.load217.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 336), align 16, !tbaa !9
  %wide.load218.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 400), align 16, !tbaa !9
  %wide.load219.1 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 464), align 16, !tbaa !9
  %wide.load.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 32), align 16, !tbaa !9
  %wide.load213.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 96), align 16, !tbaa !9
  %wide.load214.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 160), align 16, !tbaa !9
  %wide.load215.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 224), align 16, !tbaa !9
  %wide.load216.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 288), align 16, !tbaa !9
  %wide.load217.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 352), align 16, !tbaa !9
  %wide.load218.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 416), align 16, !tbaa !9
  %wide.load219.2 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 480), align 16, !tbaa !9
  %wide.load.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 48), align 16, !tbaa !9
  %wide.load213.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 112), align 16, !tbaa !9
  %wide.load214.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 176), align 16, !tbaa !9
  %wide.load215.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 240), align 16, !tbaa !9
  %wide.load216.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 304), align 16, !tbaa !9
  %wide.load217.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 368), align 16, !tbaa !9
  %wide.load218.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 432), align 16, !tbaa !9
  %wide.load219.3 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 496), align 16, !tbaa !9
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.preheader, %.preheader38
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.preheader38 ], [ 0, %.preheader38.preheader ] ; 10 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 448
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !9
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.gt, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 384
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !9
  %broadcast.splatinsert207 = insertelement <2 x double> poison, double %i.gw, i64 0
  %broadcast.splat208 = shufflevector <2 x double> %broadcast.splatinsert207, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 320
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !9
  %broadcast.splatinsert205 = insertelement <2 x double> poison, double %i.gz, i64 0
  %broadcast.splat206 = shufflevector <2 x double> %broadcast.splatinsert205, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 256
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !9
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %i.hc, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 192
  %i.hf = load double, ptr %i.he, align 8, !tbaa !9
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %i.hf, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !9
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.hi, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 64
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9
  %broadcast.splatinsert197 = insertelement <2 x double> poison, double %i.hl, i64 0
  %broadcast.splat198 = shufflevector <2 x double> %broadcast.splatinsert197, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !9
  %broadcast.splatinsert195 = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat196 = shufflevector <2 x double> %broadcast.splatinsert195, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv64 ; 8 uses
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.hn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat198, <2 x double> %i.hm)
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat200, <2 x double> %i.hn)
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215, <2 x double> %broadcast.splat202, <2 x double> %i.ho)
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216, <2 x double> %broadcast.splat204, <2 x double> %i.hp)
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217, <2 x double> %broadcast.splat206, <2 x double> %i.hq)
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218, <2 x double> %broadcast.splat208, <2 x double> %i.hr)
  %i.ht = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219, <2 x double> %broadcast.splat210, <2 x double> %i.hs)
  %i.hu = fadd <2 x double> %i.ht, splat (double 5.000000e-01)
  %i.hv = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.hu)
  %i.hw = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.hv)
  %i.hx = sext <2 x i9> %i.hw to <2 x i16>        ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.hz = extractelement <2 x i16> %i.hx, i64 0
  store i16 %i.hz, ptr %invariant.gep, align 2, !tbaa !13
  %i.ia = extractelement <2 x i16> %i.hx, i64 1
  store i16 %i.ia, ptr %i.hy, align 2, !tbaa !13
  %i.ib = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.1, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.1, <2 x double> %broadcast.splat198, <2 x double> %i.ib)
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.1, <2 x double> %broadcast.splat200, <2 x double> %i.ic)
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.1, <2 x double> %broadcast.splat202, <2 x double> %i.id)
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.1, <2 x double> %broadcast.splat204, <2 x double> %i.ie)
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.1, <2 x double> %broadcast.splat206, <2 x double> %i.if)
  %i.ih = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.1, <2 x double> %broadcast.splat208, <2 x double> %i.ig)
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.1, <2 x double> %broadcast.splat210, <2 x double> %i.ih)
  %i.ij = fadd <2 x double> %i.ii, splat (double 5.000000e-01)
  %i.ik = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ij)
  %i.il = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.ik)
  %i.im = sext <2 x i9> %i.il to <2 x i16>        ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.io = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.ip = extractelement <2 x i16> %i.im, i64 0
  store i16 %i.ip, ptr %i.in, align 2, !tbaa !13
  %i.iq = extractelement <2 x i16> %i.im, i64 1
  store i16 %i.iq, ptr %i.io, align 2, !tbaa !13
  %i.ir = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.2, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.is = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.2, <2 x double> %broadcast.splat198, <2 x double> %i.ir)
  %i.it = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.2, <2 x double> %broadcast.splat200, <2 x double> %i.is)
  %i.iu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.2, <2 x double> %broadcast.splat202, <2 x double> %i.it)
  %i.iv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.2, <2 x double> %broadcast.splat204, <2 x double> %i.iu)
  %i.iw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.2, <2 x double> %broadcast.splat206, <2 x double> %i.iv)
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.2, <2 x double> %broadcast.splat208, <2 x double> %i.iw)
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.2, <2 x double> %broadcast.splat210, <2 x double> %i.ix)
  %i.iz = fadd <2 x double> %i.iy, splat (double 5.000000e-01)
  %i.ja = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.iz)
  %i.jb = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.ja)
  %i.jc = sext <2 x i9> %i.jb to <2 x i16>        ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.je = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.jf = extractelement <2 x i16> %i.jc, i64 0
  store i16 %i.jf, ptr %i.jd, align 2, !tbaa !13
  %i.jg = extractelement <2 x i16> %i.jc, i64 1
  store i16 %i.jg, ptr %i.je, align 2, !tbaa !13
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.3, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.ji = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.3, <2 x double> %broadcast.splat198, <2 x double> %i.jh)
  %i.jj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.3, <2 x double> %broadcast.splat200, <2 x double> %i.ji)
  %i.jk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.3, <2 x double> %broadcast.splat202, <2 x double> %i.jj)
  %i.jl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.3, <2 x double> %broadcast.splat204, <2 x double> %i.jk)
  %i.jm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.3, <2 x double> %broadcast.splat206, <2 x double> %i.jl)
  %i.jn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.3, <2 x double> %broadcast.splat208, <2 x double> %i.jm)
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.3, <2 x double> %broadcast.splat210, <2 x double> %i.jn)
  %i.jp = fadd <2 x double> %i.jo, splat (double 5.000000e-01)
  %i.jq = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.jp)
  %i.jr = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.jq)
  %i.js = sext <2 x i9> %i.jr to <2 x i16>        ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.ju = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  %i.jv = extractelement <2 x i16> %i.js, i64 0
  store i16 %i.jv, ptr %i.jt, align 2, !tbaa !13
  %i.jw = extractelement <2 x i16> %i.js, i64 1
  store i16 %i.jw, ptr %i.ju, align 2, !tbaa !13
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 8
  br i1 %exitcond67.not, label %bb.a, label %.preheader38, !llvm.loop !11

bb.a:                                             ; preds = %.preheader38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = distinct !{!10, !14, !15, !16}
!11 = distinct !{!11, !14}
!12 = !{!"short", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
