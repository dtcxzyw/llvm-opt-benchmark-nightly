Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lodepng/original/lodepng_util?download=true
inline.NumInlined: 864
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfo:bb.a
  %i.en = shufflevector <8 x float> %i.ei, <8 x float> poison, <3 x i32> <i32 5, i32 poison, i32 2>
  %i.eo = insertelement <3 x float> %i.en, float %i.eh, i64 1
  %i.ep = shufflevector <3 x float> %i.eo, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.eq = fpext <4 x float> %i.ep to <4 x double> ; 3 uses
  %i.er = fmul <4 x double> %i.ec, %i.ek
  %i.es = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.em, <4 x double> %i.ed, <4 x double> %i.er)
  %i.et = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.eq, <4 x double> %i.ee, <4 x double> %i.es)
  %i.eu = fptrunc <4 x double> %i.et to <4 x float> ; 2 uses
  %i.ev = extractelement <4 x double> %i.ek, i64 2
  %i.ew = extractelement <4 x double> %i.em, i64 2
  %i.ex = extractelement <4 x double> %i.eq, i64 2
  %i.ey = shufflevector <2 x double> %i.dz, <2 x double> %i.eb, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ez = shufflevector <4 x double> %i.ek, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fa = fmul <4 x double> %i.ey, %i.ez
  %i.fb = shufflevector <4 x double> %i.em, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fc = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fd = insertelement <2 x double> %i.fc, double %.pre-phi87.i, i64 1
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ff = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fb, <4 x double> %i.fe, <4 x double> %i.fa)
  %i.fg = shufflevector <4 x double> %i.eq, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fh = shufflevector <2 x double> %i.dx, <2 x double> %i.eb, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.fi = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fg, <4 x double> %i.fh, <4 x double> %i.ff)
  %i.fj = fptrunc <4 x double> %i.fi to <4 x float> ; 2 uses
  %i.fk = extractelement <2 x double> %i.eb, i64 0
  %i.fl = fmul double %i.fk, %i.ev
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.ew, double %.pre-phi87.i, double %i.fl)
  %i.fn = extractelement <2 x double> %i.eb, i64 1
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.fn, double %i.fm)
  %i.fp = fptrunc double %i.fo to float           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store <4 x float> %i.eu, ptr %i.a, align 16, !tbaa !58
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.fr, ptr %i.fq, align 16, !tbaa !58
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %i.fp, ptr %i.fs, align 16, !tbaa !58
  %i.ft = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.a)
  %.not.i46 = icmp eq i32 %i.ft, 0
  br i1 %.not.i46, label %bb.e, label %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit

bb.e:                                             ; preds = %.loopexit.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.fv = fpext <2 x float> %i.ea to <2 x double> ; 2 uses
  %i.fw = fpext float %.sroa.8.0.i to double
  %i.fx = load <4 x float>, ptr %i.a, align 16, !tbaa !58 ; 3 uses
  %i.fy = load <4 x float>, ptr %i.fu, align 4, !tbaa !58 ; 2 uses
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> %i.fy, <4 x i32> <i32 0, i32 3, i32 5, i32 0>
  %i.ga = fpext <4 x float> %i.fz to <4 x double>
  %i.gb = load <4 x float>, ptr %i.fq, align 16, !tbaa !58
  %i.gc = shufflevector <4 x float> %i.fx, <4 x float> %i.gb, <4 x i32> <i32 1, i32 4, i32 7, i32 1>
  %i.gd = fpext <4 x float> %i.gc to <4 x double>
  %i.ge = shufflevector <2 x double> %i.fv, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gf = fmul <4 x double> %i.ge, %i.gd
  %i.gg = shufflevector <2 x double> %i.fv, <2 x double> poison, <4 x i32> zeroinitializer
  %i.gh = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gg, <4 x double> %i.ga, <4 x double> %i.gf)
  %i.gi = shufflevector <4 x float> %i.fy, <4 x float> %i.fx, <4 x i32> <i32 6, i32 0, i32 3, i32 6>
  %i.gj = fpext <4 x float> %i.gi to <4 x double>
  %i.gk = insertelement <4 x double> poison, double %i.fw, i64 0
  %i.gl = shufflevector <4 x double> %i.gk, <4 x double> poison, <4 x i32> zeroinitializer
  %i.gm = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gl, <4 x double> %i.gj, <4 x double> %i.gh)
  %i.gn = fptrunc <4 x double> %i.gm to <4 x float> ; 3 uses
  %i.go = fmul <4 x float> %i.eu, %i.gn
  store <4 x float> %i.go, ptr %0, align 4, !tbaa !58
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gq = extractelement <4 x float> %i.gn, i64 2
  %i.gr = shufflevector <4 x float> %i.fj, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.gs = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.gt = fmul <4 x float> %i.gr, %i.gs
  store <4 x float> %i.gt, ptr %i.gp, align 4, !tbaa !58
  %i.gu = fmul float %i.gq, %i.fp
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.gu, ptr %i.gv, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store <2 x float> %i.ea, ptr %1, align 4, !tbaa !58
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.sroa.8.0.i, ptr %i.gw, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.gx, align 4, !tbaa !58
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.gy, align 4, !tbaa !58
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !58
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float 1.000000e+00, ptr %i.gz, align 4, !tbaa !58
  store <2 x float> splat (float 1.000000e+00), ptr %1, align 4, !tbaa !58
  br label %.critedge

_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit: ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.critedge

bb.g:                                             ; preds = %bb.a
  %i.ha = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !73
  %.not42 = icmp eq i32 %i.hb, 0
  br i1 %.not42, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 244
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !69
  %.not43 = icmp eq i32 %i.hd, 0
  br i1 %.not43, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 212
  %i.hf = load <2 x i32>, ptr %i.he, align 4, !tbaa !15
  %i.hg = uitofp <2 x i32> %i.hf to <2 x float>
  %i.hh = fdiv <2 x float> %i.hg, splat (float 1.000000e+05) ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !75
  %i.hk = uitofp i32 %i.hj to float
  %i.hl = getelementptr inbounds nuw i8, ptr %4, i64 232
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !77
  %i.hn = uitofp i32 %i.hm to float
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 240
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !79
  %i.hq = uitofp i32 %i.hp to float
  %i.hr = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.hk, i64 0
  %i.hs = insertelement <4 x float> %i.hr, float %i.hn, i64 1
  %i.ht = insertelement <4 x float> %i.hs, float %i.hq, i64 2
  %i.hu = fdiv <4 x float> %i.ht, <float 1.000000e+05, float 1.000000e+05, float 1.000000e+05, float 1.000000e+00> ; 4 uses
  %i.hv = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hw = shufflevector <4 x float> %i.hu, <4 x float> %i.hv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hx = fcmp oeq <4 x float> %i.hw, zeroinitializer
  %i.hy = bitcast <4 x i1> %i.hx to i4
  %.not61 = icmp eq i4 %i.hy, 0
  br i1 %.not61, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 236
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !78
  %i.ib = uitofp i32 %i.ia to float
  %i.ic = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !76
  %i.ie = uitofp i32 %i.id to float
  %i.if = getelementptr inbounds nuw i8, ptr %4, i64 220
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !74
  %i.ih = uitofp i32 %i.ig to float
  %i.ii = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ih, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.ie, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.ib, i64 2
  %i.il = fdiv <4 x float> %i.ik, <float 1.000000e+05, float 1.000000e+05, float 1.000000e+05, float 1.000000e+00> ; 2 uses
  %i.im = fdiv <4 x float> %i.il, %i.hu           ; 2 uses
  %i.in = shufflevector <4 x float> %i.il, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.io = fsub <4 x float> splat (float 1.000000e+00), %i.in
  %i.ip = shufflevector <4 x float> %i.hu, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.iq = fsub <4 x float> %i.io, %i.ip
  %i.ir = shufflevector <4 x float> %i.hu, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 1, i32 2>
  %i.is = fdiv <4 x float> %i.iq, %i.ir           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.it = insertelement <4 x float> %i.im, float 1.000000e+00, i64 3
  store <4 x float> %i.it, ptr %i.b, align 16, !tbaa !58
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.iv = shufflevector <4 x float> %i.is, <4 x float> <float 1.000000e+00, float 1.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 2>
  store <4 x float> %i.iv, ptr %i.iu, align 16, !tbaa !58
  %i.iw = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ix = extractelement <4 x float> %i.is, i64 3
  store float %i.ix, ptr %i.iw, align 16, !tbaa !58
  %i.iy = call fastcc noundef i32 @_ZN7lodepngL9invMatrixEPf(ptr noundef %i.b)
  %.not.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not.i.i, label %bb.k, label %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit

_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit:    ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ja = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.jc = extractelement <2 x float> %i.hh, i64 0
  %i.jd = fsub float 1.000000e+00, %i.jc
  %i.je = extractelement <2 x float> %i.hh, i64 1
  %i.jf = fsub float %i.jd, %i.je
  %i.jg = insertelement <2 x float> poison, float %i.jf, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> %i.hh, <2 x i32> <i32 0, i32 2>
  %i.ji = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = fdiv <2 x float> %i.jh, %i.ji           ; 3 uses
  %i.jk = fpext <2 x float> %i.jj to <2 x double> ; 2 uses
  %i.jl = load <4 x float>, ptr %i.jb, align 4, !tbaa !58
  %i.jm = load <5 x float>, ptr %i.ja, align 8, !tbaa !58
  %i.jn = load <7 x float>, ptr %i.b, align 16, !tbaa !58
  %i.jo = shufflevector <7 x float> %i.jn, <7 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.jp = fpext <4 x float> %i.jo to <4 x double>
  %i.jq = load <2 x float>, ptr %i.iz, align 4, !tbaa !58 ; 2 uses
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.js = shufflevector <4 x float> %i.jl, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.ju = fpext <4 x float> %i.jt to <4 x double>
  %i.jv = shufflevector <2 x double> %i.jk, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.jw = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.jv, <4 x double> %i.jp, <4 x double> %i.ju)
  %i.jx = shufflevector <2 x float> %i.jq, <2 x float> poison, <5 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison>
  %i.jy = shufflevector <5 x float> %i.jm, <5 x float> %i.jx, <4 x i32> <i32 0, i32 3, i32 6, i32 0>
  %i.jz = fpext <4 x float> %i.jy to <4 x double>
  %i.ka = shufflevector <2 x double> %i.jk, <2 x double> poison, <4 x i32> zeroinitializer
  %i.kb = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ka, <4 x double> %i.jz, <4 x double> %i.jw)
  %i.kc = fptrunc <4 x double> %i.kb to <4 x float> ; 3 uses
  %i.kd = fmul <4 x float> %i.im, %i.kc
  store <4 x float> %i.kd, ptr %0, align 4, !tbaa !58
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kf = extractelement <4 x float> %i.kc, i64 1
  store float %i.kf, ptr %i.ke, align 4, !tbaa !58
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.kh = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ki = fmul <4 x float> %i.is, %i.kh
  store <4 x float> %i.ki, ptr %i.kg, align 4, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.kj = extractelement <2 x float> %i.jj, i64 1
  store float %i.kj, ptr %1, align 4, !tbaa !58
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float 1.000000e+00, ptr %i.kk, align 4, !tbaa !58
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.km = extractelement <2 x float> %i.jj, i64 0
  store float %i.km, ptr %i.kl, align 4, !tbaa !58
  br label %.critedge

bb.l:                                             ; preds = %bb.h, %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 16 dereferenceable(36) @_ZZN7lodepngL7getChrmEPfS0_jPKNS_10LodePNGICCEPK11LodePNGInfoE4srgb, i64 36, i1 false), !tbaa !58
  store <2 x float> <float f0x3F735114, float 1.000000e+00>, ptr %1, align 4, !tbaa !58
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float f0x3F8B663F, ptr %i.kn, align 4, !tbaa !58
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.f, %bb.e, %bb.l, %bb.k, %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit, %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit
  %.1 = phi i32 [ 1, %_ZN7lodepngL15getChrmMatrixXYEPfffffffff.exit ], [ 0, %bb.f ], [ 1, %_ZN7lodepngL10getICCChrmEPfS0_PKNS_10LodePNGICCE.exit ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.e ], [ 1, %bb.i ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN7lodepngL9invMatrixEPf(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !58
  %i.e = fpext float %i.d to double               ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.g = load float, ptr %i.f, align 4, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load float, ptr %i.h, align 4, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !58
  %i.l = insertelement <2 x float> poison, float %i.k, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.b, i64 1
  %i.n = fpext <2 x float> %i.m to <2 x double>   ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !58
  %i.q = extractelement <2 x double> %i.n, i64 0
  %i.r = fneg double %i.q                         ; 2 uses
  %i.s = load float, ptr %0, align 4, !tbaa !58
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.p, i64 1
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = insertelement <2 x float> poison, float %i.g, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.i, i64 1
  %i.z = fpext <2 x float> %i.y to <2 x double>   ; 7 uses
  %i.aa = insertelement <2 x double> %i.z, double %i.e, i64 0
  %i.ab = fneg <2 x double> %i.aa                 ; 2 uses
  %i.ac = shufflevector <2 x double> %i.v, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.ad = fmul <2 x double> %i.ac, %i.ab
  %i.ae = insertelement <2 x double> %i.z, double %i.e, i64 1
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.ae, <2 x double> %i.ad) ; 3 uses
  %i.ag = load <2 x float>, ptr %i.w, align 4, !tbaa !58
  %i.ah = fpext <2 x float> %i.ag to <2 x double> ; 8 uses
  %i.ai = shufflevector <2 x double> %i.af, <2 x double> %i.n, <2 x i32> <i32 0, i32 3>
  %i.aj = insertelement <2 x double> %i.ah, double %i.r, i64 1
  %i.ak = fmul <2 x double> %i.ai, %i.aj
  %i.al = shufflevector <2 x double> %i.af, <2 x double> %i.z, <2 x i32> <i32 1, i32 3>
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.al, <2 x double> %i.ak) ; 3 uses
  %i.an = extractelement <2 x double> %i.ah, i64 1
  %i.ao = extractelement <2 x double> %i.am, i64 0
  %i.ap = extractelement <2 x double> %i.am, i64 1
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ap, double %i.ao)
  %i.ar = fdiv double 1.000000e+00, %i.aq         ; 3 uses
  %i.as = tail call double @llvm.fabs.f64(double %i.ar)
  %i.at = fcmp ogt double %i.as, 1.000000e+15
  br i1 %i.at, label %.loopexit, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.a
  %i.au = shufflevector <2 x double> %i.n, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.av = fneg <2 x double> %i.au                 ; 2 uses
  %i.aw = shufflevector <2 x double> %i.ab, <2 x double> %i.av, <2 x i32> <i32 2, i32 0>
  %i.ax = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ay = fmul <2 x double> %i.aw, %i.ax
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.z, <2 x double> %i.ay)
  %i.ba = shufflevector <2 x double> %i.af, <2 x double> %i.az, <4 x i32> <i32 1, i32 3, i32 2, i32 0>
  %i.bb = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.bc = shufflevector <4 x double> %i.bb, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bd = fmul <4 x double> %i.ba, %i.bc
  %i.be = fptrunc <4 x double> %i.bd to <4 x float>
  store <4 x float> %i.be, ptr %0, align 4, !tbaa !58
  %i.bf = insertelement <2 x double> %i.av, double %i.r, i64 0
  %i.bg = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 1, i32 2>
  %i.bh = fmul <2 x double> %i.bf, %i.bg
  %i.bi = insertelement <2 x double> %i.ah, double %i.e, i64 0
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.bi, <2 x double> %i.bh)
  %i.bk = shufflevector <2 x double> %i.z, <2 x double> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.bl = fneg <2 x double> %i.bk
  %i.bm = fmul <2 x double> %i.v, %i.bl
  %i.bn = shufflevector <2 x double> %i.ah, <2 x double> %i.v, <2 x i32> <i32 0, i32 2>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.n, <2 x double> %i.bm) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 1
  %i.bq = fmul double %i.bp, %i.ar
  %i.br = shufflevector <2 x double> %i.bj, <2 x double> %i.am, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.bs = shufflevector <2 x double> %i.bo, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bt = shufflevector <4 x double> %i.br, <4 x double> %i.bs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bu = fmul <4 x double> %i.bt, %i.bc
  %i.bv = fptrunc <4 x double> %i.bu to <4 x float>
  store <4 x float> %i.bv, ptr %i.a, align 4, !tbaa !58
  %i.bw = fptrunc double %i.bq to float
  store float %i.bw, ptr %i.c, align 4, !tbaa !58
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.062 = phi i32 [ 1, %bb.a ], [ 0, %.loopexit.loopexit ]
  ret i32 %.062
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #33
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #20

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !80     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #30
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !23
  %i.s = load ptr, ptr %2, align 8, !tbaa !25     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !26   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !25
  %i.z = load i64, ptr %i.t, align 8, !tbaa !21
  store i64 %i.z, ptr %i.r, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !26
  store ptr %i.t, ptr %2, align 8, !tbaa !25
end_hunk_0
