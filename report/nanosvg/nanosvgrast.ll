Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvgParse:bb.a
  %i.ew = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %i.et, i64 1
  br label %bb.ak

bb.af:                                            ; preds = %nsvg__convertToPixels.exit.i
  %i.ey = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.ez = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.fa = fcmp ogt float %i.ey, %i.ez
  %i.fb = select i1 %i.fa, float %i.ey, float %i.ez ; 5 uses
  %i.fc = fmul float %i.bi, %i.fb                 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40016
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !58
  switch i32 %i.fe, label %bb.ah [
    i32 0, label %nsvg__viewAlign.exit165.i
    i32 2, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.ff = fsub float %i.bw, %i.fc
  br label %nsvg__viewAlign.exit165.i

bb.ah:                                            ; preds = %bb.af
  %i.fg = fsub float %i.bw, %i.fc
  %i.fh = fmul float %i.fg, 5.000000e-01
  br label %nsvg__viewAlign.exit165.i

nsvg__viewAlign.exit165.i:                        ; preds = %bb.ah, %bb.ag, %bb.af
  %.0.i164.i = phi float [ %i.fh, %bb.ah ], [ %i.ff, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %i.fi = fdiv float %.0.i164.i, %i.fb
  %i.fj = extractelement <2 x float> %i.cc, i64 0
  %i.fk = fsub float %i.fi, %i.fj
  %i.fl = fmul float %i.bt, %i.fb                 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 40020
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !59
  switch i32 %i.fn, label %bb.aj [
    i32 0, label %nsvg__viewAlign.exit167.i
    i32 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %nsvg__viewAlign.exit165.i
  %i.fo = fsub float %i.ca, %i.fl
  br label %nsvg__viewAlign.exit167.i

bb.aj:                                            ; preds = %nsvg__viewAlign.exit165.i
  %i.fp = fsub float %i.ca, %i.fl
  %i.fq = fmul float %i.fp, 5.000000e-01
  br label %nsvg__viewAlign.exit167.i

nsvg__viewAlign.exit167.i:                        ; preds = %bb.aj, %bb.ai, %nsvg__viewAlign.exit165.i
  %.0.i166.i = phi float [ %i.fq, %bb.aj ], [ %i.fo, %bb.ai ], [ 0.000000e+00, %nsvg__viewAlign.exit165.i ]
  %i.fr = fdiv float %.0.i166.i, %i.fb
  %i.fs = extractelement <2 x float> %i.cc, i64 1
  %i.ft = fsub float %i.fr, %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = insertelement <2 x float> poison, float %i.fk, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.ft, i64 1
  br label %bb.ak

bb.ak:                                            ; preds = %nsvg__viewAlign.exit167.i, %nsvg__viewAlign.exit163.i, %nsvg__convertToPixels.exit.i
  %i.fy = phi <2 x float> [ %i.ev, %nsvg__viewAlign.exit163.i ], [ %i.fv, %nsvg__viewAlign.exit167.i ], [ %i.ck, %nsvg__convertToPixels.exit.i ]
  %i.fz = phi <2 x float> [ %i.ex, %nsvg__viewAlign.exit163.i ], [ %i.fx, %nsvg__viewAlign.exit167.i ], [ %i.cd, %nsvg__convertToPixels.exit.i ] ; 6 uses
  %i.ga = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.gb, %i.fy           ; 8 uses
  %shift73 = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop74 = fadd <2 x float> %i.gc, %shift73
  %i.gd = extractelement <2 x float> %foldExtExtBinop74, i64 0
  %i.ge = fmul float %i.gd, 5.000000e-01          ; 3 uses
  br i1 %i.ay, label %nsvg__scaleToViewbox.exit, label %.lr.ph238.i

.lr.ph238.i:                                      ; preds = %bb.ak
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.gh = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = extractelement <2 x float> %i.fz, i64 0 ; 2 uses
  %i.gk = extractelement <2 x float> %i.fz, i64 1 ; 2 uses
  %i.gl = insertelement <2 x float> %i.gc, float 0.000000e+00, i64 1 ; 2 uses
  %i.gm = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.gn = shufflevector <4 x float> %i.gm, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 poison, i32 7> ; 2 uses
  %i.go = insertelement <2 x float> %i.gc, float 0.000000e+00, i64 0 ; 2 uses
  %i.gp = shufflevector <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float poison>, <4 x float> %i.gm, <4 x i32> <i32 0, i32 5, i32 2, i32 poison> ; 2 uses
  %i.gq = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %broadcast.splat58 = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat60 = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat62 = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat64 = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gr = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gs = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.gt = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.gu = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ge, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge233.i, %.lr.ph238.i
  %.0236.i = phi ptr [ %.val.val.i44, %.lr.ph238.i ], [ %.0.i15, %._crit_edge233.i ] ; 10 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.0236.i, i64 152 ; 2 uses
  %i.gw = load <4 x float>, ptr %i.gv, align 8, !tbaa !31
  %i.gx = fadd <4 x float> %i.gq, %i.gw
  %i.gy = fmul <4 x float> %i.gm, %i.gx
  store <4 x float> %i.gy, ptr %i.gv, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %.0236.i, i64 320
  %.0148224.i = load ptr, ptr %i.gz, align 8, !tbaa !60 ; 2 uses
  %.not156225.i = icmp eq ptr %.0148224.i, null
  br i1 %.not156225.i, label %._crit_edge229.i, label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %bb.al, %._crit_edge.i
  %.0148226.i = phi ptr [ %.0148.i, %._crit_edge.i ], [ %.0148224.i, %bb.al ] ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 16 ; 2 uses
  %i.hb = load <4 x float>, ptr %i.ha, align 8, !tbaa !31
  %i.hc = fadd <4 x float> %i.gq, %i.hb
  %i.hd = fmul <4 x float> %i.gm, %i.hc
  store <4 x float> %i.hd, ptr %i.ha, align 8, !tbaa !31
  %i.he = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 8
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !62 ; 3 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph.i17, label %._crit_edge.i

.lr.ph.i17:                                       ; preds = %.lr.ph228.i
  %i.hh = load ptr, ptr %.0148226.i, align 8, !tbaa !63 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.hf to i64 ; 3 uses
  %min.iters.check54 = icmp ult i32 %i.hf, 4
  br i1 %min.iters.check54, label %scalar.ph53.preheader, label %vector.ph55

vector.ph55:                                      ; preds = %.lr.ph.i17
  %n.vec56 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph55
  %index66 = phi i64 [ 0, %vector.ph55 ], [ %index.next68, %vector.body65 ] ; 2 uses
  %i.hi = shl nuw nsw i64 %index66, 3
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.hj, align 4, !tbaa !31 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec67 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.hk = fadd <4 x float> %broadcast.splat58, %strided.vec
  %i.hl = fmul <4 x float> %broadcast.splat60, %i.hk
  %i.hm = fadd <4 x float> %broadcast.splat62, %strided.vec67
  %i.hn = fmul <4 x float> %broadcast.splat64, %i.hm
  %interleaved.vec = shufflevector <4 x float> %i.hl, <4 x float> %i.hn, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.hj, align 4, !tbaa !31
  %index.next68 = add nuw i64 %index66, 4         ; 2 uses
  %i.ho = icmp eq i64 %index.next68, %n.vec56
  br i1 %i.ho, label %middle.block69, label %vector.body65, !llvm.loop !168

middle.block69:                                   ; preds = %vector.body65
  %cmp.n70 = icmp eq i64 %n.vec56, %wide.trip.count.i
  br i1 %cmp.n70, label %._crit_edge.i, label %scalar.ph53.preheader

scalar.ph53.preheader:                            ; preds = %.lr.ph.i17, %middle.block69
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i17 ], [ %n.vec56, %middle.block69 ]
  br label %scalar.ph53

scalar.ph53:                                      ; preds = %scalar.ph53.preheader, %scalar.ph53
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph53 ], [ %indvars.iv.i.ph, %scalar.ph53.preheader ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i, 3
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hh, i64 %.idx.i ; 2 uses
  %i.hq = load <2 x float>, ptr %i.hp, align 4, !tbaa !31
  %i.hr = fadd <2 x float> %i.fz, %i.hq
  %i.hs = fmul <2 x float> %i.gc, %i.hr
  store <2 x float> %i.hs, ptr %i.hp, align 4, !tbaa !31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph53, !llvm.loop !169

._crit_edge.i:                                    ; preds = %scalar.ph53, %middle.block69, %.lr.ph228.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.0148226.i, i64 32
  %.0148.i = load ptr, ptr %i.ht, align 8, !tbaa !60 ; 2 uses
  %.not156.i = icmp eq ptr %.0148.i, null
  br i1 %.not156.i, label %._crit_edge229.i, label %.lr.ph228.i, !llvm.loop !170

._crit_edge229.i:                                 ; preds = %._crit_edge.i, %bb.al
  %i.hu = getelementptr inbounds nuw i8, ptr %.0236.i, i64 64
  %i.hv = load i8, ptr %i.hu, align 8, !tbaa !44
  %i.hw = and i8 %i.hv, -2
  %switch.i = icmp eq i8 %i.hw, 2
  br i1 %switch.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %._crit_edge229.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.0236.i, i64 72 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !17 ; 4 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  %i.ib = load <4 x float>, ptr %i.hy, align 4, !tbaa !31 ; 2 uses
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.id = fmul <2 x float> %i.ic, zeroinitializer
  %i.ie = shufflevector <4 x float> %i.ib, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.if = fadd <2 x float> %i.ie, %i.id
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ie, <2 x float> zeroinitializer, <2 x float> %i.ic)
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ij = fmul <4 x float> %i.gr, %i.ii
  %i.ik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ig, <4 x float> %i.gs, <4 x float> %i.ij)
  store <4 x float> %i.ik, ptr %i.hy, align 4, !tbaa !31
  %i.il = load float, ptr %i.hz, align 4, !tbaa !31 ; 2 uses
  %i.im = load float, ptr %i.ia, align 4, !tbaa !31 ; 2 uses
  %i.in = fmul float %i.im, 0.000000e+00
  %i.io = fadd float %i.il, %i.in
  %3 = tail call float @llvm.fmuladd.f32(float %i.il, float 0.000000e+00, float %i.im)
  %4 = fadd float %i.gk, %3
  %i.ip = fadd float %i.gj, %i.io
  %i.iq = insertelement <2 x float> poison, float %4, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fmul <2 x float> %i.go, %i.ir
  %i.it = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.iu = shufflevector <2 x float> %i.it, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.gl, <2 x float> %i.is)
  %i.iw = fadd <2 x float> %i.iv, zeroinitializer
  store <2 x float> %i.iw, ptr %i.hz, align 4, !tbaa !31
  %i.ix = load ptr, ptr %i.hx, align 8, !tbaa !17 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.ix, i64 24, i1 false)
  %i.iy = load <2 x float>, ptr %i.gf, align 4, !tbaa !31 ; 2 uses
  %i.iz = load <4 x float>, ptr %i.a, align 16, !tbaa !31
  %i.ja = shufflevector <4 x float> %i.iz, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.jb = fpext <2 x float> %i.ja to <2 x double> ; 4 uses
  %i.jc = fpext <2 x float> %i.iy to <2 x double> ; 3 uses
  %i.jd = extractelement <2 x double> %i.jc, i64 0
  %i.je = fneg double %i.jd
  %i.jf = extractelement <2 x double> %i.jc, i64 1
  %i.jg = fmul double %i.jf, %i.je
  %i.jh = extractelement <2 x double> %i.jb, i64 0
  %i.ji = extractelement <2 x double> %i.jb, i64 1
  %i.jj = tail call double @llvm.fmuladd.f64(double %i.jh, double %i.ji, double %i.jg) ; 2 uses
  %i.jk = tail call double @llvm.fabs.f64(double %i.jj)
  %or.cond.i.i = fcmp olt double %i.jk, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 16, !tbaa !31
  store float 0.000000e+00, ptr %i.gg, align 16, !tbaa !31
  br label %nsvg__xformInverse.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.jl = fdiv double 1.000000e+00, %i.jj         ; 2 uses
  %i.jm = fneg <2 x float> %i.iy
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.jo = fpext <2 x float> %i.jm to <2 x double>
  %i.jp = insertelement <4 x double> poison, double %i.jl, i64 0
  %i.jq = shufflevector <4 x double> %i.jp, <4 x double> poison, <4 x i32> zeroinitializer
  %i.jr = shufflevector <2 x double> %i.jb, <2 x double> %i.jo, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.js = fmul <4 x double> %i.jq, %i.jr
  %i.jt = fptrunc <4 x double> %i.js to <4 x float>
  store <4 x float> %i.jt, ptr %i.ix, align 4, !tbaa !31
  %i.ju = load <2 x float>, ptr %i.gg, align 16, !tbaa !31
  %i.jv = fpext <2 x float> %i.ju to <2 x double> ; 2 uses
  %i.jw = fneg <2 x double> %i.jv
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jy = fmul <2 x double> %i.jx, %i.jb
  %i.jz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.jv, <2 x double> %i.jy)
  %i.ka = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.kb = shufflevector <2 x double> %i.ka, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kc = fmul <2 x double> %i.kb, %i.jz
  %i.kd = fptrunc <2 x double> %i.kc to <2 x float> ; 2 uses
  %i.ke = extractelement <2 x float> %i.kd, i64 1
  store float %i.ke, ptr %i.jn, align 4, !tbaa !31
  %i.kf = extractelement <2 x float> %i.kd, i64 0
  br label %nsvg__xformInverse.exit.i

nsvg__xformInverse.exit.i:                        ; preds = %bb.ao, %bb.an
  %.sink34.i.i = phi ptr [ %i.ix, %bb.ao ], [ %i.a, %bb.an ]
  %.sink.i.i = phi float [ %i.kf, %bb.ao ], [ 0.000000e+00, %bb.an ]
  %i.kg = getelementptr inbounds nuw i8, ptr %.sink34.i.i, i64 20
  store float %.sink.i.i, ptr %i.kg, align 4, !tbaa !31
  br label %bb.ap

bb.ap:                                            ; preds = %nsvg__xformInverse.exit.i, %._crit_edge229.i
  %i.kh = getelementptr inbounds nuw i8, ptr %.0236.i, i64 80
  %i.ki = load i8, ptr %i.kh, align 8, !tbaa !45
  %i.kj = and i8 %i.ki, -2
  %switch158.i = icmp eq i8 %i.kj, 2
  br i1 %switch158.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.kk = getelementptr inbounds nuw i8, ptr %.0236.i, i64 88 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !17 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 20
  %i.ko = load <4 x float>, ptr %i.kl, align 4, !tbaa !31 ; 2 uses
  %i.kp = shufflevector <4 x float> %i.ko, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.kq = fmul <2 x float> %i.kp, zeroinitializer
  %i.kr = shufflevector <4 x float> %i.ko, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ks = fadd <2 x float> %i.kr, %i.kq
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> zeroinitializer, <2 x float> %i.kp)
  %i.kv = shufflevector <2 x float> %i.ku, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kw = fmul <4 x float> %i.gt, %i.kv
  %i.kx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.kt, <4 x float> %i.gu, <4 x float> %i.kw)
  store <4 x float> %i.kx, ptr %i.kl, align 4, !tbaa !31
  %i.ky = load float, ptr %i.km, align 4, !tbaa !31 ; 2 uses
  %i.kz = load float, ptr %i.kn, align 4, !tbaa !31 ; 2 uses
  %i.la = fmul float %i.kz, 0.000000e+00
  %i.lb = fadd float %i.ky, %i.la
  %5 = tail call float @llvm.fmuladd.f32(float %i.ky, float 0.000000e+00, float %i.kz)
  %6 = fadd float %i.gk, %5
  %i.lc = fadd float %i.gj, %i.lb
  %i.ld = insertelement <2 x float> poison, float %6, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fmul <2 x float> %i.go, %i.le
  %i.lg = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lh, <2 x float> %i.gl, <2 x float> %i.lf)
  %i.lj = fadd <2 x float> %i.li, zeroinitializer
  store <2 x float> %i.lj, ptr %i.km, align 4, !tbaa !31
  %i.lk = load ptr, ptr %i.kk, align 8, !tbaa !17 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %i.lk, i64 24, i1 false)
  %i.ll = load <2 x float>, ptr %i.gf, align 4, !tbaa !31 ; 2 uses
  %i.lm = load <4 x float>, ptr %i.a, align 16, !tbaa !31
  %i.ln = shufflevector <4 x float> %i.lm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.lo = fpext <2 x float> %i.ln to <2 x double> ; 4 uses
  %i.lp = fpext <2 x float> %i.ll to <2 x double> ; 3 uses
  %i.lq = extractelement <2 x double> %i.lp, i64 0
  %i.lr = fneg double %i.lq
  %i.ls = extractelement <2 x double> %i.lp, i64 1
  %i.lt = fmul double %i.ls, %i.lr
  %i.lu = extractelement <2 x double> %i.lo, i64 0
  %i.lv = extractelement <2 x double> %i.lo, i64 1
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.lu, double %i.lv, double %i.lt) ; 2 uses
  %i.lx = tail call double @llvm.fabs.f64(double %i.lw)
  %or.cond.i168.i = fcmp olt double %i.lx, f0x3EB0C6F7A0B5ED8D
  br i1 %or.cond.i168.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.a, align 16, !tbaa !31
  store float 0.000000e+00, ptr %i.gg, align 16, !tbaa !31
  br label %nsvg__xformInverse.exit171.i

bb.as:                                            ; preds = %bb.aq
  %i.ly = fdiv double 1.000000e+00, %i.lw         ; 2 uses
  %i.lz = fneg <2 x float> %i.ll
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.mb = fpext <2 x float> %i.lz to <2 x double>
  %i.mc = insertelement <4 x double> poison, double %i.ly, i64 0
  %i.md = shufflevector <4 x double> %i.mc, <4 x double> poison, <4 x i32> zeroinitializer
  %i.me = shufflevector <2 x double> %i.lo, <2 x double> %i.mb, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %i.mf = fmul <4 x double> %i.md, %i.me
  %i.mg = fptrunc <4 x double> %i.mf to <4 x float>
  store <4 x float> %i.mg, ptr %i.lk, align 4, !tbaa !31
  %i.mh = load <2 x float>, ptr %i.gg, align 16, !tbaa !31
  %i.mi = fpext <2 x float> %i.mh to <2 x double> ; 2 uses
  %i.mj = fneg <2 x double> %i.mi
  %i.mk = shufflevector <2 x double> %i.mj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ml = fmul <2 x double> %i.mk, %i.lo
  %i.mm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lp, <2 x double> %i.mi, <2 x double> %i.ml)
  %i.mn = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.mo = shufflevector <2 x double> %i.mn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mp = fmul <2 x double> %i.mo, %i.mm
  %i.mq = fptrunc <2 x double> %i.mp to <2 x float> ; 2 uses
  %i.mr = extractelement <2 x float> %i.mq, i64 1
  store float %i.mr, ptr %i.ma, align 4, !tbaa !31
  %i.ms = extractelement <2 x float> %i.mq, i64 0
  br label %nsvg__xformInverse.exit171.i

nsvg__xformInverse.exit171.i:                     ; preds = %bb.as, %bb.ar
  %.sink34.i169.i = phi ptr [ %i.lk, %bb.as ], [ %i.a, %bb.ar ]
  %.sink.i170.i = phi float [ %i.ms, %bb.as ], [ 0.000000e+00, %bb.ar ]
  %i.mt = getelementptr inbounds nuw i8, ptr %.sink34.i169.i, i64 20
  store float %.sink.i170.i, ptr %i.mt, align 4, !tbaa !31
  br label %bb.at

bb.at:                                            ; preds = %nsvg__xformInverse.exit171.i, %bb.ap
  %i.mu = getelementptr inbounds nuw i8, ptr %.0236.i, i64 100 ; 2 uses
  %i.mv = load <2 x float>, ptr %i.mu, align 4, !tbaa !31
  %i.mw = fmul <2 x float> %i.gi, %i.mv
  store <2 x float> %i.mw, ptr %i.mu, align 4, !tbaa !31
  %i.mx = getelementptr inbounds nuw i8, ptr %.0236.i, i64 140
  %i.my = load i8, ptr %i.mx, align 4, !tbaa !66  ; 3 uses
  %i.mz = icmp sgt i8 %i.my, 0
  br i1 %i.mz, label %.lr.ph232.i, label %._crit_edge233.i

.lr.ph232.i:                                      ; preds = %bb.at
  %wide.trip.count247.i = zext nneg i8 %i.my to i64 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.0236.i, i64 108 ; 2 uses
  %min.iters.check = icmp ult i8 %i.my, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph232.i
  %n.vec = and i64 %wide.trip.count247.i, 120     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %index ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %i.nb, align 4, !tbaa !31
  %wide.load52 = load <4 x float>, ptr %i.nc, align 4, !tbaa !31
  %i.nd = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ne = fmul <4 x float> %broadcast.splat, %wide.load52
  store <4 x float> %i.nd, ptr %i.nb, align 4, !tbaa !31
  store <4 x float> %i.ne, ptr %i.nc, align 4, !tbaa !31
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nf = icmp eq i64 %index.next, %n.vec
  br i1 %i.nf, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count247.i
  br i1 %cmp.n, label %._crit_edge233.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph232.i, %middle.block
  %indvars.iv244.i.ph = phi i64 [ 0, %.lr.ph232.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv244.i = phi i64 [ %indvars.iv.next245.i, %scalar.ph ], [ %indvars.iv244.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %indvars.iv244.i ; 2 uses
  %i.nh = load float, ptr %i.ng, align 4, !tbaa !31
  %i.ni = fmul float %i.ge, %i.nh
  store float %i.ni, ptr %i.ng, align 4, !tbaa !31
  %indvars.iv.next245.i = add nuw nsw i64 %indvars.iv244.i, 1 ; 2 uses
  %exitcond248.not.i = icmp eq i64 %indvars.iv.next245.i, %wide.trip.count247.i
  br i1 %exitcond248.not.i, label %._crit_edge233.i, label %scalar.ph, !llvm.loop !172

._crit_edge233.i:                                 ; preds = %scalar.ph, %middle.block, %bb.at
  %i.nj = getelementptr inbounds nuw i8, ptr %.0236.i, i64 328
  %.0.i15 = load ptr, ptr %i.nj, align 8, !tbaa !41 ; 2 uses
  %.not.i16 = icmp eq ptr %.0.i15, null
  br i1 %.not.i16, label %nsvg__scaleToViewbox.exit, label %bb.al, !llvm.loop !173

nsvg__scaleToViewbox.exit:                        ; preds = %._crit_edge233.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  store ptr null, ptr %i.f, align 8, !tbaa !30
  %i.nk = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39976
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !67 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.nl, null
  br i1 %.not6.i.i, label %nsvg__deleteStyles.exit.i, label %.lr.ph.i.i18

.lr.ph.i.i18:                                     ; preds = %nsvg__scaleToViewbox.exit, %.lr.ph.i.i18
  %.07.i.i = phi ptr [ %i.nn, %.lr.ph.i.i18 ], [ %i.nl, %nsvg__scaleToViewbox.exit ] ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !69 ; 2 uses
  %i.no = load ptr, ptr %.07.i.i, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.no) #30
  %i.np = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.nq) #30
  tail call void @free(ptr noundef nonnull %.07.i.i) #30
  %.not.i.i19 = icmp eq ptr %i.nn, null
  br i1 %.not.i.i19, label %nsvg__deleteStyles.exit.i, label %.lr.ph.i.i18, !llvm.loop !174

nsvg__deleteStyles.exit.i:                        ; preds = %.lr.ph.i.i18, %nsvg__scaleToViewbox.exit
  %i.nr = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39960
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !72 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ns, null
  br i1 %.not8.i.i, label %nsvg__deletePaths.exit.i, label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %nsvg__deleteStyles.exit.i, %bb.av
  %.09.i.i = phi ptr [ %i.nu, %bb.av ], [ %i.ns, %nsvg__deleteStyles.exit.i ] ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !73 ; 2 uses
  %i.nv = load ptr, ptr %.09.i.i, align 8, !tbaa !63 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.nv, null
  br i1 %.not7.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i7.i
  tail call void @free(ptr noundef nonnull %i.nv) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i7.i
  tail call void @free(ptr noundef nonnull %.09.i.i) #30
  %.not.i8.i = icmp eq ptr %i.nu, null
  br i1 %.not.i8.i, label %nsvg__deletePaths.exit.i, label %.lr.ph.i7.i, !llvm.loop !0

nsvg__deletePaths.exit.i:                         ; preds = %bb.av, %nsvg__deleteStyles.exit.i
  %i.nw = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39984
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !74 ; 2 uses
  %.not5.i.i = icmp eq ptr %i.nx, null
  br i1 %.not5.i.i, label %nsvg__deleteParser.exit, label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %nsvg__deletePaths.exit.i, %.lr.ph.i9.i
  %.06.i.i = phi ptr [ %i.nz, %.lr.ph.i9.i ], [ %i.nx, %nsvg__deletePaths.exit.i ] ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 216
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !77 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 208
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !78
  tail call void @free(ptr noundef %i.ob) #30
  tail call void @free(ptr noundef nonnull %.06.i.i) #30
  %.not.i10.i = icmp eq ptr %i.nz, null
  br i1 %.not.i10.i, label %nsvg__deleteParser.exit, label %.lr.ph.i9.i, !llvm.loop !175

nsvg__deleteParser.exit:                          ; preds = %.lr.ph.i9.i, %nsvg__deletePaths.exit.i
  %i.oc = load ptr, ptr %i.f, align 8, !tbaa !30
  tail call void @nsvgDelete(ptr noundef %i.oc)
  %i.od = getelementptr inbounds nuw i8, ptr %calloc33.i, i64 39944
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.oe) #30
  br label %nsvg__createParser.exit.thread.sink.split

nsvg__createParser.exit.thread.sink.split:        ; preds = %bb.b, %nsvg__deleteParser.exit
  %.0.ph = phi ptr [ %.val.i45, %nsvg__deleteParser.exit ], [ null, %bb.b ]
  tail call void @free(ptr noundef nonnull %calloc33.i) #30
  br label %nsvg__createParser.exit.thread

nsvg__createParser.exit.thread:                   ; preds = %nsvg__createParser.exit.thread.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.ph, %nsvg__createParser.exit.thread.sink.split ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @nsvg__startElement(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
end_hunk_0
begin_hunk_1_@nsvg__startElement:bb.a
  %i.fx = extractelement <2 x float> %i.fs, i64 1
  %i.fy = extractelement <2 x float> %i.ft, i64 0
  %i.fz = extractelement <2 x float> %i.ft, i64 1
  %i.ga = extractelement <2 x float> %i.fv, i64 0
  %i.gb = extractelement <2 x float> %i.fv, i64 1
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.ga, float noundef %i.gb, float noundef %i.fy, float noundef %i.fz, float noundef %i.fw, float noundef %i.fx)
  br label %nsvg__pathArcTo.exit.i

bb.al:                                            ; preds = %bb.aa, %bb.aa
  %.not214.i = icmp eq i8 %.092237.i, 113
  %i.gc = load float, ptr %i.a, align 16, !tbaa !31 ; 2 uses
  br i1 %.not214.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gd = load float, ptr %i.be, align 4, !tbaa !31
  %i.ge = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gd, i64 1
  %i.gg = fadd <2 x float> %i.bl, %i.gf
  %i.gh = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.gi = fadd <2 x float> %i.bl, %i.gh
  br label %nsvg__pathQuadBezTo.exit.i

bb.an:                                            ; preds = %bb.al
  %i.gj = load float, ptr %i.be, align 4, !tbaa !31
  %i.gk = load <2 x float>, ptr %i.bf, align 8, !tbaa !31
  %i.gl = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.gm = insertelement <2 x float> %i.gl, float %i.gj, i64 1
  br label %nsvg__pathQuadBezTo.exit.i

nsvg__pathQuadBezTo.exit.i:                       ; preds = %bb.an, %bb.am
  %i.gn = phi <2 x float> [ %i.gi, %bb.am ], [ %i.gk, %bb.an ] ; 4 uses
  %i.go = phi <2 x float> [ %i.gg, %bb.am ], [ %i.gm, %bb.an ] ; 2 uses
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gq = extractelement <2 x float> %i.gn, i64 0
  %i.gr = extractelement <2 x float> %i.gn, i64 1
  %i.gs = shufflevector <2 x float> %i.bl, <2 x float> %i.gn, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.gt = fsub <4 x float> %i.gp, %i.gs
  %i.gu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gt, <4 x float> splat (float f0x3F2AAAAB), <4 x float> %i.gs) ; 4 uses
  %i.gv = extractelement <4 x float> %i.gu, i64 0
  %i.gw = extractelement <4 x float> %i.gu, i64 1
  %i.gx = extractelement <4 x float> %i.gu, i64 2
  %i.gy = extractelement <4 x float> %i.gu, i64 3
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.gv, float noundef %i.gw, float noundef %i.gx, float noundef %i.gy, float noundef %i.gq, float noundef %i.gr)
  br label %nsvg__pathArcTo.exit.i

bb.ao:                                            ; preds = %bb.aa, %bb.aa
  %.not213.i = icmp eq i8 %.092237.i, 116
  %i.gz = fneg <2 x float> %i.bm
  %i.ha = load <2 x float>, ptr %i.a, align 16    ; 2 uses
  %i.hb = fadd <2 x float> %i.bl, %i.ha
  %i.hc = insertelement <2 x i1> poison, i1 %.not213.i, i64 0
  %i.hd = shufflevector <2 x i1> %i.hc, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.he = select <2 x i1> %i.hd, <2 x float> %i.hb, <2 x float> %i.ha ; 4 uses
  %i.hf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> splat (float 2.000000e+00), <2 x float> %i.gz) ; 2 uses
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.hh = extractelement <2 x float> %i.he, i64 0
  %i.hi = extractelement <2 x float> %i.he, i64 1
  %i.hj = shufflevector <2 x float> %i.bl, <2 x float> %i.he, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.hk = fsub <4 x float> %i.hg, %i.hj
  %i.hl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hk, <4 x float> splat (float f0x3F2AAAAB), <4 x float> %i.hj) ; 4 uses
  %i.hm = extractelement <4 x float> %i.hl, i64 0
  %i.hn = extractelement <4 x float> %i.hl, i64 1
  %i.ho = extractelement <4 x float> %i.hl, i64 2
  %i.hp = extractelement <4 x float> %i.hl, i64 3
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.hm, float noundef %i.hn, float noundef %i.ho, float noundef %i.hp, float noundef %i.hh, float noundef %i.hi)
  br label %nsvg__pathArcTo.exit.i

bb.ap:                                            ; preds = %bb.aa, %bb.aa
  %i.hq = load <2 x float>, ptr %i.a, align 16, !tbaa !31 ; 3 uses
  %i.hr = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hq) ; 4 uses
  %i.hs = load <2 x float>, ptr %i.bg, align 4, !tbaa !31
  %i.ht = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.hs)
  %i.hu = fpext <2 x float> %i.ht to <2 x double> ; 2 uses
  %i.hv = extractelement <2 x double> %i.hu, i64 1
  %i.hw = fcmp ogt double %i.hv, f0x3EB0C6F7A0B5ED8D ; 3 uses
  %i.hx = load <2 x float>, ptr %i.bi, align 4    ; 2 uses
  %i.hy = fadd <2 x float> %i.bl, %i.hx
  %i.hz = insertelement <2 x i1> poison, i1 %.not212.i, i64 0
  %i.ia = shufflevector <2 x i1> %i.hz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ib = select <2 x i1> %i.ia, <2 x float> %i.hy, <2 x float> %i.hx ; 10 uses
  %i.ic = fsub <2 x float> %i.bl, %i.ib           ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ic, %i.ic
  %i.id = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ie = extractelement <2 x float> %i.ic, i64 0 ; 2 uses
  %i.if = call float @llvm.fmuladd.f32(float %i.ie, float %i.ie, float %i.id)
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.if)
  %i.ig = fcmp olt float %sqrt.i.i, f0x358637BD
  %i.ih = extractelement <2 x float> %i.hr, i64 0
  %i.ii = fcmp olt float %i.ih, f0x358637BD
  %or.cond.i145.i = select i1 %i.ig, i1 true, i1 %i.ii
  %i.ij = extractelement <2 x float> %i.hr, i64 1
  %i.ik = fcmp olt float %i.ij, f0x358637BD
  %or.cond3.i.i = select i1 %or.cond.i145.i, i1 true, i1 %i.ik
  br i1 %or.cond3.i.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.il = extractelement <2 x float> %i.ib, i64 0
  %i.im = extractelement <2 x float> %i.ib, i64 1
  call fastcc void @nsvg__lineTo(ptr noundef %0, float noundef %i.il, float noundef %i.im)
  br label %nsvg__pathArcTo.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.in = load float, ptr %i.bf, align 8, !tbaa !31
  %i.io = fdiv float %i.in, 1.800000e+02
  %i.ip = fmul float %i.io, f0x40490FDB           ; 2 uses
  %i.iq = call float @sinf(float noundef %i.ip) #30 ; 5 uses
  %i.ir = call float @cosf(float noundef %i.ip) #30 ; 5 uses
  %i.is = fneg float %i.iq                        ; 3 uses
  %i.it = insertelement <2 x float> poison, float %i.is, i64 0 ; 2 uses
  %i.iu = insertelement <2 x float> %i.it, float %i.iq, i64 1
  %i.iv = fmul <2 x float> %i.ic, %i.iu
  %i.iw = fmul <2 x float> %i.iv, splat (float 5.000000e-01)
  %i.ix = insertelement <2 x float> poison, float %i.ir, i64 0 ; 3 uses
  %i.iy = shufflevector <2 x float> %i.ix, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x float> %i.ic, %i.iy
  %i.ja = fmul <2 x float> %i.iz, splat (float 5.000000e-01)
  %i.jb = shufflevector <2 x float> %i.ja, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jc = fadd <2 x float> %i.iw, %i.jb           ; 7 uses
  %i.jd = fmul <2 x float> %i.jc, %i.jc           ; 3 uses
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jf = fmul <2 x float> %i.hq, %i.hq
  %i.jg = fdiv <2 x float> %i.je, %i.jf
  %i.jh = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jg) ; 2 uses
  %i.ji = fcmp ogt float %i.jh, 1.000000e+00
  %sqrt203.i.i = call float @llvm.sqrt.f32(float %i.jh)
  %i.jj = insertelement <2 x float> poison, float %sqrt203.i.i, i64 0
  %i.jk = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x float> %i.hr, %i.jk
  %i.jm = insertelement <2 x i1> poison, i1 %i.ji, i64 0
  %i.jn = shufflevector <2 x i1> %i.jm, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.jo = select <2 x i1> %i.jn, <2 x float> %i.jl, <2 x float> %i.hr ; 12 uses
  %foldExtExtBinop245 = fmul <2 x float> %i.jo, %i.jo
  %i.jp = extractelement <2 x float> %foldExtExtBinop245, i64 0 ; 3 uses
  %i.jq = extractelement <2 x float> %i.jo, i64 1 ; 2 uses
  %i.jr = fmul float %i.jq, %i.jq                 ; 3 uses
  %i.js = extractelement <2 x float> %i.jd, i64 1 ; 2 uses
  %i.jt = fmul float %i.js, %i.jr
  %i.ju = extractelement <2 x float> %i.jd, i64 0 ; 2 uses
  %i.jv = call float @llvm.fmuladd.f32(float %i.jp, float %i.ju, float %i.jt) ; 2 uses
  %i.jw = fcmp ogt float %i.jv, 0.000000e+00
  br i1 %i.jw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jx = fneg float %i.jr
  %i.jy = fneg float %i.ju
  %i.jz = fmul float %i.jp, %i.jy
  %i.ka = call float @llvm.fmuladd.f32(float %i.jp, float %i.jr, float %i.jz)
  %i.kb = call float @llvm.fmuladd.f32(float %i.jx, float %i.js, float %i.ka) ; 2 uses
  %i.kc = fcmp olt float %i.kb, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.kc, float 0.000000e+00, float %i.kb
  %i.kd = fdiv float %spec.store.select.i.i, %i.jv
  %i.ke = call float @sqrtf(float noundef %i.kd) #30
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0174.i.i = phi float [ %i.ke, %bb.as ], [ 0.000000e+00, %bb.ar ] ; 2 uses
  %i.kf = extractelement <2 x double> %i.hu, i64 0
  %i.kg = fcmp ule double %i.kf, f0x3EB0C6F7A0B5ED8D
  %i.kh = xor i1 %i.kg, %i.hw
  %i.ki = fneg float %.0174.i.i
  %.1.i.i = select i1 %i.kh, float %i.ki, float %.0174.i.i
  %i.kj = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.kk = fneg <2 x float> %i.jo
  %i.kl = shufflevector <2 x float> %i.jo, <2 x float> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.km = insertelement <2 x float> poison, float %.1.i.i, i64 0
  %i.kn = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x float> %i.kl, %i.kn
  %i.kp = fmul <2 x float> %i.jc, %i.ko
  %i.kq = fdiv <2 x float> %i.kp, %i.kj           ; 2 uses
  %i.kr = fadd <2 x float> %i.bl, %i.ib
  %i.ks = fmul <2 x float> %i.kr, splat (float 5.000000e-01)
  %i.kt = insertelement <2 x float> %i.ix, float %i.iq, i64 1
  %i.ku = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.ku, <2 x float> %i.ks)
  %i.kw = insertelement <2 x float> poison, float %i.is, i64 0
  %i.kx = insertelement <2 x float> %i.kw, float %i.ir, i64 1
  %i.ky = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.ky, <2 x float> %i.kv) ; 2 uses
  %i.la = fneg <2 x float> %i.jc
  %i.lb = shufflevector <2 x float> %i.jc, <2 x float> %i.la, <2 x i32> <i32 1, i32 3>
  %i.lc = fsub <2 x float> %i.lb, %i.ku
  %i.ld = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.le = fdiv <2 x float> %i.lc, %i.ld           ; 5 uses
  %i.lf = fneg <2 x float> %i.jc
  %i.lg = shufflevector <2 x float> %i.jc, <2 x float> %i.lf, <2 x i32> <i32 0, i32 2>
  %i.lh = fsub <2 x float> %i.lg, %i.ky
  %i.li = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lj = fdiv <2 x float> %i.lh, %i.li           ; 6 uses
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ll = extractelement <2 x float> %i.lj, i64 0 ; 2 uses
  %i.lm = extractelement <2 x float> %i.le, i64 0 ; 3 uses
  %i.ln = fmul <2 x float> %i.lj, %i.lj
  %i.lo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.le, <2 x float> %i.ln)
  %i.lp = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.lo) ; 3 uses
  %i.lq = fmul float %i.lm, 0.000000e+00
  %i.lr = fcmp olt float %i.ll, %i.lq
  %i.ls = extractelement <2 x float> %i.le, i64 1
  %shift = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop247 = fmul <2 x float> %i.lp, %shift
  %i.lt = fmul float %i.ll, 0.000000e+00
  %shift249 = shufflevector <2 x float> %i.lj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop250 = fmul <2 x float> %i.lj, %shift249
  %i.lu = extractelement <2 x float> %foldExtExtBinop250, i64 0
  %3 = fadd float %i.lm, %i.lt
  %i.lv = call float @llvm.fmuladd.f32(float %i.lm, float %i.ls, float %i.lu)
  %i.lw = insertelement <2 x float> poison, float %i.lv, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %3, i64 1
  %i.ly = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lz = shufflevector <2 x float> %foldExtExtBinop247, <2 x float> %i.ly, <2 x i32> <i32 0, i32 3>
  %i.ma = fdiv <2 x float> %i.lx, %i.lz           ; 2 uses
  %i.mb = fcmp olt <2 x float> %i.ma, splat (float -1.000000e+00)
  %i.mc = select <2 x i1> %i.mb, <2 x float> splat (float -1.000000e+00), <2 x float> %i.ma ; 2 uses
  %i.md = fcmp ogt <2 x float> %i.mc, splat (float 1.000000e+00)
  %i.me = select <2 x i1> %i.md, <2 x float> splat (float 1.000000e+00), <2 x float> %i.mc ; 2 uses
  %i.mf = extractelement <2 x float> %i.me, i64 1
  %i.mg = call float @acosf(float noundef %i.mf) #30 ; 2 uses
  %i.mh = fneg float %i.mg
  %i.mi = select i1 %i.lr, float %i.mh, float %i.mg ; 2 uses
  %i.mj = fmul <2 x float> %i.lk, %i.le           ; 2 uses
  %i.mk = extractelement <2 x float> %i.mj, i64 0
  %i.ml = extractelement <2 x float> %i.mj, i64 1
  %i.mm = fcmp olt float %i.mk, %i.ml
  %i.mn = extractelement <2 x float> %i.me, i64 0
  %i.mo = call float @acosf(float noundef %i.mn) #30 ; 2 uses
  %i.mp = fneg float %i.mo
  %i.mq = select i1 %i.mm, float %i.mp, float %i.mo ; 5 uses
  %i.mr = fcmp ule float %i.mq, 0.000000e+00
  %or.cond5.not.i.i = select i1 %i.hw, i1 true, i1 %i.mr
  br i1 %or.cond5.not.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ms = fadd float %i.mq, f0xC0C90FDB
  br label %bb.ax

bb.av:                                            ; preds = %bb.at
  %i.mt = fcmp olt float %i.mq, 0.000000e+00
  %or.cond7.i.i = select i1 %i.hw, i1 %i.mt, i1 false
  br i1 %or.cond7.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.mu = fadd float %i.mq, f0x40C90FDB
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.0173.i.i = phi float [ %i.ms, %bb.au ], [ %i.mu, %bb.aw ], [ %i.mq, %bb.av ] ; 5 uses
  %i.mv = call float @llvm.fabs.f32(float %.0173.i.i)
  %i.mw = fdiv float %i.mv, f0x3FC90FDB
  %i.mx = fadd float %i.mw, 1.000000e+00
  %i.my = fptosi float %i.mx to i32               ; 3 uses
  %i.mz = uitofp nneg i32 %i.my to float          ; 3 uses
  %i.na = fdiv float %.0173.i.i, %i.mz
  %i.nb = fmul float %i.na, 5.000000e-01          ; 4 uses
  %i.nc = call float @llvm.fabs.f32(float %i.nb)
  %or.cond9.i.i = fcmp olt float %i.nc, 1.000000e-03
  br i1 %or.cond9.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nd = fmul nnan float %i.nb, 5.000000e-01
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.ne = call float @cosf(float noundef %i.nb) #30
  %i.nf = fsub float 1.000000e+00, %i.ne
  %i.ng = call float @sinf(float noundef %i.nb) #30
  %i.nh = fdiv float %i.nf, %i.ng
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.0167.i.i = phi float [ %i.nd, %bb.ay ], [ %i.nh, %bb.az ]
  %i.ni = fdiv float 0.000000e+00, %i.mz
  %i.nj = call float @llvm.fmuladd.f32(float %.0173.i.i, float %i.ni, float %i.mi) ; 2 uses
  %i.nk = call float @cosf(float noundef %i.nj) #30 ; 2 uses
  %i.nl = call float @sinf(float noundef %i.nj) #30 ; 2 uses
  %exitcond.peel.not.i.i = icmp eq i32 %i.my, 0
  br i1 %exitcond.peel.not.i.i, label %nsvg__pathArcTo.exit.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %bb.ba
  %i.nm = fcmp olt float %.0173.i.i, 0.000000e+00
  %i.nn = fmul float %.0167.i.i, f0x3FAAAAAB
  %i.no = call float @llvm.fabs.f32(float %i.nn)  ; 2 uses
  %i.np = fneg float %i.no
  %.0.i146.i = select i1 %i.nm, float %i.np, float %i.no
  %i.nq = fneg float %i.nl
  %i.nr = insertelement <2 x float> poison, float %i.nq, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.nk, i64 1
  %i.nt = fmul <2 x float> %i.jo, %i.ns
  %i.nu = insertelement <2 x float> poison, float %.0.i146.i, i64 0
  %i.nv = shufflevector <2 x float> %i.nu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nw = fmul <2 x float> %i.nv, %i.nt           ; 2 uses
  %i.nx = insertelement <2 x float> %i.ix, float %i.is, i64 1 ; 3 uses
  %i.ny = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nz = fmul <2 x float> %i.nx, %i.ny
  %i.oa = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ob = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.oc = insertelement <2 x float> %i.ob, float %i.ir, i64 1 ; 3 uses
  %i.od = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.oc, <2 x float> %i.nz)
  %i.oe = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.of = insertelement <2 x float> %i.oe, float %i.nl, i64 1
  %i.og = fmul <2 x float> %i.jo, %i.of           ; 2 uses
  %i.oh = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.oi = fmul <2 x float> %i.nx, %i.oh
  %i.oj = shufflevector <2 x float> %i.og, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ok = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oj, <2 x float> %i.oc, <2 x float> %i.oi)
  %i.ol = shufflevector <2 x float> %i.ok, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.om = fadd <2 x float> %i.kz, %i.ol
  %i.on = insertelement <2 x float> %i.it, float %i.ir, i64 1
  %i.oo = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.iq, i64 1
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.peel.next.i.i, %.peel.next.i.preheader.i
  %.0168208.i.i = phi i32 [ %i.py, %.peel.next.i.i ], [ 1, %.peel.next.i.preheader.i ] ; 3 uses
  %i.oq = phi <2 x float> [ %i.pm, %.peel.next.i.i ], [ %i.od, %.peel.next.i.preheader.i ]
  %i.or = phi <2 x float> [ %i.po, %.peel.next.i.i ], [ %i.om, %.peel.next.i.preheader.i ]
  %i.os = uitofp nneg i32 %.0168208.i.i to float
  %i.ot = fdiv float %i.os, %i.mz
  %i.ou = call float @llvm.fmuladd.f32(float %.0173.i.i, float %i.ot, float %i.mi) ; 2 uses
  %i.ov = call float @cosf(float noundef %i.ou) #30 ; 2 uses
  %i.ow = call float @sinf(float noundef %i.ou) #30 ; 2 uses
  %i.ox = insertelement <2 x float> poison, float %i.ov, i64 0
  %i.oy = insertelement <2 x float> %i.ox, float %i.ow, i64 1
  %i.oz = fmul <2 x float> %i.jo, %i.oy           ; 2 uses
  %i.pa = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pb = fmul <2 x float> %i.pa, %i.on
  %i.pc = shufflevector <2 x float> %i.oz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pc, <2 x float> %i.op, <2 x float> %i.pb)
  %i.pe = fneg float %i.ow
  %i.pf = insertelement <2 x float> poison, float %i.pe, i64 0
  %i.pg = insertelement <2 x float> %i.pf, float %i.ov, i64 1
  %i.ph = fmul <2 x float> %i.jo, %i.pg
  %i.pi = fmul <2 x float> %i.nv, %i.ph           ; 2 uses
  %i.pj = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pk = fmul <2 x float> %i.nx, %i.pj
  %i.pl = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.oc, <2 x float> %i.pk) ; 2 uses
  %i.pn = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.po = fadd <2 x float> %i.kz, %i.pd           ; 4 uses
  %i.pp = fadd <2 x float> %i.pn, %i.or           ; 2 uses
  %i.pq = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pr = extractelement <2 x float> %i.po, i64 0
  %i.ps = extractelement <2 x float> %i.po, i64 1
  %i.pt = fsub <2 x float> %i.po, %i.pq           ; 2 uses
  %i.pu = extractelement <2 x float> %i.pp, i64 0
  %i.pv = extractelement <2 x float> %i.pp, i64 1
  %i.pw = extractelement <2 x float> %i.pt, i64 0
  %i.px = extractelement <2 x float> %i.pt, i64 1
  call fastcc void @nsvg__cubicBezTo(ptr noundef %0, float noundef %i.pu, float noundef %i.pv, float noundef %i.pw, float noundef %i.px, float noundef %i.pr, float noundef %i.ps)
  %i.py = add nuw i32 %.0168208.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %.0168208.i.i, %i.my
  br i1 %exitcond.not.i.i, label %nsvg__pathArcTo.exit.i, label %.peel.next.i.i, !llvm.loop !178

bb.bb:                                            ; preds = %bb.aa
  %i.pz = icmp sgt i32 %.189.i, 1
  br i1 %i.pz, label %bb.bc, label %nsvg__pathArcTo.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.qa = zext nneg i32 %.189.i to i64
  %i.qb = getelementptr [4 x i8], ptr %i.a, i64 %i.qa
  %i.qc = getelementptr i8, ptr %i.qb, i64 -8
  %i.qd = load <2 x float>, ptr %i.qc, align 4, !tbaa !31 ; 2 uses
  br label %nsvg__pathArcTo.exit.i

bb.bd:                                            ; preds = %nsvg__isCoordinate.exit.i, %nsvg__getNextPathItem.exit.thread.i
  %i.qe = and i8 %i.cj, -33
  %or.cond7.i = icmp eq i8 %i.qe, 77
  br i1 %or.cond7.i, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.qf = load i32, ptr %i.bb, align 8, !tbaa !83
  %i.qg = icmp sgt i32 %i.qf, 0
  br i1 %i.qg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 0)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  store i32 0, ptr %i.bb, align 8, !tbaa !83
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.qh = icmp eq i8 %.082240.i, 0
  %spec.select.i = select i1 %i.qh, i8 0, i8 %i.cj
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.294.i = phi i8 [ %i.cj, %bb.bg ], [ %spec.select.i, %bb.bh ] ; 3 uses
  %.290.i = phi i32 [ 0, %bb.bg ], [ %.088238.i, %bb.bh ]
  %i.qi = and i8 %.294.i, -33
  %or.cond10.i = icmp eq i8 %i.qi, 90
  br i1 %or.cond10.i, label %bb.bj, label %nsvg__moveTo.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.qj = load i32, ptr %i.bb, align 8, !tbaa !83
  %i.qk = icmp sgt i32 %i.qj, 0
  br i1 %i.qk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ql = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.qm = load <2 x float>, ptr %i.ql, align 4, !tbaa !31 ; 2 uses
  call fastcc void @nsvg__addPath(ptr noundef nonnull %0, i8 noundef signext 1)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
end_hunk_1
