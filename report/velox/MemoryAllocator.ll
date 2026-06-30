inline.NumInlined: 1479
inline.NumDeleted: 659
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt5arrayIN8facebook5velox6memory14SizeClassStatsELm20EEaSEOS4_:bb.a
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 408
  store atomic i64 %i.ew, ptr %i.ex seq_cst, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.ez = load atomic i64, ptr %i.ey seq_cst, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 416
  store atomic i64 %i.ez, ptr %i.fa seq_cst, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.fc = load atomic i64, ptr %i.fb seq_cst, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic i64 %i.fc, ptr %i.fd seq_cst, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.ff = load atomic i64, ptr %i.fe seq_cst, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 432
  store atomic i64 %i.ff, ptr %i.fg seq_cst, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !151
  store i32 %i.fj, ptr %i.fh, align 8, !tbaa !151
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 448
  %i.fl = load atomic i64, ptr %i.fk seq_cst, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 448
  store atomic i64 %i.fl, ptr %i.fm seq_cst, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.fo = load atomic i64, ptr %i.fn seq_cst, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 456
  store atomic i64 %i.fo, ptr %i.fp seq_cst, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.fr = load atomic i64, ptr %i.fq seq_cst, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 464
  store atomic i64 %i.fr, ptr %i.fs seq_cst, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.fu = load atomic i64, ptr %i.ft seq_cst, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 472
  store atomic i64 %i.fu, ptr %i.fv seq_cst, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !151
  store i32 %i.fy, ptr %i.fw, align 8, !tbaa !151
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ga = load atomic i64, ptr %i.fz seq_cst, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 488
  store atomic i64 %i.ga, ptr %i.gb seq_cst, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.gd = load atomic i64, ptr %i.gc seq_cst, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 496
  store atomic i64 %i.gd, ptr %i.ge seq_cst, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.gg = load atomic i64, ptr %i.gf seq_cst, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 504
  store atomic i64 %i.gg, ptr %i.gh seq_cst, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.gj = load atomic i64, ptr %i.gi seq_cst, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 512
  store atomic i64 %i.gj, ptr %i.gk seq_cst, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 520
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !151
  store i32 %i.gn, ptr %i.gl, align 8, !tbaa !151
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.gp = load atomic i64, ptr %i.go seq_cst, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 528
  store atomic i64 %i.gp, ptr %i.gq seq_cst, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 536
  %i.gs = load atomic i64, ptr %i.gr seq_cst, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 536
  store atomic i64 %i.gs, ptr %i.gt seq_cst, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.gv = load atomic i64, ptr %i.gu seq_cst, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 544
  store atomic i64 %i.gv, ptr %i.gw seq_cst, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 552
  %i.gy = load atomic i64, ptr %i.gx seq_cst, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 552
  store atomic i64 %i.gy, ptr %i.gz seq_cst, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !151
  store i32 %i.hc, ptr %i.ha, align 8, !tbaa !151
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.he = load atomic i64, ptr %i.hd seq_cst, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 568
  store atomic i64 %i.he, ptr %i.hf seq_cst, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 576
  %i.hh = load atomic i64, ptr %i.hg seq_cst, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 576
  store atomic i64 %i.hh, ptr %i.hi seq_cst, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.hk = load atomic i64, ptr %i.hj seq_cst, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 584
  store atomic i64 %i.hk, ptr %i.hl seq_cst, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.hn = load atomic i64, ptr %i.hm seq_cst, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 592
  store atomic i64 %i.hn, ptr %i.ho seq_cst, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.hr = load i32, ptr %i.hq, align 8, !tbaa !151
  store i32 %i.hr, ptr %i.hp, align 8, !tbaa !151
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.ht = load atomic i64, ptr %i.hs seq_cst, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 608
  store atomic i64 %i.ht, ptr %i.hu seq_cst, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.hw = load atomic i64, ptr %i.hv seq_cst, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store atomic i64 %i.hw, ptr %i.hx seq_cst, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.hz = load atomic i64, ptr %i.hy seq_cst, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 624
  store atomic i64 %i.hz, ptr %i.ia seq_cst, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.ic = load atomic i64, ptr %i.ib seq_cst, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 632
  store atomic i64 %i.ic, ptr %i.id seq_cst, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !151
  store i32 %i.ig, ptr %i.ie, align 8, !tbaa !151
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 648
  %i.ii = load atomic i64, ptr %i.ih seq_cst, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 648
  store atomic i64 %i.ii, ptr %i.ij seq_cst, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.il = load atomic i64, ptr %i.ik seq_cst, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 656
  store atomic i64 %i.il, ptr %i.im seq_cst, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 664
  %i.io = load atomic i64, ptr %i.in seq_cst, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 664
  store atomic i64 %i.io, ptr %i.ip seq_cst, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.ir = load atomic i64, ptr %i.iq seq_cst, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 672
  store atomic i64 %i.ir, ptr %i.is seq_cst, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !151
  store i32 %i.iv, ptr %i.it, align 8, !tbaa !151
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 688
  %i.ix = load atomic i64, ptr %i.iw seq_cst, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 688
  store atomic i64 %i.ix, ptr %i.iy seq_cst, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 696
  %i.ja = load atomic i64, ptr %i.iz seq_cst, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 696
  store atomic i64 %i.ja, ptr %i.jb seq_cst, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.jd = load atomic i64, ptr %i.jc seq_cst, align 8
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 704
  store atomic i64 %i.jd, ptr %i.je seq_cst, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.jg = load atomic i64, ptr %i.jf seq_cst, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 712
  store atomic i64 %i.jg, ptr %i.jh seq_cst, align 8
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.jj = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !151
  store i32 %i.jk, ptr %i.ji, align 8, !tbaa !151
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.jm = load atomic i64, ptr %i.jl seq_cst, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 728
  store atomic i64 %i.jm, ptr %i.jn seq_cst, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 736
  %i.jp = load atomic i64, ptr %i.jo seq_cst, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 736
  store atomic i64 %i.jp, ptr %i.jq seq_cst, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.js = load atomic i64, ptr %i.jr seq_cst, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 744
  store atomic i64 %i.js, ptr %i.jt seq_cst, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.jv = load atomic i64, ptr %i.ju seq_cst, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 752
  store atomic i64 %i.jv, ptr %i.jw seq_cst, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !151
  store i32 %i.jz, ptr %i.jx, align 8, !tbaa !151
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.kb = load atomic i64, ptr %i.ka seq_cst, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 768
  store atomic i64 %i.kb, ptr %i.kc seq_cst, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.ke = load atomic i64, ptr %i.kd seq_cst, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 776
  store atomic i64 %i.ke, ptr %i.kf seq_cst, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 784
  %i.kh = load atomic i64, ptr %i.kg seq_cst, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 784
  store atomic i64 %i.kh, ptr %i.ki seq_cst, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %1, i64 792
  %i.kk = load atomic i64, ptr %i.kj seq_cst, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 792
  store atomic i64 %i.kk, ptr %i.kl seq_cst, align 8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data"(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.84", align 16 ; 4 uses
  %3 = alloca %struct.rusage, align 8             ; 6 uses
  %4 = alloca %"struct.facebook::velox::memory::Stats", align 8 ; 5 uses
  %5 = alloca %"struct.facebook::velox::memory::Stats", align 8 ; 4 uses
  %6 = alloca %struct.timeval, align 8            ; 6 uses
  %7 = alloca %struct.timezone, align 4           ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !118   ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !405
  %i.a = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #19, !noalias !405 ; 0 uses
  %.val38.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !405
  %i.b = load <4 x i64>, ptr %3, align 8, !tbaa !28, !noalias !405 ; 2 uses
  %i.c = load <4 x i64>, ptr %.val38.i.i.i, align 8, !tbaa !28, !noalias !405 ; 2 uses
  %i.d = sub <4 x i64> %i.b, %i.c
  %i.e = shufflevector <4 x i64> %i.d, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.f = mul <2 x i64> %i.e, splat (i64 1000000)
  %i.g = sub <4 x i64> %i.b, %i.c
  %i.h = shufflevector <4 x i64> %i.g, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.i = add <2 x i64> %i.h, %i.f
  %i.j = trunc <2 x i64> %i.i to <2 x i32>
  %i.k = sitofp <2 x i32> %i.j to <2 x float>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !405
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !212, !noalias !405 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !102, !noalias !405
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !noalias !405
  call void %i.p(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::memory::Stats") align 8 %5, ptr noundef nonnull align 8 dereferenceable(888) %i.m), !noalias !405, !inline_history !406
  %.val36.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !405
  %i.q = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 144
  call void @_ZNK8facebook5velox6memory5StatsmiERKS2_(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::memory::Stats") align 8 %4, ptr noundef nonnull align 8 dereferenceable(808) %5, ptr noundef nonnull align 8 dereferenceable(808) %i.q), !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !405
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11, !noalias !405
  %.val35.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !405
  %i.t = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11, !noalias !405
  %i.v = sub nsw i64 %i.s, %i.u
  %i.w = sitofp i64 %i.v to float
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !405
  %i.x = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef nonnull %7) #19, !noalias !405 ; 0 uses
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %6, align 8, !tbaa !28, !noalias !405
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.25.0.copyload.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8, !tbaa !28, !noalias !405
  %.val34.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !405 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 960
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.y, align 8, !tbaa !28, !noalias !405
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 968
  %.sroa.23.0.copyload.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !28, !noalias !405
  %reass.add.i41.i.i.i = sub i64 %.sroa.04.0.copyload.i.i.i, %.sroa.02.0.copyload.i.i.i
  %reass.mul.i42.i.i.i = mul i64 %reass.add.i41.i.i.i, 1000000
  %i.z = sub i64 %.sroa.25.0.copyload.i.i.i, %.sroa.23.0.copyload.i.i.i
  %i.aa = add i64 %i.z, %reass.mul.i42.i.i.i
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = sitofp i32 %i.ab to float
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105, !noalias !405
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.not.i.i.i, label %bb.b, label %_ZNKSt8functionIFlvEEclEv.exit.i.i.i

_ZNKSt8functionIFlvEEclEv.exit.i.i.i:             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !223, !noalias !405
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.af), !noalias !405, !inline_history !407
  %.val.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !405
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 952
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !392, !noalias !405
  %i.al = sub nsw i64 %i.ai, %i.ak
  %i.am = sitofp i64 %i.al to float
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt8functionIFlvEEclEv.exit.i.i.i, %bb.a
  %.0.i.i.i = phi float [ %i.am, %_ZNKSt8functionIFlvEEclEv.exit.i.i.i ], [ 0.000000e+00, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !405
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8), !noalias !405
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !102, !noalias !405
  %i.ap = getelementptr i8, ptr %i.ao, i64 -24
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !405
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 240
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !408, !noalias !405 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %.invoke.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load i8, ptr %i.au, align 8, !tbaa !421, !noalias !405
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.av, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 67
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !11, !noalias !405
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.at)
          to label %.noexc65.i.i.i unwind label %bb.s, !noalias !405

.noexc65.i.i.i:                                   ; preds = %bb.d
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !102, !noalias !405
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !405
  %i.bb = invoke noundef signext i8 %i.ba(ptr noundef nonnull align 8 dereferenceable(570) %i.at, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i unwind label %bb.s, !noalias !405, !inline_history !425

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i: ; preds = %.noexc65.i.i.i, %bb.c
  %.0.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.c ], [ %i.bb, %.noexc65.i.i.i ]
  %i.bc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.an, i8 noundef signext %.0.i.i.i.i.i.i)
          to label %.noexc67.i.i.i unwind label %bb.s, !noalias !405

.noexc67.i.i.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i
  %i.bd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %_ZNSolsEPFRSoS_E.exit.i.i.i unwind label %bb.s, !noalias !405 ; 3 uses

_ZNSolsEPFRSoS_E.exit.i.i.i:                      ; preds = %.noexc67.i.i.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !102, !noalias !405
  %i.bf = getelementptr i8, ptr %i.be, i64 -24
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !405
  %i.bh = getelementptr inbounds i8, ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !408, !noalias !405 ; 6 uses
  %.not.i.i.i69.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i69.i.i.i, label %.invoke.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSolsEPFRSoS_E.exit.i.i.i, %bb.b
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.cont.i.i.i unwind label %bb.s, !noalias !405

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70.i.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !421, !noalias !405
  %.not.i1.i.i71.i.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i1.i.i71.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 67
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !11, !noalias !405
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i72.i.i.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bj)
          to label %.noexc75.i.i.i unwind label %bb.s, !noalias !405

.noexc75.i.i.i:                                   ; preds = %bb.f
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !102, !noalias !405
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !405
  %i.br = invoke noundef signext i8 %i.bq(ptr noundef nonnull align 8 dereferenceable(570) %i.bj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i72.i.i.i unwind label %bb.s, !noalias !405, !inline_history !425

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i72.i.i.i: ; preds = %.noexc75.i.i.i, %bb.e
  %.0.i.i.i73.i.i.i = phi i8 [ %i.bn, %bb.e ], [ %i.br, %.noexc75.i.i.i ]
  %i.bs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i8 noundef signext %.0.i.i.i73.i.i.i)
          to label %.noexc77.i.i.i unwind label %bb.s, !noalias !405

.noexc77.i.i.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i72.i.i.i
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_ZNSolsEPFRSoS_E.exit44.i.i.i unwind label %bb.s, !noalias !405

_ZNSolsEPFRSoS_E.exit44.i.i.i:                    ; preds = %.noexc77.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !405
  %i.bu = fmul nnan <2 x float> %i.k, splat (float 1.000000e+02)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !426
  %i.bv = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fdiv <4 x float> %i.bw, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+06, float 1.000000e+00>
  %i.by = insertelement <4 x float> poison, float %i.w, i64 2
  %i.bz = insertelement <4 x float> %i.by, float %.0.i.i.i, i64 3
  %i.ca = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cc = fdiv <4 x float> %i.cb, %i.bx
  %12 = shufflevector <4 x float> %i.cc, <4 x float> poison, <13 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3>
  call void @llvm.masked.store.v13f32.p0(<13 x float> %12, ptr align 16 %2, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !11, !noalias !426
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.61, i64 41, i64 39321, ptr nonnull %2)
          to label %bb.g unwind label %bb.t, !noalias !405

bb.g:                                             ; preds = %_ZNSolsEPFRSoS_E.exit44.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !426
  %i.cd = load ptr, ptr %9, align 8, !tbaa !15, !noalias !405
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !37, !noalias !405
  %i.cg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef %i.cd, i64 noundef %i.cf)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.u, !noalias !405 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.g
  %i.ch = load ptr, ptr %9, align 8, !tbaa !15, !noalias !405 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !11, !noalias !405
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #32, !noalias !405
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !405
  invoke void @_ZNK8facebook5velox6memory5Stats8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(808) %4)
          to label %bb.h unwind label %bb.v, !noalias !405

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.cm = load ptr, ptr %10, align 8, !tbaa !15, !noalias !405
  %i.cn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !37, !noalias !405
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.cm, i64 noundef %i.co)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.i.i.i unwind label %bb.w, !noalias !405 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.i.i.i: ; preds = %bb.h
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !102, !noalias !405
  %i.cr = getelementptr i8, ptr %i.cq, i64 -24
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !405
  %i.ct = getelementptr inbounds i8, ptr %i.cp, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 240
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !408, !noalias !405 ; 6 uses
  %.not.i.i.i80.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i.i80.i.i.i, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81.i.i.i

bb.i:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.i.i.i
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc85.i.i.i unwind label %bb.w, !noalias !405

.noexc85.i.i.i:                                   ; preds = %bb.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !421, !noalias !405
  %.not.i1.i.i82.i.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not.i1.i.i82.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 67
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !11, !noalias !405
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83.i.i.i

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i81.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cv)
          to label %.noexc86.i.i.i unwind label %bb.w, !noalias !405

.noexc86.i.i.i:                                   ; preds = %bb.k
  %i.da = load ptr, ptr %i.cv, align 8, !tbaa !102, !noalias !405
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !405
  %i.dd = invoke noundef signext i8 %i.dc(ptr noundef nonnull align 8 dereferenceable(570) %i.cv, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83.i.i.i unwind label %bb.w, !noalias !405, !inline_history !425

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83.i.i.i: ; preds = %.noexc86.i.i.i, %bb.j
  %.0.i.i.i84.i.i.i = phi i8 [ %i.cz, %bb.j ], [ %i.dd, %.noexc86.i.i.i ]
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, i8 noundef signext %.0.i.i.i84.i.i.i)
          to label %.noexc88.i.i.i unwind label %bb.w, !noalias !405

.noexc88.i.i.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i83.i.i.i
  %i.df = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.de)
          to label %_ZNSolsEPFRSoS_E.exit46.i.i.i unwind label %bb.w, !noalias !405 ; 0 uses

_ZNSolsEPFRSoS_E.exit46.i.i.i:                    ; preds = %.noexc88.i.i.i
  %i.dg = load ptr, ptr %10, align 8, !tbaa !15, !noalias !405 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit46.i.i.i
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !11, !noalias !405
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #32, !noalias !405
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit46.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !405
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !405
  %i.dl = load ptr, ptr %i.l, align 8, !tbaa !212, !noalias !405 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !102, !noalias !405
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 136
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !405
  invoke void %i.do(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(888) %i.dl)
          to label %bb.l unwind label %bb.x, !noalias !405

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i.i.i
  %i.dp = load ptr, ptr %11, align 8, !tbaa !15, !noalias !405
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !37, !noalias !405
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.dp, i64 noundef %i.dr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit50.i.i.i unwind label %bb.y, !noalias !405 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit50.i.i.i: ; preds = %bb.l
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !102, !noalias !405
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8, !noalias !405
  %i.dw = getelementptr inbounds i8, ptr %i.ds, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 240
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !408, !noalias !405 ; 6 uses
  %.not.i.i.i91.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i91.i.i.i, label %bb.m, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i92.i.i.i

bb.m:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit50.i.i.i
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.noexc96.i.i.i unwind label %bb.y, !noalias !405

.noexc96.i.i.i:                                   ; preds = %bb.m
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i92.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit50.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  %i.ea = load i8, ptr %i.dz, align 8, !tbaa !421, !noalias !405
  %.not.i1.i.i93.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i1.i.i93.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i92.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 67
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !11, !noalias !405
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i94.i.i.i

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i92.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dy)
          to label %.noexc97.i.i.i unwind label %bb.y, !noalias !405

.noexc97.i.i.i:                                   ; preds = %bb.o
  %i.ed = load ptr, ptr %i.dy, align 8, !tbaa !102, !noalias !405
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !405
  %i.eg = invoke noundef signext i8 %i.ef(ptr noundef nonnull align 8 dereferenceable(570) %i.dy, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i94.i.i.i unwind label %bb.y, !noalias !405, !inline_history !425

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i94.i.i.i: ; preds = %.noexc97.i.i.i, %bb.n
  %.0.i.i.i95.i.i.i = phi i8 [ %i.ec, %bb.n ], [ %i.eg, %.noexc97.i.i.i ]
  %i.eh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ds, i8 noundef signext %.0.i.i.i95.i.i.i)
          to label %.noexc99.i.i.i unwind label %bb.y, !noalias !405

.noexc99.i.i.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i94.i.i.i
  %i.ei = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %_ZNSolsEPFRSoS_E.exit51.i.i.i unwind label %bb.y, !noalias !405 ; 0 uses

_ZNSolsEPFRSoS_E.exit51.i.i.i:                    ; preds = %.noexc99.i.i.i
  %i.ej = load ptr, ptr %11, align 8, !tbaa !15, !noalias !405 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit51.i.i.i
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !11, !noalias !405
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #32, !noalias !405
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit51.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !405
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.eo, ptr %0, align 8, !tbaa !36, !alias.scope !435
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ep, align 8, !tbaa !37, !alias.scope !435
  store i8 0, ptr %i.eo, align 8, !tbaa !11, !alias.scope !435
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !179, !noalias !435 ; 3 uses
  %.not.i.not.i.i.i.i.i = icmp eq ptr %i.er, null
  %i.es = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !noalias !435 ; 2 uses
  %i.eu = icmp ugt ptr %i.er, %i.et
  %.08.i.i.i.i.i.i = select i1 %i.eu, ptr %i.er, ptr %i.et ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i, null
  %.not.i.i55.i.i.i = select i1 %.not.i.not.i.i.i.i.i, i1 true, i1 %.not5.i.i.i.i.i
  br i1 %.not.i.i55.i.i.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !183, !noalias !435 ; 2 uses
  %i.ex = ptrtoint ptr %.08.i.i.i.i.i.i to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ew, i64 noundef %i.ez)
end_hunk_0
begin_hunk_1_@"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E9_M_invokeERKSt9_Any_data":bb.a
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gq) #19
  %i.gr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !405 ; 2 uses
  store ptr %i.gr, ptr %8, align 8, !tbaa !102, !noalias !405
  %i.gs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !405
  %i.gt = getelementptr i8, ptr %i.gr, i64 -24
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = getelementptr inbounds i8, ptr %8, i64 %i.gu
  store ptr %i.gs, ptr %i.gv, align 8, !tbaa !102, !noalias !405
  %i.gw = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.gw, align 8, !tbaa !184, !noalias !405
  %i.gx = getelementptr inbounds nuw i8, ptr %8, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.gx) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19, !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !405
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !405
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERSB_IS6_ESB_IFlvEEE3$_1E10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS3_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES3_IFlvEEE3$_1", ptr %0, align 8, !tbaa !252
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !118
  store ptr %.val, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8              ; 6 uses
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit" [
    i32 3, label %bb.q
    i32 2, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !207 ; 2 uses
  %i.c = load <2 x ptr>, ptr %.val6, align 8, !tbaa !118
  store <2 x ptr> %i.c, ptr %i.a, align 8, !tbaa !118
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.val5.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory12_GLOBAL__N_110TraceStateEEC2ERKS5_.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %.val5.i.i.i.i, i64 8 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory12_GLOBAL__N_110TraceStateEEC2ERKS5_.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.h = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory12_GLOBAL__N_110TraceStateEEC2ERKS5_.exit.i.i.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory12_GLOBAL__N_110TraceStateEEC2ERKS5_.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %.val6, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !207  ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !118
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !118
  %.not.i.i.i7.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i7.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory15MemoryAllocatorEEC2ERKS4_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory12_GLOBAL__N_110TraceStateEEC2ERKS5_.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !11
  %.not.i.i.i.i8.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i8.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory15MemoryAllocatorEEC2ERKS4_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory15MemoryAllocatorEEC2ERKS4_.exit.i.i.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory15MemoryAllocatorEEC2ERKS4_.exit.i.i.i.i: ; preds = %bb.k, %bb.j, %_ZNSt10shared_ptrIN8facebook5velox6memory12_GLOBAL__N_110TraceStateEEC2ERKS5_.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val6, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105  ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E15_M_init_functorIRKSK_EEvRSt9_Any_dataOT_.exit.i", label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory15MemoryAllocatorEEC2ERKS4_.exit.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val6, i64 32
  %i.x = invoke noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i32 noundef 2)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.y = load <2 x ptr>, ptr %i.u, align 8, !tbaa !118
  store <2 x ptr> %i.y, ptr %i.t, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E15_M_init_functorIRKSK_EEvRSt9_Any_dataOT_.exit.i"

bb.n:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %i.t, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i, label %.body.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = invoke noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef 3)
          to label %.body.i.i.i.i unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #34
  unreachable

.body.i.i.i.i:                                    ; preds = %bb.o, %bb.n
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @_ZNSt12__shared_ptrIN8facebook5velox6memory15MemoryAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #19
  %.val6.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !207
  tail call fastcc void @_ZNSt12__shared_ptrIN8facebook5velox6memory12_GLOBAL__N_110TraceStateELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.val6.i.i.i.i) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  resume { ptr, i32 } %i.z

"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E15_M_init_functorIRKSK_EEvRSt9_Any_dataOT_.exit.i": ; preds = %bb.m, %_ZNSt10shared_ptrIN8facebook5velox6memory15MemoryAllocatorEEC2ERKS4_.exit.i.i.i.i
  store ptr %i.a, ptr %0, align 8, !tbaa !118
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

bb.q:                                             ; preds = %bb.d
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !118 ; 3 uses
  %i.af = icmp eq ptr %.val7.i, null
  br i1 %i.af, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @"_ZZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS3_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES3_IFlvEEEN3$_1D2Ev"(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.val7.i) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #32
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E10_M_managerERSt9_Any_dataRKSM_St18_Manager_operation.exit": ; preds = %bb.r, %bb.q, %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox6memory15MemoryAllocator15getTracingHooksERSt8functionIFvvEERS5_IFNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEES5_IFlvEEE3$_1E15_M_init_functorIRKSK_EEvRSt9_Any_dataOT_.exit.i", %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #2

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v13f32.p0(<13 x float>, ptr captures(none), <13 x i1>) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { cold noreturn }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { noreturn }
attributes #32 = { builtin nounwind }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind willreturn memory(none) }
attributes #36 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!10 = distinct !{!10, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!11 = !{!5, !5, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!14 = distinct !{!14, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!15 = !{!16, !18, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !20, i64 8, !5, i64 16}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!24 = distinct !{!24, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!27 = distinct !{!27, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!28 = !{!20, !20, i64 0}
!29 = !{!30, !31, i64 8}
!30 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 long", !19, i64 0}
!32 = !{!30, !31, i64 16}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"branch_weights", i32 1023, i32 1}
!36 = !{!17, !18, i64 0}
!37 = !{!16, !20, i64 8}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZN3fmt3v116formatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!40 = distinct !{!40, !"_ZN3fmt3v116formatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!41 = !{!42, !42, i64 0}
!42 = !{!"_ZTSN8facebook5velox6memory15MemoryAllocator4KindE", !5, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN8facebook5velox6memory15MemoryAllocator10kindStringB5cxx11ENS2_4KindE: argument 0"}
!45 = distinct !{!45, !"_ZN8facebook5velox6memory15MemoryAllocator10kindStringB5cxx11ENS2_4KindE"}
!46 = !{!47, !44}
!47 = distinct !{!47, !48, !"_ZN3fmt3v116formatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_: argument 0"}
!48 = distinct !{!48, !"_ZN3fmt3v116formatIJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOS9_"}
!49 = !{!31, !31, i64 0}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_ZN8facebook5velox12errorMessageIJmmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!52 = distinct !{!52, !"_ZN8facebook5velox12errorMessageIJmmmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_S3_S3_ELi4ELi0ELy17476EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!55 = distinct !{!55, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_S3_S3_ELi4ELi0ELy17476EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 int", !19, i64 0}
!59 = !{!57, !58, i64 8}
!60 = !{!57, !58, i64 16}
!61 = !{!30, !31, i64 0}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN8facebook5velox12errorMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!64 = distinct !{!64, !"_ZN8facebook5velox12errorMessageIJmjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!65 = !{!66, !4, i64 48}
!66 = !{!"_ZTSN8facebook5velox6memory15MemoryAllocator7SizeMixE", !67, i64 0, !67, i64 24, !4, i64 48, !4, i64 52}
!67 = !{!"_ZTSSt6vectorIiSaIiEE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !57, i64 0}
!70 = distinct !{!70, !34}
!71 = !{!66, !4, i64 52}
!72 = !{!"branch_weights", i32 2146410443, i32 1073205}
!73 = !{!"branch_weights", !"expected", i32 2146409906, i32 1073742}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN8facebook5velox12errorMessageIJmtEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!76 = distinct !{!76, !"_ZN8facebook5velox12errorMessageIJmtEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmKtELi2ELi0ELy36EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!79 = distinct !{!79, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmKtELi2ELi0ELy36EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!82 = distinct !{!82, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!85 = distinct !{!85, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!86 = distinct !{!86, !34}
!87 = !{!88, !4, i64 32}
!88 = !{!"_ZTSN8facebook5velox6memory10AllocationE", !89, i64 0, !90, i64 8, !4, i64 32}
!89 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !19, i64 0}
!90 = !{!"_ZTSSt6vectorIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !91, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE12_Vector_implE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox6memory10Allocation7PageRunESaIS4_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!94 = !{!"p1 _ZTSN8facebook5velox6memory10Allocation7PageRunE", !19, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 _ZTSN8facebook5velox6memory10AllocationE", !19, i64 0}
!97 = !{!98, !99, i64 8}
!98 = !{!"_ZTSZN8facebook5velox6memory15MemoryAllocator21allocateNonContiguousEmRNS1_10AllocationESt8functionIFvmbEEmE3$_1", !96, i64 0, !99, i64 8, !100, i64 16}
!99 = !{!"p1 _ZTSN8facebook5velox6memory15MemoryAllocatorE", !19, i64 0}
!100 = !{!"p1 _ZTSSt8functionIFvmbEE", !19, i64 0}
!101 = !{!100, !100, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"vtable pointer", !6, i64 0}
!104 = !{ptr @"_ZZN8facebook5velox6memory15MemoryAllocator21allocateNonContiguousEmRNS1_10AllocationESt8functionIFvmbEEmENK3$_1clEm"}
!105 = !{!106, !19, i64 16}
!106 = !{!"_ZTSSt14_Function_base", !5, i64 0, !19, i64 16}
!107 = !{!108, !108, i64 0}
!108 = !{!"bool", !5, i64 0}
!109 = !{!110, !19, i64 24}
!110 = !{!"_ZTSSt8functionIFvmbEE", !106, i64 0, !19, i64 24}
!111 = distinct !{ptr @"_ZZN8facebook5velox6memory15MemoryAllocator21allocateNonContiguousEmRNS1_10AllocationESt8functionIFvmbEEmENK3$_1clEm", null}
!112 = distinct !{null}
!113 = !{!114, !19, i64 0}
!114 = !{!"_ZTSNSt15__exception_ptr13exception_ptrE", !19, i64 0}
!115 = !{!99, !99, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 _ZTSN8facebook5velox6memory15MemoryAllocator7SizeMixE", !19, i64 0}
!118 = !{!19, !19, i64 0}
!119 = !{!120, !19, i64 24}
!120 = !{!"_ZTSSt8functionIFbRN8facebook5velox6memory10AllocationEEE", !106, i64 0, !19, i64 24}
!121 = !{!98, !96, i64 0}
!122 = !{}
!123 = !{i64 8}
!124 = !{!98, !100, i64 16}
!125 = !{!126, !126, i64 0}
!126 = !{!"p2 _ZTSN8facebook5velox6memory10AllocationE", !127, i64 0}
!127 = !{!"any p2 pointer", !19, i64 0}
!128 = !{!129, !99, i64 8}
!129 = !{!"_ZTSZN8facebook5velox6memory15MemoryAllocator18allocateContiguousEmPNS1_10AllocationERNS1_20ContiguousAllocationESt8functionIFvmbEEmE3$_1", !126, i64 0, !99, i64 8, !130, i64 16, !100, i64 24}
!130 = !{!"p1 _ZTSN8facebook5velox6memory20ContiguousAllocationE", !19, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{ptr @"_ZZN8facebook5velox6memory15MemoryAllocator18allocateContiguousEmPNS1_10AllocationERNS1_20ContiguousAllocationESt8functionIFvmbEEmENK3$_1clEm"}
!133 = distinct !{ptr @"_ZZN8facebook5velox6memory15MemoryAllocator18allocateContiguousEmPNS1_10AllocationERNS1_20ContiguousAllocationESt8functionIFvmbEEmENK3$_1clEm", null}
!134 = !{!129, !126, i64 0}
!135 = !{!129, !130, i64 16}
!136 = !{!129, !100, i64 24}
!137 = !{!138, !20, i64 16}
!138 = !{!"_ZTSN8facebook5velox6memory20ContiguousAllocationE", !89, i64 0, !19, i64 8, !20, i64 16, !20, i64 24}
!139 = !{!138, !20, i64 24}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!142 = distinct !{!142, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!145 = distinct !{!145, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!146 = !{!147, !147, i64 0}
!147 = !{!"short", !5, i64 0}
!148 = !{!127, !127, i64 0}
!149 = !{!150, !150, i64 0}
!150 = !{!"p1 short", !19, i64 0}
!151 = !{!152, !4, i64 0}
!152 = !{!"_ZTSN8facebook5velox6memory14SizeClassStatsE", !4, i64 0, !153, i64 8, !153, i64 16, !155, i64 24, !155, i64 32}
!153 = !{!"_ZTSSt6atomicImE", !154, i64 0}
!154 = !{!"_ZTSSt13__atomic_baseImE", !20, i64 0}
!155 = !{!"_ZTSSt6atomicIlE", !156, i64 0}
!156 = !{!"_ZTSSt13__atomic_baseIlE", !20, i64 0}
!157 = !{!158, !20, i64 800}
end_hunk_1
