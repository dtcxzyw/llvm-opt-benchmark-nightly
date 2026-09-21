Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/splines?download=true
inline.NumInlined: 2007
inline.NumDeleted: 1087
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3jxl6N_AVX212_GLOBAL__N_118SegmentsFromPointsERKNS_6SplineERKNSt3__16vectorINS5_4pairINS2_5PointEfEENS5_9allocatorIS9_EEEEfRNS6_INS_13SplineSegmentENSA_ISF_EEEERNS6_INS7_ImmEENSA_ISJ_EEEE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN3jxl6N_AVX212_GLOBAL__N_115ComputeSegmentsERKNS_6Spline5PointEfPKffRNSt3__16vectorINS_13SplineSegmentENS8_9allocatorISA_EEEERNS9_INS8_4pairImmEENSB_ISG_EEEE.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN3jxl6N_AVX212_GLOBAL__N_115ComputeSegmentsERKNS_6Spline5PointEfPKffRNSt3__16vectorINS_13SplineSegmentENS8_9allocatorISA_EEEERNS9_INS8_4pairImmEENSB_ISG_EEEE.exit
  %.02129 = phi i32 [ 0, %.lr.ph ], [ %i.fs, %_ZN3jxl6N_AVX212_GLOBAL__N_115ComputeSegmentsERKNS_6Spline5PointEfPKffRNSt3__16vectorINS_13SplineSegmentENS8_9allocatorISA_EEEERNS9_INS8_4pairImmEENSB_ISG_EEEE.exit ] ; 2 uses
  %.sroa.022.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.kd, %_ZN3jxl6N_AVX212_GLOBAL__N_115ComputeSegmentsERKNS_6Spline5PointEfPKffRNSt3__16vectorINS_13SplineSegmentENS8_9allocatorISA_EEEERNS9_INS8_4pairImmEENSB_ISG_EEEE.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !105 ; 5 uses
  %i.aa = uitofp nneg i32 %.02129 to float
  %i.ab = fmul float %i.a, %i.aa                  ; 2 uses
  %i.ac = fcmp olt float %i.ab, 1.000000e+00
  %.sroa.speculated = select i1 %i.ac, float %i.ab, float 1.000000e+00
  %i.ad = fmul float %.sroa.speculated, 3.100000e+01
  %i.ae = fadd float %i.ad, 5.000000e-01
  %i.af = insertelement <8 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ah = fmul <8 x float> %i.ag, <float 0.000000e+00, float f0x3DC90FDB, float f0x3E490FDB, float f0x3E96CBE4, float f0x3EC90FDB, float f0x3EFB53D1, float f0x3F16CBE4, float f0x3F2FEDDF> ; 2 uses
  %i.ai = fmul <8 x float> %i.ah, splat (float f0x3E22F983)
  %i.aj = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %i.ai)
  %i.ak = fmul <8 x float> %i.aj, splat (float f0x40C90FDB)
  %i.al = fsub <8 x float> %i.ah, %i.ak           ; 2 uses
  %i.am = fsub <8 x float> splat (float f0x40C90FDB), %i.al
  %i.an = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.al, <8 x float> %i.am) ; 3 uses
  %i.ao = fcmp oge <8 x float> %i.an, splat (float f0x3FC90FDB) ; 2 uses
  %i.ap = fsub <8 x float> splat (float f0x40490FDB), %i.an
  %i.aq = select <8 x i1> %i.ao, <8 x float> %i.ap, <8 x float> %i.an
  %i.ar = fmul <8 x float> %i.aq, splat (float 2.500000e-01) ; 2 uses
  %i.as = fmul <8 x float> %i.ar, %i.ar           ; 3 uses
  %i.at = fmul <8 x float> %i.as, %i.as
  %i.au = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.as, <8 x float> splat (float f0xBF574380), <8 x float> splat (float f0x3FD744FC))
  %i.av = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.at, <8 x float> splat (float f0x3D8E8CBE), <8 x float> %i.au) ; 2 uses
  %i.aw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.av, <8 x float> %i.av, <8 x float> splat (float f0xBFB504F3)) ; 2 uses
  %i.ax = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.aw, <8 x float> %i.aw, <8 x float> splat (float -1.000000e+00))
  %i.ay = select <8 x i1> %i.ao, <8 x i32> splat (i32 -2147483648), <8 x i32> zeroinitializer
  %i.az = bitcast <8 x float> %i.ax to <8 x i32>
  %i.ba = xor <8 x i32> %i.ay, %i.az
  %i.bb = bitcast <8 x i32> %i.ba to <8 x float>  ; 4 uses
  %i.bc = fmul <8 x float> %i.ag, <float f0x3F490FDB, float f0x3F6231D6, float f0x3F7B53D1, float f0x3F8A3AE6, float f0x3F96CBE4, float f0x3FA35CE2, float f0x3FAFEDDF, float f0x3FBC7EDD> ; 2 uses
  %i.bd = fmul <8 x float> %i.bc, splat (float f0x3E22F983)
  %i.be = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %i.bd)
  %i.bf = fmul <8 x float> %i.be, splat (float f0x40C90FDB)
  %i.bg = fsub <8 x float> %i.bc, %i.bf           ; 2 uses
  %i.bh = fsub <8 x float> splat (float f0x40C90FDB), %i.bg
  %i.bi = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.bg, <8 x float> %i.bh) ; 3 uses
  %i.bj = fcmp oge <8 x float> %i.bi, splat (float f0x3FC90FDB) ; 2 uses
  %i.bk = fsub <8 x float> splat (float f0x40490FDB), %i.bi
  %i.bl = select <8 x i1> %i.bj, <8 x float> %i.bk, <8 x float> %i.bi
  %i.bm = fmul <8 x float> %i.bl, splat (float 2.500000e-01) ; 2 uses
  %i.bn = fmul <8 x float> %i.bm, %i.bm           ; 3 uses
  %i.bo = fmul <8 x float> %i.bn, %i.bn
  %i.bp = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bn, <8 x float> splat (float f0xBF574380), <8 x float> splat (float f0x3FD744FC))
  %i.bq = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bo, <8 x float> splat (float f0x3D8E8CBE), <8 x float> %i.bp) ; 2 uses
  %i.br = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bq, <8 x float> %i.bq, <8 x float> splat (float f0xBFB504F3)) ; 2 uses
  %i.bs = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.br, <8 x float> %i.br, <8 x float> splat (float -1.000000e+00))
  %i.bt = select <8 x i1> %i.bj, <8 x i32> splat (i32 -2147483648), <8 x i32> zeroinitializer
  %i.bu = bitcast <8 x float> %i.bs to <8 x i32>
  %i.bv = xor <8 x i32> %i.bt, %i.bu
  %i.bw = bitcast <8 x i32> %i.bv to <8 x float>  ; 4 uses
  %i.bx = fmul <8 x float> %i.ag, <float f0x3FC90FDB, float f0x3FD5A0D8, float f0x3FE231D6, float f0x3FEEC2D4, float f0x3FFB53D1, float 2.061670e+00, float f0x400A3AE6, float f0x40108365> ; 2 uses
  %i.by = fmul <8 x float> %i.bx, splat (float f0x3E22F983)
  %i.bz = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %i.by)
  %i.ca = fmul <8 x float> %i.bz, splat (float f0x40C90FDB)
  %i.cb = fsub <8 x float> %i.bx, %i.ca           ; 2 uses
  %i.cc = fsub <8 x float> splat (float f0x40C90FDB), %i.cb
  %i.cd = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.cb, <8 x float> %i.cc) ; 3 uses
  %i.ce = fcmp oge <8 x float> %i.cd, splat (float f0x3FC90FDB) ; 2 uses
  %i.cf = fsub <8 x float> splat (float f0x40490FDB), %i.cd
  %i.cg = select <8 x i1> %i.ce, <8 x float> %i.cf, <8 x float> %i.cd
  %i.ch = fmul <8 x float> %i.cg, splat (float 2.500000e-01) ; 2 uses
  %i.ci = fmul <8 x float> %i.ch, %i.ch           ; 3 uses
  %i.cj = fmul <8 x float> %i.ci, %i.ci
  %i.ck = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ci, <8 x float> splat (float f0xBF574380), <8 x float> splat (float f0x3FD744FC))
  %i.cl = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cj, <8 x float> splat (float f0x3D8E8CBE), <8 x float> %i.ck) ; 2 uses
  %i.cm = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cl, <8 x float> %i.cl, <8 x float> splat (float f0xBFB504F3)) ; 2 uses
  %i.cn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.cm, <8 x float> %i.cm, <8 x float> splat (float -1.000000e+00))
  %i.co = select <8 x i1> %i.ce, <8 x i32> splat (i32 -2147483648), <8 x i32> zeroinitializer
  %i.cp = bitcast <8 x float> %i.cn to <8 x i32>
  %i.cq = xor <8 x i32> %i.co, %i.cp
  %i.cr = bitcast <8 x i32> %i.cq to <8 x float>  ; 4 uses
  %i.cs = fmul <8 x float> %i.ag, <float f0x4016CBE4, float f0x401D1463, float f0x40235CE2, float f0x4029A560, float f0x402FEDDF, float f0x4036365E, float f0x403C7EDD, float f0x4042C75C> ; 2 uses
  %i.ct = fmul <8 x float> %i.cs, splat (float f0x3E22F983)
  %i.cu = tail call <8 x float> @llvm.floor.v8f32(<8 x float> %i.ct)
  %i.cv = fmul <8 x float> %i.cu, splat (float f0x40C90FDB)
  %i.cw = fsub <8 x float> %i.cs, %i.cv           ; 2 uses
  %i.cx = fsub <8 x float> splat (float f0x40C90FDB), %i.cw
  %i.cy = tail call noundef <8 x float> @llvm.x86.avx.min.ps.256(<8 x float> %i.cw, <8 x float> %i.cx) ; 3 uses
  %i.cz = fcmp oge <8 x float> %i.cy, splat (float f0x3FC90FDB) ; 2 uses
  %i.da = fsub <8 x float> splat (float f0x40490FDB), %i.cy
  %i.db = select <8 x i1> %i.cz, <8 x float> %i.da, <8 x float> %i.cy
  %i.dc = fmul <8 x float> %i.db, splat (float 2.500000e-01) ; 2 uses
  %i.dd = fmul <8 x float> %i.dc, %i.dc           ; 3 uses
  %i.de = fmul <8 x float> %i.dd, %i.dd
  %i.df = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dd, <8 x float> splat (float f0xBF574380), <8 x float> splat (float f0x3FD744FC))
  %i.dg = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.de, <8 x float> splat (float f0x3D8E8CBE), <8 x float> %i.df) ; 2 uses
  %i.dh = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dg, <8 x float> %i.dg, <8 x float> splat (float f0xBFB504F3)) ; 2 uses
  %i.di = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dh, <8 x float> %i.dh, <8 x float> splat (float -1.000000e+00))
  %i.dj = select <8 x i1> %i.cz, <8 x i32> splat (i32 -2147483648), <8 x i32> zeroinitializer
  %i.dk = bitcast <8 x float> %i.di to <8 x i32>
  %i.dl = xor <8 x i32> %i.dj, %i.dk
  %i.dm = bitcast <8 x i32> %i.dl to <8 x float>  ; 4 uses
  %i.dn = load <8 x float>, ptr %i.e, align 8, !tbaa !50
  %i.do = fmul <8 x float> %i.dn, %i.bb
  %i.dp = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.do, <8 x float> splat (float f0x3FB504F3), <8 x float> zeroinitializer)
  %i.dq = load <8 x float>, ptr %i.n, align 8, !tbaa !50
  %i.dr = fmul <8 x float> %i.dq, %i.bw
  %i.ds = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dr, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.dp)
  %i.dt = load <8 x float>, ptr %i.o, align 8, !tbaa !50
  %i.du = fmul <8 x float> %i.dt, %i.cr
  %i.dv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.du, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.ds)
  %i.dw = load <8 x float>, ptr %i.p, align 8, !tbaa !50
  %i.dx = fmul <8 x float> %i.dw, %i.dm
  %i.dy = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dx, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.dv) ; 2 uses
  %i.dz = shufflevector <8 x float> %i.dy, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.ea = fadd <8 x float> %i.dy, %i.dz           ; 2 uses
  %i.eb = shufflevector <8 x float> %i.ea, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ec = fadd <8 x float> %i.ea, %i.eb           ; 2 uses
  %i.ed = shufflevector <8 x float> %i.ec, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ee = fadd <8 x float> %i.ec, %i.ed
  %i.ef = extractelement <8 x float> %i.ee, i64 0 ; 3 uses
  %i.eg = load <8 x float>, ptr %i.q, align 8, !tbaa !50
  %i.eh = fmul <8 x float> %i.eg, %i.bb
  %i.ei = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.eh, <8 x float> splat (float f0x3FB504F3), <8 x float> zeroinitializer)
  %i.ej = load <8 x float>, ptr %i.r, align 8, !tbaa !50
  %i.ek = fmul <8 x float> %i.ej, %i.bw
  %i.el = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ek, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.ei)
  %i.em = load <8 x float>, ptr %i.s, align 8, !tbaa !50
  %i.en = fmul <8 x float> %i.em, %i.cr
  %i.eo = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.en, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.el)
  %i.ep = load <8 x float>, ptr %i.t, align 8, !tbaa !50
  %i.eq = fmul <8 x float> %i.ep, %i.dm
  %i.er = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.eq, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.eo) ; 2 uses
  %i.es = shufflevector <8 x float> %i.er, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.et = fadd <8 x float> %i.er, %i.es           ; 2 uses
  %i.eu = shufflevector <8 x float> %i.et, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ev = fadd <8 x float> %i.et, %i.eu           ; 2 uses
  %i.ew = shufflevector <8 x float> %i.ev, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = fadd <8 x float> %i.ev, %i.ew
  %i.ey = extractelement <8 x float> %i.ex, i64 0 ; 3 uses
  %i.ez = load <8 x float>, ptr %i.u, align 8, !tbaa !50
  %i.fa = fmul <8 x float> %i.ez, %i.bb
  %i.fb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fa, <8 x float> splat (float f0x3FB504F3), <8 x float> zeroinitializer)
  %i.fc = load <8 x float>, ptr %i.v, align 8, !tbaa !50
  %i.fd = fmul <8 x float> %i.fc, %i.bw
  %i.fe = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fd, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.fb)
  %i.ff = load <8 x float>, ptr %i.w, align 8, !tbaa !50
  %i.fg = fmul <8 x float> %i.ff, %i.cr
  %i.fh = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fg, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.fe)
  %i.fi = load <8 x float>, ptr %i.x, align 8, !tbaa !50
  %i.fj = fmul <8 x float> %i.fi, %i.dm
  %i.fk = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fj, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.fh) ; 2 uses
  %i.fl = shufflevector <8 x float> %i.fk, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.fm = fadd <8 x float> %i.fk, %i.fl           ; 2 uses
  %i.fn = shufflevector <8 x float> %i.fm, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.fo = fadd <8 x float> %i.fm, %i.fn           ; 2 uses
  %i.fp = shufflevector <8 x float> %i.fo, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fq = fadd <8 x float> %i.fo, %i.fp
  %i.fr = extractelement <8 x float> %i.fq, i64 0 ; 3 uses
  %i.fs = add nuw nsw i32 %.02129, 1
  %i.ft = load <8 x float>, ptr %i.f, align 8, !tbaa !50
  %i.fu = fmul <8 x float> %i.ft, %i.bb
  %i.fv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fu, <8 x float> splat (float f0x3FB504F3), <8 x float> zeroinitializer)
  %i.fw = load <8 x float>, ptr %i.g, align 8, !tbaa !50
  %i.fx = fmul <8 x float> %i.fw, %i.bw
  %i.fy = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.fx, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.fv)
  %i.fz = load <8 x float>, ptr %i.h, align 8, !tbaa !50
  %i.ga = fmul <8 x float> %i.fz, %i.cr
  %i.gb = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.ga, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.fy)
  %i.gc = load <8 x float>, ptr %i.i, align 8, !tbaa !50
  %i.gd = fmul <8 x float> %i.gc, %i.dm
  %i.ge = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.gd, <8 x float> splat (float f0x3FB504F3), <8 x float> %i.gb) ; 2 uses
  %i.gf = shufflevector <8 x float> %i.ge, <8 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.gg = fadd <8 x float> %i.ge, %i.gf           ; 2 uses
  %i.gh = shufflevector <8 x float> %i.gg, <8 x float> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.gi = fadd <8 x float> %i.gg, %i.gh           ; 2 uses
  %i.gj = shufflevector <8 x float> %i.gi, <8 x float> poison, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = fadd <8 x float> %i.gi, %i.gj
  %i.gl = extractelement <8 x float> %i.gk, i64 0 ; 5 uses
  %or.cond.i = tail call i1 @llvm.is.fpclass.f32(float %i.gl, /* (sub norm) */ i32 408)
  br i1 %or.cond.i, label %bb.c, label %_ZN3jxl6N_AVX212_GLOBAL__N_115ComputeSegmentsERKNS_6Spline5PointEfPKffRNSt3__16vectorINS_13SplineSegmentENS8_9allocatorISA_EEEERNS9_INS8_4pairImmEENSB_ISG_EEEE.exit

bb.c:                                             ; preds = %bb.b
  %i.gm = fdiv float 1.000000e+00, %i.gl          ; 3 uses
  %5 = tail call float @llvm.fabs.f32(float %i.gm)
  %6 = fcmp one float %5, +inf
  %7 = tail call float @llvm.fabs.f32(float %i.z)
  %8 = fcmp one float %7, +inf
  %or.cond54.i = and i1 %8, %6
  br i1 %or.cond54.i, label %.preheader.preheader.i, label %_ZN3jxl6N_AVX212_GLOBAL__N_115ComputeSegmentsERKNS_6Spline5PointEfPKffRNSt3__16vectorINS_13SplineSegmentENS8_9allocatorISA_EEEERNS9_INS8_4pairImmEENSB_ISG_EEEE.exit

.preheader.preheader.i:                           ; preds = %bb.c
  %i.gn = fmul float %i.z, %i.ef
  %i.go = tail call noundef float @llvm.fabs.f32(float %i.gn) ; 2 uses
  %i.gp = fcmp ogt float %i.go, f0x3C23D70A
  %.sroa.speculated50.i = select i1 %i.gp, float %i.go, float f0x3C23D70A ; 2 uses
  %i.gq = fmul float %i.z, %i.ey
  %i.gr = tail call noundef float @llvm.fabs.f32(float %i.gq) ; 2 uses
  %i.gs = fcmp olt float %.sroa.speculated50.i, %i.gr
  %.sroa.speculated50.1.i = select i1 %i.gs, float %i.gr, float %.sroa.speculated50.i ; 2 uses
  %i.gt = fmul float %i.z, %i.fr
  %i.gu = tail call noundef float @llvm.fabs.f32(float %i.gt) ; 2 uses
  %i.gv = fcmp olt float %.sroa.speculated50.1.i, %i.gu
  %.sroa.speculated50.2.i = select i1 %i.gv, float %i.gu, float %.sroa.speculated50.1.i
  %i.gw = fmul nnan float %i.gl, -2.000000e+00
  %i.gx = fmul nnan float %i.gl, %i.gw
  %i.gy = tail call noundef float @logf(float noundef %.sroa.speculated50.2.i) #27
  %i.gz = fsub float f0xC13834F2, %i.gy
  %i.ha = fmul float %i.gx, %i.gz
  %i.hb = tail call noundef float @sqrtf(float noundef %i.ha) #27 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 4
  %i.hd = load <2 x float>, ptr %.sroa.022.028, align 4, !tbaa !27 ; 3 uses
  %i.he = fmul nnan float %i.gl, 2.500000e-01
  %i.hf = fmul float %i.z, %i.he                  ; 2 uses
  %i.hg = extractelement <2 x float> %i.hd, i64 1
  %i.hh = fsub float %i.hg, %i.hb
  %i.hi = tail call noundef i64 @llroundf(float noundef %i.hh) #27
  %i.hj = load float, ptr %i.hc, align 4, !tbaa !41
  %i.hk = fadd float %i.hb, %i.hj
  %i.hl = tail call noundef i64 @llroundf(float noundef %i.hk) #27 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.hi, i64 0) ; 2 uses
  %.not58.i = icmp sgt i64 %.sroa.speculated.i, %i.hl
  br i1 %.not58.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.preheader.i
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !112
  br label %bb.i

._crit_edge.i:                                    ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRlmEEERS2_DpOT_.exit.i, %.preheader.preheader.i
  %i.hm = load ptr, ptr %i.j, align 8, !tbaa !68  ; 10 uses
  %i.hn = load ptr, ptr %i.m, align 8, !tbaa !117 ; 2 uses
  %i.ho = icmp ult ptr %i.hm, %i.hn
  br i1 %i.ho, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  store <2 x float> %i.hd, ptr %i.hm, align 4, !tbaa !27
  %.sroa.6.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store float %i.hb, ptr %.sroa.6.0..sroa_idx43.i, align 4, !tbaa !27
  %.sroa.7.0..sroa_idx45.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store float %i.gm, ptr %.sroa.7.0..sroa_idx45.i, align 4, !tbaa !27
  %.sroa.8.0..sroa_idx47.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  store float %i.hf, ptr %.sroa.8.0..sroa_idx47.i, align 4, !tbaa !27
  %.sroa.9.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.hm, i64 20
  store float %i.ef, ptr %.sroa.9.0..sroa_idx49.i, align 4
  %.sroa.9.i.sroa.5.0..sroa.9.0..sroa_idx49.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  store float %i.ey, ptr %.sroa.9.i.sroa.5.0..sroa.9.0..sroa_idx49.i.sroa_idx, align 4
  %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx49.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 28
  store float %i.fr, ptr %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx49.i.sroa_idx, align 4, !tbaa !50
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  br label %_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.hq = load ptr, ptr %3, align 8, !tbaa !67
  %i.hr = ptrtoint ptr %i.hm to i64
  %i.hs = ptrtoint ptr %i.hq to i64               ; 2 uses
  %i.ht = sub i64 %i.hr, %i.hs                    ; 2 uses
  %i.hu = ashr exact i64 %i.ht, 5
  %i.hv = add nsw i64 %i.hu, 1                    ; 2 uses
  %i.hw = icmp ugt i64 %i.hv, 576460752303423487
  br i1 %i.hw, label %bb.f, label %_ZNKSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNKSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23
  unreachable

_ZNKSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i: ; preds = %bb.e
  %i.hx = ptrtoint ptr %i.hn to i64
  %i.hy = sub i64 %i.hx, %i.hs                    ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.hy, 9223372036854775776
  %i.hz = ashr exact i64 %i.hy, 4
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hz, i64 %i.hv)
  %.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 %.sroa.speculated.i.i.i.i, i64 576460752303423487 ; 4 uses
  %i.ia = icmp ne i64 %.0.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ia)
  %i.ib = icmp ugt i64 %.0.i.i.i.i, 576460752303423487
  br i1 %i.ib, label %bb.g, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl13SplineSegmentEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #23
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl13SplineSegmentEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i: ; preds = %_ZNKSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  %i.ic = shl nuw i64 %.0.i.i.i.i, 5
  %i.id = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ic) #24 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ht ; 10 uses
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %.0.i.i.i.i
  store <2 x float> %i.hd, ptr %i.ie, align 4, !tbaa !27
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  store float %i.hb, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !27
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 12
  store float %i.gm, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !27
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store float %i.hf, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !27
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ie, i64 20
  store float %i.ef, ptr %.sroa.9.0..sroa_idx.i, align 4
  %.sroa.9.i.sroa.5.0..sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 24
  store float %i.ey, ptr %.sroa.9.i.sroa.5.0..sroa.9.0..sroa_idx.i.sroa_idx, align 4
  %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ie, i64 28
  store float %i.fr, ptr %.sroa.9.i.sroa.6.0..sroa.9.0..sroa_idx.i.sroa_idx, align 4, !tbaa !50
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 3 uses
  %i.ih = load ptr, ptr %i.j, align 8, !tbaa !68  ; 2 uses
  %i.ii = load ptr, ptr %3, align 8, !tbaa !67    ; 5 uses
  %.not4.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ih, %i.ii
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl13SplineSegmentERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl13SplineSegmentEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ij = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ie, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl13SplineSegmentEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.ih, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl13SplineSegmentEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ]
  %i.ik = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.i, i64 -32 ; 3 uses
  %i.il = getelementptr inbounds i8, ptr %i.ij, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.il, ptr noundef nonnull align 4 dereferenceable(32) %i.ik, i64 32, i1 false), !tbaa.struct !118, !noalias !413
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ik, %i.ii
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIN3jxl13SplineSegmentERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !5

_ZNSt3__114__split_bufferIN3jxl13SplineSegmentERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl13SplineSegmentEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.ie, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorIN3jxl13SplineSegmentEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i ], [ %i.il, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i.i, ptr %3, align 8, !tbaa !117
  store ptr %i.ig, ptr %i.j, align 8, !tbaa !117
  %i.im = load ptr, ptr %i.m, align 8, !tbaa !117
  store ptr %i.if, ptr %i.m, align 8, !tbaa !117
  %.not.i4.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i4.i.i.i, label %_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferIN3jxl13SplineSegmentERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i
  %i.in = ptrtoint ptr %i.im to i64
  %i.io = ptrtoint ptr %i.ii to i64
  %i.ip = sub i64 %i.in, %i.io
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.ip) #25
  br label %_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i

_ZNSt3__16vectorIN3jxl13SplineSegmentENS_9allocatorIS2_EEE9push_backB8nn180100ERKS2_.exit.i: ; preds = %bb.h, %_ZNSt3__114__split_bufferIN3jxl13SplineSegmentERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i, %bb.d
  %.0.i.i = phi ptr [ %i.hp, %bb.d ], [ %i.ig, %_ZNSt3__114__split_bufferIN3jxl13SplineSegmentERNS_9allocatorIS2_EEE5clearB8nn180100Ev.exit.i.i.i.i ], [ %i.ig, %bb.h ]
  store ptr %.0.i.i, ptr %i.j, align 8, !tbaa !68
  br label %_ZN3jxl6N_AVX212_GLOBAL__N_115ComputeSegmentsERKNS_6Spline5PointEfPKffRNSt3__16vectorINS_13SplineSegmentENS8_9allocatorISA_EEEERNS9_INS8_4pairImmEENSB_ISG_EEEE.exit

bb.i:                                             ; preds = %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRlmEEERS2_DpOT_.exit.i, %.lr.ph.i
  %i.iq = phi ptr [ %.pre.i, %.lr.ph.i ], [ %.0.i31.i, %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRlmEEERS2_DpOT_.exit.i ] ; 5 uses
  %storemerge59.i = phi i64 [ %.sroa.speculated.i, %.lr.ph.i ], [ %i.kc, %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRlmEEERS2_DpOT_.exit.i ] ; 4 uses
  %i.ir = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.is = load ptr, ptr %3, align 8, !tbaa !67
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = ashr exact i64 %i.iv, 5                 ; 2 uses
  %i.ix = load ptr, ptr %i.l, align 8, !tbaa !116 ; 2 uses
  %i.iy = icmp ult ptr %i.iq, %i.ix
  br i1 %i.iy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %storemerge59.i, ptr %i.iq, align 8, !tbaa !115
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i64 %i.iw, ptr %i.iz, align 8, !tbaa !114
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  br label %_ZNSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE12emplace_backIJRlmEEERS2_DpOT_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.jb = load ptr, ptr %4, align 8, !tbaa !111
  %i.jc = ptrtoint ptr %i.iq to i64
  %i.jd = ptrtoint ptr %i.jb to i64               ; 2 uses
  %i.je = sub i64 %i.jc, %i.jd                    ; 2 uses
  %i.jf = ashr exact i64 %i.je, 4
  %i.jg = add nsw i64 %i.jf, 1                    ; 2 uses
  %i.jh = icmp ugt i64 %i.jg, 1152921504606846975
  br i1 %i.jh, label %bb.l, label %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  unreachable

_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i: ; preds = %bb.k
  %i.ji = ptrtoint ptr %i.ix to i64
  %i.jj = sub i64 %i.ji, %i.jd                    ; 2 uses
  %.not.i.i.i27.i = icmp ult i64 %i.jj, 9223372036854775792
  %i.jk = ashr exact i64 %i.jj, 3
  %.sroa.speculated.i.i.i28.i = tail call i64 @llvm.umax.i64(i64 %i.jk, i64 %i.jg)
  %.0.i.i.i29.i = select i1 %.not.i.i.i27.i, i64 %.sroa.speculated.i.i.i28.i, i64 1152921504606846975 ; 4 uses
  %i.jl = icmp ne i64 %.0.i.i.i29.i, 0
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = icmp ugt i64 %.0.i.i.i29.i, 1152921504606846975
  br i1 %i.jm, label %bb.m, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i

bb.m:                                             ; preds = %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #23
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairImmEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i.i.i.i: ; preds = %_ZNKSt3__16vectorINS_4pairImmEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit.i.i.i
  %i.jn = shl nuw i64 %.0.i.i.i29.i, 4
  %i.jo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jn) #24 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.je ; 5 uses
  %i.jq = getelementptr inbounds nuw [16 x i8], ptr %i.jo, i64 %.0.i.i.i29.i
end_hunk_0
