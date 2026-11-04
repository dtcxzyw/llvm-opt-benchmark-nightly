Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/affine_feature2d?download=true
inline.NumInlined: 720
inline.NumDeleted: 255
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN12_GLOBAL__N_126calcAffineCovariantRegionsERKN2cv3MatERKSt6vectorINS0_8KeyPointESaIS5_EERS4_INS0_11xfeatures2d17Elliptic_KeyPointESaISB_EE:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %49, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %52, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %52, i64 20
  %i.ch = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %51, i64 432
  %i.cj = getelementptr inbounds nuw i8, ptr %51, i64 224
  %i.ck = getelementptr inbounds nuw i8, ptr %51, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %53, i64 20
  %i.cn = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %54, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %25, i64 128
  %i.ct = getelementptr inbounds nuw i8, ptr %26, i64 4
  %i.cu = getelementptr inbounds nuw i8, ptr %26, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %26, i64 128
  %i.cw = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.cy = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %27, i64 128
  %i.db = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %56, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %57, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %55, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %55, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %55, i64 128
  %i.dj = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %71, i64 4 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %71, i64 24 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %71, i64 128 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %72, i64 4 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %72, i64 24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %72, i64 128 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %73, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %73, i64 24 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %73, i64 128 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ea = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.eb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %18, i64 432
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 224
  %i.ej = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %19, i64 432
  %i.el = getelementptr inbounds nuw i8, ptr %19, i64 224
  %i.em = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.eq = getelementptr inbounds nuw i8, ptr %22, i64 432
  %i.er = getelementptr inbounds nuw i8, ptr %22, i64 224
  %i.es = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.et = getelementptr inbounds nuw i8, ptr %23, i64 432
  %i.eu = getelementptr inbounds nuw i8, ptr %23, i64 224
  %i.ev = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %87, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %87, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %88, i64 8
  %i.ez = getelementptr inbounds nuw i8, ptr %88, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %89, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 432
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ff = getelementptr inbounds nuw i8, ptr %5, i64 432
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %85, i64 4 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %85, i64 24 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %85, i64 128 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %8, i64 432
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 224
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %9, i64 432
  %i.fp = getelementptr inbounds nuw i8, ptr %9, i64 224
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %86, i64 4
  %i.fs = getelementptr inbounds nuw i8, ptr %86, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %86, i64 128
  %i.fu = getelementptr inbounds nuw i8, ptr %90, i64 36 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %90, i64 20
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv11xfeatures2d17Elliptic_KeyPointESaIS2_EE9push_backERKS2_.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %91) #21
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !33 ; 2 uses
  %i.ga = load ptr, ptr %2, align 8, !tbaa !34    ; 2 uses
  %.not85 = icmp eq ptr %i.fz, %i.ga
  br i1 %.not85, label %._crit_edge84, label %.lr.ph83

.lr.ph83:                                         ; preds = %._crit_edge
  %i.gb = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %92, i64 36 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %93, i64 36 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %92, i64 20
  %i.gg = getelementptr inbounds nuw i8, ptr %93, i64 20
  %i.gh = getelementptr inbounds nuw i8, ptr %93, i64 44
  %i.gi = getelementptr inbounds nuw i8, ptr %92, i64 44
  %i.gj = getelementptr inbounds nuw i8, ptr %93, i64 40
  %i.gk = getelementptr inbounds nuw i8, ptr %92, i64 40
  br label %bb.et

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv11xfeatures2d17Elliptic_KeyPointESaIS2_EE9push_backERKS2_.exit
  %i.gl = phi ptr [ %i.c, %.lr.ph ], [ %i.ado, %_ZNSt6vectorIN2cv11xfeatures2d17Elliptic_KeyPointESaIS2_EE9push_backERKS2_.exit ]
  %.076 = phi i64 [ 0, %.lr.ph ], [ %i.adm, %_ZNSt6vectorIN2cv11xfeatures2d17Elliptic_KeyPointESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.gm = getelementptr inbounds nuw [28 x i8], ptr %i.gl, i64 %.076 ; 2 uses
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.gm, align 4, !tbaa !36
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !36 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #21
  %i.gn = fmul float %.sroa.5.0.copyload, 5.000000e-01
  %i.go = insertelement <4 x float> poison, float %i.gn, i64 0
  %i.gp = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.go)
  %.sroa.2.0.insert.ext.i = zext i32 %i.gp to i64
  %.sroa.0.0.insert.insert.i = mul nuw i64 %.sroa.2.0.insert.ext.i, 4294967297
  %i.gq = fdiv float %.sroa.5.0.copyload, 6.000000e+00
  call void @_ZN2cv11xfeatures2d17Elliptic_KeyPointC1ENS_6Point_IfEEfNS_5Size_IiEEff(ptr noundef nonnull align 8 dereferenceable(72) %90, <2 x float> %.sroa.017.0.copyload, float noundef 0.000000e+00, i64 %.sroa.0.0.insert.insert.i, float noundef %.sroa.5.0.copyload, float noundef %i.gq)
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %68, i8 0, i64 24, i1 false), !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #21
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %69, align 16, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %70) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %71) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %72) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %73) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %74) #21
  %i.gr = load float, ptr %i.g, align 4, !tbaa !42
  %i.gs = load <2 x float>, ptr %i.h, align 8, !tbaa !36
  %i.gt = fptosi <2 x float> %i.gs to <2 x i32>
  %i.gu = load float, ptr %i.i, align 8, !tbaa !43
  %i.gv = fmul float %i.gu, 5.000000e-01
  %i.gw = fmul float %i.gv, 1.400000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %76) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.en, %bb.b
  %.0160489.i = phi float [ %i.gw, %bb.b ], [ %.3.i, %bb.en ] ; 5 uses
  %.0171488.i = phi i32 [ 0, %bb.b ], [ %i.adc, %bb.en ] ; 2 uses
  %.0188485.i = phi float [ %i.gr, %bb.b ], [ %.135.i.i, %bb.en ] ; 3 uses
  %i.gx = phi <2 x i32> [ %i.gt, %bb.b ], [ %i.xc, %bb.en ] ; 3 uses
  %i.gy = load float, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.gz = load float, ptr %i.f, align 4, !tbaa !36 ; 3 uses
  %i.ha = load <2 x float>, ptr %69, align 16, !tbaa !36 ; 4 uses
  store <2 x float> %i.ha, ptr %68, align 8
  store float 0.000000e+00, ptr %.sroa.5393.0..sroa_idx.i, align 8
  store float %i.gy, ptr %.sroa.6394.0..sroa_idx.i, align 4
  store float %i.gz, ptr %.sroa.7395.0..sroa_idx.i, align 8
  store float 0.000000e+00, ptr %.sroa.8396.0..sroa_idx.i, align 4, !tbaa !44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %68, i64 24, i1 false), !tbaa.struct !45
  %i.hb = fneg float %i.gy
  %i.hc = extractelement <2 x float> %i.ha, i64 1
  %i.hd = fmul float %i.hc, %i.hb
  %i.he = extractelement <2 x float> %i.ha, i64 0
  %i.hf = call float @llvm.fmuladd.f32(float %i.he, float %i.gz, float %i.hd)
  %i.hg = shufflevector <2 x i32> %i.gx, <2 x i32> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.hh = insertelement <2 x float> %i.ha, float %i.gz, i64 1
  %i.hi = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fdiv <2 x float> %i.hh, %i.hj
  %i.hl = fmul <2 x float> %i.hk, splat (float 3.000000e+00)
  %i.hm = insertelement <2 x float> poison, float %.0188485.i, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = fmul <2 x float> %i.hn, %i.hl
  %i.hp = fmul <2 x float> %i.ho, splat (float 1.400000e+00)
  %i.hq = call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.hp) ; 3 uses
  %i.hr = load <2 x i32>, ptr %i.k, align 8, !tbaa !46
  %i.hs = xor <2 x i32> %i.hg, splat (i32 -1)
  %i.ht = add <2 x i32> %i.hr, %i.hs
  %i.hu = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.hg, <2 x i32> %i.ht)
  %i.hv = sitofp <2 x i32> %i.hu to <2 x float>   ; 2 uses
  %i.hw = fcmp olt <2 x float> %i.hq, %i.hv
  %i.hx = select <2 x i1> %i.hw, <2 x float> %i.hq, <2 x float> %i.hv ; 2 uses
  %i.hy = fptosi <2 x float> %i.hq to <2 x i32>   ; 2 uses
  %i.hz = shufflevector <2 x i32> %i.hy, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ia = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.hg, <2 x i32> %i.hy) ; 2 uses
  %i.ib = sub nsw <2 x i32> %i.gx, %i.hz
  %i.ic = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ib, <2 x i32> zeroinitializer)
  store <2 x i32> %i.ic, ptr %75, align 8, !tbaa !46
  %i.id = fptosi <2 x float> %i.hx to <2 x i32>
  %i.ie = add <2 x i32> %i.ia, splat (i32 1)
  %i.if = add <2 x i32> %i.ie, %i.id
  %i.ig = shufflevector <2 x i32> %i.if, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ig, ptr %.sroa.5362.0..sroa_idx.i, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #21
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %77, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 4 dereferenceable(16) %75)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i unwind label %bb.e

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i:             ; preds = %bb.c
  %i.ih = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %74, ptr noundef nonnull align 8 dereferenceable(208) %77)
          to label %bb.d unwind label %bb.f       ; 0 uses

bb.d:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %77) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #21
  %i.ii = sitofp <2 x i32> %i.ia to <2 x float>   ; 2 uses
  %i.ij = fcmp ole <2 x float> %i.hx, zeroinitializer ; 2 uses
  %94 = extractelement <2 x i1> %i.ij, i64 0
  %95 = extractelement <2 x i1> %i.ij, i64 1
  %or.cond3.i = select i1 %95, i1 true, i1 %94
  br i1 %or.cond3.i, label %.loopexit, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit.i
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %77) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.il, %bb.f ], [ %i.ik, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #21
  br label %bb.eo

bb.h:                                             ; preds = %bb.d
  %i.im = load float, ptr %69, align 16, !tbaa !36 ; 2 uses
  %i.in = load <2 x float>, ptr %i.d, align 4, !tbaa !36
  %i.io = load <2 x i32>, ptr %i.l, align 8, !tbaa !46
  %i.ip = sitofp <2 x i32> %i.io to <2 x float>   ; 3 uses
  %i.iq = fmul <2 x float> %i.in, %i.ip           ; 3 uses
  %i.ir = fcmp olt <2 x float> %i.iq, zeroinitializer
  %i.is = select <2 x i1> %i.ir, <2 x float> %i.iq, <2 x float> zeroinitializer ; 3 uses
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iu = fneg <2 x float> %i.is                  ; 2 uses
  %i.iv = extractelement <2 x float> %i.iu, i64 0
  store float %i.iv, ptr %.sroa.5393.0..sroa_idx.i, align 8, !tbaa !36
  %i.iw = extractelement <2 x float> %i.iu, i64 1
  store float %i.iw, ptr %.sroa.8396.0..sroa_idx.i, align 4, !tbaa !36
  %i.ix = call float @llvm.fmuladd.f32(float %.0160489.i, float 2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.iy = load <2 x float>, ptr %i.e, align 8, !tbaa !36 ; 2 uses
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ja = insertelement <2 x float> %i.iz, float %i.im, i64 1
  %i.jb = fmul <2 x float> %i.ja, %i.ip           ; 3 uses
  %i.jc = insertelement <2 x float> %i.iy, float %i.im, i64 1
  %i.jd = shufflevector <2 x float> %i.ip, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.je = shufflevector <2 x float> %i.jb, <2 x float> %i.iq, <2 x i32> <i32 0, i32 2>
  %i.jf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.jd, <2 x float> %i.je) ; 2 uses
  %i.jg = fcmp ogt <2 x float> %i.jb, %i.jf
  %i.jh = select <2 x i1> %i.jg, <2 x float> %i.jb, <2 x float> %i.jf
  %i.ji = fsub <2 x float> %i.jh, %i.it           ; 2 uses
  %i.jj = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fcmp ult <2 x float> %i.ji, %i.jk       ; 2 uses
  %96 = extractelement <2 x i1> %i.jl, i64 0
  %97 = extractelement <2 x i1> %i.jl, i64 1
  %or.cond249.i = select i1 %97, i1 true, i1 %96
  br i1 %or.cond249.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %78) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #21
  store i32 0, ptr %i.m, align 8, !tbaa !47
  store i32 0, ptr %i.n, align 4, !tbaa !48
  store i32 16842752, ptr %79, align 8, !tbaa !25
  store ptr %74, ptr %i.o, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #21
  store i64 0, ptr %i.q, align 8
  store i32 33619968, ptr %80, align 8, !tbaa !25
  store ptr %78, ptr %i.p, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #21
  store i32 -1056833531, ptr %81, align 8, !tbaa !25
  store ptr %68, ptr %i.s, align 8, !tbaa !24
  store i64 8589934595, ptr %i.r, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %82, i8 0, i64 32, i1 false)
  %i.jm = fptosi <2 x float> %i.ji to <2 x i32>   ; 2 uses
  %i.jn = extractelement <2 x i32> %i.jm, i64 0
  %i.jo = zext i32 %i.jn to i64
  %.sroa.2359.0.insert.shift.i = shl nuw i64 %i.jo, 32
  %i.jp = extractelement <2 x i32> %i.jm, i64 1
  %i.jq = zext i32 %i.jp to i64
  %.sroa.0358.0.insert.insert.i = or disjoint i64 %.sroa.2359.0.insert.shift.i, %i.jq
  invoke void @_ZN2cv10warpAffineERKNS_11_InputArrayERKNS_12_OutputArrayES2_NS_5Size_IiEEiiRKNS_7Scalar_IdEENS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull align 8 dereferenceable(24) %81, i64 %.sroa.0358.0.insert.insert.i, i32 noundef 3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %82, i32 noundef 0)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #21
  %i.jr = load <4 x float>, ptr %69, align 16, !tbaa !36 ; 2 uses
  %i.js = shufflevector <4 x float> %i.jr, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.jt = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ju = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jt, <2 x float> zeroinitializer)
  %i.jv = shufflevector <4 x float> %i.jr, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.jw = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.jw, <2 x float> %i.ju)
  %i.jy = fsub <2 x float> %i.jx, %i.is
  %i.jz = fptosi <2 x float> %i.jy to <2 x i32>   ; 4 uses
  %i.ka = load i32, ptr %i.t, align 8, !tbaa !101
  %i.kb = sitofp i32 %i.ka to float
  %i.kc = fcmp olt float %i.ix, %i.kb
  br i1 %i.kc, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.kd = load i32, ptr %i.u, align 4, !tbaa !102
  %i.ke = sitofp i32 %i.kd to float
  %i.kf = fcmp olt float %i.ix, %i.ke
  br i1 %i.kf, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.kg = load <2 x i32>, ptr %i.t, align 8, !tbaa !46
  %i.kh = shufflevector <2 x i32> %i.kg, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.ki = call float @llvm.ceil.f32(float %.0160489.i)
  %i.kj = fptosi float %i.ki to i32
  %i.kk = insertelement <2 x i32> poison, i32 %i.kj, i64 0
  %i.kl = shufflevector <2 x i32> %i.kk, <2 x i32> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.km = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.jz, <2 x i32> %i.kl) ; 2 uses
  %i.kn = sub nsw <2 x i32> %i.jz, %i.kl
  %i.ko = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kn, <2 x i32> zeroinitializer)
  store <2 x i32> %i.ko, ptr %75, align 8, !tbaa !46
  %i.kp = xor <2 x i32> %i.jz, splat (i32 -1)
  %i.kq = add <2 x i32> %i.kh, %i.kp
  %i.kr = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.kq, <2 x i32> %i.kl)
  %i.ks = add <2 x i32> %i.km, splat (i32 1)
  %i.kt = add <2 x i32> %i.ks, %i.kr
  store <2 x i32> %i.kt, ptr %.sroa.5362.0..sroa_idx.i, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #21
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %83, ptr noundef nonnull align 8 dereferenceable(208) %78, ptr noundef nonnull align 4 dereferenceable(16) %75)
          to label %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit266.i unwind label %bb.o

_ZNK2cv3MatclERKNS_5Rect_IiEE.exit266.i:          ; preds = %bb.l
  %i.ku = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %70, ptr noundef nonnull align 8 dereferenceable(208) %83)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit266.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %83) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #21
  br label %bb.u

bb.n:                                             ; preds = %bb.i
  %i.kv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #21
  br label %.body.i

bb.o:                                             ; preds = %bb.l
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNK2cv3MatclERKNS_5Rect_IiEE.exit266.i
  %i.kx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %83) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn234.i = phi { ptr, i32 } [ %i.kx, %bb.p ], [ %i.kw, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #21
  br label %.body.i

bb.r:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #21
  store i64 0, ptr %i.w, align 8
  store i32 33619968, ptr %84, align 8, !tbaa !25
  store ptr %70, ptr %i.v, align 8, !tbaa !24
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %78, ptr noundef nonnull align 8 dereferenceable(24) %84)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #21
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #21
  br label %.body.i

bb.u:                                             ; preds = %bb.s, %bb.m
  %i.kz = phi <2 x i32> [ %i.km, %bb.m ], [ %i.jz, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %61) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #21
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %62) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #21
  store i64 0, ptr %i.y, align 8
  store i32 33619968, ptr %63, align 8, !tbaa !25
  store ptr %62, ptr %i.x, align 8, !tbaa !24
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %70, ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.la = extractelement <2 x i32> %i.kz, i64 0   ; 5 uses
  %.sroa.0334.0.insert.ext.i = zext i32 %i.la to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  %i.lb = extractelement <2 x i32> %i.kz, i64 1   ; 4 uses
  %i.lc = sext i32 %i.lb to i64                   ; 4 uses
  %i.ld = shl nuw i64 %.sroa.0334.0.insert.ext.i, 32
  %i.le = ashr exact i64 %i.ld, 30
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.lf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  br label %bb.ac

bb.x:                                             ; preds = %bb.z, %bb.v
  %.055.i.i = phi float [ f0x3F333333, %bb.v ], [ %i.md, %bb.z ] ; 3 uses
  %.03354.i.i = phi float [ 0.000000e+00, %bb.v ], [ %i.lg, %bb.z ]
  %.03453.i.i = phi float [ %.0188485.i, %bb.v ], [ %.135.i.i, %bb.z ]
  %.03652.i.i = phi float [ 0.000000e+00, %bb.v ], [ %.238.i.i, %bb.z ]
  %i.lg = fmul float %.0188485.i, %.055.i.i       ; 5 uses
  %i.lh = call float @powf(float noundef %i.lg, float noundef 2.000000e+00) #21
  %i.li = call float @powf(float noundef %.03354.i.i, float noundef 2.000000e+00) #21
  %i.lj = fsub float %i.lh, %i.li
  %i.lk = call noundef float @sqrtf(float noundef %i.lj) #21 ; 2 uses
  %i.ll = fmul float %i.lk, 3.000000e+00
  %i.lm = call float @llvm.ceil.f32(float %i.ll)
  %i.ln = fptosi float %i.lm to i32
  %i.lo = shl nsw i32 %i.ln, 1
  %i.lp = or disjoint i32 %i.lo, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #21
  store i32 0, ptr %i.z, align 8, !tbaa !47
  store i32 0, ptr %i.aa, align 4, !tbaa !48
  store i32 16842752, ptr %64, align 8, !tbaa !25
  store ptr %62, ptr %i.ab, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #21
  store i64 0, ptr %i.ad, align 8
  store i32 33619968, ptr %65, align 8, !tbaa !25
  store ptr %62, ptr %i.ac, align 8, !tbaa !24
  %i.lq = fpext float %i.lk to double
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.lp to i64
  %.sroa.0.0.insert.insert.i.i = mul nuw i64 %.sroa.2.0.insert.ext.i.i, 4294967297
  invoke void @_ZN2cv12GaussianBlurERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddiNS_13AlgorithmHintE(ptr noundef nonnull align 8 dereferenceable(24) %64, ptr noundef nonnull align 8 dereferenceable(24) %65, i64 %.sroa.0.0.insert.insert.i.i, double noundef %i.lq, double noundef 0.000000e+00, i32 noundef 4, i32 noundef 0)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #21
  store i32 0, ptr %i.ae, align 8, !tbaa !47
  store i32 0, ptr %i.af, align 4, !tbaa !48
  store i32 16842752, ptr %66, align 8, !tbaa !25
  store ptr %62, ptr %i.ag, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #21
  store i64 0, ptr %i.ai, align 8
  store i32 33619968, ptr %67, align 8, !tbaa !25
  store ptr %61, ptr %i.ah, align 8, !tbaa !24
  invoke void @_ZN2cv9LaplacianERKNS_11_InputArrayERKNS_12_OutputArrayEiiddi(ptr noundef nonnull align 8 dereferenceable(24) %66, ptr noundef nonnull align 8 dereferenceable(24) %67, i32 noundef 5, i32 noundef 3, double noundef 1.000000e+00, double noundef 0.000000e+00, i32 noundef 4)
          to label %bb.z unwind label %bb.ab
end_hunk_0
