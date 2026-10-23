Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8455
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZNK4pbrt8Triangle6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !348
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !353
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !354
  %i.m = mul nsw i32 %i.l, 3
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !355  ; 3 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !78
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %.sroa.0918.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 7 uses
  %.sroa.11924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.11924.0.copyload = load float, ptr %.sroa.11924.0..sroa_idx, align 4 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !78
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %.sroa.0906.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 7 uses
  %.sroa.11914.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.11914.0.copyload = load float, ptr %.sroa.11914.0..sroa_idx, align 4 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !78
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.aa ; 2 uses
  %.sroa.0894.0.copyload = load <2 x float>, ptr %i.ab, align 4 ; 6 uses
  %.sroa.11902.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.11902.0.copyload = load float, ptr %.sroa.11902.0..sroa_idx, align 4 ; 5 uses
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.ac = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.ad = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.af = fadd <2 x float> %i.ac, %i.ae
  %i.ag = fmul <2 x float> %i.af, splat (float 5.000000e-01)
  %i.ah = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.ai = fmul float %i.ah, 5.000000e-01
  %i.aj = tail call noundef float @_ZNK4pbrt8Triangle10SolidAngleENS_6Point3IfEE(ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %i.ag, float %i.ai) ; 2 uses
  %i.ak = fcmp olt float %i.aj, 3.000000e-04
  %i.al = fcmp ogt float %i.aj, 6.220000e+00
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @_ZNK4pbrt8Triangle6SampleENS_6Point2IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.84") align 8 %4, ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %3)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !227, !range !92, !noundef !93
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.c, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.119, i32 noundef 235, ptr noundef nonnull @.str.32, ptr noundef nonnull align 1 dereferenceable(4) @.str.120) #36
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !358
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.aq, ptr %i.ar, align 8, !tbaa !239
  %.sroa.0.sroa.3.0..sroa_idx.i476 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.0.sroa.3.0.copyload.i477 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i476, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i478 = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.0.sroa.4.0.copyload.i479 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i478, align 4
  %i.as = fadd float %.sroa.0.sroa.3.0.copyload.i477, %.sroa.0.sroa.4.0.copyload.i479
  %i.at = fmul float %i.as, 5.000000e-01          ; 2 uses
  %i.au = load <6 x float>, ptr %4, align 8       ; 2 uses
  %i.av = shufflevector <6 x float> %i.au, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.aw = shufflevector <6 x float> %i.au, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ax = fadd <2 x float> %i.av, %i.aw
  %i.ay = fmul <2 x float> %i.ax, splat (float 5.000000e-01) ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i492 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.sroa.4.0.copyload.i494 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.az = fadd float %.sroa.0.sroa.3.0.copyload.i492, %.sroa.0.sroa.4.0.copyload.i494
  %i.ba = fmul float %i.az, 5.000000e-01
  %i.bb = fsub float %i.at, %i.ba                 ; 3 uses
  %i.bc = fmul float %i.bb, %i.bb
  %i.bd = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %2, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison) ; 2 uses
  %i.be = shufflevector <6 x float> %i.bd, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bf = shufflevector <6 x float> %i.bd, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bg = fadd <2 x float> %i.be, %i.bf
  %i.bh = fmul <2 x float> %i.bg, splat (float 5.000000e-01)
  %i.bi = fsub <2 x float> %i.ay, %i.bh           ; 4 uses
  %i.bj = fmul <2 x float> %i.bi, %i.bi           ; 2 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fadd float %i.bk, %i.bc
  %i.bm = extractelement <2 x float> %i.bj, i64 1
  %i.bn = fadd float %i.bl, %i.bm                 ; 2 uses
  %i.bo = fcmp oeq float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.bp = call noundef float @sqrtf(float noundef %i.bn) #37 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.0380.0.copyload = load <2 x float>, ptr %i.bq, align 8 ; 2 uses
  %.sroa.2381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.2381.0.copyload = load float, ptr %.sroa.2381.0..sroa_idx, align 8 ; 2 uses
  %i.br = extractelement <2 x float> %i.bi, i64 0
  %i.bs = fneg float %i.br
  %i.bt = fdiv float %i.bs, %i.bp
  %i.bu = fneg float %i.bb
  %i.bv = fdiv float %i.bu, %i.bp
  %i.bw = extractelement <2 x float> %i.bi, i64 1
  %i.bx = fneg float %i.bw
  %i.by = fdiv float %i.bx, %i.bp                 ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0380.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0380.0.copyload, i64 1
  %i.bz = fmul float %i.by, %.sroa.2381.0.copyload ; 2 uses
  %i.ca = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.bv, float %i.bz)
  %i.cb = fneg float %i.bz
  %i.cc = call noundef float @llvm.fma.f32(float %.sroa.2381.0.copyload, float %i.by, float %i.cb)
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.bt, float %i.cd)
  %i.cf = call noundef float @llvm.fabs.f32(float %i.ce)
  %.sroa.0.sroa.3.0.copyload.i515 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.sroa.4.0.copyload.i517 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.cg = fadd float %.sroa.0.sroa.3.0.copyload.i515, %.sroa.0.sroa.4.0.copyload.i517
  %i.ch = fmul float %i.cg, 5.000000e-01
  %i.ci = fsub float %i.ch, %i.at                 ; 2 uses
  %i.cj = fmul float %i.ci, %i.ci
  %i.ck = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %2, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison) ; 2 uses
  %i.cl = shufflevector <6 x float> %i.ck, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cm = shufflevector <6 x float> %i.ck, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cn = fadd <2 x float> %i.cl, %i.cm
  %i.co = fmul <2 x float> %i.cn, splat (float 5.000000e-01)
  %i.cp = fsub <2 x float> %i.co, %i.ay           ; 2 uses
  %i.cq = fmul <2 x float> %i.cp, %i.cp           ; 2 uses
  %i.cr = extractelement <2 x float> %i.cq, i64 0
  %i.cs = fadd float %i.cr, %i.cj
  %i.ct = extractelement <2 x float> %i.cq, i64 1
  %i.cu = fadd float %i.cs, %i.ct
  %i.cv = fdiv float %i.cf, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !236
  %i.cy = fdiv float %i.cx, %i.cv                 ; 2 uses
  %i.cz = call float @llvm.fabs.f32(float %i.cy)
  %i.da = fcmp oeq float %i.cz, +inf
  br i1 %i.da, label %bb.f, label %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.g

_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit: ; preds = %bb.e
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.db, align 8, !tbaa !227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(89) %4, i64 72, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !40
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.cy, ptr %i.df, align 8, !tbaa !236
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.ad

bb.h:                                             ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !369
  %i.di = fcmp une float %i.dh, 0.000000e+00
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dk = load float, ptr %i.dj, align 4
  %i.dl = fcmp une float %i.dk, 0.000000e+00
  %or.cond.i = select i1 %i.di, i1 true, i1 %i.dl
  br i1 %or.cond.i, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit:  ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !241
  %i.do = fcmp une float %i.dn, 0.000000e+00
  br i1 %i.do, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit

_ZN4pbrt12SampleLinearEfff.exit.i:                ; preds = %bb.h, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit
  %.sroa.0.sroa.0.0.copyload.i549 = load float, ptr %2, align 4
  %.sroa.0.sroa.2.0.copyload.i551 = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.dp = fadd float %.sroa.0.sroa.0.0.copyload.i549, %.sroa.0.sroa.2.0.copyload.i551
  %i.dq = fmul float %i.dp, 5.000000e-01
  %.sroa.2289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dr = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.ds = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %.sroa.0.sroa.3.0..sroa_idx.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.dt = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.du = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 0, i32 0>
  %i.dv = fadd <4 x float> %i.dt, %i.du
  %i.dw = fmul <4 x float> %i.dv, splat (float 5.000000e-01) ; 4 uses
  %i.dx = shufflevector <2 x float> %.sroa.0906.0.copyload, <2 x float> %.sroa.0918.0.copyload, <4 x i32> <i32 0, i32 0, i32 2, i32 poison> ; 2 uses
  %i.dy = shufflevector <2 x float> %.sroa.0894.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ea = insertelement <4 x float> poison, float %i.dq, i64 0 ; 3 uses
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = fsub <4 x float> %i.dz, %i.eb           ; 3 uses
  %i.ed = shufflevector <2 x float> %.sroa.0906.0.copyload, <2 x float> %.sroa.0918.0.copyload, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ee = insertelement <4 x float> %i.ed, float %.sroa.11914.0.copyload, i64 1
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eg = fsub <4 x float> %i.ef, %i.dw           ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.eg, %i.eg
  %i.eh = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.ei = shufflevector <2 x float> %.sroa.0906.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float %.sroa.11914.0.copyload, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %.sroa.11924.0.copyload, i64 2 ; 2 uses
  %i.el = insertelement <4 x float> %i.ek, float %.sroa.11902.0.copyload, i64 3 ; 2 uses
  %i.em = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.en = fsub <4 x float> %i.el, %i.em
  %i.eo = shufflevector <4 x float> %i.dx, <4 x float> %i.ek, <2 x i32> <i32 2, i32 6>
  %6 = shufflevector <4 x float> %i.ea, <4 x float> %i.dw, <2 x i32> <i32 0, i32 5>
  %7 = fsub <2 x float> %i.eo, %6                 ; 2 uses
  %i.ep = fmul <2 x float> %7, %7                 ; 2 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = fadd float %i.eq, %i.eh
  %i.es = extractelement <2 x float> %i.ep, i64 1
  %i.et = fadd float %i.er, %i.es
  %i.eu = tail call noundef float @sqrtf(float noundef %i.et) #37
  %foldExtExtBinop972 = fmul <4 x float> %i.ec, %i.ec
  %i.ev = extractelement <4 x float> %foldExtExtBinop972, i64 0
  %i.ew = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ex = fmul <2 x float> %i.ew, %i.ew           ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = fadd float %i.ev, %i.ey
  %i.fa = extractelement <2 x float> %i.ex, i64 1
  %i.fb = fadd float %i.ez, %i.fa
  %i.fc = tail call noundef float @sqrtf(float noundef %i.fb) #37
  %foldExtExtBinop974 = fmul <4 x float> %i.eg, %i.eg
  %i.fd = extractelement <4 x float> %foldExtExtBinop974, i64 3
  %8 = shufflevector <4 x float> %i.dy, <4 x float> %i.el, <2 x i32> <i32 0, i32 7>
  %9 = shufflevector <4 x float> %i.ea, <4 x float> %i.dw, <2 x i32> <i32 0, i32 5>
  %10 = fsub <2 x float> %8, %9                   ; 2 uses
  %i.fe = fmul <2 x float> %10, %10               ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fadd float %i.ff, %i.fd
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fadd float %i.fg, %i.fh
  %i.fj = tail call noundef float @sqrtf(float noundef %i.fi) #37
  %i.fk = insertelement <4 x float> poison, float %i.fc, i64 0
  %i.fl = insertelement <4 x float> %i.fk, float %i.eu, i64 2
  %i.fm = insertelement <4 x float> %i.fl, float %i.fj, i64 3
  %i.fn = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 3 uses
  %i.fo = fdiv <4 x float> %i.ec, %i.fn
  %i.fp = fdiv <4 x float> %i.eg, %i.fn           ; 2 uses
  %i.fq = fdiv <4 x float> %i.en, %i.fn           ; 2 uses
  %.sroa.0288.0.copyload = load <2 x float>, ptr %i.dg, align 4 ; 3 uses
  %.sroa.2289.0.copyload = load float, ptr %.sroa.2289.0..sroa_idx, align 4 ; 4 uses
  %i.fr = extractelement <4 x float> %i.fp, i64 1
  %i.fs = fmul float %i.fr, %.sroa.2289.0.copyload ; 2 uses
  %i.ft = fneg float %i.fs
  %i.fu = shufflevector <4 x float> %i.fq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.fv = insertelement <2 x float> poison, float %.sroa.2289.0.copyload, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fu, %i.fw           ; 2 uses
  %i.fy = shufflevector <2 x float> %.sroa.0288.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fz = insertelement <2 x float> %i.fy, float %.sroa.2289.0.copyload, i64 1
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.gb = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.gc = insertelement <4 x float> %i.gb, float %i.fs, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %i.ft, i64 1 ; 2 uses
  %i.ge = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ga, <4 x float> %i.fp, <4 x float> %i.gd)
  %i.gf = fneg <2 x float> %i.fx
  %i.gg = insertelement <2 x float> %.sroa.0288.0.copyload, float %.sroa.2289.0.copyload, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.gi = shufflevector <4 x float> %i.gd, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gj = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x float> %i.gi, <4 x float> %i.gj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gl = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.gh, <4 x float> %i.fq, <4 x float> %i.gk)
  %i.gm = fadd <4 x float> %i.ge, %i.gl
  %i.gn = shufflevector <2 x float> %.sroa.0288.0.copyload, <2 x float> poison, <4 x i32> zeroinitializer
  %i.go = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.gn, <4 x float> %i.fo, <4 x float> %i.gm)
  %i.gp = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.go) ; 2 uses
  %i.gq = fcmp ogt <4 x float> %i.gp, splat (float f0x3C23D70A)
  %i.gr = select <4 x i1> %i.gq, <4 x float> %i.gp, <4 x float> splat (float f0x3C23D70A) ; 5 uses
  %i.gs = extractelement <4 x float> %i.gr, i64 0 ; 3 uses
  %foldExtExtBinop976 = fadd <4 x float> %i.gr, %i.gr ; 3 uses
  %i.gt = extractelement <4 x float> %foldExtExtBinop976, i64 0 ; 3 uses
  %.sroa.012.4.vec.extract.i = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.gu = extractelement <4 x float> %i.gr, i64 2 ; 4 uses
  %i.gv = extractelement <4 x float> %i.gr, i64 3 ; 4 uses
  %i.gw = fadd float %i.gu, %i.gv                 ; 3 uses
  %i.gx = fadd nnan float %i.gt, %i.gw
  %i.gy = fmul float %.sroa.012.4.vec.extract.i, %i.gx
  %foldExtExtBinop978 = fmul <4 x float> %foldExtExtBinop976, %foldExtExtBinop976
  %i.gz = extractelement <4 x float> %foldExtExtBinop978, i64 0
  %i.ha = fmul float %i.gw, %i.gw
  %i.hb = fsub float 1.000000e+00, %.sroa.012.4.vec.extract.i
  %i.hc = fmul float %i.hb, %i.gz
  %i.hd = fmul float %.sroa.012.4.vec.extract.i, %i.ha
  %i.he = fadd float %i.hc, %i.hd
  %i.hf = tail call noundef float @sqrtf(float noundef %i.he) #37
  %i.hg = fadd float %i.gt, %i.hf
  %i.hh = fdiv float %i.gy, %i.hg                 ; 2 uses
  %i.hi = fcmp ogt float %i.hh, f0x3F7FFFFF
  %.sroa.speculated.i.i = select i1 %i.hi, float f0x3F7FFFFF, float %i.hh ; 8 uses
  %.sroa.012.0.vec.extract.i = extractelement <2 x float> %3, i64 0 ; 4 uses
  %i.hj = fsub float 1.000000e+00, %.sroa.speculated.i.i ; 3 uses
  %i.hk = fmul float %i.gs, %i.hj                 ; 2 uses
  %i.hl = fmul float %i.gu, %.sroa.speculated.i.i
  %i.hm = fadd float %i.hl, %i.hk                 ; 5 uses
  %i.hn = fcmp oeq float %.sroa.012.0.vec.extract.i, 0.000000e+00
  %i.ho = fcmp oeq float %i.hm, 0.000000e+00
  %or.cond.i1.i = and i1 %i.hn, %i.ho
  br i1 %or.cond.i1.i, label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i
  %i.hp = fmul float %i.gv, %.sroa.speculated.i.i
  %i.hq = fadd float %i.hp, %i.hk                 ; 3 uses
  %i.hr = fadd float %i.hm, %i.hq
  %i.hs = fmul float %.sroa.012.0.vec.extract.i, %i.hr
  %i.ht = fmul float %i.hm, %i.hm
  %i.hu = fmul float %i.hq, %i.hq
  %i.hv = fsub float 1.000000e+00, %.sroa.012.0.vec.extract.i
  %i.hw = fmul float %i.hv, %i.ht
  %i.hx = fmul float %.sroa.012.0.vec.extract.i, %i.hu
  %i.hy = fadd float %i.hw, %i.hx
  %i.hz = tail call noundef float @sqrtf(float noundef %i.hy) #37
  %i.ia = fadd float %i.hm, %i.hz
  %i.ib = fdiv float %i.hs, %i.ia                 ; 2 uses
  %i.ic = fcmp ogt float %i.ib, f0x3F7FFFFF
  %.sroa.speculated.i2.i = select i1 %i.ic, float f0x3F7FFFFF, float %i.ib
  br label %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZN4pbrt12SampleLinearEfff.exit.i, %bb.i
  %.0.i3.i = phi float [ %.sroa.speculated.i2.i, %bb.i ], [ 0.000000e+00, %_ZN4pbrt12SampleLinearEfff.exit.i ] ; 6 uses
  %i.id = insertelement <2 x float> poison, float %.0.i3.i, i64 0
  %.sroa.013.0.vec.insert.i = insertelement <2 x float> %i.id, float %.sroa.speculated.i.i, i64 1 ; 2 uses
  %i.ie = fcmp olt float %.0.i3.i, 0.000000e+00
  %i.if = fcmp ogt float %.0.i3.i, 1.000000e+00
  %or.cond.i619 = or i1 %i.ie, %i.if
  %i.ig = fcmp olt float %.sroa.speculated.i.i, 0.000000e+00
  %i.ih = fcmp ogt float %.sroa.speculated.i.i, 1.000000e+00
  %i.ii = or i1 %i.ig, %i.ih
  %or.cond8.i = or i1 %i.ii, %or.cond.i619
  br i1 %or.cond8.i, label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit
  %i.ij = fadd float %i.gt, %i.gu
  %i.ik = fadd float %i.ij, %i.gv
  %i.il = fsub float 1.000000e+00, %.0.i3.i       ; 2 uses
  %i.im = fmul float %i.hj, %i.il
  %i.in = fmul float %i.gs, %i.im
  %i.io = fmul float %i.hj, %.0.i3.i
  %i.ip = fmul float %i.gs, %i.io
  %i.iq = fadd float %i.ip, %i.in
  %i.ir = fmul float %.sroa.speculated.i.i, %i.il
  %i.is = fmul float %i.gu, %i.ir
  %i.it = fadd float %i.is, %i.iq
  %i.iu = fmul float %.sroa.speculated.i.i, %.0.i3.i
  %i.iv = fmul float %i.gv, %i.iu
  %i.iw = fadd float %i.iv, %i.it
  %i.ix = fmul float %i.iw, 4.000000e+00
  %i.iy = fdiv float %i.ix, %i.ik
  br label %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit

_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit: ; preds = %bb.j, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit
  %.0465 = phi float [ 1.000000e+00, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit ], [ %i.iy, %bb.j ], [ 0.000000e+00, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit ]
  %.sroa.0459.0 = phi <2 x float> [ %3, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit ], [ %.sroa.013.0.vec.insert.i, %bb.j ], [ %.sroa.013.0.vec.insert.i, %_ZN4pbrt14SampleBilinearENS_6Point2IfEEN4pstd4spanIKfEE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  store <2 x float> %.sroa.0918.0.copyload, ptr %5, align 8
  %.sroa.4947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.11924.0.copyload, ptr %.sroa.4947.0..sroa_idx, align 8
  %.sroa.5948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store <2 x float> %.sroa.0906.0.copyload, ptr %.sroa.5948.0..sroa_idx, align 4
  %.sroa.6949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 20
  store float %.sroa.11914.0.copyload, ptr %.sroa.6949.0..sroa_idx, align 4
  %.sroa.7950.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store <2 x float> %.sroa.0894.0.copyload, ptr %.sroa.7950.0..sroa_idx, align 8
  %.sroa.8951.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %.sroa.11902.0.copyload, ptr %.sroa.8951.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0.copyload.i632 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i634 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.iz = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.ja = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %2, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.jb = shufflevector <4 x float> %i.ja, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jc = fadd <2 x float> %i.iz, %i.jb
  %i.jd = fmul <2 x float> %i.jc, splat (float 5.000000e-01)
  %i.je = fadd float %.sroa.0.sroa.5.0.copyload.i632, %.sroa.0.sroa.6.0.copyload.i634
  %i.jf = fmul float %i.je, 5.000000e-01
  %i.jg = call { <2 x float>, float } @_ZN4pbrt23SampleSphericalTriangleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_6Point2IfEEPf(ptr noundef nonnull align 4 dereferenceable(36) %5, <2 x float> %i.jd, float %i.jf, <2 x float> %.sroa.0459.0, ptr noundef nonnull %i.a) ; 2 uses
  %.fca.1.extract241 = extractvalue { <2 x float>, float } %i.jg, 1 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.jh = load float, ptr %i.a, align 4, !tbaa !77 ; 2 uses
  %i.ji = fcmp oeq float %i.jh, 0.000000e+00
  br i1 %i.ji, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.ac

bb.l:                                             ; preds = %_ZN4pstd5arrayIN4pbrt6Point3IfEELi3EEC2ESt16initializer_listIS3_E.exit
  %.fca.0.extract240 = extractvalue { <2 x float>, float } %i.jg, 0 ; 10 uses
  %i.jj = fmul float %.0465, %i.jh
  %.sroa.0845.0.vec.extract = extractelement <2 x float> %.fca.0.extract240, i64 0 ; 3 uses
  %foldExtExtBinop980 = fmul <2 x float> %.sroa.0918.0.copyload, %.fca.0.extract240
  %i.jk = extractelement <2 x float> %foldExtExtBinop980, i64 0 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0918.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop982 = fmul <2 x float> %shift, %.fca.0.extract240
  %i.jl = extractelement <2 x float> %foldExtExtBinop982, i64 0 ; 2 uses
  %i.jm = fmul float %.sroa.11924.0.copyload, %.sroa.0845.0.vec.extract ; 2 uses
  %i.jn = call noundef float @llvm.fabs.f32(float %i.jk)
  %i.jo = call noundef float @llvm.fabs.f32(float %i.jl)
  %i.jp = call noundef float @llvm.fabs.f32(float %i.jm)
  %.sroa.0845.4.vec.extract = extractelement <2 x float> %.fca.0.extract240, i64 1 ; 4 uses
  %.sroa.0.0.vec.extract.i651 = extractelement <2 x float> %.sroa.0906.0.copyload, i64 0
  %i.jq = fmul float %.sroa.0.0.vec.extract.i651, %.sroa.0845.4.vec.extract ; 2 uses
  %i.jr = call noundef float @llvm.fabs.f32(float %i.jq)
  %i.js = fadd float %i.jr, %i.jn
  %i.jt = fsub float 1.000000e+00, %.sroa.0845.0.vec.extract
  %i.ju = fsub float %i.jt, %.sroa.0845.4.vec.extract ; 5 uses
  %.sroa.0.0.vec.extract.i669 = extractelement <2 x float> %.sroa.0894.0.copyload, i64 0
  %.sroa.0.4.vec.extract.i670 = extractelement <2 x float> %.sroa.0894.0.copyload, i64 1
  %i.jv = fmul float %.sroa.11902.0.copyload, %i.ju
  %i.jw = shufflevector <2 x float> %.sroa.0906.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.jx = insertelement <4 x float> %i.jw, float %.sroa.11914.0.copyload, i64 1
  %i.jy = insertelement <4 x float> %i.jx, float %i.ju, i64 2
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ka = shufflevector <2 x float> %.fca.0.extract240, <2 x float> %.sroa.0894.0.copyload, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.kb = fmul <4 x float> %i.jz, %i.ka           ; 3 uses
  %i.kc = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kb) ; 4 uses
  %i.kd = extractelement <4 x float> %i.kc, i64 0
  %i.ke = fadd float %i.kd, %i.jo
  %i.kf = extractelement <4 x float> %i.kc, i64 1
  %i.kg = fadd float %i.kf, %i.jp
  %i.kh = call noundef float @llvm.fabs.f32(float %i.jv)
  %i.ki = extractelement <4 x float> %i.kc, i64 2
  %i.kj = fadd float %i.js, %i.ki
  %i.kk = extractelement <4 x float> %i.kc, i64 3
  %i.kl = fadd float %i.ke, %i.kk
  %i.km = fadd float %i.kg, %i.kh
  %i.kn = fmul float %i.kj, 3.576280e-07          ; 3 uses
  %i.ko = fmul float %i.kl, 3.576280e-07          ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4pbrt8Triangle3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE:bb.a
  store <2 x float> %.fca.0.extract.i, ptr %4, align 8, !alias.scope !1337
  %.sroa.27.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %.fca.1.extract.i, ptr %.sroa.27.0..sroa_idx.i.i, align 8, !alias.scope !1337
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  store <2 x float> %2, ptr %i.n, align 4, !alias.scope !1337
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %3, ptr %.sroa.23.0..sroa_idx.i.i, align 4, !alias.scope !1337
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.m, ptr %i.o, align 8, !tbaa !375, !alias.scope !1337
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 0, ptr %i.p, align 8, !tbaa !40, !alias.scope !1337
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZNK4pbrt8Triangle9IntersectERKNS_3RayEf(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional.157") align 8 %5, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %4, float noundef +inf)
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 256
  %i.r = load i8, ptr %i.q, align 8, !tbaa !1339, !range !92, !noundef !93
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr @_ZN4pbrt8Triangle9allMeshesE, align 8, !tbaa !342
  %i.u = load i32, ptr %0, align 4, !tbaa !344
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !348
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !350  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !353
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !354
  %i.ae = mul nsw i32 %i.ad, 3
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.af ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !355 ; 3 uses
  %i.aj = load i32, ptr %i.ag, align 4, !tbaa !78
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.ak ; 2 uses
  %.sroa.029.0.copyload.i = load <2 x float>, ptr %i.al, align 4 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !78
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.ao ; 2 uses
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !78
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.as ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.au = load <2 x float>, ptr %i.ap, align 4
  %i.av = load <2 x float>, ptr %.sroa.453.0..sroa_idx.i, align 4
  %i.aw = load <2 x float>, ptr %i.at, align 4
  %i.ax = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.ay = fsub <2 x float> %i.au, %.sroa.029.0.copyload.i ; 2 uses
  %i.az = shufflevector <2 x float> %.sroa.029.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ba = insertelement <2 x float> %i.az, float %.sroa.5.0.copyload.i, i64 1 ; 2 uses
  %i.bb = fsub <2 x float> %i.av, %i.ba           ; 3 uses
  %i.bc = fsub <2 x float> %i.aw, %.sroa.029.0.copyload.i ; 3 uses
  %i.bd = fsub <2 x float> %i.ax, %i.ba           ; 2 uses
  %i.be = extractelement <2 x float> %i.ay, i64 0 ; 2 uses
  %i.bf = extractelement <2 x float> %i.bd, i64 1 ; 2 uses
  %i.bg = fmul float %i.be, %i.bf                 ; 2 uses
  %i.bh = fneg float %i.bg
  %i.bi = extractelement <2 x float> %i.bb, i64 1
  %i.bj = extractelement <2 x float> %i.bc, i64 0
  %i.bk = call noundef float @llvm.fma.f32(float %i.bi, float %i.bj, float %i.bh)
  %i.bl = fneg float %i.be
  %i.bm = call noundef float @llvm.fma.f32(float %i.bl, float %i.bf, float %i.bg)
  %i.bn = fadd float %i.bk, %i.bm                 ; 2 uses
  %i.bo = fmul <2 x float> %i.bb, %i.bc           ; 2 uses
  %i.bp = fneg <2 x float> %i.bo
  %i.bq = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ay, <2 x float> %i.bd, <2 x float> %i.bp)
  %i.br = fneg <2 x float> %i.bb
  %i.bs = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.br, <2 x float> %i.bc, <2 x float> %i.bo)
  %i.bt = fadd <2 x float> %i.bq, %i.bs           ; 2 uses
  %i.bu = fmul float %i.bn, %i.bn
  %i.bv = fmul <2 x float> %i.bt, %i.bt           ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 1
  %i.bx = fadd float %i.bw, %i.bu
  %i.by = extractelement <2 x float> %i.bv, i64 0
  %i.bz = fadd float %i.by, %i.bx
  %sqrt.i = call float @llvm.sqrt.f32(float %i.bz)
  %i.ca = fmul float %sqrt.i, 5.000000e-01
  %i.cb = fdiv float 1.000000e+00, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 40
  %.sroa.0142.0.copyload = load <2 x float>, ptr %i.cc, align 8 ; 2 uses
  %.sroa.2143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.sroa.2143.0.copyload = load float, ptr %.sroa.2143.0..sroa_idx, align 8 ; 2 uses
  %.sroa.0336.0.vec.extract = extractelement <2 x float> %2, i64 0
  %i.cd = fneg float %.sroa.0336.0.vec.extract
  %.sroa.0336.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.ce = fneg float %.sroa.0336.4.vec.extract
  %i.cf = fneg float %3                           ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0142.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0142.0.copyload, i64 1
  %i.cg = fmul float %.sroa.2143.0.copyload, %i.cf ; 2 uses
  %i.ch = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i, float %i.ce, float %i.cg)
  %i.ci = fneg float %i.cg
  %i.cj = call noundef float @llvm.fma.f32(float %.sroa.2143.0.copyload, float %i.cf, float %i.ci)
  %i.ck = fadd float %i.ch, %i.cj
  %i.cl = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i, float %i.cd, float %i.ck)
  %i.cm = call noundef float @llvm.fabs.f32(float %i.cl)
  %.sroa.0.sroa.3.0.copyload.i185 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 4
  %.sroa.0.sroa.4.0.copyload.i187 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.cn = fadd float %.sroa.0.sroa.3.0.copyload.i185, %.sroa.0.sroa.4.0.copyload.i187
  %i.co = fmul float %i.cn, 5.000000e-01
  %.sroa.0.sroa.3.0..sroa_idx.i201 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.sroa.3.0.copyload.i202 = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i201, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i203 = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.sroa.0.sroa.4.0.copyload.i204 = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i203, align 4
  %i.cp = fadd float %.sroa.0.sroa.3.0.copyload.i202, %.sroa.0.sroa.4.0.copyload.i204
  %i.cq = fmul float %i.cp, 5.000000e-01
  %i.cr = fsub float %i.co, %i.cq                 ; 2 uses
  %i.cs = fmul float %i.cr, %i.cr
  %i.ct = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 4 %1, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison) ; 2 uses
  %i.cu = shufflevector <6 x float> %i.ct, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cv = shufflevector <6 x float> %i.ct, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cw = fadd <2 x float> %i.cu, %i.cv
  %i.cx = fmul <2 x float> %i.cw, splat (float 5.000000e-01)
  %i.cy = load <6 x float>, ptr %5, align 8       ; 2 uses
  %i.cz = shufflevector <6 x float> %i.cy, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.da = shufflevector <6 x float> %i.cy, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.db = fadd <2 x float> %i.cz, %i.da
  %i.dc = fmul <2 x float> %i.db, splat (float 5.000000e-01)
  %i.dd = fsub <2 x float> %i.cx, %i.dc           ; 2 uses
  %i.de = fmul <2 x float> %i.dd, %i.dd           ; 2 uses
  %i.df = extractelement <2 x float> %i.de, i64 0
  %i.dg = fadd float %i.df, %i.cs
  %i.dh = extractelement <2 x float> %i.de, i64 1
  %i.di = fadd float %i.dg, %i.dh
  %i.dj = fdiv float %i.cm, %i.di
  %i.dk = fdiv float %i.cb, %i.dj                 ; 2 uses
  %i.dl = call float @llvm.fabs.f32(float %i.dk)
  %i.dm = fcmp oeq float %i.dl, +inf
  %spec.select = select i1 %i.dm, float 0.000000e+00, float %i.dk
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi float [ %spec.select, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.dn = fdiv float 1.000000e+00, %i.h           ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !369
  %i.dq = fcmp une float %i.dp, 0.000000e+00
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ds = load float, ptr %i.dr, align 4
  %i.dt = fcmp une float %i.ds, 0.000000e+00
  %or.cond.i = select i1 %i.dq, i1 true, i1 %i.dt
  br i1 %or.cond.i, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit:  ; preds = %bb.e
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dv = load float, ptr %i.du, align 4, !tbaa !241
  %i.dw = fcmp une float %i.dv, 0.000000e+00
  br i1 %i.dw, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, label %bb.g

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread: ; preds = %bb.e, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit
  %i.dx = load ptr, ptr @_ZN4pbrt8Triangle9allMeshesE, align 8, !tbaa !342
  %i.dy = load i32, ptr %0, align 4, !tbaa !344
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !348
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dz
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !350 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !353
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !354
  %i.ei = mul nsw i32 %i.eh, 3
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !355 ; 3 uses
  %i.en = load i32, ptr %i.ek, align 4, !tbaa !78
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.eo ; 2 uses
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !78
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.es ; 2 uses
  %.sroa.5320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !78
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds [12 x i8], ptr %i.em, i64 %i.ew ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.4347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %.sroa.6349.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12
  %.sroa.7350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.9351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ey = load <2 x float>, ptr %i.ep, align 4    ; 3 uses
  %i.ez = load <2 x float>, ptr %i.et, align 4    ; 4 uses
  %i.fa = load <2 x float>, ptr %i.ex, align 4    ; 3 uses
  %i.fb = extractelement <2 x float> %i.ey, i64 0
  %i.fc = load <2 x float>, ptr %.sroa.5328.0..sroa_idx, align 4 ; 2 uses
  %i.fd = extractelement <2 x float> %i.ez, i64 0
  %i.fe = load <2 x float>, ptr %.sroa.5320.0..sroa_idx, align 4 ; 3 uses
  %i.ff = extractelement <2 x float> %i.fa, i64 0
  %i.fg = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  store float %i.fb, ptr %6, align 4
  store <2 x float> %i.fc, ptr %.sroa.4347.0..sroa_idx, align 4
  store float %i.fd, ptr %.sroa.6349.0..sroa_idx, align 4
  store <2 x float> %i.fe, ptr %.sroa.7350.0..sroa_idx, align 4
  store float %i.ff, ptr %.sroa.9351.0..sroa_idx, align 4
  store <2 x float> %i.fg, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.0.sroa.5.0.copyload.i223 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4
  %.sroa.0.sroa.6.0.copyload.i225 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.fh = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.fi = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.fk = fadd <2 x float> %i.fh, %i.fj
  %i.fl = fmul <2 x float> %i.fk, splat (float 5.000000e-01)
  %i.fm = fadd float %.sroa.0.sroa.5.0.copyload.i223, %.sroa.0.sroa.6.0.copyload.i225
  %i.fn = fmul float %i.fm, 5.000000e-01
  %i.fo = call <2 x float> @_ZN4pbrt29InvertSphericalTriangleSampleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(36) %6, <2 x float> %i.fl, float %i.fn, <2 x float> %2, float %3) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %.sroa.0.sroa.0.0.copyload.i230 = load float, ptr %1, align 4
  %.sroa.0.sroa.2.0.copyload.i232 = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.fp = load <2 x float>, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.fq = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %.sroa.0.sroa.3.0..sroa_idx.i, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.fr = fadd float %.sroa.0.sroa.0.0.copyload.i230, %.sroa.0.sroa.2.0.copyload.i232
  %i.fs = fmul float %i.fr, 5.000000e-01
  %i.ft = shufflevector <2 x float> %i.fp, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.fu = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 0>
  %i.fv = fadd <4 x float> %i.ft, %i.fu
  %i.fw = fmul <4 x float> %i.fv, splat (float 5.000000e-01) ; 4 uses
  %i.fx = shufflevector <2 x float> %i.ez, <2 x float> %i.ey, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison> ; 2 uses
  %i.fy = shufflevector <2 x float> %i.fa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 0, i32 1, i32 4>
  %i.ga = insertelement <4 x float> poison, float %i.fs, i64 0 ; 3 uses
  %i.gb = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gc = fsub <4 x float> %i.fz, %i.gb           ; 2 uses
  %i.gd = shufflevector <2 x float> %i.fe, <2 x float> %i.ez, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.ge = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gf = shufflevector <4 x float> %i.gd, <4 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.gg = shufflevector <4 x float> %i.gf, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.gh = fsub <4 x float> %i.gg, %i.fw           ; 5 uses
  %foldExtExtBinop = fmul <4 x float> %i.gh, %i.gh
  %i.gi = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.gj = shufflevector <2 x float> %i.ez, <2 x float> %i.fe, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.gk = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gl = shufflevector <4 x float> %i.gj, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 5, i32 poison> ; 2 uses
  %7 = shufflevector <4 x float> %i.fx, <4 x float> %i.gl, <2 x i32> <i32 1, i32 6>
  %8 = shufflevector <4 x float> %i.ga, <4 x float> %i.fw, <2 x i32> <i32 0, i32 4>
  %9 = fsub <2 x float> %7, %8                    ; 2 uses
  %i.gm = fmul <2 x float> %9, %9                 ; 2 uses
  %i.gn = extractelement <2 x float> %i.gm, i64 0
  %i.go = fadd float %i.gn, %i.gi
  %i.gp = extractelement <2 x float> %i.gm, i64 1
  %i.gq = fadd float %i.go, %i.gp
  %i.gr = call noundef float @sqrtf(float noundef %i.gq) #37
  %i.gs = shufflevector <4 x float> %i.gh, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.gt = fmul <2 x float> %i.gs, %i.gs           ; 2 uses
  %10 = shufflevector <2 x float> %i.fa, <2 x float> %i.fg, <2 x i32> <i32 0, i32 3>
  %11 = shufflevector <4 x float> %i.ga, <4 x float> %i.fw, <2 x i32> <i32 0, i32 4>
  %12 = fsub <2 x float> %10, %11                 ; 2 uses
  %i.gu = fmul <2 x float> %12, %12               ; 2 uses
  %i.gv = shufflevector <4 x float> %i.gc, <4 x float> %i.gh, <2 x i32> <i32 0, i32 7> ; 2 uses
  %i.gw = fmul <2 x float> %i.gv, %i.gv
  %i.gx = shufflevector <2 x float> %i.gt, <2 x float> %i.gu, <2 x i32> <i32 1, i32 2>
  %i.gy = fadd <2 x float> %i.gw, %i.gx
  %i.gz = shufflevector <2 x float> %i.gt, <2 x float> %i.gu, <2 x i32> <i32 0, i32 3>
  %i.ha = fadd <2 x float> %i.gy, %i.gz           ; 2 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0
  %i.hc = call noundef float @sqrtf(float noundef %i.hb) #37
  %i.hd = extractelement <2 x float> %i.ha, i64 1
  %i.he = call noundef float @sqrtf(float noundef %i.hd) #37
  %i.hf = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.hg = fcmp ogt <4 x float> %i.hf, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hh = fcmp olt <4 x float> %i.hf, <float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hi = shufflevector <4 x i1> %i.hg, <4 x i1> %i.hh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hj = freeze <4 x i1> %i.hi
  %i.hk = bitcast <4 x i1> %i.hj to i4
  %.not = icmp eq i4 %i.hk, 0
  br i1 %.not, label %bb.f, label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

bb.f:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread
  %.sroa.020.4.vec.extract.i = extractelement <2 x float> %i.fo, i64 1 ; 3 uses
  %.sroa.020.0.vec.extract.i = extractelement <2 x float> %i.fo, i64 0 ; 3 uses
  %13 = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %14 = shufflevector <4 x float> %i.gl, <4 x float> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %15 = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %16 = fsub <4 x float> %14, %15
  %.sroa.031.0.copyload = load <2 x float>, ptr %i.do, align 4 ; 3 uses
  %i.hl = insertelement <4 x float> poison, float %i.hc, i64 0
  %i.hm = insertelement <4 x float> %i.hl, float %i.gr, i64 2
  %i.hn = insertelement <4 x float> %i.hm, float %i.he, i64 3
  %i.ho = shufflevector <4 x float> %i.hn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 3 uses
  %i.hp = fdiv <4 x float> %i.gc, %i.ho
  %i.hq = fdiv <4 x float> %i.gh, %i.ho           ; 2 uses
  %i.hr = fdiv <4 x float> %16, %i.ho             ; 2 uses
  %.sroa.232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.232.0.copyload = load float, ptr %.sroa.232.0..sroa_idx, align 4 ; 4 uses
  %i.hs = extractelement <4 x float> %i.hq, i64 0
  %i.ht = fmul float %i.hs, %.sroa.232.0.copyload ; 2 uses
  %i.hu = fneg float %i.ht
  %i.hv = shufflevector <4 x float> %i.hr, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hw = insertelement <2 x float> poison, float %.sroa.232.0.copyload, i64 0
  %i.hx = shufflevector <2 x float> %i.hw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = fmul <2 x float> %i.hv, %i.hx           ; 2 uses
  %i.hz = fneg <2 x float> %i.hy
  %i.ia = shufflevector <2 x float> %.sroa.031.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ib = insertelement <2 x float> %i.ia, float %.sroa.232.0.copyload, i64 1
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.id = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.ie = insertelement <4 x float> %i.id, float %i.hu, i64 0
  %i.if = insertelement <4 x float> %i.ie, float %i.ht, i64 1 ; 2 uses
  %i.ig = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ic, <4 x float> %i.hq, <4 x float> %i.if)
  %i.ih = insertelement <2 x float> %.sroa.031.0.copyload, float %.sroa.232.0.copyload, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0>
  %i.ij = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ik = shufflevector <2 x float> %i.hz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.il = shufflevector <4 x float> %i.ij, <4 x float> %i.ik, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.im = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ii, <4 x float> %i.hr, <4 x float> %i.il)
  %i.in = fadd <4 x float> %i.ig, %i.im
  %i.io = shufflevector <2 x float> %.sroa.031.0.copyload, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ip = call <4 x float> @llvm.fma.v4f32(<4 x float> %i.io, <4 x float> %i.hp, <4 x float> %i.in)
  %i.iq = call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ip) ; 2 uses
  %i.ir = fcmp ogt <4 x float> %i.iq, splat (float f0x3C23D70A)
  %i.is = select <4 x i1> %i.ir, <4 x float> %i.iq, <4 x float> splat (float f0x3C23D70A) ; 5 uses
  %i.it = extractelement <4 x float> %i.is, i64 0 ; 2 uses
  %foldExtExtBinop354 = fadd <4 x float> %i.is, %i.is
  %i.iu = extractelement <4 x float> %foldExtExtBinop354, i64 0
  %i.iv = extractelement <4 x float> %i.is, i64 2 ; 2 uses
  %i.iw = fadd float %i.iu, %i.iv
  %i.ix = extractelement <4 x float> %i.is, i64 3 ; 2 uses
  %i.iy = fadd float %i.iw, %i.ix
  %i.iz = fsub float 1.000000e+00, %.sroa.020.0.vec.extract.i ; 2 uses
  %i.ja = fsub float 1.000000e+00, %.sroa.020.4.vec.extract.i ; 2 uses
  %i.jb = fmul float %i.iz, %i.ja
  %i.jc = fmul float %i.jb, %i.it
  %i.jd = fmul float %.sroa.020.0.vec.extract.i, %i.ja
  %i.je = fmul float %i.jd, %i.it
  %i.jf = fadd float %i.jc, %i.je
  %i.jg = fmul float %.sroa.020.4.vec.extract.i, %i.iz
  %i.jh = fmul float %i.jg, %i.iv
  %i.ji = fadd float %i.jf, %i.jh
  %i.jj = fmul float %.sroa.020.0.vec.extract.i, %.sroa.020.4.vec.extract.i
  %i.jk = fmul float %i.jj, %i.ix
  %i.jl = fadd float %i.ji, %i.jk
  %i.jm = fmul float %i.jl, 4.000000e+00
  %i.jn = fdiv float %i.jm, %i.iy
  br label %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit

_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit: ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread, %bb.f
  %.0.i = phi float [ %i.jn, %bb.f ], [ 0.000000e+00, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit.thread ]
  %i.jo = fmul float %i.dn, %.0.i
  br label %bb.g

bb.g:                                             ; preds = %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit, %bb.d
  %.1 = phi float [ %.0, %bb.d ], [ %i.jo, %_ZN4pbrt11BilinearPDFENS_6Point2IfEEN4pstd4spanIKfEE.exit ], [ %i.dn, %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit ]
  ret float %.1
}

declare void @_ZNK4pbrt8Triangle9IntersectERKNS_3RayEf(ptr dead_on_unwind writable sret(%"class.pstd::optional.157") align 8, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(40), float noundef) local_unnamed_addr #1

declare <2 x float> @_ZN4pbrt29InvertSphericalTriangleSampleERKN4pstd5arrayINS_6Point3IfEELi3EEES3_NS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(36), <2 x float>, float, <2 x float>, float) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt13BilinearPatch3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr noundef nonnull align 4 dereferenceable(12), ptr noundef nonnull align 4 dereferenceable(52), <2 x float>, float) local_unnamed_addr #1

declare noundef float @_ZNK4pbrt5Curve3PDFERKNS_18ShapeSampleContextENS_7Vector3IfEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(52), <2 x float>, float) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt4Disk12NormalBoundsEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt8Triangle12NormalBoundsEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK4pbrt13BilinearPatch12NormalBoundsEv(ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt13TaggedPointerIJNS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEE8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_EEDcOSA_(ptr dead_on_unwind noalias writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !213    ; 2 uses
  %i.b = and i64 %i.a, 144115188075855871
  %i.c = inttoptr i64 %i.b to ptr                 ; 6 uses
  %i.d = lshr i64 %i.a, 57
  %i.e = trunc nuw nsw i64 %i.d to i32
  switch i32 %i.e, label %bb.g [
    i32 1, label %bb.b
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(42) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Cylinder6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt4Disk6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Triangle6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(8) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt13BilinearPatch6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 4 dereferenceable(12) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4 %0, ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  br label %_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit

_ZN4pbrt6detail8DispatchIRZNKS_5Shape6BoundsEvEUlT_E_NS_7Bounds3IfEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS3_PKvi.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  ret void
}

declare void @_ZNK4pbrt6Sphere6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(42)) local_unnamed_addr #1

declare void @_ZNK4pbrt8Cylinder6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK4pbrt4Disk6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZNK4pbrt8Triangle6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZNK4pbrt13BilinearPatch6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 4 dereferenceable(12)) local_unnamed_addr #1

declare void @_ZNK4pbrt5Curve6BoundsEv(ptr dead_on_unwind writable sret(%"class.pbrt::Bounds3") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail8DispatchIRZNKS_5Shape6SampleENS_6Point2IfEEEUlT_E_N4pstd8optionalINS_11ShapeSampleEEENS_6SphereENS_8CylinderENS_4DiskENS_8TriangleENS_13BilinearPatchENS_5CurveEEET0_OS5_PKvi(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1341, !noalias !93, !nonnull !93, !align !319
  %.sroa.0.0.copyload.i16 = load <2 x float>, ptr %i.a, align 4, !noalias !93 ; 6 uses
  switch i32 %3, label %bb.g [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt6Sphere6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(42) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Cylinder6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt4Disk6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt8Triangle6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 4 dereferenceable(8) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt13BilinearPatch6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 4 dereferenceable(12) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNK4pbrt5Curve6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %2, <2 x float> %.sroa.0.0.copyload.i16)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare void @_ZNK4pbrt13BilinearPatch6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8, ptr noundef nonnull align 4 dereferenceable(12), <2 x float>) local_unnamed_addr #1

declare void @_ZNK4pbrt5Curve6SampleENS_6Point2IfEE(ptr dead_on_unwind writable sret(%"class.pstd::optional.84") align 8, ptr noundef nonnull align 8 dereferenceable(16), <2 x float>) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef byval(%"class.pbrt::Point3fi") align 8 %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #30 comdat {
_ZN4pbrt6Tuple3INS_7Vector3EfEixEi.exit:
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 2 uses
  %i.a = tail call noundef float @llvm.fabs.f32(float %.sroa.03.0.vec.extract.i)
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 2 uses
  %i.b = tail call noundef float @llvm.fabs.f32(float %.sroa.03.4.vec.extract.i)
  %i.c = tail call noundef float @llvm.fabs.f32(float %2) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load float, ptr %i.h, align 4, !tbaa !193 ; 2 uses
  %i.j = load float, ptr %i.g, align 8, !tbaa !194 ; 2 uses
  %i.k = fsub float %i.i, %i.j
  %i.l = fmul float %i.k, 5.000000e-01            ; 2 uses
  %i.m = fmul float %i.c, %i.l                    ; 2 uses
  %i.n = fneg float %i.m
  %i.o = tail call noundef float @llvm.fma.f32(float %i.c, float %i.l, float %i.n)
  %.sroa.04.0.vec.extract.i76 = extractelement <2 x float> %3, i64 0
  %.sroa.04.4.vec.extract.i78 = extractelement <2 x float> %3, i64 1
end_hunk_1
