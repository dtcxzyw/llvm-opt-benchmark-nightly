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
  %i.c = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 440), align 8
  %i.d = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 376), align 8
  %i.e = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 312), align 8
  %i.f = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 248), align 8
  %i.g = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 184), align 8
  %i.h = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 120), align 8
  %i.i = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 56), align 8
  %i.j = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 496), align 16
  %i.k = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 432), align 16
  %i.l = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 368), align 16
  %i.m = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 304), align 16
  %i.n = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 240), align 16
  %i.o = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 176), align 16
  %i.p = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 112), align 16
  %i.q = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 48), align 16
  %i.r = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 488), align 8
  %i.s = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 424), align 8
  %i.t = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 360), align 8
  %i.u = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 296), align 8
  %i.v = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 232), align 8
  %i.w = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 168), align 8
  %i.x = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 104), align 8
  %i.y = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 40), align 8
  %i.z = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 480), align 16
  %i.aa = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 416), align 16
  %i.ab = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 352), align 16
  %i.ac = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 288), align 16
  %i.ad = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 224), align 16
  %i.ae = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 160), align 16
  %i.af = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 96), align 16
  %i.ag = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 32), align 16
  %i.ah = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 472), align 8
  %i.ai = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 408), align 8
  %i.aj = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 344), align 8
  %i.ak = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 280), align 8
  %i.al = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 216), align 8
  %i.am = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 152), align 8
  %i.an = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 88), align 8
  %i.ao = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 24), align 8
  %i.ap = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 464), align 16
  %i.aq = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 400), align 16
  %i.ar = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 336), align 16
  %i.as = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 272), align 16
  %i.at = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 208), align 16
  %i.au = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 144), align 16
  %i.av = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 80), align 16
  %i.aw = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 16), align 16
  %i.ax = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 456), align 8
  %i.ay = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 392), align 8
  %i.az = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 328), align 8
  %i.ba = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 264), align 8
  %i.bb = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 200), align 8
  %i.bc = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 136), align 8
  %i.bd = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 72), align 8
  %i.be = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 8), align 8
  %i.bf = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 448), align 16
  %i.bg = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 384), align 16
  %i.bh = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 320), align 16
  %i.bi = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 256), align 16
  %i.bj = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 192), align 16
  %i.bk = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 128), align 16
  %i.bl = load <1 x double>, ptr getelementptr inbounds nuw (i8, ptr @c, i64 64), align 16
  %i.bm = load <1 x double>, ptr @c, align 16
  %broadcast.splat177 = shufflevector <1 x double> %i.j, <1 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert192 = insertelement <2 x double> poison, double %i.b, i64 0
  %broadcast.splat193 = shufflevector <2 x double> %broadcast.splatinsert192, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <1 x double> %i.bf, <1 x double> %i.ax, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bo = shufflevector <1 x double> %i.bg, <1 x double> %i.ay, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bp = shufflevector <1 x double> %i.bh, <1 x double> %i.az, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bq = shufflevector <1 x double> %i.bi, <1 x double> %i.ba, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.br = shufflevector <1 x double> %i.bj, <1 x double> %i.bb, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bs = shufflevector <1 x double> %i.bk, <1 x double> %i.bc, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bt = shufflevector <1 x double> %i.bl, <1 x double> %i.bd, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bu = shufflevector <1 x double> %i.bm, <1 x double> %i.be, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bv = shufflevector <1 x double> %i.ap, <1 x double> %i.ah, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bw = shufflevector <1 x double> %i.aq, <1 x double> %i.ai, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bx = shufflevector <1 x double> %i.ar, <1 x double> %i.aj, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.by = shufflevector <1 x double> %i.as, <1 x double> %i.ak, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bz = shufflevector <1 x double> %i.at, <1 x double> %i.al, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ca = shufflevector <1 x double> %i.au, <1 x double> %i.am, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cb = shufflevector <1 x double> %i.av, <1 x double> %i.an, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cc = shufflevector <1 x double> %i.aw, <1 x double> %i.ao, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cd = shufflevector <1 x double> %i.z, <1 x double> %i.r, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ce = shufflevector <1 x double> %i.aa, <1 x double> %i.s, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cf = shufflevector <1 x double> %i.ab, <1 x double> %i.t, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cg = shufflevector <1 x double> %i.ac, <1 x double> %i.u, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ch = shufflevector <1 x double> %i.ad, <1 x double> %i.v, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ci = shufflevector <1 x double> %i.ae, <1 x double> %i.w, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cj = shufflevector <1 x double> %i.af, <1 x double> %i.x, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ck = shufflevector <1 x double> %i.ag, <1 x double> %i.y, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cl = shufflevector <2 x double> %broadcast.splat177, <2 x double> %broadcast.splat193, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = shufflevector <1 x double> %i.k, <1 x double> %i.c, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cn = shufflevector <1 x double> %i.l, <1 x double> %i.d, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.co = shufflevector <1 x double> %i.m, <1 x double> %i.e, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cp = shufflevector <1 x double> %i.n, <1 x double> %i.f, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cq = shufflevector <1 x double> %i.o, <1 x double> %i.g, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cr = shufflevector <1 x double> %i.p, <1 x double> %i.h, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cs = shufflevector <1 x double> %i.q, <1 x double> %i.i, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
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
  %i.ds = sitofp <2 x i16> %i.dr to <2 x double>  ; 2 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2 ; 2 uses
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 18 ; 2 uses
  %i.dx = load i16, ptr %i.du, align 2, !tbaa !13
  %i.dy = load i16, ptr %i.dw, align 2, !tbaa !13
  %i.dz = insertelement <2 x i16> poison, i16 %i.dx, i64 0
  %i.ea = insertelement <2 x i16> %i.dz, i16 %i.dy, i64 1
  %i.eb = sitofp <2 x i16> %i.ea to <2 x double>  ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 20 ; 2 uses
  %i.eg = load i16, ptr %i.ed, align 2, !tbaa !13
  %i.eh = load i16, ptr %i.ef, align 2, !tbaa !13
  %i.ei = insertelement <2 x i16> poison, i16 %i.eg, i64 0
  %i.ej = insertelement <2 x i16> %i.ei, i16 %i.eh, i64 1
  %i.ek = sitofp <2 x i16> %i.ej to <2 x double>  ; 3 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 6 ; 2 uses
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 22 ; 2 uses
  %i.ep = load i16, ptr %i.em, align 2, !tbaa !13
  %i.eq = load i16, ptr %i.eo, align 2, !tbaa !13
  %i.er = insertelement <2 x i16> poison, i16 %i.ep, i64 0
  %i.es = insertelement <2 x i16> %i.er, i16 %i.eq, i64 1
  %i.et = sitofp <2 x i16> %i.es to <2 x double>  ; 3 uses
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.ey = load i16, ptr %i.ev, align 2, !tbaa !13
  %i.ez = load i16, ptr %i.ex, align 2, !tbaa !13
  %i.fa = insertelement <2 x i16> poison, i16 %i.ey, i64 0
  %i.fb = insertelement <2 x i16> %i.fa, i16 %i.ez, i64 1
  %i.fc = sitofp <2 x i16> %i.fb to <2 x double>  ; 3 uses
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 10 ; 2 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 26 ; 2 uses
  %i.fh = load i16, ptr %i.fe, align 2, !tbaa !13
  %i.fi = load i16, ptr %i.fg, align 2, !tbaa !13
  %i.fj = insertelement <2 x i16> poison, i16 %i.fh, i64 0
  %i.fk = insertelement <2 x i16> %i.fj, i16 %i.fi, i64 1
  %i.fl = sitofp <2 x i16> %i.fk to <2 x double>  ; 3 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12 ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 28 ; 2 uses
  %i.fq = load i16, ptr %i.fn, align 2, !tbaa !13
  %i.fr = load i16, ptr %i.fp, align 2, !tbaa !13
  %i.fs = insertelement <2 x i16> poison, i16 %i.fq, i64 0
  %i.ft = insertelement <2 x i16> %i.fs, i16 %i.fr, i64 1
  %i.fu = sitofp <2 x i16> %i.ft to <2 x double>  ; 3 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dj
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 14 ; 2 uses
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.dk
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 30 ; 2 uses
  %i.fz = load i16, ptr %i.fw, align 2, !tbaa !13
  %i.ga = load i16, ptr %i.fy, align 2, !tbaa !13
  %i.gb = insertelement <2 x i16> poison, i16 %i.fz, i64 0
  %i.gc = insertelement <2 x i16> %i.gb, i16 %i.ga, i64 1
  %i.gd = sitofp <2 x i16> %i.gc to <2 x double>  ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dj
  %1 = load i16, ptr %i.dl, align 2, !tbaa !13
  %2 = load i16, ptr %i.dn, align 2, !tbaa !13
  %3 = insertelement <2 x i16> poison, i16 %1, i64 0
  %4 = insertelement <2 x i16> %3, i16 %2, i64 1
  %5 = sitofp <2 x i16> %4 to <2 x double>        ; 2 uses
  %6 = load i16, ptr %i.du, align 2, !tbaa !13
  %7 = load i16, ptr %i.dw, align 2, !tbaa !13
  %8 = insertelement <2 x i16> poison, i16 %6, i64 0
  %9 = insertelement <2 x i16> %8, i16 %7, i64 1
  %10 = sitofp <2 x i16> %9 to <2 x double>       ; 2 uses
  %11 = load i16, ptr %i.ed, align 2, !tbaa !13
  %12 = load i16, ptr %i.ef, align 2, !tbaa !13
  %13 = insertelement <2 x i16> poison, i16 %11, i64 0
  %14 = insertelement <2 x i16> %13, i16 %12, i64 1
  %15 = sitofp <2 x i16> %14 to <2 x double>      ; 2 uses
  %16 = load i16, ptr %i.em, align 2, !tbaa !13
  %17 = load i16, ptr %i.eo, align 2, !tbaa !13
  %18 = insertelement <2 x i16> poison, i16 %16, i64 0
  %19 = insertelement <2 x i16> %18, i16 %17, i64 1
  %20 = sitofp <2 x i16> %19 to <2 x double>      ; 2 uses
  %21 = load i16, ptr %i.ev, align 2, !tbaa !13
  %22 = load i16, ptr %i.ex, align 2, !tbaa !13
  %23 = insertelement <2 x i16> poison, i16 %21, i64 0
  %24 = insertelement <2 x i16> %23, i16 %22, i64 1
  %25 = sitofp <2 x i16> %24 to <2 x double>      ; 2 uses
  %26 = load i16, ptr %i.fe, align 2, !tbaa !13
  %27 = load i16, ptr %i.fg, align 2, !tbaa !13
  %28 = insertelement <2 x i16> poison, i16 %26, i64 0
  %29 = insertelement <2 x i16> %28, i16 %27, i64 1
  %30 = sitofp <2 x i16> %29 to <2 x double>      ; 2 uses
  %31 = load i16, ptr %i.fn, align 2, !tbaa !13
  %32 = load i16, ptr %i.fp, align 2, !tbaa !13
  %33 = insertelement <2 x i16> poison, i16 %31, i64 0
  %34 = insertelement <2 x i16> %33, i16 %32, i64 1
  %35 = sitofp <2 x i16> %34 to <2 x double>      ; 2 uses
  %36 = load i16, ptr %i.fw, align 2, !tbaa !13
  %37 = load i16, ptr %i.fy, align 2, !tbaa !13
  %38 = insertelement <2 x i16> poison, i16 %36, i64 0
  %39 = insertelement <2 x i16> %38, i16 %37, i64 1
  %40 = sitofp <2 x i16> %39 to <2 x double>      ; 2 uses
  %i.gf = shufflevector <2 x double> %i.gd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gg = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gh = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gi = shufflevector <2 x double> %i.fc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gj = shufflevector <2 x double> %i.et, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gk = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gl = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gm = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gn = shufflevector <2 x double> %i.gd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.go = shufflevector <2 x double> %i.fu, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gp = shufflevector <2 x double> %i.fl, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gq = shufflevector <2 x double> %i.fc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gr = shufflevector <2 x double> %i.et, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gs = shufflevector <2 x double> %i.ek, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gt = shufflevector <2 x double> %i.eb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gu = shufflevector <2 x double> %i.ds, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %41 = shufflevector <2 x double> %i.gd, <2 x double> %40, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %42 = shufflevector <2 x double> %i.fu, <2 x double> %35, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %43 = shufflevector <2 x double> %i.fl, <2 x double> %30, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %44 = shufflevector <2 x double> %i.fc, <2 x double> %25, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %45 = shufflevector <2 x double> %i.et, <2 x double> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %46 = shufflevector <2 x double> %i.ek, <2 x double> %15, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gv = shufflevector <2 x double> %10, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gw = shufflevector <2 x double> %5, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gx = shufflevector <2 x double> %40, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gy = shufflevector <2 x double> %35, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gz = shufflevector <2 x double> %30, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ha = shufflevector <2 x double> %25, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hb = shufflevector <2 x double> %20, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hc = shufflevector <2 x double> %15, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hd = shufflevector <2 x double> %10, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.he = shufflevector <2 x double> %5, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hf = shufflevector <4 x double> %i.gf, <4 x double> %i.gn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hg = shufflevector <4 x double> %i.gg, <4 x double> %i.go, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hh = shufflevector <4 x double> %i.gh, <4 x double> %i.gp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hi = shufflevector <4 x double> %i.gi, <4 x double> %i.gq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hj = shufflevector <4 x double> %i.gj, <4 x double> %i.gr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hk = shufflevector <4 x double> %i.gk, <4 x double> %i.gs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hl = shufflevector <4 x double> %i.gl, <4 x double> %i.gt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hm = shufflevector <4 x double> %i.gm, <4 x double> %i.gu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hn = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.da, <8 x double> %i.hm, <8 x double> zeroinitializer)
  %i.ho = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cz, <8 x double> %i.hl, <8 x double> %i.hn)
  %i.hp = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cy, <8 x double> %i.hk, <8 x double> %i.ho)
  %i.hq = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cx, <8 x double> %i.hj, <8 x double> %i.hp)
  %i.hr = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cw, <8 x double> %i.hi, <8 x double> %i.hq)
  %i.hs = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cv, <8 x double> %i.hh, <8 x double> %i.hr)
  %i.ht = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.cu, <8 x double> %i.hg, <8 x double> %i.hs)
  %i.hu = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.ct, <8 x double> %i.hf, <8 x double> %i.ht)
  %i.hv = shufflevector <4 x double> %41, <4 x double> %i.gx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hw = shufflevector <4 x double> %42, <4 x double> %i.gy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hx = shufflevector <4 x double> %43, <4 x double> %i.gz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hy = shufflevector <4 x double> %44, <4 x double> %i.ha, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hz = shufflevector <4 x double> %45, <4 x double> %i.hb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ia = shufflevector <4 x double> %46, <4 x double> %i.hc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ib = shufflevector <4 x double> %i.gv, <4 x double> %i.hd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ic = shufflevector <4 x double> %i.gw, <4 x double> %i.he, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.id = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.di, <8 x double> %i.ic, <8 x double> zeroinitializer)
  %i.ie = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dh, <8 x double> %i.ib, <8 x double> %i.id)
  %i.if = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dg, <8 x double> %i.ia, <8 x double> %i.ie)
  %i.ig = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.df, <8 x double> %i.hz, <8 x double> %i.if)
  %i.ih = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.de, <8 x double> %i.hy, <8 x double> %i.ig)
  %i.ii = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dd, <8 x double> %i.hx, <8 x double> %i.ih)
  %i.ij = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.dc, <8 x double> %i.hw, <8 x double> %i.ii)
  %i.ik = tail call <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.db, <8 x double> %i.hv, <8 x double> %i.ij)
  %interleaved.vec = shufflevector <8 x double> %i.hu, <8 x double> %i.ik, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  store <16 x double> %interleaved.vec, ptr %i.ge, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.il = icmp eq i64 %index.next, 8
  br i1 %i.il, label %.preheader38.preheader, label %vector.body, !llvm.loop !10

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
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 448
  %i.io = load double, ptr %i.in, align 8, !tbaa !9
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.io, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 384
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !9
  %broadcast.splatinsert207 = insertelement <2 x double> poison, double %i.ir, i64 0
  %broadcast.splat208 = shufflevector <2 x double> %broadcast.splatinsert207, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 320
  %i.iu = load double, ptr %i.it, align 8, !tbaa !9
  %broadcast.splatinsert205 = insertelement <2 x double> poison, double %i.iu, i64 0
  %broadcast.splat206 = shufflevector <2 x double> %broadcast.splatinsert205, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 256
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !9
  %broadcast.splatinsert203 = insertelement <2 x double> poison, double %i.ix, i64 0
  %broadcast.splat204 = shufflevector <2 x double> %broadcast.splatinsert203, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 192
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !9
  %broadcast.splatinsert201 = insertelement <2 x double> poison, double %i.ja, i64 0
  %broadcast.splat202 = shufflevector <2 x double> %broadcast.splatinsert201, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 128
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !9
  %broadcast.splatinsert199 = insertelement <2 x double> poison, double %i.jd, i64 0
  %broadcast.splat200 = shufflevector <2 x double> %broadcast.splatinsert199, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !9
  %broadcast.splatinsert197 = insertelement <2 x double> poison, double %i.jg, i64 0
  %broadcast.splat198 = shufflevector <2 x double> %broadcast.splatinsert197, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv64
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !9
  %broadcast.splatinsert195 = insertelement <2 x double> poison, double %.pre, i64 0
  %broadcast.splat196 = shufflevector <2 x double> %broadcast.splatinsert195, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv64 ; 8 uses
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.ji = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213, <2 x double> %broadcast.splat198, <2 x double> %i.jh)
  %i.jj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214, <2 x double> %broadcast.splat200, <2 x double> %i.ji)
  %i.jk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215, <2 x double> %broadcast.splat202, <2 x double> %i.jj)
  %i.jl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216, <2 x double> %broadcast.splat204, <2 x double> %i.jk)
  %i.jm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217, <2 x double> %broadcast.splat206, <2 x double> %i.jl)
  %i.jn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218, <2 x double> %broadcast.splat208, <2 x double> %i.jm)
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219, <2 x double> %broadcast.splat210, <2 x double> %i.jn)
  %i.jp = fadd <2 x double> %i.jo, splat (double 5.000000e-01)
  %i.jq = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.jp)
  %i.jr = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.jq)
  %i.js = sext <2 x i9> %i.jr to <2 x i16>        ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16
  %i.ju = extractelement <2 x i16> %i.js, i64 0
  store i16 %i.ju, ptr %invariant.gep, align 2, !tbaa !13
  %i.jv = extractelement <2 x i16> %i.js, i64 1
  store i16 %i.jv, ptr %i.jt, align 2, !tbaa !13
  %i.jw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.1, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.jx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.1, <2 x double> %broadcast.splat198, <2 x double> %i.jw)
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.1, <2 x double> %broadcast.splat200, <2 x double> %i.jx)
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.1, <2 x double> %broadcast.splat202, <2 x double> %i.jy)
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.1, <2 x double> %broadcast.splat204, <2 x double> %i.jz)
  %i.kb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.1, <2 x double> %broadcast.splat206, <2 x double> %i.ka)
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.1, <2 x double> %broadcast.splat208, <2 x double> %i.kb)
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.1, <2 x double> %broadcast.splat210, <2 x double> %i.kc)
  %i.ke = fadd <2 x double> %i.kd, splat (double 5.000000e-01)
  %i.kf = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ke)
  %i.kg = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.kf)
  %i.kh = sext <2 x i9> %i.kg to <2 x i16>        ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 32
  %i.kj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 48
  %i.kk = extractelement <2 x i16> %i.kh, i64 0
  store i16 %i.kk, ptr %i.ki, align 2, !tbaa !13
  %i.kl = extractelement <2 x i16> %i.kh, i64 1
  store i16 %i.kl, ptr %i.kj, align 2, !tbaa !13
  %i.km = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.2, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.kn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.2, <2 x double> %broadcast.splat198, <2 x double> %i.km)
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.2, <2 x double> %broadcast.splat200, <2 x double> %i.kn)
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.2, <2 x double> %broadcast.splat202, <2 x double> %i.ko)
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.2, <2 x double> %broadcast.splat204, <2 x double> %i.kp)
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.2, <2 x double> %broadcast.splat206, <2 x double> %i.kq)
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.2, <2 x double> %broadcast.splat208, <2 x double> %i.kr)
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.2, <2 x double> %broadcast.splat210, <2 x double> %i.ks)
  %i.ku = fadd <2 x double> %i.kt, splat (double 5.000000e-01)
  %i.kv = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.ku)
  %i.kw = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.kv)
  %i.kx = sext <2 x i9> %i.kw to <2 x i16>        ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 64
  %i.kz = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.la = extractelement <2 x i16> %i.kx, i64 0
  store i16 %i.la, ptr %i.ky, align 2, !tbaa !13
  %i.lb = extractelement <2 x i16> %i.kx, i64 1
  store i16 %i.lb, ptr %i.kz, align 2, !tbaa !13
  %i.lc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load.3, <2 x double> %broadcast.splat196, <2 x double> zeroinitializer)
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load213.3, <2 x double> %broadcast.splat198, <2 x double> %i.lc)
  %i.le = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load214.3, <2 x double> %broadcast.splat200, <2 x double> %i.ld)
  %i.lf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load215.3, <2 x double> %broadcast.splat202, <2 x double> %i.le)
  %i.lg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load216.3, <2 x double> %broadcast.splat204, <2 x double> %i.lf)
  %i.lh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load217.3, <2 x double> %broadcast.splat206, <2 x double> %i.lg)
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load218.3, <2 x double> %broadcast.splat208, <2 x double> %i.lh)
  %i.lj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load219.3, <2 x double> %broadcast.splat210, <2 x double> %i.li)
  %i.lk = fadd <2 x double> %i.lj, splat (double 5.000000e-01)
  %i.ll = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %i.lk)
  %i.lm = tail call <2 x i9> @llvm.fptosi.sat.v2i9.v2f64(<2 x double> %i.ll)
  %i.ln = sext <2 x i9> %i.lm to <2 x i16>        ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 96
  %i.lp = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 112
  %i.lq = extractelement <2 x i16> %i.ln, i64 0
  store i16 %i.lq, ptr %i.lo, align 2, !tbaa !13
  %i.lr = extractelement <2 x i16> %i.ln, i64 1
  store i16 %i.lr, ptr %i.lp, align 2, !tbaa !13
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
end_hunk_0
