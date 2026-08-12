inline.NumInlined: 403
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 99
begin_hunk_0_@process:bb.a

convert_any_XYZ_to_LMS.exit.i:                    ; preds = %bb.j, %dt_simd_memcpy.exit.i
  %.sink11.i.sroa.phi.i = phi ptr [ %.sroa.14328.i, %bb.j ], [ %.sroa.10327.i, %dt_simd_memcpy.exit.i ]
  %.sink.i.i = phi float [ %i.eb, %bb.j ], [ %i.dg, %dt_simd_memcpy.exit.i ]
  %i.et = phi <2 x float> [ %i.dr, %bb.j ], [ %i.dk, %dt_simd_memcpy.exit.i ] ; 5 uses
  store float %.sink.i.i, ptr %.sink11.i.sroa.phi.i, align 4, !tbaa !14, !noalias !112
  switch i32 %i.ax, label %convert_any_XYZ_to_LMS.exit286.i [
    i32 2, label %bb.k
    i32 0, label %bb.k
    i32 1, label %convert_any_XYZ_to_LMS.exit286.thread.i
  ]

bb.k:                                             ; preds = %convert_any_XYZ_to_LMS.exit.i, %convert_any_XYZ_to_LMS.exit.i
  %i.eu = fmul reassoc nsz arcp contract afn float %i.dh, f0x3F652546
  %i.ev = fmul reassoc nsz arcp contract afn float %i.di, 2.664000e-01
  %i.ew = fadd reassoc nsz arcp contract afn float %i.ev, %i.eu
  %i.ex = fmul reassoc nsz arcp contract afn float %i.dj, -1.614000e-01
  %i.ey = fadd reassoc nsz arcp contract afn float %i.ew, %i.ex
  %i.ez = fmul reassoc nsz arcp contract afn float %i.dh, f0xBF400D1B
  %i.fa = fmul reassoc nsz arcp contract afn float %i.di, 1.713500e+00
  %i.fb = fadd reassoc nsz arcp contract afn float %i.fa, %i.ez
  %i.fc = fmul reassoc nsz arcp contract afn float %i.dj, 3.670000e-02
  %i.fd = fadd reassoc nsz arcp contract afn float %i.fb, %i.fc
  %i.fe = fmul reassoc nsz arcp contract afn float %i.dh, 3.890000e-02
  %i.ff = fmul reassoc nsz arcp contract afn float %i.di, -6.850000e-02
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ff, %i.fe
  %i.fh = fmul reassoc nsz arcp contract afn float %i.dj, 1.029600e+00
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fg, %i.fh
  store float %i.fi, ptr %.sroa.10323.i, align 8, !tbaa !14, !noalias !112
  %i.fj = fadd reassoc nsz arcp contract afn float %i.di, %i.dh
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.dj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit286.i

convert_any_XYZ_to_LMS.exit286.thread.i:          ; preds = %convert_any_XYZ_to_LMS.exit.i, %convert_any_XYZ_to_LMS.exit.thread.i
  %i.fm = phi <2 x float> [ %i.et, %convert_any_XYZ_to_LMS.exit.i ], [ %i.ei, %convert_any_XYZ_to_LMS.exit.thread.i ]
  %i.fn = fmul reassoc nsz arcp contract afn float %i.dh, 4.012880e-01
  %i.fo = fmul reassoc nsz arcp contract afn float %i.di, 6.501730e-01
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fo, %i.fn
  %i.fq = fmul reassoc nsz arcp contract afn float %i.dj, -5.146100e-02
  %i.fr = fadd reassoc nsz arcp contract afn float %i.fp, %i.fq
  %i.fs = fmul reassoc nsz arcp contract afn float %i.dh, -2.502680e-01
  %i.ft = fmul reassoc nsz arcp contract afn float %i.di, f0x3F9A2A3D
  %i.fu = fadd reassoc nsz arcp contract afn float %i.ft, %i.fs
  %i.fv = fmul reassoc nsz arcp contract afn float %i.dj, 4.585400e-02
  %i.fw = fadd reassoc nsz arcp contract afn float %i.fu, %i.fv
  %i.fx = fmul reassoc nsz arcp contract afn float %i.dh, -2.079000e-03
  %i.fy = fmul reassoc nsz arcp contract afn float %i.di, 4.895200e-02
  %i.fz = fadd reassoc nsz arcp contract afn float %i.fy, %i.fx
  %i.ga = fmul reassoc nsz arcp contract afn float %i.dj, 9.531270e-01
  %i.gb = fadd reassoc nsz arcp contract afn float %i.fz, %i.ga
  store float %i.gb, ptr %.sroa.10323.i, align 8, !tbaa !14, !noalias !112
  %i.gc = fadd reassoc nsz arcp contract afn float %i.di, %i.dh
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.dj
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gd, 0.000000e+00
  store float %i.ge, ptr %.sroa.14324.i, align 4, !tbaa !14, !noalias !112
  br label %bb.l

convert_any_XYZ_to_LMS.exit286.i:                 ; preds = %bb.k, %convert_any_XYZ_to_LMS.exit.i
  %.sroa.6322.0.i = phi nsz float [ %i.fd, %bb.k ], [ %i.di, %convert_any_XYZ_to_LMS.exit.i ] ; 4 uses
  %.sroa.0321.0.i = phi nsz float [ %i.ey, %bb.k ], [ %i.dh, %convert_any_XYZ_to_LMS.exit.i ] ; 4 uses
  %.sink11.i284.sroa.phi.i = phi ptr [ %.sroa.14324.i, %bb.k ], [ %.sroa.10323.i, %convert_any_XYZ_to_LMS.exit.i ]
  %.sink.i285.i = phi float [ %i.fl, %bb.k ], [ %i.dj, %convert_any_XYZ_to_LMS.exit.i ]
  store float %.sink.i285.i, ptr %.sink11.i284.sroa.phi.i, align 4, !tbaa !14, !noalias !112
  switch i32 %i.ax, label %convert_any_XYZ_to_LMS.exit289.i [
    i32 2, label %convert_any_XYZ_to_LMS.exit289.sink.split.i
    i32 0, label %convert_any_XYZ_to_LMS.exit289.sink.split.i
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %convert_any_XYZ_to_LMS.exit286.i, %convert_any_XYZ_to_LMS.exit286.thread.i
  %.sroa.6322.1.i = phi nsz float [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fw, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  %.sroa.0321.1.i = phi nsz float [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fr, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  %i.gf = phi <2 x float> [ %i.et, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.fm, %convert_any_XYZ_to_LMS.exit286.thread.i ]
  br label %convert_any_XYZ_to_LMS.exit289.sink.split.i

convert_any_XYZ_to_LMS.exit289.sink.split.i:      ; preds = %bb.l, %convert_any_XYZ_to_LMS.exit286.i, %convert_any_XYZ_to_LMS.exit286.i
  %.sink.i = phi float [ f0x3F555D6B, %bb.l ], [ f0x3F519131, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F519131, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.6322.2.ph.i = phi float [ %.sroa.6322.1.i, %bb.l ], [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.0321.2.ph.i = phi float [ %.sroa.0321.1.i, %bb.l ], [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.6318.0.ph.i = phi float [ f0x3F801ED4, %bb.l ], [ f0x3F829D89, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F829D89, %convert_any_XYZ_to_LMS.exit286.i ]
  %.sroa.0317.0.ph.i = phi float [ f0x3F7EA061, %bb.l ], [ f0x3F7F0C42, %convert_any_XYZ_to_LMS.exit286.i ], [ f0x3F7F0C42, %convert_any_XYZ_to_LMS.exit286.i ]
  %i.gg = phi <2 x float> [ %i.gf, %bb.l ], [ %i.et, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.et, %convert_any_XYZ_to_LMS.exit286.i ]
  store float %.sink.i, ptr %.sroa.10319.i, align 8, !tbaa !14, !noalias !112
  %i.gh = fmul reassoc nsz arcp contract afn float %.sroa.6318.0.ph.i, %.sroa.6322.2.ph.i
  br label %convert_any_XYZ_to_LMS.exit289.i

convert_any_XYZ_to_LMS.exit289.i:                 ; preds = %convert_any_XYZ_to_LMS.exit289.sink.split.i, %convert_any_XYZ_to_LMS.exit286.i
  %.sroa.6322.2.i = phi float [ %.sroa.6322.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.gh, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sroa.0321.2.i = phi nsz float [ %.sroa.0321.0.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0321.2.ph.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sroa.0317.0.i = phi nsz float [ 9.642120e-01, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.0317.0.ph.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sink11.i287.sroa.phi.i = phi ptr [ %.sroa.10319.i, %convert_any_XYZ_to_LMS.exit286.i ], [ %.sroa.14320.i, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %.sink.i288.i = phi float [ f0x3F533F8A, %convert_any_XYZ_to_LMS.exit286.i ], [ 0.000000e+00, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  %i.gi = phi <2 x float> [ %i.et, %convert_any_XYZ_to_LMS.exit286.i ], [ %i.gg, %convert_any_XYZ_to_LMS.exit289.sink.split.i ]
  store float %.sink.i288.i, ptr %.sink11.i287.sroa.phi.i, align 4, !tbaa !14, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.i)
  store float 0.000000e+00, ptr %.sroa.33.i, align 4, !noalias !112
  %i.gj = fmul reassoc nsz arcp contract afn float %.sroa.0317.0.i, %.sroa.0321.2.i
  %i.gk = insertelement <2 x float> poison, float %i.gj, i64 0
  %i.gl = insertelement <2 x float> %i.gk, float %.sroa.6322.2.i, i64 1
  %i.gm = fdiv reassoc nsz arcp contract afn <2 x float> %i.gl, %i.gi ; 10 uses
  %.sroa.10319.i.0..sroa.10319.i.0..sroa.10319.i.0..sroa.10319.0..sroa.10319.8..i = load float, ptr %.sroa.10319.i, align 8, !tbaa !14, !noalias !112
  %.sroa.10323.i.0..sroa.10323.i.0..sroa.10323.i.0..sroa.10323.0..sroa.10323.8..i = load float, ptr %.sroa.10323.i, align 8, !tbaa !14, !noalias !112
  %i.gn = fmul reassoc nsz arcp contract afn float %.sroa.10323.i.0..sroa.10323.i.0..sroa.10323.i.0..sroa.10323.0..sroa.10323.8..i, %.sroa.10319.i.0..sroa.10319.i.0..sroa.10319.i.0..sroa.10319.0..sroa.10319.8..i
  %.sroa.10327.i.0..sroa.10327.i.0..sroa.10327.i.0..sroa.10327.0..sroa.10327.8..i = load float, ptr %.sroa.10327.i, align 8, !tbaa !14, !noalias !112
  %i.go = fdiv reassoc nsz arcp contract afn float %i.gn, %.sroa.10327.i.0..sroa.10327.i.0..sroa.10327.i.0..sroa.10327.0..sroa.10327.8..i ; 8 uses
  store float %i.go, ptr %.sroa.25.i, align 8, !tbaa !14, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.042.i)
  switch i32 %i.ax, label %bb.o [
    i32 2, label %bb.m
    i32 0, label %bb.m
    i32 1, label %bb.n
  ]

bb.m:                                             ; preds = %convert_any_XYZ_to_LMS.exit289.i, %convert_any_XYZ_to_LMS.exit289.i
  %i.gp = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, <float f0x3F7CAC08, float 5.184000e-01>
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gr = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, <float 4.323000e-01, float -1.471000e-01>
  %i.gs = insertelement <2 x float> poison, float %i.go, i64 0
  %i.gt = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gu = fmul reassoc nsz arcp contract afn <2 x float> %i.gt, <float 4.930000e-02, float 1.600000e-01>
  %i.gv = fadd reassoc nsz arcp contract afn <2 x float> %i.gr, %i.gq
  %i.gw = fadd reassoc nsz arcp contract afn <2 x float> %i.gv, %i.gu
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.gx, ptr %.sroa.042.i, align 16, !tbaa !14, !noalias !112
  %i.gy = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gy, -8.500000e-03
  %i.ha = extractelement <2 x float> %i.gm, i64 1 ; 2 uses
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, 4.000000e-02
  %i.hc = fadd reassoc nsz arcp contract afn float %i.gz, %i.hb
  %i.hd = fmul reassoc nsz arcp contract afn float %i.go, 9.685000e-01
  %i.he = fadd reassoc nsz arcp contract afn float %i.hc, %i.hd
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1636 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  store float %i.he, ptr %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1636, align 8, !tbaa !14, !noalias !112
  %i.hf = fadd reassoc nsz arcp contract afn float %i.gy, %i.ha
  %i.hg = fadd reassoc nsz arcp contract afn float %i.hf, %i.go
  %i.hh = fmul reassoc nsz arcp contract afn float %i.hg, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit.i

bb.n:                                             ; preds = %convert_any_XYZ_to_LMS.exit289.i
  %i.hi = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  %i.hj = extractelement <2 x float> %i.gm, i64 1 ; 2 uses
  %i.hk = insertelement <2 x float> poison, float %i.go, i64 0
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hm = fmul reassoc nsz arcp contract afn <2 x float> %i.hl, <float 1.491870e-01, float -8.974000e-03>
  %i.hn = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, <float 3.875200e-01, float f0xBF8170CE>
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hp = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, <float f0x3FEE583F, float 6.214470e-01>
  %i.hq = fadd reassoc nsz arcp contract afn <2 x float> %i.ho, %i.hp
  %i.hr = fadd reassoc nsz arcp contract afn <2 x float> %i.hq, %i.hm
  store <2 x float> %i.hr, ptr %.sroa.042.i, align 16, !tbaa !14, !noalias !112
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hi, -1.584100e-02
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hj, -3.412300e-02
  %i.hu = fadd reassoc nsz arcp contract afn float %i.hs, %i.ht
  %i.hv = fmul reassoc nsz arcp contract afn float %i.go, f0x3F866538
  %i.hw = fadd reassoc nsz arcp contract afn float %i.hu, %i.hv
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1635 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  store float %i.hw, ptr %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1635, align 8, !tbaa !14, !noalias !112
  %i.hx = fadd reassoc nsz arcp contract afn float %i.hi, %i.hj
  %i.hy = fadd reassoc nsz arcp contract afn float %i.hx, %i.go
  %i.hz = fmul reassoc nsz arcp contract afn float %i.hy, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit.i

bb.o:                                             ; preds = %convert_any_XYZ_to_LMS.exit289.i
  %i.ia = extractelement <2 x float> %i.gm, i64 0
  store float %i.ia, ptr %.sroa.042.i, align 16, !tbaa !14, !noalias !112
  %i.ib = extractelement <2 x float> %i.gm, i64 1
  %.sroa.042.i.4.i.4.i.4..sroa_idx1634 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 4
  store float %i.ib, ptr %.sroa.042.i.4.i.4.i.4..sroa_idx1634, align 4, !tbaa !14, !noalias !112
  br label %convert_any_LMS_to_XYZ.exit.i

convert_any_LMS_to_XYZ.exit.i:                    ; preds = %bb.o, %bb.n, %bb.m
  %.sink11.i290.sroa.phi.i = phi ptr [ %.sroa.042.i.8.i.8.i.8.gep.sroa_idx, %bb.o ], [ %.sroa.042.i.12.i.12.i.12.i.12.i.12.i.12.gep40.sroa_idx, %bb.n ], [ %.sroa.042.i.12.i.12.i.12.i.12.i.12.i.12.gep40.sroa_idx, %bb.m ]
  %.sink.i291.i = phi float [ %i.go, %bb.o ], [ %i.hz, %bb.n ], [ %i.hh, %bb.m ]
  store float %.sink.i291.i, ptr %.sink11.i290.sroa.phi.i, align 4, !tbaa !14, !noalias !112
  %.sroa.042.i.0..sroa.042.i.0..sroa.042.i.0..sroa.042.0..sroa.042.0..sroa.042.0..val.i.i = load <4 x float>, ptr %.sroa.042.i, align 16, !tbaa !121, !noalias !112
  %i.ic = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.042.i.0..sroa.042.i.0..sroa.042.i.0..sroa.042.0..sroa.042.0..sroa.042.0..val.i.i, <4 x float> zeroinitializer) ; 2 uses
  %i.id = extractelement <4 x float> %i.ic, i64 1 ; 2 uses
  %i.ie = fcmp reassoc nsz arcp contract afn olt float %i.id, f0x37800000
  %i.if = select reassoc nsz arcp contract afn i1 %i.ie, float f0x37800000, float %i.id
  %i.ig = insertelement <4 x float> poison, float %i.if, i64 0
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ii = fdiv reassoc nsz arcp contract afn <4 x float> %i.ic, %i.ih ; 2 uses
  store <4 x float> %i.ii, ptr %.sroa.042.i, align 16, !tbaa !14, !noalias !112
  %i.ij = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ii, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x float> %i.ij, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i = extractelement <4 x float> %i.ij, i64 1 ; 2 uses
  %i.ik = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract4.i.i
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x float> %i.ij, i64 2
  %i.il = fadd reassoc nsz arcp contract afn float %i.ik, %.sroa.0.8.vec.extract.i.i ; 3 uses
  %i.im = fcmp reassoc nsz arcp contract afn ogt float %i.il, 0.000000e+00 ; 2 uses
  %i.in = fdiv reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %i.il
  %i.io = select i1 %i.im, float %i.in, float 3.456700e-01 ; 4 uses
  %i.ip = fdiv reassoc nsz arcp contract afn float %.sroa.0.4.vec.extract4.i.i, %i.il
  %i.iq = select i1 %i.im, float %i.ip, float 3.585000e-01 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aa, i64 304
  store float %i.io, ptr %i.ir, align 16, !tbaa !14, !noalias !112
  %i.is = getelementptr inbounds nuw i8, ptr %i.aa, i64 308
  store float %i.iq, ptr %i.is, align 4, !tbaa !14, !noalias !112
  %i.it = fdiv reassoc nsz arcp contract afn float %i.io, %i.iq ; 4 uses
  store float %i.it, ptr %.sroa.042.i, align 16, !tbaa !14, !noalias !112
  %.sroa.042.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 4
  store float 1.000000e+00, ptr %.sroa.042.i.4.i.4.i.4..sroa_idx, align 4, !tbaa !14, !noalias !112
  %i.iu = fadd reassoc nsz arcp contract afn float %i.io, %i.iq
  %i.iv = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.iu
  %i.iw = fdiv reassoc nsz arcp contract afn float %i.iv, %i.iq ; 5 uses
  %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1637 = getelementptr inbounds nuw i8, ptr %.sroa.042.i, i64 8
  store float %i.iw, ptr %.sroa.042.i.8.i.8.i.8.gep.sroa_idx1637, align 8, !tbaa !14, !noalias !112
  %i.ix = icmp ult i32 %i.ax, 3
  %6 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.it, i64 0 ; 2 uses
  br i1 %i.ix, label %switch.lookup, label %convert_any_XYZ_to_LMS.exit294.i

switch.lookup:                                    ; preds = %convert_any_LMS_to_XYZ.exit.i
  %i.iy = zext nneg i32 %i.ax to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.52, i64 %i.iy
  %switch.load = load float, ptr %switch.gep, align 4
  %i.iz = zext nneg i32 %i.ax to i64
  %switch.gep1465 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.53, i64 %i.iz
  %switch.load1466 = load float, ptr %switch.gep1465, align 4
  %i.ja = zext nneg i32 %i.ax to i64
  %switch.gep1467 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.54, i64 %i.ja
  %switch.load1468 = load float, ptr %switch.gep1467, align 4
  %i.jb = zext nneg i32 %i.ax to i64
  %switch.gep1469 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.55, i64 %i.jb
  %switch.load1470 = load float, ptr %switch.gep1469, align 4
  %i.jc = zext nneg i32 %i.ax to i64
  %switch.gep1471 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.56, i64 %i.jc
  %switch.load1472 = load float, ptr %switch.gep1471, align 4
  %i.jd = zext nneg i32 %i.ax to i64
  %switch.gep1473 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.57, i64 %i.jd
  %switch.load1474 = load float, ptr %switch.gep1473, align 4
  %i.je = zext nneg i32 %i.ax to i64
  %switch.gep1475 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.58, i64 %i.je
  %switch.load1476 = load float, ptr %switch.gep1475, align 4
  %i.jf = zext nneg i32 %i.ax to i64
  %switch.gep1477 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.59, i64 %i.jf
  %switch.load1478 = load float, ptr %switch.gep1477, align 4
  %i.jg = zext nneg i32 %i.ax to i64
  %switch.gep1479 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.60, i64 %i.jg
  %switch.load1480 = load float, ptr %switch.gep1479, align 4
  %7 = insertelement <2 x float> poison, float %switch.load, i64 0
  %8 = insertelement <2 x float> %7, float %switch.load1470, i64 1
  %9 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %10 = fmul reassoc nsz arcp contract afn <2 x float> %8, %9
  %11 = insertelement <2 x float> poison, float %switch.load1466, i64 0
  %12 = insertelement <2 x float> %11, float %switch.load1472, i64 1
  %13 = fadd reassoc nsz arcp contract afn <2 x float> %10, %12
  %14 = insertelement <2 x float> poison, float %switch.load1468, i64 0
  %15 = insertelement <2 x float> %14, float %switch.load1474, i64 1
  %16 = insertelement <2 x float> poison, float %i.iw, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %18 = fmul reassoc nsz arcp contract afn <2 x float> %15, %17
  %19 = fadd reassoc nsz arcp contract afn <2 x float> %13, %18
  %i.jh = fmul reassoc nsz arcp contract afn float %switch.load1476, %i.it
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, %switch.load1478
  %i.jj = fmul reassoc nsz arcp contract afn float %switch.load1480, %i.iw
  %i.jk = fadd reassoc nsz arcp contract afn float %i.ji, %i.jj
  store float %i.jk, ptr %.sroa.25.i, align 8, !tbaa !14, !noalias !112
  %i.jl = fadd reassoc nsz arcp contract afn float %i.it, 1.000000e+00
  %i.jm = fadd reassoc nsz arcp contract afn float %i.jl, %i.iw
  %i.jn = fmul reassoc nsz arcp contract afn float %i.jm, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit294.i

convert_any_XYZ_to_LMS.exit294.i:                 ; preds = %convert_any_LMS_to_XYZ.exit.i, %switch.lookup
  %.sink11.i292.sroa.phi.i = phi ptr [ %.sroa.25.i, %convert_any_LMS_to_XYZ.exit.i ], [ %.sroa.33.i, %switch.lookup ]
  %.sink.i293.i = phi float [ %i.iw, %convert_any_LMS_to_XYZ.exit.i ], [ %i.jn, %switch.lookup ]
  %20 = phi <2 x float> [ %6, %convert_any_LMS_to_XYZ.exit.i ], [ %19, %switch.lookup ] ; 3 uses
  store float %.sink.i293.i, ptr %.sink11.i292.sroa.phi.i, align 4, !tbaa !14, !noalias !112
  %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i = load float, ptr %.sroa.25.i, align 8, !tbaa !14, !noalias !112 ; 5 uses
  %i.jo = fdiv reassoc nsz arcp contract afn float f0x3F51729B, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.jp = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.jo, float 8.340000e-02)
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.jr = load i64, ptr %i.jq, align 16, !tbaa !113, !noalias !112 ; 2 uses
  %.not.i = icmp eq i64 %i.jr, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %convert_any_XYZ_to_LMS.exit294.i
  %i.js = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.ju = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %20
  %i.jv = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.jw = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.jx = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %20
  %i.jy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.jz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %.sroa.25.i.0..sroa.25.i.0..sroa.25.i.0..sroa.25.0..sroa.25.8.314.i
  %i.ka = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %20
  br label %bb.p

._crit_edge.i:                                    ; preds = %convert_any_LMS_to_XYZ.exit297.i, %convert_any_XYZ_to_LMS.exit294.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #31, !noalias !112
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !14, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #31, !noalias !112
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !14, !noalias !112
  %i.kb = load ptr, ptr %i.bo, align 64, !tbaa !120, !noalias !112
  call fastcc void @_compute_patches_delta_E(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bq, ptr noundef %i.kb, ptr noundef %i.f, ptr noundef %i.g), !noalias !112
  %i.kc = load ptr, ptr %i.ay, align 8, !tbaa !111, !noalias !112
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 48
  %i.ke = load i64, ptr %i.kd, align 16, !tbaa !113, !noalias !112
  %i.kf = mul i64 %i.ke, 24
  %i.kg = tail call ptr @dt_alloc_aligned(i64 noundef %i.kf) #31, !noalias !112 ; 37 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kg, i64 64) ]
  %i.kh = load ptr, ptr %i.ay, align 8, !tbaa !111, !noalias !112
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 48
  %i.kj = load i64, ptr %i.ki, align 16, !tbaa !113, !noalias !112
  %i.kk = mul i64 %i.kj, 216
  %i.kl = tail call ptr @dt_alloc_aligned(i64 noundef %i.kk) #31, !noalias !112 ; 71 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.kl, i64 64) ]
  %i.km = load ptr, ptr %i.ay, align 8, !tbaa !111, !noalias !112 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 48
  %i.ko = load i64, ptr %i.kn, align 16, !tbaa !113, !noalias !112 ; 4 uses
  %.not248.i = icmp eq i64 %i.ko, 0
  br i1 %.not248.i, label %._crit_edge241.thread.i, label %.lr.ph240.i

.lr.ph240.i:                                      ; preds = %._crit_edge.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.aa, i64 448
  %i.kq = load i32, ptr %i.kp, align 64, !tbaa !122, !noalias !112
  %i.kr = uitofp reassoc nsz arcp contract afn i64 %i.ko to float
  %i.ks = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.kr
  %i.kt = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ks)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.kv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.kw = icmp ult i32 %i.ax, 3
  %i.kx = zext nneg i32 %i.ax to i64
  %switch.gep1482 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.26, i64 %i.kx
  %i.ky = zext nneg i32 %i.ax to i64
  %switch.gep1484 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.53, i64 %i.ky
  %i.kz = zext nneg i32 %i.ax to i64
  %switch.gep1486 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.28, i64 %i.kz
  %i.la = zext nneg i32 %i.ax to i64
  %switch.gep1488 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.29, i64 %i.la
  %i.lb = zext nneg i32 %i.ax to i64
  %switch.gep1490 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.56, i64 %i.lb
  %i.lc = zext nneg i32 %i.ax to i64
  %switch.gep1492 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.31, i64 %i.lc
  %i.ld = zext nneg i32 %i.ax to i64
  %switch.gep1494 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.32, i64 %i.ld
  %i.le = zext nneg i32 %i.ax to i64
  %switch.gep1496 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._auto_set_illuminant.59, i64 %i.le
  %i.lf = zext nneg i32 %i.ax to i64
  %switch.gep1498 = getelementptr inbounds nuw [4 x i8], ptr @switch.table.process.34, i64 %i.lf
  br label %bb.u

bb.p:                                             ; preds = %convert_any_LMS_to_XYZ.exit297.i, %.lr.ph.i
  %.0258232.i = phi i64 [ 0, %.lr.ph.i ], [ %i.pe, %convert_any_LMS_to_XYZ.exit297.i ] ; 2 uses
  %.idx278.i = shl i64 %.0258232.i, 4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx278.i ; 13 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load float, ptr %i.lh, align 4, !tbaa !14, !noalias !112 ; 5 uses
  %i.lj = fcmp reassoc nsz arcp contract afn ogt float %i.li, f0x37800000 ; 2 uses
  br i1 %i.lj, label %.split.us.preheader.i.i, label %.split.preheader.i.i

.split.preheader.i.i:                             ; preds = %bb.p
  %i.lk = load float, ptr %i.lg, align 16, !tbaa !14, !noalias !112
  %i.ll = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.lm = insertelement <2 x float> %i.ll, float %i.li, i64 1
  %i.ln = fmul reassoc nsz arcp contract afn <2 x float> %i.lm, splat (float 6.553600e+04)
  store <2 x float> %i.ln, ptr %i.lg, align 16, !tbaa !14, !noalias !112
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.lp = load float, ptr %i.lo, align 8, !tbaa !14, !noalias !112
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lp, 6.553600e+04
  store float %i.lq, ptr %i.lo, align 8, !tbaa !14, !noalias !112
  br label %downscale_vector.exit.i

.split.us.preheader.i.i:                          ; preds = %bb.p
  %i.lr = fadd reassoc nsz arcp contract afn float %i.li, f0x37800000 ; 2 uses
  %i.ls = load float, ptr %i.lg, align 16, !tbaa !14, !noalias !112
  %i.lt = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lu = insertelement <2 x float> %i.lt, float %i.li, i64 1
  %i.lv = insertelement <2 x float> poison, float %i.lr, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = fdiv reassoc nsz arcp contract afn <2 x float> %i.lu, %i.lw
  store <2 x float> %i.lx, ptr %i.lg, align 16, !tbaa !14, !noalias !112
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.lz = load float, ptr %i.ly, align 8, !tbaa !14, !noalias !112
  %i.ma = fdiv reassoc nsz arcp contract afn float %i.lz, %i.lr
  store float %i.ma, ptr %i.ly, align 8, !tbaa !14, !noalias !112
  br label %downscale_vector.exit.i

downscale_vector.exit.i:                          ; preds = %.split.us.preheader.i.i, %.split.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #31, !noalias !112
  call fastcc void @convert_any_XYZ_to_LMS(ptr noundef nonnull %i.lg, ptr noundef nonnull %i.e, i32 noundef %i.ax), !noalias !112
  %.sroa.0279.0.copyload.i = load float, ptr %i.e, align 16, !tbaa !14, !noalias !112 ; 4 uses
  switch i32 %i.ax, label %.preheader.preheader.i [
    i32 2, label %bb.q
    i32 0, label %bb.r
    i32 1, label %.thread205.i
    i32 3, label %.thread204.i
  ]

.preheader.preheader.i:                           ; preds = %downscale_vector.exit.i
  %.sroa.10282.0.copyload.i = load float, ptr %i.js, align 4, !tbaa !14, !noalias !112
  %.sroa.17.0.copyload.i = load float, ptr %i.jt, align 8, !tbaa !14, !noalias !112
  %i.mb = insertelement <2 x float> poison, float %.sroa.0279.0.copyload.i, i64 0
  %i.mc = insertelement <2 x float> %i.mb, float %.sroa.10282.0.copyload.i, i64 1
  br label %convert_any_LMS_to_XYZ.exit297.i

bb.q:                                             ; preds = %downscale_vector.exit.i
  %i.md = load float, ptr %i.js, align 4, !tbaa !14, !noalias !112
  %i.me = load float, ptr %i.jt, align 8, !tbaa !14, !noalias !112
  %i.mf = fmul reassoc nsz arcp contract afn float %i.me, %i.jz ; 3 uses
  %i.mg = fcmp reassoc nsz arcp contract afn ogt float %i.mf, 0.000000e+00
  %i.mh = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mf, float %i.jp)
  %i.mi = select reassoc nsz arcp contract afn i1 %i.mg, float %i.mh, float %i.mf
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mi, f0x3F51729B
  br label %.thread.i

bb.r:                                             ; preds = %downscale_vector.exit.i
  %i.mk = load float, ptr %i.js, align 4, !tbaa !14, !noalias !112
  %i.ml = load float, ptr %i.jt, align 8, !tbaa !14, !noalias !112
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, f0x3F51729B
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mm, %i.jy
  br label %.thread.i

.thread205.i:                                     ; preds = %downscale_vector.exit.i
  %i.mo = load float, ptr %i.js, align 4, !tbaa !14, !noalias !112
  %i.mp = load float, ptr %i.jt, align 8, !tbaa !14, !noalias !112
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mp, 8.330360e-01
  %i.mr = fmul reassoc nsz arcp contract afn float %i.mq, %i.jw ; 3 uses
  %i.ms = insertelement <2 x float> poison, float %.sroa.0279.0.copyload.i, i64 0
  %i.mt = insertelement <2 x float> %i.ms, float %i.mo, i64 1
  %i.mu = fmul reassoc nsz arcp contract afn <2 x float> %i.mt, <float 9.945350e-01, float f0x3F8020AB>
  %i.mv = fmul reassoc nsz arcp contract afn <2 x float> %i.mu, %i.jx ; 4 uses
  %i.mw = fmul reassoc nsz arcp contract afn <2 x float> %i.mv, <float 3.875200e-01, float f0xBF8170CE>
  %i.mx = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.my = fmul reassoc nsz arcp contract afn <2 x float> %i.mv, <float f0x3FEE583F, float 6.214470e-01>
  %i.mz = fadd reassoc nsz arcp contract afn <2 x float> %i.my, %i.mx
  %i.na = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.nb = shufflevector <2 x float> %i.na, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nc = fmul reassoc nsz arcp contract afn <2 x float> %i.nb, <float 1.491870e-01, float -8.974000e-03>
  %i.nd = fadd reassoc nsz arcp contract afn <2 x float> %i.mz, %i.nc
  %i.ne = extractelement <2 x float> %i.mv, i64 0 ; 2 uses
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, -1.584100e-02
  %i.ng = extractelement <2 x float> %i.mv, i64 1 ; 2 uses
  %i.nh = fmul reassoc nsz arcp contract afn float %i.ng, -3.412300e-02
  %i.ni = fadd reassoc nsz arcp contract afn float %i.nh, %i.nf
  %i.nj = fmul reassoc nsz arcp contract afn float %i.mr, f0x3F866538
  %i.nk = fadd reassoc nsz arcp contract afn float %i.ni, %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store float %i.nk, ptr %i.nl, align 8, !tbaa !14, !noalias !112
  %i.nm = fadd reassoc nsz arcp contract afn float %i.ng, %i.ne
  %i.nn = fadd reassoc nsz arcp contract afn float %i.nm, %i.mr
  %i.no = fmul reassoc nsz arcp contract afn float %i.nn, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit297.i

.thread204.i:                                     ; preds = %downscale_vector.exit.i
  %i.np = fmul reassoc nsz arcp contract afn float %.sroa.0279.0.copyload.i, 9.642120e-01
  %i.nq = load float, ptr %i.js, align 4, !tbaa !14, !noalias !112
  %i.nr = insertelement <2 x float> poison, float %i.np, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.nq, i64 1
  %i.nt = fmul reassoc nsz arcp contract afn <2 x float> %i.ns, %i.ju
  %i.nu = load float, ptr %i.jt, align 8, !tbaa !14, !noalias !112
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nu, f0x3F533F8A
  %i.nw = fmul reassoc nsz arcp contract afn float %i.nv, %i.jv
  br label %convert_any_LMS_to_XYZ.exit297.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.sroa.17.0.i = phi nsz float [ %i.mn, %bb.r ], [ %i.mj, %bb.q ] ; 3 uses
  %.pn.in.i = phi float [ %i.mk, %bb.r ], [ %i.md, %bb.q ]
  %i.nx = insertelement <2 x float> poison, float %.sroa.0279.0.copyload.i, i64 0
  %i.ny = insertelement <2 x float> %i.nx, float %.pn.in.i, i64 1
  %i.nz = fmul reassoc nsz arcp contract afn <2 x float> %i.ny, <float 9.960780e-01, float f0x3F82A487>
  %i.oa = fmul reassoc nsz arcp contract afn <2 x float> %i.nz, %i.ka ; 4 uses
  %i.ob = insertelement <2 x float> poison, float %.sroa.17.0.i, i64 0
  %i.oc = shufflevector <2 x float> %i.ob, <2 x float> poison, <2 x i32> zeroinitializer
  %i.od = fmul reassoc nsz arcp contract afn <2 x float> %i.oc, <float 1.600000e-01, float 4.930000e-02>
  %i.oe = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.of = fmul reassoc nsz arcp contract afn <2 x float> %i.oe, <float f0x3F7CAC08, float 4.323000e-01>
  %i.og = shufflevector <2 x float> %i.oa, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oh = fmul reassoc nsz arcp contract afn <2 x float> %i.og, <float -1.471000e-01, float 5.184000e-01>
  %i.oi = fadd reassoc nsz arcp contract afn <2 x float> %i.od, %i.of
  %i.oj = fadd reassoc nsz arcp contract afn <2 x float> %i.oi, %i.oh
  %i.ok = extractelement <2 x float> %i.oa, i64 0 ; 2 uses
  %i.ol = fmul reassoc nsz arcp contract afn float %i.ok, -8.500000e-03
  %i.om = extractelement <2 x float> %i.oa, i64 1 ; 2 uses
  %i.on = fmul reassoc nsz arcp contract afn float %i.om, 4.000000e-02
  %i.oo = fmul reassoc nsz arcp contract afn float %.sroa.17.0.i, 9.685000e-01
  %i.op = fadd reassoc nsz arcp contract afn float %i.oo, %i.ol
  %i.oq = fadd reassoc nsz arcp contract afn float %i.op, %i.on
  %i.or = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store float %i.oq, ptr %i.or, align 8, !tbaa !14, !noalias !112
  %i.os = fadd reassoc nsz arcp contract afn float %.sroa.17.0.i, %i.ok
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, %i.om
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, 0.000000e+00
  br label %convert_any_LMS_to_XYZ.exit297.i

convert_any_LMS_to_XYZ.exit297.i:                 ; preds = %.thread.i, %.thread204.i, %.thread205.i, %.preheader.preheader.i
end_hunk_0
begin_hunk_1_@commit_params:bb.a
  store <2 x float> %i.iq, ptr %i.ih, align 16, !tbaa !14
  %i.ir = fmul reassoc nsz arcp contract afn float %i.id, 3.890000e-02
  %i.is = fadd reassoc nsz arcp contract afn float %i.ir, -6.850000e-02
  %i.it = fmul reassoc nsz arcp contract afn float %i.ig, 1.029600e+00
  %i.iu = fadd reassoc nsz arcp contract afn float %i.is, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store float %i.iu, ptr %i.iv, align 8, !tbaa !14
  %i.iw = fadd reassoc nsz arcp contract afn float %i.id, 1.000000e+00
  %i.ix = fadd reassoc nsz arcp contract afn float %i.iw, %i.ig
  %i.iy = fmul reassoc nsz arcp contract afn float %i.ix, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.y:                                             ; preds = %bb.w
  %i.iz = insertelement <2 x float> poison, float %i.id, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul reassoc nsz arcp contract afn <2 x float> %i.ja, <float 4.012880e-01, float -2.502680e-01>
  %i.jc = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fmul reassoc nsz arcp contract afn <2 x float> %i.jd, <float -5.146100e-02, float 4.585400e-02>
  %i.jf = fadd reassoc nsz arcp contract afn <2 x float> %i.jb, <float 6.501730e-01, float f0x3F9A2A3D>
  %i.jg = fadd reassoc nsz arcp contract afn <2 x float> %i.jf, %i.je
  store <2 x float> %i.jg, ptr %i.ih, align 16, !tbaa !14
  %i.jh = fmul reassoc nsz arcp contract afn float %i.id, -2.079000e-03
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, 4.895200e-02
  %i.jj = fmul reassoc nsz arcp contract afn float %i.ig, 9.531270e-01
  %i.jk = fadd reassoc nsz arcp contract afn float %i.ji, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store float %i.jk, ptr %i.jl, align 8, !tbaa !14
  %i.jm = fadd reassoc nsz arcp contract afn float %i.id, 1.000000e+00
  %i.jn = fadd reassoc nsz arcp contract afn float %i.jm, %i.ig
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, 0.000000e+00
  br label %convert_any_XYZ_to_LMS.exit

bb.z:                                             ; preds = %bb.w
  store float %i.id, ptr %i.ih, align 16, !tbaa !14
  %i.jp = getelementptr inbounds nuw i8, ptr %i.e, i64 116
  store float 1.000000e+00, ptr %i.jp, align 4, !tbaa !14
  br label %convert_any_XYZ_to_LMS.exit

convert_any_XYZ_to_LMS.exit:                      ; preds = %bb.x, %bb.y, %bb.z
  %.sink11.i = phi i64 [ 8, %bb.z ], [ 12, %bb.y ], [ 12, %bb.x ]
  %.sink.i = phi float [ %i.ig, %bb.z ], [ %i.jo, %bb.y ], [ %i.iy, %bb.x ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sink11.i
  store float %.sink.i, ptr %i.jq, align 4, !tbaa !14
  %i.jr = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  store float 0.000000e+00, ptr %i.jr, align 4, !tbaa !14
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !51
  %i.ju = getelementptr i8, ptr %i.jt, i64 644
  %.val = load i32, ptr %i.ju, align 4, !tbaa !64
  %i.jv = and i32 %.val, 4
  %i.jw = icmp ne i32 %i.jv, 0
  %i.jx = icmp ne ptr %i.g, null                  ; 3 uses
  %or.cond3 = select i1 %i.jw, i1 %i.jx, i1 false
  br i1 %or.cond3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %convert_any_XYZ_to_LMS.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %i.g, i64 528
  %i.jz = load i32, ptr %i.jy, align 16, !tbaa !97
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = getelementptr inbounds nuw i8, ptr %i.g, i64 532
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !241
  %i.kd = icmp ne i32 %i.kc, 0
  br label %bb.ab

bb.ab:                                            ; preds = %convert_any_XYZ_to_LMS.exit, %bb.aa
  %i.ke = phi i1 [ %i.ka, %bb.aa ], [ false, %convert_any_XYZ_to_LMS.exit ] ; 2 uses
  %i.kf = phi i1 [ %i.kd, %bb.aa ], [ false, %convert_any_XYZ_to_LMS.exit ] ; 2 uses
  %i.kg = call ptr @get_f(ptr noundef nonnull @.str.84) ; 3 uses
  %i.kh = load i32, ptr %i.ic, align 4, !tbaa !234 ; 2 uses
  %.not.i156 = icmp eq ptr %i.kg, null
  br i1 %.not.i156, label %dt_introspection_get_enum_name.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ki = load i32, ptr %i.kg, align 8, !tbaa !121
  %i.kj = icmp eq i32 %i.ki, 16
  br i1 %i.kj, label %bb.ad, label %dt_introspection_get_enum_name.exit

bb.ad:                                            ; preds = %bb.ac
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 72
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !121 ; 3 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !329 ; 2 uses
  %.not1214.i = icmp eq ptr %i.km, null
  br i1 %.not1214.i, label %dt_introspection_get_enum_name.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.ad
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !331
  %i.kp = icmp eq i32 %i.ko, %i.kh
  br i1 %i.kp, label %dt_introspection_get_enum_name.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0915.i187 = phi ptr [ %i.kq, %.lr.ph.i ], [ %i.kl, %.lr.ph.i.preheader ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.0915.i187, i64 24 ; 2 uses
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !329 ; 2 uses
  %.not12.i = icmp eq ptr %i.kr, null
  br i1 %.not12.i, label %dt_introspection_get_enum_name.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.ks = getelementptr inbounds nuw i8, ptr %.0915.i187, i64 32
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !331
  %i.ku = icmp eq i32 %i.kt, %i.kh
  br i1 %i.ku, label %dt_introspection_get_enum_name.exit, label %.lr.ph

dt_introspection_get_enum_name.exit:              ; preds = %.lr.ph.i, %.lr.ph, %.lr.ph.i.preheader, %bb.ab, %bb.ac, %bb.ad
  %.1.i = phi ptr [ null, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ %i.km, %.lr.ph.i.preheader ], [ %i.kr, %.lr.ph.i ], [ null, %.lr.ph ] ; 2 uses
  %i.kv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !251
  %i.kw = and i32 %i.kv, 2097152
  %.not151 = icmp eq i32 %i.kw, 0
  br i1 %.not151, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %dt_introspection_get_enum_name.exit
  %i.kx = select i1 %i.ke, ptr @.str.86, ptr @.str.87
  %i.ky = select i1 %i.kf, ptr @.str.88, ptr @.str.87
  %i.kz = load float, ptr %i.ht, align 4, !tbaa !326
  %i.la = fptosi float %i.kz to i32
  %i.lb = fpext reassoc nsz arcp contract afn float %.pre190 to double
  %i.lc = fpext reassoc nsz arcp contract afn float %.pre191 to double
  %i.ld = fpext reassoc nsz arcp contract afn float %i.id to double
  %i.le = fpext reassoc nsz arcp contract afn float %i.ig to double
  %i.lf = load <2 x float>, ptr %i.ih, align 16, !tbaa !14
  %i.lg = fpext <2 x float> %i.lf to <2 x double> ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.li = load float, ptr %i.lh, align 8, !tbaa !14
  %i.lj = fpext reassoc nsz arcp contract afn float %i.li to double
  %.not152 = icmp eq ptr %.1.i, null
  %i.lk = select i1 %.not152, ptr @.str.89, ptr %.1.i
  %i.ll = extractelement <2 x double> %i.lg, i64 0
  %i.lm = extractelement <2 x double> %i.lg, i64 1
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.85, ptr noundef nonnull %i.kx, ptr noundef nonnull %i.ky, i32 noundef %i.la, double noundef %i.lb, double noundef %i.lc, double noundef %i.ld, double noundef 1.000000e+00, double noundef %i.le, double noundef %i.ll, double noundef %i.lm, double noundef %i.lj, ptr noundef nonnull %i.lk) #31
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %dt_introspection_get_enum_name.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.lo = load float, ptr %i.ln, align 8, !tbaa !14
  %i.lp = fdiv reassoc nsz arcp contract afn float f0x3F51729B, %i.lo
  %i.lq = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.lp, float 8.340000e-02)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store float %i.lq, ptr %i.lr, align 64, !tbaa !236
  %i.ls = load ptr, ptr %i.ft, align 8, !tbaa !79
  %i.lt = load i32, ptr %i.ls, align 16, !tbaa !80
  %i.lu = icmp ne i32 %i.lt, 0
  %or.cond7 = select i1 %i.lu, i1 %i.jx, i1 false
  %or.cond9 = select i1 %i.ke, i1 true, i1 %i.kf
  %or.cond155 = select i1 %or.cond7, i1 %or.cond9, i1 false
  br i1 %or.cond155, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.lv = getelementptr inbounds nuw i8, ptr %3, i64 216
  store i32 0, ptr %i.lv, align 8, !tbaa !332
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !333 ; 2 uses
  %.not153 = icmp eq ptr %i.lx, null
  br i1 %.not153, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !334
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.lz = phi i32 [ %i.ly, %bb.ai ], [ 0, %bb.ah ] ; 2 uses
  br i1 %i.jx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ma = icmp ugt i32 %i.lz, 1
  %i.mb = trunc i32 %i.lz to i1
  %i.mc = and i1 %i.ma, %i.mb
  %i.md = zext i1 %i.mc to i32
  %i.me = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  store i32 %i.md, ptr %i.me, align 32, !tbaa !248
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_check_if_close_to_daylight(float noundef %0, float noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x float], align 8              ; 6 uses
  %i.b = fcmp reassoc nsz arcp contract afn olt float %0, f0x7F7FFFFF
  br i1 %i.b, label %xy_to_CCT.exit, label %xy_to_CCT.exit.thread

xy_to_CCT.exit:                                   ; preds = %bb.a
  %i.c = fadd reassoc nsz arcp contract afn float %1, -1.735000e-01
  %i.d = fsub reassoc nsz arcp contract afn float 3.366000e-01, %0
  %i.e = fdiv reassoc nsz arcp contract afn float %i.d, %i.c ; 3 uses
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, f0x3F8AE3F1
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.f)
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, f0x45C36E6D
  %i.i = fadd reassoc nsz arcp contract afn float %i.h, f0xC46D773E
  %i.j = fmul reassoc nsz arcp contract afn float %i.e, f0x409FB049
  %i.k = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.j)
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, f0x41E5A5DE
  %i.m = fadd reassoc nsz arcp contract afn float %i.i, %i.l
  %i.n = fmul reassoc nsz arcp contract afn float %i.e, f0x41608FB8
  %i.o = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.n)
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, 4.000000e-05
  %i.q = fadd reassoc nsz arcp contract afn float %i.m, %i.p ; 3 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.q, 3.000000e+03
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.q, 1.667000e+03
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.b, label %xy_to_CCT.exit.thread

bb.b:                                             ; preds = %xy_to_CCT.exit
  %i.t = tail call reassoc nsz arcp contract afn fastcc float @CCT_reverse_lookup(float noundef %0, float noundef %1)
  br label %xy_to_CCT.exit.thread

xy_to_CCT.exit.thread:                            ; preds = %bb.a, %bb.b, %xy_to_CCT.exit
  %.0 = phi nsz float [ %i.t, %bb.b ], [ %i.q, %xy_to_CCT.exit ], [ 0.000000e+00, %bb.a ] ; 16 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %xy_to_CCT.exit.thread
  store float %.0, ptr %2, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %xy_to_CCT.exit.thread
  %i.u = fmul reassoc nsz arcp contract afn float %1, 1.200000e+01
  %i.v = fmul reassoc nsz arcp contract afn float %0, 1.882000e+00
  %i.w = fsub reassoc nsz arcp contract afn float %i.u, %i.v
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, 2.908800e+00 ; 2 uses
  %i.y = fmul reassoc nsz arcp contract afn float %0, 5.593200e+00
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = fpext reassoc nsz arcp contract afn float %1 to double
  %i.ab = fmul reassoc nsz arcp contract afn double %i.aa, 1.911600e+00
  %i.ac = fadd reassoc nsz arcp contract afn double %i.ab, %i.z
  %i.ad = fptrunc reassoc nsz arcp contract afn double %i.ac to float
  %i.ae = fmul reassoc nsz arcp contract afn float %1, 7.897200e+00
  %i.af = fdiv reassoc nsz arcp contract afn float %i.ad, %i.x ; 2 uses
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.ae, %i.x ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 0, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  call fastcc void @illuminant_to_xy(i32 noundef 2, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ah, float noundef %.0, i32 noundef 12, i32 noundef 9)
  %.val34 = load float, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %.val35 = load float, ptr %i.ah, align 4, !tbaa !14 ; 3 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %.val35, 1.200000e+01
  %i.aj = fmul reassoc nsz arcp contract afn float %.val34, 1.882000e+00
  %i.ak = fsub reassoc nsz arcp contract afn float %i.ai, %i.aj
  %i.al = fadd reassoc nsz arcp contract afn float %i.ak, 2.908800e+00 ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn float %.val34, 5.593200e+00
  %i.an = fpext reassoc nsz arcp contract afn float %i.am to double
  %i.ao = fpext reassoc nsz arcp contract afn float %.val35 to double
  %i.ap = fmul reassoc nsz arcp contract afn double %i.ao, 1.911600e+00
  %i.aq = fadd reassoc nsz arcp contract afn double %i.ap, %i.an
  %i.ar = fptrunc reassoc nsz arcp contract afn double %i.aq to float
  %i.as = fmul reassoc nsz arcp contract afn float %.val35, 7.897200e+00
  %i.at = fdiv reassoc nsz arcp contract afn float %i.ar, %i.al
  %i.au = fdiv reassoc nsz arcp contract afn float %i.as, %i.al
  %i.av = fsub reassoc nsz arcp contract afn float %i.at, %i.af
  %i.aw = fsub reassoc nsz arcp contract afn float %i.au, %i.ag
  %i.ax = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.av, float noundef %i.aw) #33 ; 4 uses
  %i.ay = fcmp reassoc nsz arcp contract afn oge float %.0, 1.667000e+03 ; 2 uses
  %i.az = fcmp reassoc nsz arcp contract afn ole float %.0, 4.000000e+03 ; 2 uses
  %or.cond.i24.i = and i1 %i.ay, %i.az
  br i1 %or.cond.i24.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ba = fdiv reassoc nsz arcp contract afn float f0x4D7DCBA8, %.0
  %i.bb = fsub reassoc nsz arcp contract afn float f0xC864DDBA, %i.ba
  %i.bc = fdiv reassoc nsz arcp contract afn float %i.bb, %.0
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, f0x445B6C85
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bd, %.0
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, 1.799100e-01
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %.0, 4.000000e+03
  %i.bh = fcmp reassoc nsz arcp contract afn ole float %.0, 2.500000e+04
  %or.cond3.i25.i = and i1 %i.bg, %i.bh
  br i1 %or.cond3.i25.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = fdiv reassoc nsz arcp contract afn float f0x4F345AC2, %.0
  %i.bj = fsub reassoc nsz arcp contract afn float f0x4A009A78, %i.bi
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bj, %.0
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, f0x435EA27C
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bl, %.0
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bm, 2.403900e-01
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.038.i.i = phi nsz float [ %i.bf, %bb.e ], [ %i.bn, %bb.g ], [ 0.000000e+00, %bb.f ] ; 8 uses
  %i.bo = fcmp reassoc nsz arcp contract afn ole float %.0, 2.222000e+03
  %or.cond5.i.i = and i1 %i.ay, %i.bo
  br i1 %or.cond5.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = fmul reassoc nsz arcp contract afn float %.038.i.i, f0x3F8D9DE8
  %i.bq = fsub reassoc nsz arcp contract afn float f0xBFAC8EE0, %i.bp
  br label %CCT_to_xy_blackbody.exit.i

bb.j:                                             ; preds = %bb.h
  %i.br = fcmp reassoc nsz arcp contract afn ogt float %.0, 2.222000e+03
  %or.cond7.i.i = and i1 %i.br, %i.az
  br i1 %or.cond7.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = fmul reassoc nsz arcp contract afn float %.038.i.i, f0x3F747772
  %i.bt = fsub reassoc nsz arcp contract afn float f0xBFAFE553, %i.bs
  br label %CCT_to_xy_blackbody.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bu = fcmp reassoc nsz arcp contract afn ogt float %.0, 4.000000e+03
  %i.bv = fcmp reassoc nsz arcp contract afn ole float %.0, 2.500000e+04
  %or.cond9.i.i = and i1 %i.bu, %i.bv
  br i1 %or.cond9.i.i, label %bb.m, label %illuminant_to_xy.exit

bb.m:                                             ; preds = %bb.l
  %i.bw = fmul reassoc nsz arcp contract afn float %.038.i.i, f0x40453B86
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, f0xC0BBF2C9
  br label %CCT_to_xy_blackbody.exit.i

CCT_to_xy_blackbody.exit.i:                       ; preds = %bb.m, %bb.k, %bb.i
  %.sink41.i = phi float [ %i.bq, %bb.i ], [ %i.bt, %bb.k ], [ %i.bx, %bb.m ]
  %.sink40.i = phi float [ f0x400BE030, %bb.i ], [ 2.091370e+00, %bb.k ], [ f0x40701283, %bb.m ]
  %.sink38.i = phi float [ f0xBE4F0CB0, %bb.i ], [ f0xBE2B8226, %bb.k ], [ f0xBEBD7295, %bb.m ]
  %i.by = fmul reassoc nsz arcp contract afn float %.sink41.i, %.038.i.i
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %.sink40.i
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, %.038.i.i
  %i.cb = fadd reassoc nsz arcp contract afn float %i.ca, %.sink38.i ; 4 uses
  %i.cc = fcmp reassoc nsz arcp contract afn une float %i.cb, 0.000000e+00
  %i.cd = fcmp reassoc nsz arcp contract afn une float %.038.i.i, 0.000000e+00
  %or.cond3.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond3.i, label %bb.n, label %illuminant_to_xy.exit

bb.n:                                             ; preds = %CCT_to_xy_blackbody.exit.i
  %.pre = fmul reassoc nsz arcp contract afn float %i.cb, 1.200000e+01
  %.pre49 = fmul reassoc nsz arcp contract afn float %.038.i.i, 1.882000e+00
  %.pre51 = fsub reassoc nsz arcp contract afn float %.pre, %.pre49
  %.pre53 = fadd reassoc nsz arcp contract afn float %.pre51, 2.908800e+00 ; 2 uses
  %.pre55 = fmul reassoc nsz arcp contract afn float %.038.i.i, 5.593200e+00
  %.pre57 = fpext reassoc nsz arcp contract afn float %.pre55 to double
  %.pre59 = fpext reassoc nsz arcp contract afn float %i.cb to double
  %.pre61 = fmul reassoc nsz arcp contract afn double %.pre59, 1.911600e+00
  %.pre63 = fadd reassoc nsz arcp contract afn double %.pre61, %.pre57
  %.pre65 = fptrunc reassoc nsz arcp contract afn double %.pre63 to float
  %.pre67 = fmul reassoc nsz arcp contract afn float %i.cb, 7.897200e+00
  %.pre69 = fdiv reassoc nsz arcp contract afn float %.pre65, %.pre53
  %.pre71 = fdiv reassoc nsz arcp contract afn float %.pre67, %.pre53
  %.pre73 = fsub reassoc nsz arcp contract afn float %.pre69, %i.af
  %.pre75 = fsub reassoc nsz arcp contract afn float %.pre71, %i.ag
  %.pre77 = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %.pre73, float noundef %.pre75) #33
  br label %illuminant_to_xy.exit

illuminant_to_xy.exit:                            ; preds = %CCT_to_xy_blackbody.exit.i, %bb.l, %bb.n
  %.pre-phi78 = phi float [ %i.ax, %CCT_to_xy_blackbody.exit.i ], [ %i.ax, %bb.l ], [ %.pre77, %bb.n ] ; 2 uses
  %i.ce = fcmp reassoc nsz arcp contract afn olt float %.pre-phi78, 5.000000e-03
  %i.cf = fcmp reassoc nsz arcp contract afn olt float %i.ax, 5.000000e-03
  %or.cond3 = select i1 %i.ce, i1 true, i1 %i.cf
  %.not31 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %or.cond3, label %bb.o, label %bb.q

bb.o:                                             ; preds = %illuminant_to_xy.exit
  br i1 %.not31, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = fcmp reassoc nsz arcp contract afn olt float %.pre-phi78, %i.ax
  %. = select i1 %i.cg, i32 6, i32 2
  br label %.sink.split

bb.q:                                             ; preds = %illuminant_to_xy.exit
  br i1 %.not31, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.p
  %.sink = phi i32 [ %., %bb.p ], [ 7, %bb.q ]
  store i32 %.sink, ptr %3, align 4, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q, %bb.o
  %.not32 = icmp eq ptr %4, null
  br i1 %.not32, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %4, align 4, !tbaa !18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @get_f(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.146) #31
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.147) #31
  %.not29 = icmp eq i32 %i.b, 0
  br i1 %.not29, label %bb.ac, label %bb.c

end_hunk_1
begin_hunk_2_@_illuminant_color_draw:bb.a
  br i1 %i.aq, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 2424
  %i.as = load double, ptr %i.ar, align 8, !tbaa !134
  %i.at = fcmp reassoc nsz arcp contract afn ogt double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 2432
  %i.av = load double, ptr %i.au, align 16, !tbaa !134
  %i.aw = fcmp reassoc nsz arcp contract afn ogt double %i.av, 0.000000e+00
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ax = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.aw, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 2400
  %i.az = load float, ptr %i.ay, align 16, !tbaa !14 ; 2 uses
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 2404
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !14
  %i.bd = fcmp reassoc nsz arcp contract afn ogt float %i.bc, 1.000000e+00
  br i1 %i.bd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.af, i64 2408
  %i.bf = load float, ptr %i.be, align 8, !tbaa !14
  %i.bg = fcmp reassoc nsz arcp contract afn ogt float %i.bf, 1.000000e+00
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bh = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ %i.bg, %bb.h ]
  %or.cond.i = select i1 %i.ax, i1 %i.bh, i1 false
  br i1 %or.cond.i, label %.preheader.preheader.i, label %_get_white_balance_coeff.exit

.preheader.preheader.i:                           ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 2424
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !134
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 2404
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.af, i64 2432
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 2408
  %i.bo = load <2 x double>, ptr %i.bm, align 16, !tbaa !134
  %i.bp = insertelement <4 x double> poison, double %i.ap, i64 0
  %i.bq = insertelement <4 x double> %i.bp, double %i.bj, i64 1
  %i.br = shufflevector <2 x double> %i.bo, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bs = shufflevector <4 x double> %i.bq, <4 x double> %i.br, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bt = fptrunc <4 x double> %i.bs to <4 x float>
  %i.bu = load <2 x float>, ptr %i.bn, align 8, !tbaa !14
  %i.bv = insertelement <4 x float> poison, float %i.az, i64 0
  %i.bw = insertelement <4 x float> %i.bv, float %i.bl, i64 1
  %i.bx = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.bw, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bz = fdiv reassoc nsz arcp contract afn <4 x float> %i.bt, %i.by
  store <4 x float> %i.bz, ptr %i.c, align 16, !tbaa !14
  br label %_get_white_balance_coeff.exit

_get_white_balance_coeff.exit:                    ; preds = %bb.a, %bb.b, %bb.i, %.preheader.preheader.i
  %i.ca = sitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.cb = fmul reassoc nsz arcp contract afn double %i.z, 3.000000e+00
  %i.cc = fptrunc reassoc nsz arcp contract afn double %i.cb to float ; 2 uses
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, 2.000000e+00
  %i.ce = fsub reassoc nsz arcp contract afn float %i.ca, %i.cd
  %i.cf = fptosi float %i.ce to i32
  %i.cg = fadd reassoc nsz arcp contract afn double %i.j, -8.000000e+00
  %i.ch = fptosi double %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !249
  %i.ck = load ptr, ptr %i.ae, align 8, !tbaa !79
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 112
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !326
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 124
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !327
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !328
  call fastcc void @illuminant_to_xy(i32 noundef %i.cj, ptr noundef nonnull %i.cl, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, float noundef %i.cn, i32 noundef %i.cp, i32 noundef %i.cr)
  %i.cs = load float, ptr %i.a, align 4, !tbaa !14 ; 2 uses
  %i.ct = load float, ptr %i.b, align 4, !tbaa !14 ; 3 uses
  %i.cu = fdiv reassoc nsz arcp contract afn float %i.cs, %i.ct ; 3 uses
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cs, %i.ct
  %i.cw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.cv
  %i.cx = fdiv reassoc nsz arcp contract afn float %i.cw, %i.ct ; 3 uses
  %i.cy = fmul reassoc nsz arcp contract afn float %i.cu, f0x40489119
  %i.cz = fadd reassoc nsz arcp contract afn float %i.cy, f0xBFCEF57D
  %i.da = fmul reassoc nsz arcp contract afn float %i.cx, f0xBEFB31D6
  %i.db = fadd reassoc nsz arcp contract afn float %i.cz, %i.da ; 2 uses
  %i.dc = fmul reassoc nsz arcp contract afn float %i.cu, f0x3F7A9091
  %i.dd = fsub reassoc nsz arcp contract afn float f0x3FF54420, %i.dc
  %i.de = fmul reassoc nsz arcp contract afn float %i.cx, 3.345400e-02
  %i.df = fadd reassoc nsz arcp contract afn float %i.dd, %i.de ; 2 uses
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cu, 7.194530e-02
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, f0xBE6A7CB9
  %i.di = fmul reassoc nsz arcp contract afn float %i.cx, f0x3FB3DEFE
  %i.dj = fadd reassoc nsz arcp contract afn float %i.dh, %i.di ; 2 uses
  %i.dk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.db, float %i.df)
  %i.dl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dk, float %i.dj) ; 3 uses
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.db, %i.dl
  %i.dn = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dm, float 0.000000e+00)
  %i.do = fdiv reassoc nsz arcp contract afn float %i.df, %i.dl
  %i.dp = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.do, float 0.000000e+00)
  %i.dq = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dl
  %i.dr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.dq, float 0.000000e+00)
  %i.ds = fpext reassoc nsz arcp contract afn float %i.dn to double
  %i.dt = fpext reassoc nsz arcp contract afn float %i.dp to double
  %i.du = fpext reassoc nsz arcp contract afn float %i.dr to double
  call void @cairo_set_source_rgb(ptr noundef %i.w, double noundef %i.ds, double noundef %i.dt, double noundef %i.du) #31
  %i.dv = fpext reassoc nsz arcp contract afn float %i.cc to double
  %i.dw = sitofp reassoc nsz arcp contract afn i32 %i.ch to double
  %i.dx = sitofp reassoc nsz arcp contract afn i32 %i.cf to double
  call void @cairo_rectangle(ptr noundef %i.w, double noundef 4.000000e+00, double noundef %i.dv, double noundef %i.dw, double noundef %i.dx) #31
  call void @cairo_fill(ptr noundef %i.w) #31
  call void @cairo_stroke(ptr noundef %i.w) #31
  call void @cairo_destroy(ptr noundef %i.w) #31
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.s, double noundef 0.000000e+00, double noundef 0.000000e+00) #31
  call void @cairo_paint(ptr noundef %1) #31
  call void @cairo_surface_destroy(ptr noundef %i.s) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i32 1
}

declare ptr @dt_color_picker_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_gui_box_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @gtk_box_new(i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_slider_from_params(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_soft_range(ptr noundef, float noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_digits(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_format(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_slider_new_with_range_and_feedback(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_widget_set_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_illum_xy_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !307
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %dt_Lch_to_xyY.exit, label %bb.c

dt_Lch_to_xyY.exit:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 680
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !245  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !52  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 64, !tbaa !346
  %i.j = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.i) #31
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, f0x3C8EFA36
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !347
  %i.n = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.m) #31
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.k) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, f0x3A49A634 ; 2 uses
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, %cos.i
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, f0x3E562DD1 ; 2 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.o, %sin.i
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, f0x3EF9E502 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.q, 6.000000e+00
  %i.u = fmul reassoc nsz arcp contract afn float %i.s, 1.600000e+01
  %i.v = fsub reassoc nsz arcp contract afn float %i.t, %i.u
  %i.w = fadd reassoc nsz arcp contract afn float %i.v, 1.200000e+01 ; 2 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.q, 9.000000e+00
  %i.y = fdiv reassoc nsz arcp contract afn float %i.x, %i.w ; 4 uses
  %i.z = fmul reassoc nsz arcp contract afn float %i.s, 4.000000e+00
  %i.aa = fdiv reassoc nsz arcp contract afn float %i.z, %i.w ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store float %i.y, ptr %i.ab, align 4, !tbaa !324
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 140
  store float %i.aa, ptr %i.ac, align 4, !tbaa !325
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.y, f0x7F7FFFFF
  br i1 %i.ad, label %xy_to_CCT.exit, label %xy_to_CCT.exit.thread

xy_to_CCT.exit:                                   ; preds = %dt_Lch_to_xyY.exit
  %i.ae = fadd reassoc nsz arcp contract afn float %i.aa, -1.735000e-01
  %i.af = fsub reassoc nsz arcp contract afn float 3.366000e-01, %i.y
  %i.ag = fdiv reassoc nsz arcp contract afn float %i.af, %i.ae ; 3 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, f0x3F8AE3F1
  %i.ai = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ah)
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, f0x45C36E6D
  %i.ak = fadd reassoc nsz arcp contract afn float %i.aj, f0xC46D773E
  %i.al = fmul reassoc nsz arcp contract afn float %i.ag, f0x409FB049
  %i.am = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.al)
  %i.an = fmul reassoc nsz arcp contract afn float %i.am, f0x41E5A5DE
  %i.ao = fadd reassoc nsz arcp contract afn float %i.ak, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ag, f0x41608FB8
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ap)
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, 4.000000e-05
  %i.as = fadd reassoc nsz arcp contract afn float %i.ao, %i.ar ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt float %i.as, 3.000000e+03
  br i1 %i.at, label %xy_to_CCT.exit.thread, label %bb.b

xy_to_CCT.exit.thread:                            ; preds = %dt_Lch_to_xyY.exit, %xy_to_CCT.exit
  %i.au = tail call reassoc nsz arcp contract afn fastcc float @CCT_reverse_lookup(float noundef %i.y, float noundef %i.aa)
  br label %bb.b

bb.b:                                             ; preds = %xy_to_CCT.exit.thread, %xy_to_CCT.exit
  %.0 = phi nsz float [ %i.au, %xy_to_CCT.exit.thread ], [ %i.as, %xy_to_CCT.exit ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 2 uses
  store float %.0, ptr %i.av, align 4, !tbaa !326
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !307
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.ay = atomicrmw add ptr %i.ax, i32 1 seq_cst, align 4 ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ba = load ptr, ptr %i.az, align 16, !tbaa !339
  %i.bb = load float, ptr %i.av, align 4, !tbaa !326
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ba, float noundef %i.bb) #31
  tail call fastcc void @_update_approx_cct(ptr noundef nonnull %1)
  tail call fastcc void @_update_illuminant_color(ptr noundef nonnull %1)
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !307
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 104
  %i.be = atomicrmw sub ptr %i.bd, i32 1 seq_cst, align 4 ; 0 uses
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !315
  tail call void @dt_dev_add_history_item(ptr noundef %i.bf, ptr noundef nonnull %1, i32 noundef 1) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @dt_bauhaus_slider_new_with_range(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_hard_max(ptr noundef, float noundef) local_unnamed_addr #5

declare void @dt_bauhaus_slider_set_soft_max(ptr noundef, float noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_toggle_from_params(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @dt_gui_new_collapsible_section(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @dt_bauhaus_combobox_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_spot_settings_changed_callback(ptr nofree readnone captures(none) %0, ptr noundef %1) #3 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !307
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 704 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !52  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 712 ; 2 uses
  %i.g = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.f) #31 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 864 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 32, !tbaa !344
  %i.j = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.i) #31
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 856 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !343
  %i.m = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.l) #31
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 848
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !342
  %i.p = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.o) #31
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 904
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !362
  %i.s = tail call i32 @gtk_toggle_button_get_active(ptr noundef %i.r) #31
  %i.t = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.f) #31 ; 0 uses
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.91, float noundef %i.j) #31
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.93, float noundef %i.m) #31
  tail call void @dt_conf_set_float(ptr noundef nonnull @.str.92, float noundef %i.p) #31
  tail call void @dt_conf_set_bool(ptr noundef nonnull @.str.90, i32 noundef %i.s) #31
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 776
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 840 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !361  ; 2 uses
  %.not10.i.i = icmp eq ptr %i.w, null
  br i1 %.not10.i.i, label %_area_mapping_active.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call i32 @dt_bauhaus_combobox_get(ptr noundef nonnull %i.w) #31
  %.not11.i.i = icmp eq i32 %i.x, 1
  br i1 %.not11.i.i, label %_area_mapping_active.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.h, align 32, !tbaa !344 ; 2 uses
  %.not12.i.i = icmp eq ptr %i.y, null
  br i1 %.not12.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_val(ptr noundef nonnull %i.y) #31
  %i.aa = fcmp reassoc nsz arcp contract afn une float %i.z, 5.000000e+01
  br i1 %i.aa, label %_area_mapping_section_text.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !343 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.ab, null
  br i1 %.not13.i.i, label %_area_mapping_active.exit.thread.i, label %_area_mapping_active.exit.i

_area_mapping_active.exit.i:                      ; preds = %bb.f
  %i.ac = tail call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get_val(ptr noundef nonnull %i.ab) #31
  %i.ad = fcmp reassoc nsz arcp contract afn oeq float %i.ac, 0.000000e+00
  br i1 %i.ad, label %_area_mapping_active.exit.thread.i, label %_area_mapping_section_text.exit

_area_mapping_active.exit.thread.i:               ; preds = %_area_mapping_active.exit.i, %bb.f, %bb.c, %bb.b
  br label %_area_mapping_section_text.exit

_area_mapping_section_text.exit:                  ; preds = %bb.e, %_area_mapping_active.exit.i, %_area_mapping_active.exit.thread.i
  %.str.317.sink.i = phi ptr [ @.str.317, %_area_mapping_active.exit.thread.i ], [ @.str.316, %bb.e ], [ @.str.316, %_area_mapping_active.exit.i ]
  %i.ae = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %.str.317.sink.i, i32 noundef 5) #31
  tail call void @dt_gui_collapsible_section_set_label(ptr noundef nonnull %i.u, ptr noundef %i.ae) #31
  %.val = load ptr, ptr %i.d, align 16, !tbaa !52
  tail call fastcc void @_paint_hue(ptr %.val)
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !361
  %i.ag = tail call i32 @dt_bauhaus_combobox_get(ptr noundef %i.af) #31
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_area_mapping_section_text.exit
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !315
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 2760
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !316
  tail call fastcc void @_auto_set_illuminant(ptr noundef nonnull %1, ptr noundef %i.ak)
  br label %bb.h

bb.h:                                             ; preds = %_area_mapping_section_text.exit, %bb.g, %bb.a
  ret void
}

declare ptr @gtk_check_button_new_with_label(ptr noundef) local_unnamed_addr #5

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @gtk_bin_get_child(ptr noundef) local_unnamed_addr #5

declare void @gtk_widget_set_vexpand(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @_origin_color_draw(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !52  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #31
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load i32, ptr %i.c, align 4, !tbaa !422
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !423  ; 2 uses
  %i.g = sitofp reassoc nsz arcp contract afn i32 %i.d to double ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !307
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1440
  %i.j = load double, ptr %i.i, align 8, !tbaa !424 ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn double %i.j, %i.g
  %i.l = fptosi double %i.k to i32
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.f to double
  %i.n = fmul reassoc nsz arcp contract afn double %i.j, %i.m
  %i.o = fptosi double %i.n to i32
  %i.p = call ptr @cairo_image_surface_create(i32 noundef 0, i32 noundef %i.l, i32 noundef %i.o) #31 ; 4 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !307
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1440
  %i.s = load double, ptr %i.r, align 8, !tbaa !424 ; 2 uses
  call void @cairo_surface_set_device_scale(ptr noundef %i.p, double noundef %i.s, double noundef %i.s) #31
  %i.t = call ptr @cairo_create(ptr noundef %i.p) #31 ; 5 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !307
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1432
  %i.w = load double, ptr %i.v, align 8, !tbaa !396
  %i.x = fmul reassoc nsz arcp contract afn double %i.w, 3.000000e+00
  %i.y = fptrunc reassoc nsz arcp contract afn double %i.x to float ; 2 uses
  %i.z = fadd reassoc nsz arcp contract afn double %i.g, -8.000000e+00
  %i.aa = fptosi double %i.z to i32
  %i.ab = fmul reassoc nsz arcp contract afn float %i.y, 2.000000e+00
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.f to float
  %i.ad = fsub reassoc nsz arcp contract afn float %i.ac, %i.ab
  %i.ae = fptosi float %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  %i.ag = load float, ptr %i.af, align 16, !tbaa !14
  %i.ah = fpext reassoc nsz arcp contract afn float %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 916
  %i.aj = load <2 x float>, ptr %i.ai, align 4, !tbaa !14
  %i.ak = fpext <2 x float> %i.aj to <2 x double> ; 2 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = extractelement <2 x double> %i.ak, i64 1
  call void @cairo_set_source_rgb(ptr noundef %i.t, double noundef %i.ah, double noundef %i.al, double noundef %i.am) #31
  %i.an = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.aa to double
  %i.ap = sitofp reassoc nsz arcp contract afn i32 %i.ae to double
  call void @cairo_rectangle(ptr noundef %i.t, double noundef 4.000000e+00, double noundef %i.an, double noundef %i.ao, double noundef %i.ap) #31
  call void @cairo_fill(ptr noundef %i.t) #31
  call void @cairo_stroke(ptr noundef %i.t) #31
  call void @cairo_destroy(ptr noundef %i.t) #31
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.p, double noundef 0.000000e+00, double noundef 0.000000e+00) #31
  call void @cairo_paint(ptr noundef %1) #31
  call void @cairo_surface_destroy(ptr noundef %i.p) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
end_hunk_2
begin_hunk_3_@_extract_patches:bb.a
  ret <2 x float> %.sroa.0239.4.vec.insert
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_compute_patches_delta_E(ptr noalias nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr noalias nofree noundef nonnull writeonly captures(none) %3, ptr noalias nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i64, ptr %i.a, align 16, !tbaa !113 ; 3 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = uitofp reassoc nsz arcp contract afn i64 %i.b to float
  %i.d = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.c
  br label %bb.b

._crit_edge:                                      ; preds = %bb.v, %bb.a
  %.0119.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1, %bb.v ]
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.eh, %bb.v ]
  store float %.0.lcssa, ptr %3, align 4, !tbaa !14
  store float %.0119.lcssa, ptr %4, align 4, !tbaa !14
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %.0143 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.eh, %bb.v ]
  %.0119142 = phi float [ 0.000000e+00, %.lr.ph ], [ %.1, %bb.v ] ; 2 uses
  %.0120141 = phi i64 [ 0, %.lr.ph ], [ %i.ej, %bb.v ] ; 4 uses
  %i.e = shl i64 %.0120141, 4
  %scevgep = getelementptr i8, ptr %0, i64 %i.e   ; 3 uses
  %.sroa.0.0.copyload = load float, ptr %scevgep, align 4, !tbaa !14 ; 2 uses
  %.sroa.4.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 4
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0.scevgep.sroa_idx, align 4, !tbaa !14 ; 3 uses
  %.sroa.5.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0.scevgep.sroa_idx, align 4, !tbaa !14 ; 2 uses
  %i.f = fmul reassoc nsz arcp contract afn float %.sroa.0.0.copyload, f0x3F84C0A6 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn ogt float %i.f, f0x3C111AA7
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.f) #33
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = fmul reassoc nsz arcp contract afn float %.sroa.0.0.copyload, f0x410137F7
  %i.j = fadd reassoc nsz arcp contract afn float %i.i, f0x3E0D3DCB
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = phi reassoc nsz arcp contract afn float [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  %i.l = fcmp reassoc nsz arcp contract afn ogt float %.sroa.4.0.copyload, f0x3C111AA7
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = fmul reassoc nsz arcp contract afn float %.sroa.4.0.copyload, f0x40F92F69
  %i.n = fadd reassoc nsz arcp contract afn float %i.m, f0x3E0D3DCB
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %.sroa.4.0.copyload) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi reassoc nsz arcp contract afn float [ %i.o, %bb.g ], [ %i.n, %bb.f ] ; 3 uses
  %i.q = fmul reassoc nsz arcp contract afn float %.sroa.5.0.copyload, f0x3F9B2B9B ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, f0x3C111AA7
  br i1 %i.r, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = fmul reassoc nsz arcp contract afn float %.sroa.5.0.copyload, f0x41170A26
  %i.t = fadd reassoc nsz arcp contract afn float %i.s, f0x3E0D3DCB
  br label %dt_XYZ_to_Lab.exit

bb.j:                                             ; preds = %bb.h
  %i.u = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.q) #33
  br label %dt_XYZ_to_Lab.exit

dt_XYZ_to_Lab.exit:                               ; preds = %bb.j, %bb.i
  %i.v = phi reassoc nsz arcp contract afn float [ %i.u, %bb.j ], [ %i.t, %bb.i ]
  %i.w = fmul reassoc nsz arcp contract afn float %i.p, 1.160000e+02
  %i.x = fadd reassoc nsz arcp contract afn float %i.w, -1.600000e+01 ; 2 uses
  %i.y = fsub reassoc nsz arcp contract afn float %i.k, %i.p
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, 5.000000e+02 ; 2 uses
  %i.aa = fsub reassoc nsz arcp contract afn float %i.v, %i.p
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, -2.000000e+02 ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.0120141 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !14 ; 2 uses
  %i.af = fsub reassoc nsz arcp contract afn float %i.ae, %i.x
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, %i.x
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, 5.000000e-01
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 116
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !14 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.al = load float, ptr %i.ak, align 4, !tbaa !14 ; 3 uses
  %i.am = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.aj, float noundef %i.al) #33
  %i.an = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.z, float noundef %i.ab) #33
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.am
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ao, 5.000000e-01 ; 3 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap ; 2 uses
  %i.ar = fmul reassoc nsz arcp contract afn float %i.aq, %i.aq ; 2 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.ar, %i.ar
  %i.at = fdiv reassoc nsz arcp contract afn float %i.as, %i.ap ; 2 uses
  %i.au = fadd reassoc nsz arcp contract afn float %i.at, f0x4FB5E621
  %i.av = fdiv reassoc nsz arcp contract afn float %i.at, %i.au
  %i.aw = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.av) ; 2 uses
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, 5.000000e-01
  %i.ay = fsub reassoc nsz arcp contract afn float 1.500000e+00, %i.ax ; 2 uses
  %i.az = fmul reassoc nsz arcp contract afn float %i.ay, %i.aj ; 2 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ay, %i.z ; 2 uses
  %i.bb = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.az, float noundef %i.al) #33 ; 4 uses
  %i.bc = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.ba, float noundef %i.ab) #33 ; 4 uses
  %i.bd = fsub reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = fadd reassoc nsz arcp contract afn float %i.bc, %i.bb ; 2 uses
  %i.bf = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.al, float %i.az)
  %i.bg = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ab, float %i.ba)
  %i.bh = fcmp reassoc nsz arcp contract afn oeq float %i.bb, 0.000000e+00 ; 2 uses
  %.0122 = select nsz i1 %i.bh, float 0.000000e+00, float %i.bf ; 3 uses
  %i.bi = fcmp reassoc nsz arcp contract afn oeq float %i.bc, 0.000000e+00 ; 2 uses
  %.0125 = select nsz i1 %i.bi, float 0.000000e+00, float %i.bg ; 3 uses
  %i.bj = fcmp reassoc nsz arcp contract afn olt float %.0122, 0.000000e+00
  %i.bk = fsub reassoc nsz arcp contract afn float f0x40C90FDB, %.0122
  %.1123 = select nsz i1 %i.bj, float %i.bk, float %.0122
  %i.bl = fcmp reassoc nsz arcp contract afn olt float %.0125, 0.000000e+00
  %i.bm = fsub reassoc nsz arcp contract afn float f0x40C90FDB, %.0125
  %.1126 = select nsz i1 %i.bl, float %i.bm, float %.0125
  %i.bn = fmul reassoc nsz arcp contract afn float %.1123, f0x42652EE0 ; 4 uses
  %i.bo = fmul reassoc nsz arcp contract afn float %.1126, f0x42652EE0 ; 4 uses
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bo, %i.bn ; 5 uses
  %i.bq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %or.cond = or i1 %i.bh, %i.bi                   ; 2 uses
  br i1 %or.cond, label %bb.o, label %bb.k

bb.k:                                             ; preds = %dt_XYZ_to_Lab.exit
  %i.br = fcmp reassoc nsz arcp contract afn ugt float %i.bq, 1.800000e+02
  br i1 %i.br, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bs = fcmp reassoc nsz arcp contract afn ogt float %i.bq, 1.800000e+02 ; 2 uses
  %i.bt = fcmp reassoc nsz arcp contract afn ole float %i.bo, %i.bn
  %or.cond133.not = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond133.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = fadd reassoc nsz arcp contract afn float %i.bp, 3.600000e+02
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bv = fcmp reassoc nsz arcp contract afn ogt float %i.bo, %i.bn
  %or.cond134 = select i1 %i.bs, i1 %i.bv, i1 false
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bp, -3.600000e+02
  %spec.select = select i1 %or.cond134, float %i.bw, float %i.bp
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %dt_XYZ_to_Lab.exit, %bb.k, %bb.m
  %.0127 = phi nsz float [ %spec.select, %bb.n ], [ %i.bp, %bb.k ], [ %i.bu, %bb.m ], [ 0.000000e+00, %dt_XYZ_to_Lab.exit ] ; 2 uses
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %.0127) ; 2 uses
  %i.by = fmul reassoc nsz arcp contract afn float %i.bc, %i.bb
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.by)
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, 2.000000e+00
  %i.cb = fmul reassoc nsz arcp contract afn float %.0127, f0x3C0EFA36
  %i.cc = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.cb)
  %i.cd = fmul reassoc nsz arcp contract afn float %i.ca, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn float %i.bn, %i.bo ; 7 uses
  br i1 %or.cond, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = fcmp reassoc nsz arcp contract afn ugt float %i.bx, 1.800000e+02
  br i1 %i.cf, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cg = fmul reassoc nsz arcp contract afn float %i.ce, 5.000000e-01
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ch = fcmp reassoc nsz arcp contract afn ogt float %i.bx, 1.800000e+02 ; 2 uses
  %i.ci = fcmp reassoc nsz arcp contract afn olt float %i.ce, 3.600000e+02
  %or.cond5 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond5, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = fmul reassoc nnan nsz arcp contract afn float %i.ce, 5.000000e-01
  %i.ck = fadd reassoc nsz arcp contract afn float %i.cj, 1.800000e+02
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cl = fcmp reassoc nsz arcp contract afn oge float %i.ce, 3.600000e+02
  %or.cond7 = select i1 %i.ch, i1 %i.cl, i1 false
  br i1 %or.cond7, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = fmul reassoc nnan nsz arcp contract afn float %i.ce, 5.000000e-01
  %i.cn = fadd reassoc nsz arcp contract afn float %i.cm, -1.800000e+02
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.t, %bb.u, %bb.s, %bb.o
  %.0124 = phi nsz float [ %i.ce, %bb.o ], [ %i.cg, %bb.q ], [ %i.ck, %bb.s ], [ %i.cn, %bb.u ], [ %i.ce, %bb.t ] ; 5 uses
  %i.co = fmul reassoc nsz arcp contract afn float %.0124, f0x3C8EFA36
  %i.cp = fadd reassoc nsz arcp contract afn float %i.co, f0xBF060A93
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.cp)
  %.neg = fmul reassoc nsz arcp contract afn float %i.cq, -1.700000e-01
  %i.cr = fmul reassoc nsz arcp contract afn float %.0124, f0x3D0EFA36
  %i.cs = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.cr)
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, 2.400000e-01
  %i.cu = fmul reassoc nsz arcp contract afn float %.0124, f0x3D567751
  %i.cv = fadd reassoc nsz arcp contract afn float %i.cu, f0x3DD67751
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.cv)
  %5 = fmul reassoc nsz arcp contract afn float %i.cw, 3.200000e-01
  %i.cx = fmul reassoc nsz arcp contract afn float %.0124, f0x3D8EFA36
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, f0xBF8CBE4D
  %6 = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.cy)
  %.neg139.a = fmul reassoc nsz arcp contract afn float %6, -2.000000e-01
  %i.cz = fadd reassoc nsz arcp contract afn float %i.ct, 1.000000e+00
  %7 = fadd reassoc nsz arcp contract afn float %i.cz, %.neg
  %8 = fadd reassoc nsz arcp contract afn float %7, %5
  %i.da = fadd reassoc nsz arcp contract afn float %8, %.neg139.a
  %i.db = fadd reassoc nsz arcp contract afn float %i.ah, -5.000000e+01 ; 2 uses
  %i.dc = fmul reassoc nsz arcp contract afn float %i.db, %i.db ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, 1.500000e-02
  %i.de = fadd reassoc nsz arcp contract afn float %i.dc, 2.000000e+01
  %i.df = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.de)
  %i.dg = fdiv reassoc nsz arcp contract afn float %i.dd, %i.df
  %i.dh = fadd reassoc nsz arcp contract afn float %i.dg, 1.000000e+00
  %i.di = fmul reassoc nsz arcp contract afn float %i.be, 2.250000e-02
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, 1.000000e+00
  %i.dk = fmul reassoc nsz arcp contract afn float %i.be, 7.500000e-03
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, %i.da
  %i.dm = fadd reassoc nsz arcp contract afn float %i.dl, 1.000000e+00
  %i.dn = fmul reassoc nsz arcp contract afn float %.0124, 4.000000e-02
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, -1.100000e+01 ; 2 uses
  %i.dp = fneg reassoc nsz arcp contract afn float %i.do
  %i.dq = fmul reassoc nsz arcp contract afn float %i.do, %i.dp
  %i.dr = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.dq)
  %i.ds = fmul reassoc nsz arcp contract afn float %i.dr, f0x3F860A93
  %i.dt = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.ds)
  %i.du = fdiv reassoc nsz arcp contract afn float %i.af, %i.dh ; 2 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.du
  %i.dw = fdiv reassoc nsz arcp contract afn float %i.bd, %i.dj ; 3 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %i.dw, %i.dw
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.cd, %i.dm ; 2 uses
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dw, 2.000000e+00
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.aw
  %i.eb = fmul reassoc nsz arcp contract afn float %i.ea, %i.dt
  %i.ec = fsub reassoc nsz arcp contract afn float %i.dy, %i.eb
  %reass.mul = fmul reassoc nsz arcp contract afn float %i.ec, %i.dy
  %9 = fadd reassoc nsz arcp contract afn float %i.dx, %i.dv
  %i.ed = fadd reassoc nsz arcp contract afn float %9, %reass.mul
  %i.ee = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ed) ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0120141
  store float %i.ee, ptr %i.ef, align 4, !tbaa !14
  %i.eg = fmul reassoc nsz arcp contract afn float %i.ee, %i.d
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, %.0143 ; 2 uses
  %i.ei = fcmp reassoc nsz arcp contract afn ogt float %i.ee, %.0119142
  %.1 = select nsz i1 %i.ei, float %i.ee, float %.0119142 ; 2 uses
  %i.ej = add nuw i64 %.0120141, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ej, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #15

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log2.f32(float) #15

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #15

declare float @dt_dev_exposure_get_exposure(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #15

declare float @dt_dev_exposure_get_black(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #4

declare i32 @dt_dev_equal_chroma(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @matrice_pseudoinverse(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 36)) %1) unnamed_addr #11 {
.loopexit.2.2:
  %i.a = load float, ptr %0, align 4, !tbaa !14   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !14 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !14 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !14 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load float, ptr %i.h, align 4, !tbaa !14 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !14 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !14 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !14 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !14 ; 4 uses
  %i.r = fmul reassoc nsz arcp contract afn float %i.a, %i.a
  %i.s = fmul reassoc nsz arcp contract afn float %i.c, %i.c
  %i.t = fadd reassoc nsz arcp contract afn float %i.r, %i.s
  %i.u = fmul reassoc nsz arcp contract afn float %i.e, %i.e
  %i.v = fadd reassoc nsz arcp contract afn float %i.t, %i.u ; 4 uses
  %i.w = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.v ; 4 uses
  %i.x = fmul reassoc nsz arcp contract afn float %i.g, %i.a
  %i.y = fmul reassoc nsz arcp contract afn float %i.i, %i.c
  %i.z = fadd reassoc nsz arcp contract afn float %i.x, %i.y
  %i.aa = fmul reassoc nsz arcp contract afn float %i.k, %i.e
  %i.ab = fadd reassoc nsz arcp contract afn float %i.z, %i.aa ; 5 uses
  %i.ac = fmul reassoc nsz arcp contract afn float %i.w, %i.ab ; 2 uses
  %i.ad = fneg reassoc nsz arcp contract afn float %i.ac
  %i.ae = fmul reassoc nsz arcp contract afn float %i.g, %i.g
  %i.af = fmul reassoc nsz arcp contract afn float %i.i, %i.i
  %i.ag = fadd reassoc nsz arcp contract afn float %i.ae, %i.af
  %i.ah = fmul reassoc nsz arcp contract afn float %i.k, %i.k
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ab, %i.v ; 6 uses
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, %i.ab
  %i.al = fsub reassoc nsz arcp contract afn float %i.ai, %i.ak ; 4 uses
  %i.am = fdiv reassoc nsz arcp contract afn float %i.ad, %i.al ; 3 uses
  %i.an = fmul reassoc nsz arcp contract afn float %i.m, %i.a
  %i.ao = fmul reassoc nsz arcp contract afn float %i.o, %i.c
  %i.ap = fadd reassoc nsz arcp contract afn float %i.an, %i.ao
  %i.aq = fmul reassoc nsz arcp contract afn float %i.q, %i.e
  %i.ar = fadd reassoc nsz arcp contract afn float %i.ap, %i.aq ; 5 uses
  %i.as = fmul reassoc nsz arcp contract afn float %i.w, %i.ar ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %i.m, %i.g
  %i.au = fmul reassoc nsz arcp contract afn float %i.o, %i.i
  %i.av = fadd reassoc nsz arcp contract afn float %i.at, %i.au
  %i.aw = fmul reassoc nsz arcp contract afn float %i.q, %i.k
  %i.ax = fadd reassoc nsz arcp contract afn float %i.av, %i.aw ; 2 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.aj, %i.ar
  %i.az = fsub reassoc nsz arcp contract afn float %i.ax, %i.ay ; 4 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %i.am, %i.az
  %i.bb = fadd reassoc nsz arcp contract afn float %i.as, %i.ba
  %i.bc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bb
  %i.bd = fmul reassoc nsz arcp contract afn float %i.m, %i.m
  %i.be = fmul reassoc nsz arcp contract afn float %i.o, %i.o
  %i.bf = fadd reassoc nsz arcp contract afn float %i.bd, %i.be
  %i.bg = fmul reassoc nsz arcp contract afn float %i.q, %i.q
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, %i.bg
  %i.bi = fdiv reassoc nsz arcp contract afn float %i.ar, %i.v ; 3 uses
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.ar
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bi, %i.ab
  %i.bl = fsub reassoc nsz arcp contract afn float %i.ax, %i.bk
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bl, %i.al ; 5 uses
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.az
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bj, %i.bn
  %i.bp = fsub reassoc nsz arcp contract afn float %i.bh, %i.bo ; 3 uses
  %i.bq = fdiv reassoc nsz arcp contract afn float %i.bc, %i.bp ; 5 uses
  %i.br = fmul reassoc nsz arcp contract afn float %i.bq, %i.bm
  %i.bs = fsub reassoc nsz arcp contract afn float %i.am, %i.br ; 3 uses
  %i.bt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ac
  %i.bu = fdiv reassoc nsz arcp contract afn float %i.bt, %i.al ; 3 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.az
  %i.bw = fadd reassoc nsz arcp contract afn float %i.as, %i.bv
  %i.bx = fneg reassoc nsz arcp contract afn float %i.bw
  %i.by = fdiv reassoc nsz arcp contract afn float %i.bx, %i.bp ; 5 uses
  %i.bz = fmul reassoc nsz arcp contract afn float %i.by, %i.bm
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bu, %i.bz ; 3 uses
  %i.cb = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.v ; 3 uses
  %i.cc = fneg reassoc nsz arcp contract afn float %i.ab
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cb, %i.cc
  %i.ce = fdiv reassoc nsz arcp contract afn float %i.cd, %i.al ; 3 uses
  %i.cf = fneg reassoc nsz arcp contract afn float %i.ar
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cb, %i.cf
  %i.ch = fmul reassoc nsz arcp contract afn float %i.ce, %i.az
  %i.ci = fsub reassoc nsz arcp contract afn float %i.cg, %i.ch
  %i.cj = fdiv reassoc nsz arcp contract afn float %i.ci, %i.bp ; 5 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, %i.bm
  %i.cl = fsub reassoc nsz arcp contract afn float %i.ce, %i.ck ; 3 uses
  %i.cm = fmul reassoc nsz arcp contract afn float %i.bm, %i.aj
  %i.cn = fsub reassoc nsz arcp contract afn float %i.bi, %i.cm ; 3 uses
  %i.co = fmul reassoc nsz arcp contract afn float %i.bq, %i.cn
  %i.cp = fmul reassoc nsz arcp contract afn float %i.am, %i.aj
  %i.cq = fadd reassoc nsz arcp contract afn float %i.cp, %i.co
  %i.cr = fsub reassoc nsz arcp contract afn float %i.w, %i.cq ; 3 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.by, %i.cn
  %i.ct = fmul reassoc nsz arcp contract afn float %i.bu, %i.aj
  %i.cu = fadd reassoc nsz arcp contract afn float %i.ct, %i.cs
  %i.cv = fsub reassoc nsz arcp contract afn float %i.w, %i.cu ; 3 uses
  %i.cw = fmul reassoc nsz arcp contract afn float %i.cj, %i.cn
  %i.cx = fmul reassoc nsz arcp contract afn float %i.ce, %i.aj
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cw
  %i.cz = fsub reassoc nsz arcp contract afn float %i.cb, %i.cy ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !14
  %i.da = load float, ptr %0, align 4, !tbaa !14
  %i.db = fmul reassoc nsz arcp contract afn float %i.da, %i.cz ; 2 uses
  store float %i.db, ptr %1, align 4, !tbaa !14
  %i.dc = load float, ptr %i.f, align 4, !tbaa !14
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.cv
  %i.de = fadd reassoc nsz arcp contract afn float %i.db, %i.dd ; 2 uses
  store float %i.de, ptr %1, align 4, !tbaa !14
  %i.df = load float, ptr %i.l, align 4, !tbaa !14
  %i.dg = fmul reassoc nsz arcp contract afn float %i.df, %i.cr
  %i.dh = fadd reassoc nsz arcp contract afn float %i.de, %i.dg
  store float %i.dh, ptr %1, align 4, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  store float 0.000000e+00, ptr %i.di, align 4, !tbaa !14
  %i.dj = load float, ptr %0, align 4, !tbaa !14
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.cl ; 2 uses
  store float %i.dk, ptr %i.di, align 4, !tbaa !14
  %i.dl = load float, ptr %i.f, align 4, !tbaa !14
  %i.dm = fmul reassoc nsz arcp contract afn float %i.dl, %i.ca
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dk, %i.dm ; 2 uses
  store float %i.dn, ptr %i.di, align 4, !tbaa !14
  %i.do = load float, ptr %i.l, align 4, !tbaa !14
  %i.dp = fmul reassoc nsz arcp contract afn float %i.do, %i.bs
  %i.dq = fadd reassoc nsz arcp contract afn float %i.dn, %i.dp
  store float %i.dq, ptr %i.di, align 4, !tbaa !14
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  store float 0.000000e+00, ptr %i.dr, align 4, !tbaa !14
  %i.ds = load float, ptr %0, align 4, !tbaa !14
  %i.dt = fmul reassoc nsz arcp contract afn float %i.ds, %i.cj ; 2 uses
  store float %i.dt, ptr %i.dr, align 4, !tbaa !14
  %i.du = load float, ptr %i.f, align 4, !tbaa !14
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.by
end_hunk_3
