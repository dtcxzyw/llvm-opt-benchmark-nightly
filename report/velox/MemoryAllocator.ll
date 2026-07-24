inline.NumInlined: 1479
inline.NumDeleted: 659
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt5arrayIN8facebook5velox6memory14SizeClassStatsELm20EEaSEOS4_:bb.a
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !400)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !406
  %i.a = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %3) #19, !noalias !406 ; 0 uses
  %.val38.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !406
  %i.b = load <4 x i64>, ptr %3, align 8, !tbaa !28, !noalias !406 ; 2 uses
  %i.c = load <4 x i64>, ptr %.val38.i.i.i, align 8, !tbaa !28, !noalias !406 ; 2 uses
  %12 = shufflevector <4 x i64> %i.b, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.d = shufflevector <4 x i64> %i.c, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %13 = sub <2 x i64> %12, %i.d
  %i.e = mul <2 x i64> %13, splat (i64 1000000)
  %14 = shufflevector <4 x i64> %i.b, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.f = shufflevector <4 x i64> %i.c, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %15 = sub <2 x i64> %14, %i.f
  %i.g = add <2 x i64> %15, %i.e
  %i.h = trunc <2 x i64> %i.g to <2 x i32>
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !406
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !212, !noalias !406 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !102, !noalias !406
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !noalias !406
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::memory::Stats") align 8 %5, ptr noundef nonnull align 8 dereferenceable(888) %i.k), !noalias !406, !inline_history !407
  %.val36.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !406
  %i.o = getelementptr inbounds nuw i8, ptr %.val36.i.i.i, i64 144
  call void @_ZNK8facebook5velox6memory5StatsmiERKS2_(ptr dead_on_unwind nonnull writable sret(%"struct.facebook::velox::memory::Stats") align 8 %4, ptr noundef nonnull align 8 dereferenceable(808) %5, ptr noundef nonnull align 8 dereferenceable(808) %i.o), !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !406
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11, !noalias !406
  %.val35.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !406
  %i.r = getelementptr inbounds nuw i8, ptr %.val35.i.i.i, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !11, !noalias !406
  %i.t = sub nsw i64 %i.q, %i.s
  %i.u = sitofp i64 %i.t to float
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !406
  %i.v = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef nonnull %7) #19, !noalias !406 ; 0 uses
  %.sroa.04.0.copyload.i.i.i = load i64, ptr %6, align 8, !tbaa !28, !noalias !406
  %.sroa.25.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.25.0.copyload.i.i.i = load i64, ptr %.sroa.25.0..sroa_idx.i.i.i, align 8, !tbaa !28, !noalias !406
  %.val34.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !406 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 960
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.w, align 8, !tbaa !28, !noalias !406
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val34.i.i.i, i64 968
  %.sroa.23.0.copyload.i.i.i = load i64, ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !28, !noalias !406
  %reass.add.i41.i.i.i = sub i64 %.sroa.04.0.copyload.i.i.i, %.sroa.02.0.copyload.i.i.i
  %reass.mul.i42.i.i.i = mul i64 %reass.add.i41.i.i.i, 1000000
  %i.x = sub i64 %.sroa.25.0.copyload.i.i.i, %.sroa.23.0.copyload.i.i.i
  %i.y = add i64 %i.x, %reass.mul.i42.i.i.i
  %i.z = trunc i64 %i.y to i32
  %i.aa = sitofp i32 %i.z to float
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !105, !noalias !406
  %.not.i.i.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.not.i.i.i, label %bb.b, label %_ZNKSt8functionIFlvEEclEv.exit.i.i.i

_ZNKSt8functionIFlvEEclEv.exit.i.i.i:             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !223, !noalias !406
  %i.ag = call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(32) %i.ad), !noalias !406, !inline_history !408
  %.val.i.i.i = load ptr, ptr %.val, align 8, !tbaa !220, !noalias !406
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 952
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !393, !noalias !406
  %i.aj = sub nsw i64 %i.ag, %i.ai
  %i.ak = sitofp i64 %i.aj to float
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt8functionIFlvEEclEv.exit.i.i.i, %bb.a
  %.0.i.i.i = phi float [ %i.ak, %_ZNKSt8functionIFlvEEclEv.exit.i.i.i ], [ 0.000000e+00, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19, !noalias !406
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %8), !noalias !406
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !102, !noalias !406
  %i.an = getelementptr i8, ptr %i.am, i64 -24
  %i.ao = load i64, ptr %i.an, align 8, !noalias !406
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !409, !noalias !406 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i, label %.invoke.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  %i.at = load i8, ptr %i.as, align 8, !tbaa !422, !noalias !406
  %.not.i1.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i1.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 67
  %i.av = load i8, ptr %i.au, align 1, !tbaa !11, !noalias !406
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ar)
          to label %.noexc65.i.i.i unwind label %bb.s, !noalias !406

.noexc65.i.i.i:                                   ; preds = %bb.d
  %i.aw = load ptr, ptr %i.ar, align 8, !tbaa !102, !noalias !406
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !406
  %i.az = invoke noundef signext i8 %i.ay(ptr noundef nonnull align 8 dereferenceable(570) %i.ar, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i unwind label %bb.s, !noalias !406, !inline_history !426

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i: ; preds = %.noexc65.i.i.i, %bb.c
  %.0.i.i.i.i.i.i = phi i8 [ %i.av, %bb.c ], [ %i.az, %.noexc65.i.i.i ]
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.al, i8 noundef signext %.0.i.i.i.i.i.i)
          to label %.noexc67.i.i.i unwind label %bb.s, !noalias !406

.noexc67.i.i.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i.i
  %i.bb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_ZNSolsEPFRSoS_E.exit.i.i.i unwind label %bb.s, !noalias !406 ; 3 uses

_ZNSolsEPFRSoS_E.exit.i.i.i:                      ; preds = %.noexc67.i.i.i
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !102, !noalias !406
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !406
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !409, !noalias !406 ; 6 uses
  %.not.i.i.i69.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i69.i.i.i, label %.invoke.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSolsEPFRSoS_E.exit.i.i.i, %bb.b
  invoke void @_ZSt16__throw_bad_castv() #31
          to label %.cont.i.i.i unwind label %bb.s, !noalias !406

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70.i.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !422, !noalias !406
  %.not.i1.i.i71.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i1.i.i71.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 67
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !11, !noalias !406
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i72.i.i.i

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i70.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bh)
          to label %.noexc75.i.i.i unwind label %bb.s, !noalias !406

.noexc75.i.i.i:                                   ; preds = %bb.f
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !102, !noalias !406
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !406
  %i.bp = invoke noundef signext i8 %i.bo(ptr noundef nonnull align 8 dereferenceable(570) %i.bh, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i72.i.i.i unwind label %bb.s, !noalias !406, !inline_history !426

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i72.i.i.i: ; preds = %.noexc75.i.i.i, %bb.e
  %.0.i.i.i73.i.i.i = phi i8 [ %i.bl, %bb.e ], [ %i.bp, %.noexc75.i.i.i ]
  %i.bq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i8 noundef signext %.0.i.i.i73.i.i.i)
          to label %.noexc77.i.i.i unwind label %bb.s, !noalias !406

.noexc77.i.i.i:                                   ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i72.i.i.i
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bq)
          to label %_ZNSolsEPFRSoS_E.exit44.i.i.i unwind label %bb.s, !noalias !406

_ZNSolsEPFRSoS_E.exit44.i.i.i:                    ; preds = %.noexc77.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19, !noalias !406
  %i.bs = fmul nnan <2 x float> %i.i, splat (float 1.000000e+02)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19, !noalias !427
  %i.bt = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fdiv <4 x float> %i.bu, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+06, float 1.000000e+00>
  %i.bw = insertelement <4 x float> poison, float %i.u, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %.0.i.i.i, i64 3
  %i.by = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ca = fdiv <4 x float> %i.bz, %i.bv
  %i.cb = shufflevector <4 x float> %i.ca, <4 x float> poison, <13 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 3>
  call void @llvm.masked.store.v13f32.p0(<13 x float> %i.cb, ptr align 16 %2, <13 x i1> <i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true, i1 false, i1 false, i1 false, i1 true>), !tbaa !11, !noalias !427
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.61, i64 41, i64 39321, ptr nonnull %2)
          to label %bb.g unwind label %bb.t, !noalias !406

bb.g:                                             ; preds = %_ZNSolsEPFRSoS_E.exit44.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19, !noalias !427
  %i.cc = load ptr, ptr %9, align 8, !tbaa !15, !noalias !406
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !37, !noalias !406
  %i.cf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.cc, i64 noundef %i.ce)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i unwind label %bb.u, !noalias !406 ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i: ; preds = %bb.g
  %i.cg = load ptr, ptr %9, align 8, !tbaa !15, !noalias !406 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !11, !noalias !406
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #32, !noalias !406
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19, !noalias !406
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19, !noalias !406
  invoke void @_ZNK8facebook5velox6memory5Stats8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(808) %4)
          to label %bb.h unwind label %bb.v, !noalias !406

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.cl = load ptr, ptr %10, align 8, !tbaa !15, !noalias !406
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !37, !noalias !406
  %i.co = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef %i.cl, i64 noundef %i.cn)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.i.i.i unwind label %bb.w, !noalias !406 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit45.i.i.i: ; preds = %bb.h
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !102, !noalias !406
end_hunk_0
