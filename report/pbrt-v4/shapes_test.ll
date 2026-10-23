Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/shapes_test?download=true
inline.NumInlined: 2888
inline.NumDeleted: 834
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK4pbrt8Triangle6SampleERKNS_18ShapeSampleContextENS_6Point2IfEE:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !122  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !124
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !125
  %i.m = mul nsw i32 %i.l, 3
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.n ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !126  ; 3 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !40
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.s ; 2 uses
  %.sroa.0918.0.copyload = load <2 x float>, ptr %i.t, align 4 ; 7 uses
  %.sroa.11924.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.11924.0.copyload = load float, ptr %.sroa.11924.0..sroa_idx, align 4 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.w ; 2 uses
  %.sroa.0906.0.copyload = load <2 x float>, ptr %i.x, align 4 ; 7 uses
  %.sroa.11914.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.11914.0.copyload = load float, ptr %.sroa.11914.0..sroa_idx, align 4 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !40
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZNK4pbrt8Triangle6SampleENS_6Point2IfEE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 8 %4, ptr noundef nonnull align 4 dereferenceable(8) %1, <2 x float> %3)
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.an = load i8, ptr %i.am, align 8, !tbaa !77, !range !53, !noundef !54
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.c, label %.noexc

.noexc:                                           ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 235, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(4) @.str.51) #28
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !230
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.aq, ptr %i.ar, align 8, !tbaa !231
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
  %i.bp = call noundef float @sqrtf(float noundef %i.bn) #29 ; 3 uses
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
  %i.cx = load float, ptr %i.cw, align 8, !tbaa !108
  %i.cy = fdiv float %i.cx, %i.cv                 ; 2 uses
  %i.cz = call float @llvm.fabs.f32(float %i.cy)
  %i.da = fcmp oeq float %i.cz, +inf
  br i1 %i.da, label %bb.f, label %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  br label %bb.g

_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit: ; preds = %bb.e
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i8 1, ptr %i.db, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(89) %0, ptr noundef nonnull align 8 dereferenceable(89) %4, i64 72, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !86
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !86
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80
  store float %i.cy, ptr %i.df, align 8, !tbaa !108
  br label %bb.g

bb.g:                                             ; preds = %_ZN4pstd8optionalIN4pbrt11ShapeSampleEEC2EOS3_.exit, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ad

bb.h:                                             ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !127
  %i.di = fcmp une float %i.dh, 0.000000e+00
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dk = load float, ptr %i.dj, align 4
  %i.dl = fcmp une float %i.dk, 0.000000e+00
  %or.cond.i = select i1 %i.di, i1 true, i1 %i.dl
  br i1 %or.cond.i, label %_ZN4pbrt12SampleLinearEfff.exit.i, label %_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit

_ZNK4pbrt6Tuple3INS_7Normal3EfEneENS1_IfEE.exit:  ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !128
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
  %i.dw = fmul <4 x float> %i.dv, splat (float 5.000000e-01) ; 2 uses
  %i.dx = shufflevector <2 x float> %.sroa.0906.0.copyload, <2 x float> %.sroa.0918.0.copyload, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %i.dy = shufflevector <2 x float> %.sroa.0894.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dz = shufflevector <4 x float> %i.dx, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ea = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ec = fsub <4 x float> %i.dz, %i.eb           ; 5 uses
  %i.ed = shufflevector <2 x float> %.sroa.0906.0.copyload, <2 x float> %.sroa.0918.0.copyload, <4 x i32> <i32 1, i32 poison, i32 3, i32 poison>
  %i.ee = insertelement <4 x float> %i.ed, float %.sroa.11914.0.copyload, i64 1
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eg = fsub <4 x float> %i.ef, %i.dw           ; 6 uses
  %foldExtExtBinop = fmul <4 x float> %i.eg, %i.eg
  %i.eh = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.ei = shufflevector <2 x float> %.sroa.0906.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ej = insertelement <4 x float> %i.ei, float %.sroa.11914.0.copyload, i64 0
  %i.ek = insertelement <4 x float> %i.ej, float %.sroa.11924.0.copyload, i64 2
  %i.el = insertelement <4 x float> %i.ek, float %.sroa.11902.0.copyload, i64 3
  %i.em = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %i.en = fsub <4 x float> %i.el, %i.em           ; 3 uses
  %i.eo = shufflevector <4 x float> %i.ec, <4 x float> %i.en, <2 x i32> <i32 2, i32 6> ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.eo           ; 2 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 0
  %i.er = fadd float %i.eq, %i.eh
  %i.es = extractelement <2 x float> %i.ep, i64 1
  %i.et = fadd float %i.er, %i.es
  %i.eu = tail call noundef float @sqrtf(float noundef %i.et) #29
  %foldExtExtBinop972 = fmul <4 x float> %i.ec, %i.ec
  %i.ev = extractelement <4 x float> %foldExtExtBinop972, i64 0
  %i.ew = shufflevector <4 x float> %i.eg, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ex = fmul <2 x float> %i.ew, %i.ew           ; 2 uses
  %i.ey = extractelement <2 x float> %i.ex, i64 0
  %i.ez = fadd float %i.ev, %i.ey
  %i.fa = extractelement <2 x float> %i.ex, i64 1
  %i.fb = fadd float %i.ez, %i.fa
  %i.fc = tail call noundef float @sqrtf(float noundef %i.fb) #29
  %foldExtExtBinop974 = fmul <4 x float> %i.eg, %i.eg
  %i.fd = extractelement <4 x float> %foldExtExtBinop974, i64 3
  %6 = shufflevector <4 x float> %i.ec, <4 x float> %i.en, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.fe = fmul <2 x float> %6, %6                 ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fadd float %i.ff, %i.fd
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fadd float %i.fg, %i.fh
  %i.fj = tail call noundef float @sqrtf(float noundef %i.fi) #29
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
  %i.hf = tail call noundef float @sqrtf(float noundef %i.he) #29
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
  %i.hz = tail call noundef float @sqrtf(float noundef %i.hy) #29
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
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
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.jh = load float, ptr %i.a, align 4, !tbaa !17 ; 2 uses
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
