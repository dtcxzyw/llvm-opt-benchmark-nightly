Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3MakeTransformedBoxHull:bb.a
  %i.tq = fsub <2 x float> %i.tp, %i.tm
  %i.tr = fmul <2 x float> %i.tq, splat (float 2.000000e+00) ; 2 uses
  %i.ts = fsub <2 x float> %i.tr, %i.k
  %i.tt = fadd <2 x float> %i.tr, %i.k
  %i.tu = shufflevector <2 x float> %i.ts, <2 x float> %i.tt, <2 x i32> <i32 0, i32 3>
  %i.tv = fadd <2 x float> %.sroa.0652.sroa.0.0.copyload, %i.tu
  store <2 x float> %i.tv, ptr %i.ot, align 4, !tbaa !23
  %i.tw = extractelement <4 x float> %i.ti, i64 2
  store float %i.tw, ptr %.sroa.471.0..sroa_idx, align 4, !tbaa !23
  %i.tx = shufflevector <4 x float> %i.rw, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ty = insertelement <2 x float> %i.tx, float %i.pt, i64 1
  %i.tz = fmul <2 x float> %i.u, %i.ty
  %i.ua = shufflevector <4 x float> %i.rz, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.ub = insertelement <2 x float> %i.ua, float %i.pt, i64 0
  %i.uc = fmul <2 x float> %i.r, %i.ub
  %i.ud = fsub <2 x float> %i.uc, %i.tz
  %i.ue = fmul <2 x float> %i.ud, splat (float 2.000000e+00)
  %i.uf = fsub <2 x float> %i.ue, %i.k
  %i.ug = fadd <2 x float> %.sroa.0652.sroa.0.0.copyload, %i.uf
  store <2 x float> %i.ug, ptr %i.ou, align 8, !tbaa !23
  %i.uh = extractelement <4 x float> %i.ti, i64 1
  store float %i.uh, ptr %.sroa.460.0..sroa_idx, align 8, !tbaa !23
  %i.ui = shufflevector <4 x float> %i.rw, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.uj = insertelement <2 x float> %i.ui, float %i.pv, i64 1
  %i.uk = fmul <2 x float> %i.u, %i.uj
  %i.ul = shufflevector <4 x float> %i.rz, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.um = insertelement <2 x float> %i.ul, float %i.pv, i64 0
  %i.un = fmul <2 x float> %i.r, %i.um
  %i.uo = fsub <2 x float> %i.un, %i.uk
  %i.up = fmul <2 x float> %i.uo, splat (float 2.000000e+00) ; 2 uses
  %i.uq = fadd <2 x float> %i.up, %i.k
  %i.ur = fsub <2 x float> %i.up, %i.k
  %i.us = shufflevector <2 x float> %i.uq, <2 x float> %i.ur, <2 x i32> <i32 0, i32 3>
  %i.ut = fadd <2 x float> %.sroa.0652.sroa.0.0.copyload, %i.us
  store <2 x float> %i.ut, ptr %i.ov, align 4, !tbaa !23
  %i.uu = extractelement <4 x float> %i.ti, i64 3
  store float %i.uu, ptr %.sroa.449.0..sroa_idx, align 4, !tbaa !23
  %i.uv = shufflevector <4 x float> %i.qa, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.uw = fmul <2 x float> %i.pm, %i.uv
  %i.ux = fmul <2 x float> %i.pe, %i.sd
  %i.uy = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.uz = fsub <2 x float> %i.uy, %i.uw
  %i.va = fmul <2 x float> %i.uz, splat (float 2.000000e+00) ; 2 uses
  %i.vb = extractelement <2 x float> %i.va, i64 0
  %i.vc = fadd float %i.m, %i.vb
  %i.vd = fadd float %.sroa.03.4.vec.extract.i313, %i.vc
  %.sroa.08.4.vec.insert.i588 = insertelement <2 x float> %i.qs, float %i.vd, i64 1
  store <2 x float> %.sroa.08.4.vec.insert.i588, ptr %i.ow, align 8, !tbaa !23
  %foldExtExtBinop776 = fadd <2 x float> %i.k, %i.va
  %foldExtExtBinop778 = fadd <2 x float> %.sroa.0652.sroa.0.0.copyload, %foldExtExtBinop776
  %.sroa.08.4.vec.insert.i606 = shufflevector <2 x float> %i.qt, <2 x float> %foldExtExtBinop778, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.08.4.vec.insert.i606, ptr %i.oy, align 4, !tbaa !23
  %i.ve = fsub <2 x float> %i.sg, %i.re
  %i.vf = fmul <2 x float> %i.ve, splat (float 2.000000e+00)
  %i.vg = fsub <2 x float> %i.vf, %i.rf
  %i.vh = fadd <2 x float> %i.rg, %i.vg           ; 3 uses
  %i.vi = shufflevector <2 x float> %i.qu, <2 x float> %i.vh, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.vi, ptr %i.oz, align 8, !tbaa !23
  %i.vj = shufflevector <2 x float> %i.qv, <2 x float> %i.vh, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.vj, ptr %i.pa, align 4, !tbaa !23
  %i.vk = load <10 x float>, ptr %i.or, align 8, !tbaa !87
  %i.vl = shufflevector <10 x float> %i.vk, <10 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  store <4 x float> %i.vl, ptr %i.pb, align 8, !tbaa !23
  %i.vm = load <10 x float>, ptr %i.qw, align 4, !tbaa !128
  %i.vn = shufflevector <10 x float> %i.vm, <10 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  store <4 x float> %i.vn, ptr %i.qx, align 8, !tbaa !23
  %i.vo = shufflevector <4 x float> %i.ti, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.vo, ptr %i.rh, align 8, !tbaa !23
  %i.vp = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.vq = fmul <4 x float> %i.rx, %i.qf
  %i.vr = shufflevector <2 x float> %i.sd, <2 x float> %i.sf, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.vs = fmul <4 x float> %i.qg, %i.vr
  %i.vt = fsub <4 x float> %i.vq, %i.vs
  %i.vu = fmul <4 x float> %i.vt, splat (float 2.000000e+00)
  %i.vv = fsub <4 x float> %i.vu, %i.tf
  %i.vw = fadd <4 x float> %i.th, %i.vv           ; 5 uses
  %i.vx = extractelement <4 x float> %i.vw, i64 0
  store float %i.vx, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !23
  %i.vy = extractelement <4 x float> %i.vw, i64 1
  store float %i.vy, ptr %.sroa.427.0..sroa_idx, align 4, !tbaa !23
  %i.vz = extractelement <4 x float> %i.vw, i64 2
  store float %i.vz, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !23
  %i.wa = extractelement <4 x float> %i.vw, i64 3
  store float %i.wa, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23
  %i.wb = load <4 x float>, ptr %i.qy, align 4, !tbaa !128
  %i.wc = shufflevector <4 x float> %i.wb, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.wd = shufflevector <2 x float> %i.wc, <2 x float> %i.vh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.wd, ptr %i.qz, align 8, !tbaa !23
  store <4 x float> %i.vw, ptr %i.vp, align 8, !tbaa !23
  %i.we = load float, ptr %i.ap, align 8, !tbaa !314
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 544
  store float %i.we, ptr %i.wf, align 8, !tbaa !23
  %i.wg = load float, ptr %i.ar, align 8, !tbaa !314
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float %i.wg, ptr %i.wh, align 4, !tbaa !23
  %i.wi = load float, ptr %i.gs, align 8, !tbaa !314
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 552
  store float %i.wi, ptr %i.wj, align 8, !tbaa !23
  %i.wk = load float, ptr %i.ht, align 8, !tbaa !314
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float %i.wk, ptr %i.wl, align 4, !tbaa !23
  %i.wm = load float, ptr %i.ms, align 8, !tbaa !314
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 560
  store float %i.wm, ptr %i.wn, align 8, !tbaa !23
  %i.wo = load float, ptr %i.nu, align 8, !tbaa !314
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 564
  store float %i.wo, ptr %i.wp, align 4, !tbaa !23
  %i.wq = getelementptr inbounds nuw i8, ptr %0, i64 568
  store <2 x float> zeroinitializer, ptr %i.wq, align 8, !tbaa !23
  %i.wr = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !315
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 576
  store float %i.ws, ptr %i.wt, align 8, !tbaa !23
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !315
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 580
  store float %i.wv, ptr %i.ww, align 4, !tbaa !23
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !315
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 584
  store float %i.wy, ptr %i.wz, align 8, !tbaa !23
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.xb = load float, ptr %i.xa, align 4, !tbaa !315
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 588
  store float %i.xb, ptr %i.xc, align 4, !tbaa !23
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !315
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 592
  store float %i.xe, ptr %i.xf, align 8, !tbaa !23
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.xh = load float, ptr %i.xg, align 4, !tbaa !315
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 596
  store float %i.xh, ptr %i.xi, align 4, !tbaa !23
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 600
  store <2 x float> zeroinitializer, ptr %i.xj, align 8, !tbaa !23
  %i.xk = load float, ptr %.sroa.4154.0..sroa_idx, align 8, !tbaa !316
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 608
  store float %i.xk, ptr %i.xl, align 8, !tbaa !23
  %i.xm = load float, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !316
  %i.xn = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float %i.xm, ptr %i.xn, align 4, !tbaa !23
  %i.xo = load float, ptr %.sroa.4130.0..sroa_idx, align 8, !tbaa !316
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 616
  store float %i.xo, ptr %i.xp, align 8, !tbaa !23
  %i.xq = load float, ptr %.sroa.4114.0..sroa_idx, align 8, !tbaa !316
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %i.xq, ptr %i.xr, align 4, !tbaa !23
  %i.xs = load float, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !316
  %i.xt = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float %i.xs, ptr %i.xt, align 8, !tbaa !23
  %i.xu = load float, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !316
  %i.xv = getelementptr inbounds nuw i8, ptr %0, i64 628
  store float %i.xu, ptr %i.xv, align 4, !tbaa !23
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 632
  store <2 x float> zeroinitializer, ptr %i.xw, align 8, !tbaa !23
  %i.xx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.xx, align 8, !tbaa !317
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !318
  %i.ya = call i64 @b3Hash64NonZero(ptr noundef %0, i32 noundef %i.xz) #24
  store i64 %i.ya, ptr %i.xx, align 8, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

declare void @b3BoxInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, <2 x float>, float, <2 x float>, float) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b3MakeCubeHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1) local_unnamed_addr #6 {
bb.a:
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %1, float noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity)
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3MakeBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #6 {
bb.a:
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity)
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3MakeOffsetBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1, float noundef %2, float noundef %3, <2 x float> %4, float %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store <2 x float> %4, ptr %6, align 8, !tbaa !23
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %5, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) @b3Quat_identity, i64 16, i1 false), !tbaa.struct !85
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3ScaleBox(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.b3Matrix3, align 8          ; 12 uses
  %.fr = freeze <2 x float> %2                    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0185.0.copyload = load <2 x float>, ptr %i.a, align 4, !tbaa !23 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.10.0.copyload = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !23 ; 4 uses
  %i.b = fcmp olt <2 x float> %.fr, zeroinitializer ; 4 uses
  %i.c = extractelement <2 x i1> %i.b, i64 0
  %i.d = extractelement <2 x i1> %i.b, i64 1
  %6 = bitcast <2 x i1> %i.b to i2
  %or.cond = icmp ne i2 %6, 0
  %i.e = fcmp olt float %3, 0.000000e+00          ; 3 uses
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.e
  br i1 %or.cond5, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %foldExtExtBinop = fmul <2 x float> %.sroa.0185.0.copyload, %.sroa.0185.0.copyload ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.k = shufflevector <2 x float> %.sroa.0185.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = shufflevector <2 x float> %.sroa.0185.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %i.k, %i.l              ; 3 uses
  %i.n = shufflevector <2 x float> %.sroa.10.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.o = fmul <2 x float> %i.n, %.sroa.10.0.copyload ; 3 uses
  %i.p = fadd <2 x float> %i.m, %i.o
  %i.q = fmul <2 x float> %i.p, <float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.r = fsub <2 x float> <float 1.000000e+00, float poison>, %i.q
  %i.s = fmul <2 x float> %i.q, <float poison, float 2.000000e+00>
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop363 = fadd <2 x float> %foldExtExtBinop, %i.o
  %i.u = extractelement <2 x float> %foldExtExtBinop363, i64 0
  %i.v = fmul float %i.u, 2.000000e+00
  %foldExtExtBinop365 = fadd <2 x float> %foldExtExtBinop, %i.m
  %i.w = extractelement <2 x float> %foldExtExtBinop365, i64 0
  %i.x = fmul float %i.w, 2.000000e+00
  %i.y = fsub float 1.000000e+00, %i.x
  %i.z = fmul <2 x float> %.fr, %i.t
  store <2 x float> %i.z, ptr %5, align 8, !tbaa !23
  %foldExtExtBinop367 = fsub <2 x float> %i.m, %i.o
  %i.aa = fsub float 1.000000e+00, %i.v
  %i.ab = shufflevector <2 x float> %foldExtExtBinop367, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = fmul <2 x float> %i.ac, <float 2.000000e+00, float 1.000000e+00>
  %i.ae = fmul <2 x float> %.fr, %i.ad
  store <2 x float> %i.ae, ptr %i.g, align 4, !tbaa !23
  %i.af = fmul <2 x float> %.sroa.0185.0.copyload, %i.n ; 4 uses
  %i.ag = shufflevector <2 x float> %.sroa.0185.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <2 x float> %.sroa.10.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x float> %i.ag, %i.ah           ; 4 uses
  %foldExtExtBinop369 = fsub <2 x float> %i.af, %i.ai
  %i.aj = extractelement <2 x float> %foldExtExtBinop369, i64 0
  %i.ak = fmul float %i.aj, 2.000000e+00
  %foldExtExtBinop371 = fadd <2 x float> %i.af, %i.ai
  %i.al = extractelement <2 x float> %foldExtExtBinop371, i64 1
  %i.am = fmul float %i.al, 2.000000e+00
  %i.an = fadd <2 x float> %i.af, %i.ai
  %i.ao = fsub <2 x float> %i.af, %i.ai
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.aq = fmul <2 x float> %i.ap, splat (float 2.000000e+00)
  %i.ar = fmul <2 x float> %.fr, %i.aq
  store <2 x float> %i.ar, ptr %i.i, align 8, !tbaa !23
  %i.as = fmul float %3, %i.ak                    ; 3 uses
  %i.at = fmul float %3, %i.am                    ; 3 uses
  %i.au = fmul float %3, %i.y                     ; 3 uses
  %.sroa.0181.0.copyload = load <2 x float>, ptr %5, align 8 ; 3 uses
  %i.av = fmul <2 x float> %.sroa.0181.0.copyload, %.sroa.0181.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = fadd <2 x float> %i.av, %shift
  %i.aw = extractelement <2 x float> %foldExtExtBinop373, i64 0
  %i.ax = fmul float %i.as, %i.as
  %i.ay = fadd float %i.ax, %i.aw                 ; 2 uses
  %i.az = fcmp ogt float %i.ay, f0x057A0000
  br i1 %i.az, label %bb.c, label %b3Normalize.exit247

bb.c:                                             ; preds = %bb.b
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ay)
  %i.ba = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x float> %.sroa.0181.0.copyload, %i.bc
  %i.be = fmul float %i.as, %i.ba
  br label %b3Normalize.exit247

b3Normalize.exit247:                              ; preds = %bb.b, %bb.c
  %.sroa.018.0.i241 = phi <2 x float> [ %i.bd, %bb.c ], [ zeroinitializer, %bb.b ] ; 2 uses
  %.sroa.5.0.i242 = phi float [ %i.be, %bb.c ], [ 0.000000e+00, %bb.b ] ; 2 uses
  store <2 x float> %.sroa.018.0.i241, ptr %5, align 8, !tbaa !23
  store float %.sroa.5.0.i242, ptr %i.f, align 8, !tbaa !23
  %.sroa.0173.0.copyload = load <2 x float>, ptr %i.g, align 4 ; 3 uses
  %i.bf = fmul <2 x float> %.sroa.0173.0.copyload, %.sroa.0173.0.copyload ; 2 uses
  %shift375 = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop376 = fadd <2 x float> %i.bf, %shift375
  %i.bg = extractelement <2 x float> %foldExtExtBinop376, i64 0
  %i.bh = fmul float %i.at, %i.at
  %i.bi = fadd float %i.bh, %i.bg                 ; 2 uses
  %i.bj = fcmp ogt float %i.bi, f0x057A0000
  br i1 %i.bj, label %bb.d, label %b3Normalize.exit238

bb.d:                                             ; preds = %b3Normalize.exit247
  %sqrt358 = tail call float @llvm.sqrt.f32(float %i.bi)
  %i.bk = fdiv float 1.000000e+00, %sqrt358       ; 2 uses
  %i.bl = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %.sroa.0173.0.copyload, %i.bm
  %i.bo = fmul float %i.at, %i.bk
  br label %b3Normalize.exit238

b3Normalize.exit238:                              ; preds = %b3Normalize.exit247, %bb.d
  %.sroa.018.0.i232 = phi <2 x float> [ %i.bn, %bb.d ], [ zeroinitializer, %b3Normalize.exit247 ] ; 2 uses
  %.sroa.5.0.i233 = phi float [ %i.bo, %bb.d ], [ 0.000000e+00, %b3Normalize.exit247 ] ; 2 uses
  store <2 x float> %.sroa.018.0.i232, ptr %i.g, align 4, !tbaa !23
  store float %.sroa.5.0.i233, ptr %i.h, align 4, !tbaa !23
  %.sroa.0165.0.copyload = load <2 x float>, ptr %i.i, align 8 ; 3 uses
  %i.bp = fmul <2 x float> %.sroa.0165.0.copyload, %.sroa.0165.0.copyload ; 2 uses
  %shift378 = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop379 = fadd <2 x float> %i.bp, %shift378
  %i.bq = extractelement <2 x float> %foldExtExtBinop379, i64 0
  %i.br = fmul float %i.au, %i.au
  %i.bs = fadd float %i.br, %i.bq                 ; 2 uses
  %i.bt = fcmp ogt float %i.bs, f0x057A0000
  br i1 %i.bt, label %bb.e, label %b3Normalize.exit

bb.e:                                             ; preds = %b3Normalize.exit238
  %sqrt359 = tail call float @llvm.sqrt.f32(float %i.bs)
  %i.bu = fdiv float 1.000000e+00, %sqrt359       ; 2 uses
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %.sroa.0165.0.copyload, %i.bw
  %i.by = fmul float %i.au, %i.bu
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %b3Normalize.exit238, %bb.e
  %.sroa.018.0.i = phi <2 x float> [ %i.bx, %bb.e ], [ zeroinitializer, %b3Normalize.exit238 ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.by, %bb.e ], [ 0.000000e+00, %b3Normalize.exit238 ] ; 2 uses
  store <2 x float> %.sroa.018.0.i, ptr %i.i, align 8, !tbaa !23
  store float %.sroa.5.0.i, ptr %i.j, align 8, !tbaa !23
  br i1 %i.c, label %bb.f, label %bb.g

bb.f:                                             ; preds = %b3Normalize.exit
  %i.bz = fneg <2 x float> %.sroa.018.0.i241
  %i.ca = fneg float %.sroa.5.0.i242
  store <2 x float> %i.bz, ptr %5, align 8, !tbaa !23
  store float %i.ca, ptr %i.f, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %b3Normalize.exit, %bb.f
  br i1 %i.d, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = fneg <2 x float> %.sroa.018.0.i232
  %i.cc = fneg float %.sroa.5.0.i233
  store <2 x float> %i.cb, ptr %i.g, align 4, !tbaa !23
  store float %i.cc, ptr %i.h, align 4, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  br i1 %i.e, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cd = fneg <2 x float> %.sroa.018.0.i
  %i.ce = fneg float %.sroa.5.0.i
  store <2 x float> %i.cd, ptr %i.i, align 8, !tbaa !23
  store float %i.ce, ptr %i.j, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cf = call { <2 x float>, <2 x float> } @b3MakeQuatFromMatrix(ptr noundef nonnull %5) #24 ; 2 uses
  %i.cg = extractvalue { <2 x float>, <2 x float> } %i.cf, 0
  %i.ch = extractvalue { <2 x float>, <2 x float> } %i.cf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.sroa.0185.0 = phi <2 x float> [ %i.cg, %bb.k ], [ %.sroa.0185.0.copyload, %bb.a ] ; 13 uses
  %.sroa.10.0 = phi <2 x float> [ %i.ch, %bb.k ], [ %.sroa.10.0.copyload, %bb.a ] ; 9 uses
  %i.ci = fneg <2 x float> %.fr
  %i.cj = fneg float %3
  %i.ck = select i1 %i.e, float %i.cj, float %3   ; 2 uses
  %.sroa.0123.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !23 ; 5 uses
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.5125.0.copyload = load float, ptr %.sroa.5125.0..sroa_idx, align 4, !tbaa !23 ; 5 uses
  %.sroa.03.0.vec.extract.i268 = extractelement <2 x float> %.sroa.0123.0.copyload, i64 0 ; 2 uses
  %.sroa.03.4.vec.extract.i270 = extractelement <2 x float> %.sroa.0123.0.copyload, i64 1 ; 3 uses
  %.sroa.3.8.vec.extract.i = extractelement <2 x float> %.sroa.10.0, i64 0
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0185.0, i64 1 ; 2 uses
  %i.cl = fmul float %.sroa.3.8.vec.extract.i, %.sroa.03.4.vec.extract.i270 ; 2 uses
  %i.cm = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.5125.0.copyload ; 2 uses
  %i.cn = fsub float %i.cl, %i.cm
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0185.0, i64 0 ; 4 uses
  %i.co = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.5125.0.copyload ; 2 uses
  %foldExtExtBinop381 = fmul <2 x float> %.sroa.10.0, %.sroa.0123.0.copyload
  %i.cp = extractelement <2 x float> %foldExtExtBinop381, i64 0 ; 2 uses
  %i.cq = fsub float %i.co, %i.cp
  %i.cr = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.03.0.vec.extract.i268 ; 2 uses
  %i.cs = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.03.4.vec.extract.i270 ; 2 uses
  %i.ct = fsub float %i.cr, %i.cs
  %.sroa.3.12.vec.extract.i = extractelement <2 x float> %.sroa.10.0, i64 1 ; 3 uses
  %i.cu = fmul float %.sroa.3.12.vec.extract.i, %.sroa.03.0.vec.extract.i268
  %i.cv = fmul float %.sroa.3.12.vec.extract.i, %.sroa.03.4.vec.extract.i270 ; 2 uses
  %i.cw = fmul float %.sroa.3.12.vec.extract.i, %.sroa.5125.0.copyload
  %i.cx = fsub float %i.cm, %i.cl
  %i.cy = fsub float %i.cp, %i.co
  %i.cz = fsub float %i.cs, %i.cr
  %i.da = select <2 x i1> %i.b, <2 x float> %i.ci, <2 x float> %.fr ; 3 uses
  %i.db = fsub float %i.cq, %i.cv                 ; 2 uses
  %i.dc = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.cn, i64 1
  %i.de = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.cu, i64 1 ; 2 uses
  %i.dg = fsub <2 x float> %i.dd, %i.df           ; 3 uses
  %i.dh = shufflevector <2 x float> %.sroa.0185.0, <2 x float> %.sroa.10.0, <2 x i32> <i32 1, i32 2> ; 6 uses
  %i.di = fmul <2 x float> %i.dh, %i.dg
  %i.dj = shufflevector <2 x float> %.sroa.10.0, <2 x float> %.sroa.0185.0, <2 x i32> <i32 0, i32 2> ; 6 uses
  %i.dk = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = insertelement <2 x float> %i.dk, float %i.db, i64 0
  %i.dm = fmul <2 x float> %i.dj, %i.dl
  %i.dn = fsub <2 x float> %i.di, %i.dm
  %i.do = fmul float %.sroa.011.0.vec.extract.i.i, %i.db
  %foldExtExtBinop383 = fmul <2 x float> %.sroa.0185.0, %i.dg
  %i.dp = extractelement <2 x float> %foldExtExtBinop383, i64 1
  %i.dq = fsub float %i.do, %i.dp
  %i.dr = fmul <2 x float> %i.dn, splat (float 2.000000e+00)
  %i.ds = fsub <2 x float> %i.dr, %.sroa.0123.0.copyload
  %i.dt = fmul float %i.dq, 2.000000e+00
  %i.du = fsub float %i.dt, %.sroa.5125.0.copyload
  %i.dv = fmul <2 x float> %i.da, %i.ds           ; 6 uses
  %i.dw = fmul float %i.ck, %i.du                 ; 3 uses
  %i.dx = fadd float %i.cv, %i.cy                 ; 2 uses
  %i.dy = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %i.cx, i64 1
  %i.ea = fadd <2 x float> %i.df, %i.dz           ; 3 uses
  %i.eb = fmul <2 x float> %i.dh, %i.ea
  %i.ec = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ed = insertelement <2 x float> %i.ec, float %i.dx, i64 0
  %i.ee = fmul <2 x float> %i.dj, %i.ed
  %i.ef = fsub <2 x float> %i.eb, %i.ee
  %i.eg = fmul float %.sroa.011.0.vec.extract.i.i, %i.dx
  %foldExtExtBinop385 = fmul <2 x float> %.sroa.0185.0, %i.ea
  %i.eh = extractelement <2 x float> %foldExtExtBinop385, i64 1
  %i.ei = fsub float %i.eg, %i.eh
  %i.ej = fmul <2 x float> %i.ef, splat (float 2.000000e+00)
  %i.ek = fadd <2 x float> %.sroa.0123.0.copyload, %i.ej ; 2 uses
  %i.el = fmul float %i.ei, 2.000000e+00
  %i.em = fadd float %.sroa.5125.0.copyload, %i.el
  %i.en = fmul <2 x float> %i.da, %i.ek           ; 5 uses
  %i.eo = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ep = insertelement <2 x float> %i.eo, float %i.ck, i64 0
  %i.eq = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.er = insertelement <2 x float> %i.eq, float %i.em, i64 0
  %i.es = fmul <2 x float> %i.ep, %i.er           ; 4 uses
  %i.et = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.eu = insertelement <2 x float> %i.et, float %i.dw, i64 1
  %i.ev = fmul <2 x float> %.sroa.0185.0, %i.eu
  %i.ew = fmul <2 x float> %i.dj, %i.dv
  %i.ex = fmul <2 x float> %i.dh, %i.dv
  %i.ey = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> %i.dv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fa = fmul <2 x float> %.sroa.0185.0, %i.ez
  %i.fb = fsub <2 x float> %i.ev, %i.ex
  %i.fc = fsub <2 x float> %i.ew, %i.fa
  %foldExtExtBinop387 = fmul <2 x float> %.sroa.10.0, %i.dv
  %i.fd = shufflevector <2 x float> %.sroa.10.0, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fe = fmul <2 x float> %i.fd, %i.ez           ; 2 uses
  %i.ff = fsub <2 x float> %i.fb, %i.fe           ; 2 uses
  %i.fg = shufflevector <2 x float> %foldExtExtBinop387, <2 x float> %i.fe, <2 x i32> <i32 1, i32 2>
  %i.fh = fsub <2 x float> %i.fc, %i.fg           ; 2 uses
  %i.fi = fmul <2 x float> %i.dh, %i.ff
  %i.fj = fmul <2 x float> %i.dj, %i.fh
  %i.fk = fsub <2 x float> %i.fi, %i.fj
  %i.fl = fmul <2 x float> %i.fk, splat (float 2.000000e+00)
  %i.fm = fadd <2 x float> %i.dv, %i.fl           ; 4 uses
  %i.fn = shufflevector <2 x float> %i.en, <2 x float> %i.es, <2 x i32> <i32 1, i32 2>
  %i.fo = fmul <2 x float> %.sroa.0185.0, %i.fn
  %i.fp = fmul <2 x float> %i.dj, %i.en
  %i.fq = fmul <2 x float> %i.dh, %i.en
  %i.fr = fmul <2 x float> %.sroa.0185.0, %i.es
  %i.fs = fsub <2 x float> %i.fo, %i.fq
  %i.ft = fsub <2 x float> %i.fp, %i.fr
  %foldExtExtBinop389 = fmul <2 x float> %.sroa.10.0, %i.en
  %i.fu = fmul <2 x float> %i.fd, %i.es           ; 2 uses
  %i.fv = fsub <2 x float> %i.fs, %i.fu           ; 2 uses
  %i.fw = shufflevector <2 x float> %foldExtExtBinop389, <2 x float> %i.fu, <2 x i32> <i32 1, i32 2>
  %i.fx = fsub <2 x float> %i.ft, %i.fw           ; 2 uses
  %i.fy = fmul <2 x float> %i.dh, %i.fv
  %i.fz = fmul <2 x float> %i.dj, %i.fx
  %i.ga = fsub <2 x float> %i.fy, %i.fz
  %i.gb = fmul <2 x float> %i.ga, splat (float 2.000000e+00)
  %i.gc = fadd <2 x float> %i.en, %i.gb           ; 4 uses
  %i.gd = fcmp olt <2 x float> %i.fm, %i.gc
  %i.ge = select <2 x i1> %i.gd, <2 x float> %i.fm, <2 x float> %i.gc
  %i.gf = fcmp ogt <2 x float> %i.fm, %i.gc
  %i.gg = select <2 x i1> %i.gf, <2 x float> %i.fm, <2 x float> %i.gc
  %i.gh = shufflevector <2 x float> %.sroa.0185.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = shufflevector <2 x float> %i.fx, <2 x float> %i.fh, <2 x i32> <i32 0, i32 2>
  %i.gj = fmul <2 x float> %i.gh, %i.gi
  %i.gk = shufflevector <2 x float> %.sroa.0185.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gl = shufflevector <2 x float> %i.fv, <2 x float> %i.ff, <2 x i32> <i32 1, i32 3>
  %i.gm = fmul <2 x float> %i.gk, %i.gl
  %i.gn = fsub <2 x float> %i.gj, %i.gm
  %i.go = fmul <2 x float> %i.gn, splat (float 2.000000e+00)
  %i.gp = insertelement <2 x float> %i.es, float %i.dw, i64 1
  %i.gq = fadd <2 x float> %i.gp, %i.go           ; 4 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gs = fcmp ogt <2 x float> %i.gq, %i.gr
  %i.gt = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gu = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = select <2 x i1> %i.gs, <2 x float> %i.gt, <2 x float> %i.gu ; 2 uses
  %i.gw = fsub <2 x float> %i.gg, %i.ge
  %shift391 = shufflevector <2 x float> %i.gv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop392 = fsub <2 x float> %shift391, %i.gv
  %i.gx = extractelement <2 x float> %foldExtExtBinop392, i64 0
  %i.gy = fmul <2 x float> %i.gw, splat (float 5.000000e-01) ; 2 uses
  %i.gz = fmul float %i.gx, 5.000000e-01          ; 2 uses
  %i.ha = insertelement <2 x float> poison, float %4, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hc = fcmp ogt <2 x float> %i.gy, %i.hb
  %i.hd = select <2 x i1> %i.hc, <2 x float> %i.gy, <2 x float> %i.hb
  %i.he = fcmp ogt float %i.gz, %4
  %i.hf = select i1 %i.he, float %i.gz, float %4
  store <2 x float> %i.hd, ptr %0, align 4, !tbaa !23
  store float %i.hf, ptr %.sroa.5125.0..sroa_idx, align 4, !tbaa !23
  %.sroa.06.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.27.0.copyload = load float, ptr %.sroa.27.0..sroa_idx, align 4
  %i.hg = fmul <2 x float> %.fr, %.sroa.06.0.copyload
  %i.hh = fmul float %3, %.sroa.27.0.copyload
  store <2 x float> %i.hg, ptr %1, align 4, !tbaa !23
  store float %i.hh, ptr %.sroa.27.0..sroa_idx, align 4, !tbaa !23
  store <2 x float> %.sroa.0185.0, ptr %i.a, align 4, !tbaa !23
  store <2 x float> %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !23
  ret void
}

declare { <2 x float>, <2 x float> } @b3MakeQuatFromMatrix(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b3MakeScaledBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, <2 x float> %1, float %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, <2 x float> %4, float %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.b3Vec3, align 8             ; 7 uses
  %7 = alloca %struct.b3Transform, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store <2 x float> %1, ptr %6, align 8, !tbaa !23
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %2, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 28, i1 false), !tbaa.struct !127
  %i.a = tail call float @b3GetLengthUnitsPerMeter() #24
  %i.b = fmul float %i.a, 5.000000e-03
  %i.c = fmul float %i.b, 4.000000e+00
  call void @b3ScaleBox(ptr noundef nonnull %6, ptr noundef nonnull %7, <2 x float> %4, float %5, float noundef %i.c)
  %i.d = load float, ptr %6, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !128
  %i.g = load float, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !88
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %i.d, float noundef %i.f, float noundef %i.g, ptr noundef nonnull byval(%struct.b3Transform) align 8 %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @b3HullBuilder_NewFace(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  store ptr %i.d, ptr %i.a, align 8, !tbaa !59
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !61   ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 4, !tbaa !61
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [128 x i8], ptr %i.f, i64 %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.k, %bb.c ]  ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 112
  store ptr null, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 60
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %.0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.n, align 8, !tbaa !62
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 6 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %b3HullBuilder_NewEdge.exit.thread, label %b3HullBuilder_NewEdge.exit

b3HullBuilder_NewEdge.exit.thread:                ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !64   ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !64
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [48 x i8], ptr %i.r, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 -1, ptr %i.x, align 8, !tbaa !65
  br label %b3HullBuilder_NewEdge.exit144.thread

b3HullBuilder_NewEdge.exit:                       ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !55   ; 6 uses
  store ptr %i.z, ptr %i.o, align 8, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 -1, ptr %i.aa, align 8, !tbaa !65
  %.not.i142 = icmp eq ptr %i.z, null
  br i1 %.not.i142, label %b3HullBuilder_NewEdge.exit144.thread, label %b3HullBuilder_NewEdge.exit144

b3HullBuilder_NewEdge.exit144.thread:             ; preds = %b3HullBuilder_NewEdge.exit, %b3HullBuilder_NewEdge.exit.thread
  %.0.i189 = phi ptr [ %i.w, %b3HullBuilder_NewEdge.exit.thread ], [ %i.p, %b3HullBuilder_NewEdge.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64 ; 2 uses
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !64
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds [48 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 -1, ptr %i.ai, align 8, !tbaa !65
  br label %bb.f

b3HullBuilder_NewEdge.exit144:                    ; preds = %b3HullBuilder_NewEdge.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !55 ; 4 uses
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !63
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 -1, ptr %i.al, align 8, !tbaa !65
  %.not.i145 = icmp eq ptr %i.ak, null
  br i1 %.not.i145, label %bb.f, label %bb.e

bb.e:                                             ; preds = %b3HullBuilder_NewEdge.exit144
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !55
  store ptr %i.an, ptr %i.o, align 8, !tbaa !63
  br label %b3HullBuilder_NewEdge.exit147

bb.f:                                             ; preds = %b3HullBuilder_NewEdge.exit144.thread, %b3HullBuilder_NewEdge.exit144
  %.0.i143196 = phi ptr [ %i.ah, %b3HullBuilder_NewEdge.exit144.thread ], [ %i.z, %b3HullBuilder_NewEdge.exit144 ]
  %.0.i188194 = phi ptr [ %.0.i189, %b3HullBuilder_NewEdge.exit144.thread ], [ %i.p, %b3HullBuilder_NewEdge.exit144 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 276 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !64 ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !64
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr inbounds [48 x i8], ptr %i.ap, i64 %i.at
  br label %b3HullBuilder_NewEdge.exit147

b3HullBuilder_NewEdge.exit147:                    ; preds = %bb.e, %bb.f
  %.0.i143195 = phi ptr [ %i.z, %bb.e ], [ %.0.i143196, %bb.f ] ; 7 uses
  %.0.i188193 = phi ptr [ %i.p, %bb.e ], [ %.0.i188194, %bb.f ] ; 8 uses
  %.0.i146 = phi ptr [ %i.ak, %bb.e ], [ %i.au, %bb.f ] ; 8 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i146, i64 40
  store i32 -1, ptr %i.av, align 8, !tbaa !65
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.aw, align 8, !tbaa !23 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !23 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %.sroa.079.0.copyload = load <2 x float>, ptr %i.ax, align 8, !tbaa !23 ; 2 uses
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.480.0.copyload = load float, ptr %.sroa.480.0..sroa_idx, align 8, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.077.0.copyload = load <2 x float>, ptr %i.ay, align 8, !tbaa !23 ; 2 uses
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.478.0.copyload = load float, ptr %.sroa.478.0..sroa_idx, align 8, !tbaa !23
  %i.az = shufflevector <2 x float> %.sroa.077.0.copyload, <2 x float> %.sroa.079.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.ba = fsub <2 x float> %i.az, %.sroa.081.0.copyload ; 3 uses
  %i.bb = shufflevector <2 x float> %.sroa.079.0.copyload, <2 x float> %.sroa.077.0.copyload, <2 x i32> <i32 0, i32 3>
  %i.bc = fsub <2 x float> %i.bb, %.sroa.081.0.copyload ; 3 uses
  %i.bd = insertelement <2 x float> poison, float %.sroa.480.0.copyload, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %.sroa.478.0.copyload, i64 1
  %i.bf = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.bg = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bh = fsub <2 x float> %i.be, %i.bg           ; 2 uses
  %i.bi = fmul <2 x float> %i.bh, %i.ba
  %i.bj = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = fmul <2 x float> %i.bc, %i.bj
  %i.bl = fsub <2 x float> %i.bi, %i.bk           ; 3 uses
  %shift = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.bc, %shift
  %shift198 = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop199 = fmul <2 x float> %shift198, %i.ba
  %foldExtExtBinop201 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop199 ; 3 uses
  %i.bm = fmul <2 x float> %i.bl, %i.bl           ; 2 uses
  %shift203 = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop204 = fadd <2 x float> %shift203, %i.bm
  %foldExtExtBinop206 = fmul <2 x float> %foldExtExtBinop201, %foldExtExtBinop201
  %foldExtExtBinop208 = fadd <2 x float> %foldExtExtBinop206, %foldExtExtBinop204
  %i.bn = extractelement <2 x float> %foldExtExtBinop208, i64 0 ; 2 uses
  %i.bo = fcmp ogt float %i.bn, f0x057A0000
  br i1 %i.bo, label %bb.g, label %b3GetLengthAndNormalize.exit

bb.g:                                             ; preds = %b3HullBuilder_NewEdge.exit147
  %i.bp = extractelement <2 x float> %foldExtExtBinop201, i64 0
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bn) ; 2 uses
  %i.bq = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bs = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bt = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bs, %i.bt
  %i.bv = fmul float %i.bp, %i.bq
  %i.bw = fmul nnan float %sqrt.i, 5.000000e-01
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %b3HullBuilder_NewEdge.exit147, %bb.g
  %.sink.i = phi float [ %i.bw, %bb.g ], [ 0.000000e+00, %b3HullBuilder_NewEdge.exit147 ]
  %.sroa.021.0.i = phi <2 x float> [ %i.bu, %bb.g ], [ zeroinitializer, %b3HullBuilder_NewEdge.exit147 ] ; 4 uses
  %.sroa.5.0.i = phi float [ %i.bv, %bb.g ], [ 0.000000e+00, %b3HullBuilder_NewEdge.exit147 ] ; 3 uses
  %.sroa.8.8.vec.insert73 = insertelement <2 x float> poison, float %.sroa.5.0.i, i64 0
end_hunk_0
