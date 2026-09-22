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
  %i.bv = shufflevector <2 x double> %i.ap, <2 x double> %i.ah, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bw = shufflevector <2 x double> %i.aq, <2 x double> %i.ai, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bx = shufflevector <2 x double> %i.ar, <2 x double> %i.aj, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.by = shufflevector <2 x double> %i.as, <2 x double> %i.ak, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.bz = shufflevector <2 x double> %i.at, <2 x double> %i.al, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ca = shufflevector <2 x double> %i.au, <2 x double> %i.am, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cb = shufflevector <2 x double> %i.av, <2 x double> %i.an, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cc = shufflevector <2 x double> %i.aw, <2 x double> %i.ao, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cd = shufflevector <2 x double> %i.z, <2 x double> %i.r, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ce = shufflevector <2 x double> %i.aa, <2 x double> %i.s, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cf = shufflevector <2 x double> %i.ab, <2 x double> %i.t, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cg = shufflevector <2 x double> %i.ac, <2 x double> %i.u, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ch = shufflevector <2 x double> %i.ad, <2 x double> %i.v, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ci = shufflevector <2 x double> %i.ae, <2 x double> %i.w, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cj = shufflevector <2 x double> %i.af, <2 x double> %i.x, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ck = shufflevector <2 x double> %i.ag, <2 x double> %i.y, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cl = shufflevector <2 x double> %i.j, <2 x double> %broadcast.splatinsert192, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cm = shufflevector <2 x double> %i.k, <2 x double> %i.c, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cn = shufflevector <2 x double> %i.l, <2 x double> %i.d, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.co = shufflevector <2 x double> %i.m, <2 x double> %i.e, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cp = shufflevector <2 x double> %i.n, <2 x double> %i.f, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cq = shufflevector <2 x double> %i.o, <2 x double> %i.g, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cr = shufflevector <2 x double> %i.p, <2 x double> %i.h, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.cs = shufflevector <2 x double> %i.q, <2 x double> %i.i, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ct = shufflevector <4 x double> %i.bn, <4 x double> %i.bv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cu = shufflevector <4 x double> %i.bo, <4 x double> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cv = shufflevector <4 x double> %i.bp, <4 x double> %i.bx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cw = shufflevector <4 x double> %i.bq, <4 x double> %i.by, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cx = shufflevector <4 x double> %i.br, <4 x double> %i.bz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cy = shufflevector <4 x double> %i.bs, <4 x double> %i.ca, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cz = shufflevector <4 x double> %i.bt, <4 x double> %i.cb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.da = shufflevector <4 x double> %i.bu, <4 x double> %i.cc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.db = shufflevector <4 x double> %i.cd, <4 x double> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dc = shufflevector <4 x double> %i.ce, <4 x double> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dd = shufflevector <4 x double> %i.cf, <4 x double> %i.cn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.de = shufflevector <4 x double> %i.cg, <4 x double> %i.co, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.df = shufflevector <4 x double> %i.ch, <4 x double> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dg = shufflevector <4 x double> %i.ci, <4 x double> %i.cq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = shufflevector <4 x double> %i.cj, <4 x double> %i.cr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.di = shufflevector <4 x double> %i.ck, <4 x double> %i.cs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dj = shl nuw nsw i64 %index, 3               ; 9 uses
  %i.dk = shl i64 %index, 3                       ; 8 uses
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.do = load i16, ptr %i.dl, align 2, !tbaa !13
  %i.dp = load i16, ptr %i.dn, align 2, !tbaa !13
  %i.dq = insertelement <2 x i16> poison, i16 %i.do, i64 0
  %i.dr = insertelement <2 x i16> %i.dq, i16 %i.dp, i64 1
  %i.ds = sitofp <2 x i16> %i.dr to <2 x double>
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 18 ; 2 uses
  %i.dx = load i16, ptr %i.du, align 2, !tbaa !13
  %i.dy = load i16, ptr %i.dw, align 2, !tbaa !13
  %i.dz = insertelement <2 x i16> poison, i16 %i.dx, i64 0
  %i.ea = insertelement <2 x i16> %i.dz, i16 %i.dy, i64 1
  %i.eb = sitofp <2 x i16> %i.ea to <2 x double>
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 20 ; 2 uses
  %i.eg = load i16, ptr %i.ed, align 2, !tbaa !13
  %i.eh = load i16, ptr %i.ef, align 2, !tbaa !13
  %i.ei = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ej = insertelement <2 x i16> %i.ei, i16 %i.eh, i64 1
  %i.ek = sitofp <2 x i16> %i.ej to <2 x double>  ; 2 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 6 ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 22 ; 2 uses
  %i.ep = load i16, ptr %i.em, align 2, !tbaa !13
  %i.eq = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.er = insertelement <2 x i16> poison, i16 %i.ep, i64 0
  %i.es = insertelement <2 x i16> %i.er, i16 %i.eq, i64 1
  %i.et = sitofp <2 x i16> %i.es to <2 x double>  ; 2 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.ey = load i16, ptr %i.ev, align 2, !tbaa !13
  %i.ez = load i16, ptr %i.ex, align 2, !tbaa !13
  %i.fa = insertelement <2 x i16> poison, i16 %i.ey, i64 0
  %i.fb = insertelement <2 x i16> %i.fa, i16 %i.ez, i64 1
  %i.fc = sitofp <2 x i16> %i.fb to <2 x double>  ; 2 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 10 ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 26 ; 2 uses
  %i.fh = load i16, ptr %i.fe, align 2, !tbaa !13
  %i.fi = load i16, ptr %i.fg, align 2, !tbaa !13
  %i.fj = insertelement <2 x i16> poison, i16 %i.fh, i64 0
  %i.fk = insertelement <2 x i16> %i.fj, i16 %i.fi, i64 1
  %i.fl = sitofp <2 x i16> %i.fk to <2 x double>  ; 2 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12 ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 28 ; 2 uses
  %i.fq = load i16, ptr %i.fn, align 2, !tbaa !13
  %i.fr = load i16, ptr %i.fp, align 2, !tbaa !13
  %i.fs = insertelement <2 x i16> poison, i16 %i.fq, i64 0
  %i.ft = insertelement <2 x i16> %i.fs, i16 %i.fr, i64 1
  %i.fu = sitofp <2 x i16> %i.ft to <2 x double>  ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 14 ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 30 ; 2 uses
  %i.fz = load i16, ptr %i.fw, align 2, !tbaa !13
  %i.ga = load i16, ptr %i.fy, align 2, !tbaa !13
  %i.gb = insertelement <2 x i16> poison, i16 %i.fz, i64 0
  %i.gc = insertelement <2 x i16> %i.gb, i16 %i.ga, i64 1
  %i.gd = sitofp <2 x i16> %i.gc to <2 x double>  ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dj
  %i.gf = load i16, ptr %i.dl, align 2, !tbaa !13
  %i.gg = load i16, ptr %i.dn, align 2, !tbaa !13
  %i.gh = insertelement <2 x i16> poison, i16 %i.gf, i64 0
  %i.gi = insertelement <2 x i16> %i.gh, i16 %i.gg, i64 1
  %i.gj = sitofp <2 x i16> %i.gi to <2 x double>
  %i.gk = load i16, ptr %i.du, align 2, !tbaa !13
  %i.gl = load i16, ptr %i.dw, align 2, !tbaa !13
  %i.gm = insertelement <2 x i16> poison, i16 %i.gk, i64 0
  %i.gn = insertelement <2 x i16> %i.gm, i16 %i.gl, i64 1
  %i.go = sitofp <2 x i16> %i.gn to <2 x double>
  %i.gp = load i16, ptr %i.ed, align 2, !tbaa !13
  %i.gq = load i16, ptr %i.ef, align 2, !tbaa !13
  %i.gr = insertelement <2 x i16> poison, i16 %i.gp, i64 0
  %i.gs = insertelement <2 x i16> %i.gr, i16 %i.gq, i64 1
  %i.gt = sitofp <2 x i16> %i.gs to <2 x double>  ; 2 uses
  %i.gu = load i16, ptr %i.em, align 2, !tbaa !13
  %i.gv = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.gw = insertelement <2 x i16> poison, i16 %i.gu, i64 0
  %i.gx = insertelement <2 x i16> %i.gw, i16 %i.gv, i64 1
  %i.gy = sitofp <2 x i16> %i.gx to <2 x double>  ; 2 uses
  %i.gz = load i16, ptr %i.ev, align 2, !tbaa !13
  %i.ha = load i16, ptr %i.ex, align 2, !tbaa !13
  %i.hb = insertelement <2 x i16> poison, i16 %i.gz, i64 0
  %i.hc = insertelement <2 x i16> %i.hb, i16 %i.ha, i64 1
  %i.hd = sitofp <2 x i16> %i.hc to <2 x double>  ; 2 uses
  %i.he = load i16, ptr %i.fe, align 2, !tbaa !13
  %i.hf = load i16, ptr %i.fg, align 2, !tbaa !13
  %i.hg = insertelement <2 x i16> poison, i16 %i.he, i64 0
  %i.hh = insertelement <2 x i16> %i.hg, i16 %i.hf, i64 1
  %i.hi = sitofp <2 x i16> %i.hh to <2 x double>  ; 2 uses
  %i.hj = load i16, ptr %i.fn, align 2, !tbaa !13
  %i.hk = load i16, ptr %i.fp, align 2, !tbaa !13
  %i.hl = insertelement <2 x i16> poison, i16 %i.hj, i64 0
  %i.hm = insertelement <2 x i16> %i.hl, i16 %i.hk, i64 1
  %i.hn = sitofp <2 x i16> %i.hm to <2 x double>  ; 2 uses
  %i.ho = load i16, ptr %i.fw, align 2, !tbaa !13
  %i.hp = load i16, ptr %i.fy, align 2, !tbaa !13
  %i.hq = insertelement <2 x i16> poison, i16 %i.ho, i64 0
  %i.hr = insertelement <2 x i16> %i.hq, i16 %i.hp, i64 1
  %i.hs = sitofp <2 x i16> %i.hr to <2 x double>  ; 2 uses
  %i.ht = shufflevector <2 x double> %i.gd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hu = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hv = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hw = shufflevector <2 x double> %i.fc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hx = shufflevector <2 x double> %i.et, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hy = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hz = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ia = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ib = shufflevector <2 x double> %i.gd, <2 x double> %i.hs, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ic = shufflevector <2 x double> %i.fu, <2 x double> %i.hn, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.id = shufflevector <2 x double> %i.fl, <2 x double> %i.hi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ie = shufflevector <2 x double> %i.fc, <2 x double> %i.hd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.if = shufflevector <2 x double> %i.et, <2 x double> %i.gy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ig = shufflevector <2 x double> %i.ek, <2 x double> %i.gt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ih = shufflevector <2 x double> %i.go, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ii = shufflevector <2 x double> %i.gj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ij = shufflevector <2 x double> %i.hs, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ik = shufflevector <2 x double> %i.hn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.il = shufflevector <2 x double> %i.hi, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.im = shufflevector <2 x double> %i.hd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.in = shufflevector <2 x double> %i.gy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.io = shufflevector <2 x double> %i.gt, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %1 = shufflevector <4 x double> %i.ht, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %2 = shufflevector <4 x double> %i.hu, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %3 = shufflevector <4 x double> %i.hv, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %4 = shufflevector <4 x double> %i.hw, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %5 = shufflevector <4 x double> %i.hx, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %6 = shufflevector <4 x double> %i.hy, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %7 = shufflevector <4 x double> %i.hz, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x double> %i.ia, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ip = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.da, <8 x double> %8, <8 x double> zeroinitializer)
  %i.iq = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cz, <8 x double> %7, <8 x double> %i.ip)
  %i.ir = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cy, <8 x double> %6, <8 x double> %i.iq)
  %i.is = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cx, <8 x double> %5, <8 x double> %i.ir)
  %i.it = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cw, <8 x double> %4, <8 x double> %i.is)
  %i.iu = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cv, <8 x double> %3, <8 x double> %i.it)
  %i.iv = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cu, <8 x double> %2, <8 x double> %i.iu)
  %i.iw = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ct, <8 x double> %1, <8 x double> %i.iv)
  %i.ix = shufflevector <4 x double> %i.ib, <4 x double> %i.ij, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iy = shufflevector <4 x double> %i.ic, <4 x double> %i.ik, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.iz = shufflevector <4 x double> %i.id, <4 x double> %i.il, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ja = shufflevector <4 x double> %i.ie, <4 x double> %i.im, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jb = shufflevector <4 x double> %i.if, <4 x double> %i.in, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.jc = shufflevector <4 x double> %i.ig, <4 x double> %i.io, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %9 = shufflevector <4 x double> %i.ih, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %10 = shufflevector <4 x double> %i.ii, <4 x double> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.jd = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.di, <8 x double> %10, <8 x double> zeroinitializer)
  %i.je = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dh, <8 x double> %9, <8 x double> %i.jd)
  %i.jf = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dg, <8 x double> %i.jc, <8 x double> %i.je)
  %i.jg = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.df, <8 x double> %i.jb, <8 x double> %i.jf)
  %i.jh = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.de, <8 x double> %i.ja, <8 x double> %i.jg)
  %i.ji = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dd, <8 x double> %i.iz, <8 x double> %i.jh)
  %i.jj = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dc, <8 x double> %i.iy, <8 x double> %i.ji)
  %i.jk = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.db, <8 x double> %i.ix, <8 x double> %i.jj)
  %interleaved.vec = shufflevector <8 x double> %i.iw, <8 x double> %i.jk, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x double> %interleaved.vec, ptr %i.ge, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.jl = icmp eq i64 %index.next, 8
  br i1 %i.jl, label %.preheader38.preheader, label %vector.body, !llvm.loop !10

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
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 448
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !9
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.jo, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 384
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !9
  %broadcast.splatinsert207 = insertelement <2 x double> poison, double %i.jr, i64 0
  %broadcast.splat208 = shufflevector <2 x double> %broadcast.splatinsert207, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 320
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !9
  %broadcast.splatinsert205 = insertelement <2 x double> poison, double %i.ju, i64 0
  %broadcast.splat206 = shufflevector <2 x double> %broadcast.splatinsert205, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 256
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !9
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %i.jx, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 192
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !9
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %i.ka, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 128
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !9
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.kd, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 64
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !9
  %broadcast.splatinsert197 = insertelement <2 x double> poison, double %i.kg, i64 0
  %broadcast.splat198 = shufflevector <2 x double> %broadcast.splatinsert197, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !9
  %broadcast.splatinsert195 = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat196 = shufflevector <2 x double> %broadcast.splatinsert195, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv64 ; 8 uses
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.ki = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat198, <2 x double> %i.kh)
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat200, <2 x double> %i.ki)
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215, <2 x double> %broadcast.splat202, <2 x double> %i.kj)
  %i.kl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216, <2 x double> %broadcast.splat204, <2 x double> %i.kk)
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217, <2 x double> %broadcast.splat206, <2 x double> %i.kl)
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218, <2 x double> %broadcast.splat208, <2 x double> %i.km)
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219, <2 x double> %broadcast.splat210, <2 x double> %i.kn)
  %i.kp = fadd <2 x double> %i.ko, splat (double 5.000000e-01)
  %i.kq = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.kp)
  %i.kr = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.kq)
  %i.ks = sext <2 x i9> %i.kr to <2 x i16>        ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.ku = extractelement <2 x i16> %i.ks, i64 0
  store i16 %i.ku, ptr %invariant.gep, align 2, !tbaa !13
  %i.kv = extractelement <2 x i16> %i.ks, i64 1
  store i16 %i.kv, ptr %i.kt, align 2, !tbaa !13
  %i.kw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.1, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.kx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.1, <2 x double> %broadcast.splat198, <2 x double> %i.kw)
  %i.ky = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.1, <2 x double> %broadcast.splat200, <2 x double> %i.kx)
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.1, <2 x double> %broadcast.splat202, <2 x double> %i.ky)
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.1, <2 x double> %broadcast.splat204, <2 x double> %i.kz)
  %i.lb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.1, <2 x double> %broadcast.splat206, <2 x double> %i.la)
  %i.lc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.1, <2 x double> %broadcast.splat208, <2 x double> %i.lb)
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.1, <2 x double> %broadcast.splat210, <2 x double> %i.lc)
  %i.le = fadd <2 x double> %i.ld, splat (double 5.000000e-01)
  %i.lf = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.le)
  %i.lg = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.lf)
  %i.lh = sext <2 x i9> %i.lg to <2 x i16>        ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.lj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.lk = extractelement <2 x i16> %i.lh, i64 0
  store i16 %i.lk, ptr %i.li, align 2, !tbaa !13
  %i.ll = extractelement <2 x i16> %i.lh, i64 1
  store i16 %i.ll, ptr %i.lj, align 2, !tbaa !13
  %i.lm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.2, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.ln = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.2, <2 x double> %broadcast.splat198, <2 x double> %i.lm)
  %i.lo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.2, <2 x double> %broadcast.splat200, <2 x double> %i.ln)
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.2, <2 x double> %broadcast.splat202, <2 x double> %i.lo)
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.2, <2 x double> %broadcast.splat204, <2 x double> %i.lp)
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.2, <2 x double> %broadcast.splat206, <2 x double> %i.lq)
  %i.ls = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.2, <2 x double> %broadcast.splat208, <2 x double> %i.lr)
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.2, <2 x double> %broadcast.splat210, <2 x double> %i.ls)
  %i.lu = fadd <2 x double> %i.lt, splat (double 5.000000e-01)
  %i.lv = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.lu)
  %i.lw = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.lv)
  %i.lx = sext <2 x i9> %i.lw to <2 x i16>        ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.lz = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.ma = extractelement <2 x i16> %i.lx, i64 0
  store i16 %i.ma, ptr %i.ly, align 2, !tbaa !13
  %i.mb = extractelement <2 x i16> %i.lx, i64 1
  store i16 %i.mb, ptr %i.lz, align 2, !tbaa !13
  %i.mc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.3, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.md = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.3, <2 x double> %broadcast.splat198, <2 x double> %i.mc)
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.3, <2 x double> %broadcast.splat200, <2 x double> %i.md)
  %i.mf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.3, <2 x double> %broadcast.splat202, <2 x double> %i.me)
  %i.mg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.3, <2 x double> %broadcast.splat204, <2 x double> %i.mf)
  %i.mh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.3, <2 x double> %broadcast.splat206, <2 x double> %i.mg)
  %i.mi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.3, <2 x double> %broadcast.splat208, <2 x double> %i.mh)
  %i.mj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.3, <2 x double> %broadcast.splat210, <2 x double> %i.mi)
  %i.mk = fadd <2 x double> %i.mj, splat (double 5.000000e-01)
  %i.ml = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.mk)
  %i.mm = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.ml)
  %i.mn = sext <2 x i9> %i.mm to <2 x i16>        ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.mp = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  %i.mq = extractelement <2 x i16> %i.mn, i64 0
  store i16 %i.mq, ptr %i.mo, align 2, !tbaa !13
  %i.mr = extractelement <2 x i16> %i.mn, i64 1
  store i16 %i.mr, ptr %i.mp, align 2, !tbaa !13
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
end_hunk_0
