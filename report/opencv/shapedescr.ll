Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/shapedescr?download=true
inline.NumInlined: 1222
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cv16fitEllipseDirectERKNS_11_InputArrayE:bb.a
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.gg = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pn184.in = shl nuw nsw i32 %i.f, 1
  %.pn184 = uitofp nneg i32 %.pn184.in to double
  %.1143.in.in = fdiv double %.0138.lcssa, %.pn184
  %.1143.in = fmul double %.1143.in.in, 1.000000e-02
  %.1143 = fptrunc double %.1143.in to float
  %wide.trip.count456 = zext nneg i32 %i.f to i64
  %i.gq = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 14 uses
  %i.gr = shufflevector <2 x double> %i.ey, <2 x double> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.gs = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %bb.af, %._crit_edge386
  %i.gt = phi i1 [ true, %._crit_edge386 ], [ false, %bb.af ]
  %.0142392 = phi float [ 0.000000e+00, %._crit_edge386 ], [ %.1143, %bb.af ] ; 3 uses
  %i.gu = fneg float %.0142392
  %i.gv = fadd float %.0142392, %.0142392
  %i.gw = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = insertelement <2 x float> poison, float %i.gu, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph390, %bb.x
  %indvars.iv452 = phi i64 [ 0, %.lr.ph390 ], [ %indvars.iv.next453, %bb.x ] ; 8 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv452 ; 2 uses
  br i1 %i.j, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hb = load <2 x float>, ptr %i.ha, align 4
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.hc = load <2 x i32>, ptr %i.ha, align 4, !tbaa !28
  %i.hd = sitofp <2 x i32> %i.hc to <2 x float>
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.he = phi <2 x float> [ %i.hb, %bb.u ], [ %i.hd, %bb.v ]
  %i.hf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN2cv6theRNGEv()
          to label %bb.x unwind label %bb.y       ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !44 ; 2 uses
  %i.hh = and i64 %i.hg, 4294967295
  %i.hi = mul nuw i64 %i.hh, 4164903690
  %i.hj = lshr i64 %i.hg, 32
  %i.hk = add nuw i64 %i.hi, %i.hj                ; 3 uses
  %i.hl = and i64 %i.hk, 4294967295
  %i.hm = mul nuw i64 %i.hl, 4164903690
  %i.hn = lshr i64 %i.hk, 32
  %i.ho = add nuw i64 %i.hm, %i.hn                ; 2 uses
  store i64 %i.ho, ptr %i.hf, align 8, !tbaa !44
  %i.hp = trunc i64 %i.ho to i32
  %i.hq = trunc i64 %i.hk to i32
  %i.hr = uitofp i32 %i.hp to float
  %i.hs = uitofp i32 %i.hq to float
  %i.ht = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.hu = insertelement <2 x float> %i.ht, float %i.hr, i64 1
  %i.hv = fmul nnan <2 x float> %i.hu, splat (float f0x2F800000)
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hv, <2 x float> %i.gx, <2 x float> %i.gz)
  %i.hx = fadd <2 x float> %i.he, %i.hw
  %i.hy = fpext <2 x float> %i.hx to <2 x double>
  %i.hz = fsub <2 x double> %i.hy, %i.el
  %i.ia = load i32, ptr %i.eo, align 4, !tbaa !45
  %i.ib = icmp slt i32 %i.ia, 2                   ; 6 uses
  %i.ic = load ptr, ptr %i.ep, align 8, !tbaa !27 ; 6 uses
  %i.id = load i64, ptr %i.eq, align 8
  %i.ie = mul i64 %i.id, %indvars.iv452
  %.sink.idx.i = select i1 %i.ib, i64 0, i64 %i.ie
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sink.idx.i
  %i.if = fmul <2 x double> %i.gs, %i.hz          ; 4 uses
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x double> %i.ig, %i.if          ; 2 uses
  %i.ii = extractelement <2 x double> %i.ih, i64 0
  store double %i.ii, ptr %.sink.i, align 8, !tbaa !41
  %i.ij = load i64, ptr %i.eq, align 8
  %i.ik = mul i64 %i.ij, %indvars.iv452
  %.sink.idx.i197 = select i1 %i.ib, i64 0, i64 %i.ik
  %.sink.i198 = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sink.idx.i197
  %i.il = getelementptr inbounds nuw i8, ptr %.sink.i198, i64 8
  %i.im = extractelement <2 x double> %i.ih, i64 1
  store double %i.im, ptr %i.il, align 8, !tbaa !41
  %i.in = load i64, ptr %i.eq, align 8
  %i.io = mul i64 %i.in, %indvars.iv452
  %.sink.idx.i199 = select i1 %i.ib, i64 0, i64 %i.io
  %.sink.i200 = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sink.idx.i199
  %i.ip = getelementptr inbounds nuw i8, ptr %.sink.i200, i64 16
  %i.iq = extractelement <2 x double> %i.if, i64 1 ; 3 uses
  %i.ir = fmul double %i.iq, %i.iq
  store double %i.ir, ptr %i.ip, align 8, !tbaa !41
  %i.is = load i64, ptr %i.eq, align 8
  %i.it = mul i64 %i.is, %indvars.iv452
  %.sink.idx.i201 = select i1 %i.ib, i64 0, i64 %i.it
  %.sink.i202 = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sink.idx.i201
  %i.iu = getelementptr inbounds nuw i8, ptr %.sink.i202, i64 24
  %i.iv = extractelement <2 x double> %i.if, i64 0
  store double %i.iv, ptr %i.iu, align 8, !tbaa !41
  %i.iw = load i64, ptr %i.eq, align 8
  %i.ix = mul i64 %i.iw, %indvars.iv452
  %.sink.idx.i203 = select i1 %i.ib, i64 0, i64 %i.ix
  %.sink.i204 = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sink.idx.i203
  %i.iy = getelementptr inbounds nuw i8, ptr %.sink.i204, i64 32
  store double %i.iq, ptr %i.iy, align 8, !tbaa !41
  %i.iz = load i64, ptr %i.eq, align 8
  %i.ja = mul i64 %i.iz, %indvars.iv452
  %.sink.idx.i205 = select i1 %i.ib, i64 0, i64 %i.ja
  %.sink.i206 = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sink.idx.i205
  %i.jb = getelementptr inbounds nuw i8, ptr %.sink.i206, i64 40
  store double 1.000000e+00, ptr %i.jb, align 8, !tbaa !41
  %indvars.iv.next453 = add nuw nsw i64 %indvars.iv452, 1 ; 2 uses
  %exitcond457.not = icmp eq i64 %indvars.iv.next453, %wide.trip.count456
  br i1 %exitcond457.not, label %._crit_edge391, label %bb.t, !llvm.loop !78

bb.y:                                             ; preds = %bb.w
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

._crit_edge391:                                   ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  store i32 0, ptr %i.er, align 8, !tbaa !37
  store i32 0, ptr %i.es, align 4, !tbaa !38
  store i32 16842752, ptr %12, align 8, !tbaa !39
  store ptr %7, ptr %i.et, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  store i32 -1040056314, ptr %13, align 8, !tbaa !39
  store ptr %8, ptr %i.eu, align 8, !tbaa !11
  store i64 25769803782, ptr %i.ev, align 8
  %i.jd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.z unwind label %bb.ab

bb.z:                                             ; preds = %._crit_edge391
  invoke void @_ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %i.jd, double noundef 1.000000e+00, i32 noundef -1)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  %i.je = load double, ptr %8, align 8, !tbaa !41
  %i.jf = fmul double %i.ez, %i.je                ; 2 uses
  store double %i.jf, ptr %8, align 8, !tbaa !41
  %i.jg = load <2 x double>, ptr %i.fb, align 8, !tbaa !41
  %i.jh = fmul <2 x double> %i.gq, %i.jg          ; 2 uses
  store <2 x double> %i.jh, ptr %i.fb, align 8, !tbaa !41
  %i.ji = load double, ptr %i.fe, align 8, !tbaa !41
  %i.jj = load <2 x double>, ptr %i.ff, align 8, !tbaa !41
  %i.jk = fmul <2 x double> %i.gq, %i.jj          ; 2 uses
  store <2 x double> %i.jk, ptr %i.ff, align 8, !tbaa !41
  %i.jl = load double, ptr %i.fg, align 8, !tbaa !41
  %i.jm = fmul double %i.ez, %i.jl                ; 2 uses
  store double %i.jm, ptr %i.fg, align 8, !tbaa !41
  %i.jn = load <2 x double>, ptr %i.fi, align 8
  %i.jo = insertelement <2 x double> %i.jn, double %i.ji, i64 1
  %i.jp = fmul <2 x double> %i.gq, %i.jo          ; 7 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 0
  store double %i.jq, ptr %i.fi, align 8, !tbaa !41
  %i.jr = load double, ptr %i.fk, align 8, !tbaa !41
  %i.js = fmul double %i.ez, %i.jr                ; 2 uses
  store double %i.js, ptr %i.fk, align 8, !tbaa !41
  %i.jt = load <2 x double>, ptr %i.fo, align 8, !tbaa !41
  %i.ju = fmul <2 x double> %i.gq, %i.jt
  store <2 x double> %i.ju, ptr %i.fo, align 8, !tbaa !41
  %i.jv = load double, ptr %i.fp, align 8, !tbaa !41
  %i.jw = fmul double %i.ez, %i.jv
  store double %i.jw, ptr %i.fp, align 8, !tbaa !41
  %i.jx = load double, ptr %i.fs, align 8, !tbaa !41
  %i.jy = load <2 x double>, ptr %i.ft, align 8, !tbaa !41
  %i.jz = fmul <2 x double> %i.gq, %i.jy
  store <2 x double> %i.jz, ptr %i.ft, align 8, !tbaa !41
  %i.ka = load double, ptr %i.fu, align 8, !tbaa !41
  %i.kb = fmul double %i.ez, %i.ka
  store double %i.kb, ptr %i.fu, align 8, !tbaa !41
  %i.kc = load double, ptr %i.fv, align 8, !tbaa !41
  %i.kd = load <2 x double>, ptr %i.fx, align 8, !tbaa !41
  %i.ke = fmul <2 x double> %i.gq, %i.kd
  store <2 x double> %i.ke, ptr %i.fx, align 8, !tbaa !41
  %i.kf = load double, ptr %i.fy, align 8, !tbaa !41
  %i.kg = fmul double %i.ez, %i.kf
  store double %i.kg, ptr %i.fy, align 8, !tbaa !41
  %i.kh = load double, ptr %i.gb, align 8, !tbaa !41
  %i.ki = fmul double %i.ez, %i.kh                ; 4 uses
  store double %i.ki, ptr %i.gb, align 8, !tbaa !41
  %i.kj = load <2 x double>, ptr %i.fq, align 8, !tbaa !41 ; 2 uses
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kl = insertelement <2 x double> %i.kk, double %i.jx, i64 0 ; 2 uses
  %i.km = fmul <2 x double> %i.gq, %i.kl          ; 11 uses
  %i.kn = extractelement <2 x double> %i.km, i64 1 ; 3 uses
  store double %i.kn, ptr %i.fq, align 8, !tbaa !41
  %i.ko = shufflevector <2 x double> %i.kj, <2 x double> %i.kl, <2 x i32> <i32 1, i32 2>
  %i.kp = fmul <2 x double> %i.gq, %i.ko          ; 7 uses
  %i.kq = extractelement <2 x double> %i.kp, i64 0 ; 2 uses
  store double %i.kq, ptr %i.fr, align 8, !tbaa !41
  %i.kr = extractelement <2 x double> %i.km, i64 0 ; 2 uses
  store double %i.kr, ptr %i.fs, align 8, !tbaa !41
  %i.ks = load <2 x double>, ptr %i.fw, align 8, !tbaa !41 ; 2 uses
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ku = insertelement <2 x double> %i.kt, double %i.kc, i64 1
  %i.kv = fmul <2 x double> %i.gq, %i.ku          ; 4 uses
  %i.kw = extractelement <2 x double> %i.kv, i64 1 ; 3 uses
  store double %i.kw, ptr %i.fv, align 8, !tbaa !41
  %i.kx = fmul <2 x double> %i.gq, %i.ks          ; 8 uses
  %i.ky = extractelement <2 x double> %i.kx, i64 0 ; 3 uses
  store <2 x double> %i.kx, ptr %i.fw, align 8, !tbaa !41
  %i.kz = load <2 x double>, ptr %i.fz, align 8, !tbaa !41
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lb = fmul <2 x double> %i.gq, %i.la          ; 11 uses
  %i.lc = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ld = extractelement <2 x double> %i.lb, i64 1 ; 4 uses
  store double %i.ld, ptr %i.fz, align 8, !tbaa !41
  %i.le = extractelement <2 x double> %i.lb, i64 0 ; 4 uses
  store double %i.le, ptr %i.ga, align 8, !tbaa !41
  %i.lf = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.lg = fmul <2 x double> %i.lf, %i.kp          ; 2 uses
  %i.lh = fmul <2 x double> %i.lf, %i.km          ; 2 uses
  %i.li = fneg <2 x double> %i.kv                 ; 7 uses
  %i.lj = fmul <2 x double> %i.lg, %i.li
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.kx, <2 x double> %i.lj)
  %i.ll = fneg <2 x double> %i.km
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> %i.km, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ln = shufflevector <2 x double> %i.kx, <2 x double> %i.li, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.lo = fneg <2 x double> %i.km
  %i.lp = shufflevector <2 x double> %i.kp, <2 x double> %i.lo, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.lq = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.lr = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %foldExtExtBinop551 = fmul <2 x double> %i.jp, %i.kp ; 2 uses
  %i.ls = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lt = fmul <2 x double> %i.ls, %i.km          ; 3 uses
  %i.lu = shufflevector <2 x double> %foldExtExtBinop551, <2 x double> %i.lt, <2 x i32> <i32 0, i32 2>
  %i.lv = fmul <2 x double> %i.lu, %i.li
  %i.lw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.kx, <2 x double> %i.lv)
  %i.lx = load <2 x double>, ptr %i.fc, align 8, !tbaa !41 ; 2 uses
  %i.ly = load <2 x double>, ptr %i.fh, align 8, !tbaa !41 ; 2 uses
  %i.lz = shufflevector <2 x double> %i.lx, <2 x double> %i.ly, <2 x i32> <i32 0, i32 2>
  %i.ma = fmul <2 x double> %i.gq, %i.lz          ; 8 uses
  %i.mb = extractelement <2 x double> %i.ma, i64 0
  store double %i.mb, ptr %i.fc, align 8, !tbaa !41
  %i.mc = shufflevector <2 x double> %i.lx, <2 x double> %i.ly, <2 x i32> <i32 1, i32 3>
  %i.md = fmul <2 x double> %i.gq, %i.mc          ; 8 uses
  %i.me = shufflevector <2 x double> %i.md, <2 x double> %i.jp, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.me, ptr %i.fd, align 8, !tbaa !41
  %i.mf = shufflevector <2 x double> %i.ma, <2 x double> %i.md, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.mf, ptr %i.fh, align 8, !tbaa !41
  %i.mg = load <2 x double>, ptr %i.fj, align 8, !tbaa !41
  %i.mh = fmul <2 x double> %i.gq, %i.mg          ; 2 uses
  store <2 x double> %i.mh, ptr %i.fj, align 8, !tbaa !41
  %i.mi = load <3 x double>, ptr %i.fl, align 8, !tbaa !41
  %i.mj = fmul <3 x double> %i.gr, %i.mi          ; 10 uses
  %i.mk = shufflevector <3 x double> %i.mj, <3 x double> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %i.ml = extractelement <3 x double> %i.mj, i64 0 ; 3 uses
  store double %i.ml, ptr %i.fl, align 8, !tbaa !41
  %i.mm = extractelement <3 x double> %i.mj, i64 1 ; 4 uses
  store double %i.mm, ptr %i.fm, align 8, !tbaa !41
  %i.mn = extractelement <3 x double> %i.mj, i64 2 ; 2 uses
  store double %i.mn, ptr %i.fn, align 8, !tbaa !41
  %i.mo = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mp = fmul <2 x double> %i.mo, %i.lm
  %i.mq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mp, <2 x double> %i.lb, <2 x double> %i.lk)
  %i.mr = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ms = fmul <2 x double> %i.mr, %i.ln
  %i.mt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> %i.lb, <2 x double> %i.mq)
  %i.mu = fmul <2 x double> %i.mo, %i.lp
  %i.mv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.lr, <2 x double> %i.mt)
  %19 = fneg double %i.ky                         ; 4 uses
  %20 = fneg double %i.kq                         ; 2 uses
  %21 = insertelement <2 x double> %i.kv, double %19, i64 0 ; 3 uses
  %i.mw = fmul <2 x double> %i.mr, %21
  %i.mx = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.my = fmul <2 x double> %i.mx, %i.lm
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %i.lb, <2 x double> %i.lw)
  %i.na = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.nb = fmul <2 x double> %i.na, %i.ln
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.lb, <2 x double> %i.mz)
  %i.nd = fmul <2 x double> %i.mx, %i.lp
  %i.ne = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> %i.lr, <2 x double> %i.nc)
  %i.nf = fmul <2 x double> %i.na, %21
  %i.ng = shufflevector <3 x double> %i.mj, <3 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.nh = fmul <2 x double> %i.ng, %i.kp          ; 2 uses
  %i.ni = fmul <2 x double> %i.ng, %i.km          ; 2 uses
  %i.nj = fmul <2 x double> %i.nh, %i.li
  %i.nk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.kx, <2 x double> %i.nj)
  %i.nl = shufflevector <3 x double> %i.mj, <3 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.nm = fmul <2 x double> %i.nl, %i.lm
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.lb, <2 x double> %i.nk)
  %i.no = shufflevector <3 x double> %i.mj, <3 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.np = fmul <2 x double> %i.no, %i.ln
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.lb, <2 x double> %i.nn)
  %i.nr = fmul <2 x double> %i.nl, %i.lp
  %i.ns = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nr, <2 x double> %i.lr, <2 x double> %i.nq)
  %i.nt = fmul <2 x double> %i.no, %21
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> %i.lr, <2 x double> %i.mv) ; 5 uses
  %i.nv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nf, <2 x double> %i.lr, <2 x double> %i.ne) ; 5 uses
  %i.nw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.lr, <2 x double> %i.ns) ; 7 uses
  %i.nx = shufflevector <2 x double> %i.lh, <2 x double> %i.lt, <2 x i32> <i32 1, i32 3>
  %22 = insertelement <2 x double> poison, double %19, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ny = fmul <2 x double> %i.nx, %23
  %i.nz = shufflevector <2 x double> %i.lg, <2 x double> %foldExtExtBinop551, <2 x i32> <i32 0, i32 2>
  %i.oa = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nz, <2 x double> %i.oa, <2 x double> %i.ny)
  %24 = insertelement <2 x double> poison, double %20, i64 0
  %i.oc = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %i.od = fmul <2 x double> %i.md, %i.oc
  %i.oe = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.of = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.oe, <2 x double> %i.ob)
  %i.og = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oh = fmul <2 x double> %i.ma, %i.og
  %i.oi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oh, <2 x double> %i.oe, <2 x double> %i.of)
  %i.oj = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ok = fmul <2 x double> %i.md, %i.oj
  %i.ol = shufflevector <2 x double> %i.lb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.om = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ok, <2 x double> %i.ol, <2 x double> %i.oi)
  %i.on = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.oo = fmul <2 x double> %i.ma, %i.on
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> %i.ol, <2 x double> %i.om) ; 6 uses
  %i.oq = extractelement <2 x double> %i.ni, i64 1
  %25 = fmul double %i.oq, %19
  %i.or = extractelement <2 x double> %i.nh, i64 0
  %i.os = fmul double %i.mm, %20
  %i.ot = fmul double %i.ml, %i.ky
  %i.ou = call double @llvm.fmuladd.f64(double %i.or, double %i.kw, double %25)
  %i.ov = call double @llvm.fmuladd.f64(double %i.os, double %i.ld, double %i.ou)
  %i.ow = call double @llvm.fmuladd.f64(double %i.ot, double %i.ld, double %i.ov)
  %shift555 = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop556.a = fmul <2 x double> %i.kp, %shift555
  %i.ox = extractelement <2 x double> %foldExtExtBinop556.a, i64 0
  %i.oy = fmul double %i.mm, %i.kn
  %i.oz = fmul double %i.ox, %i.ld
  %i.pa = call double @llvm.fmuladd.f64(double %i.oy, double %i.le, double %i.ow)
  %i.pb = shufflevector <2 x double> %i.km, <2 x double> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.pc = shufflevector <3 x double> %i.pb, <3 x double> %i.mk, <2 x i32> <i32 0, i32 4>
  %26 = insertelement <2 x double> %i.li, double %19, i64 0
  %i.pd = fmul <2 x double> %i.pc, %26
  %i.pe = insertelement <2 x double> poison, double %i.oz, i64 0
  %i.pf = insertelement <2 x double> %i.pe, double %i.pa, i64 1
  %i.pg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.lc, <2 x double> %i.pf) ; 4 uses
  %i.ph = fmul double %i.kr, %i.kw
  %i.pi = extractelement <2 x double> %i.pg, i64 0
  %i.pj = call double @llvm.fmuladd.f64(double %i.ph, double %i.le, double %i.pi)
  %i.pk = shufflevector <2 x double> %i.km, <2 x double> %i.kp, <2 x i32> <i32 1, i32 2>
  %i.pl = fmul <2 x double> %i.pk, %i.li          ; 2 uses
  %i.pm = extractelement <2 x double> %i.pl, i64 0
  %i.pn = call double @llvm.fmuladd.f64(double %i.pm, double %i.le, double %i.pj)
  %i.po = extractelement <2 x double> %i.pl, i64 1
  %i.pp = call double @llvm.fmuladd.f64(double %i.po, double %i.ki, double %i.pn)
  %i.pq = fmul double %i.kn, %i.ky
  %i.pr = call double @llvm.fmuladd.f64(double %i.pq, double %i.ki, double %i.pp) ; 4 uses
  %i.ps = call double @llvm.fabs.f64(double %i.pr)
  %i.pt = fcmp olt double %i.ps, f0x3CB0000000000000
  br i1 %i.pt, label %bb.af, label %bb.ac

bb.ab:                                            ; preds = %bb.z, %._crit_edge391
  %i.pu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  br label %bb.aq

bb.ac:                                            ; preds = %bb.aa
  %i.pv = shufflevector <3 x double> %i.mj, <3 x double> poison, <2 x i32> zeroinitializer
  %i.pw = shufflevector <3 x double> %i.mj, <3 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.px = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.py = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pz = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qa = shufflevector <2 x double> %i.nu, <2 x double> %i.nv, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qb = fmul <2 x double> %i.pw, %i.qa
  %i.qc = shufflevector <2 x double> %i.nu, <2 x double> %i.nv, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pv, <2 x double> %i.qc, <2 x double> %i.qb)
  %i.qe = shufflevector <3 x double> %i.mj, <3 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.qf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> %i.op, <2 x double> %i.qd)
  %i.qg = insertelement <2 x double> poison, double %i.pr, i64 0
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.qi = fdiv <2 x double> %i.qf, %i.qh
  %i.qj = fadd <2 x double> %i.mh, %i.qi
  %i.qk = fmul <2 x double> %i.qj, splat (double 5.000000e-01)
  store <2 x double> %i.qk, ptr %9, align 16, !tbaa !41
  %i.ql = extractelement <2 x double> %i.nw, i64 1
  %i.qm = fmul double %i.mm, %i.ql
  %i.qn = extractelement <2 x double> %i.nw, i64 0
  %i.qo = call double @llvm.fmuladd.f64(double %i.ml, double %i.qn, double %i.qm)
  %i.qp = extractelement <2 x double> %i.pg, i64 1 ; 2 uses
  %i.qq = call double @llvm.fmuladd.f64(double %i.mn, double %i.qp, double %i.qo)
  %i.qr = fdiv double %i.qq, %i.pr
  %i.qs = fadd double %i.js, %i.qr
  %i.qt = fmul double %i.qs, 5.000000e-01
  store double %i.qt, ptr %i.gc, align 16, !tbaa !41
  %i.qu = fneg <2 x double> %i.jk
  %i.qv = fmul <2 x double> %i.py, %i.qa
  %i.qw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.px, <2 x double> %i.qc, <2 x double> %i.qv)
  %i.qx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ls, <2 x double> %i.op, <2 x double> %i.qw)
  %i.qy = fdiv <2 x double> %i.qx, %i.qh
  %i.qz = fsub <2 x double> %i.qu, %i.qy
  store <2 x double> %i.qz, ptr %i.gd, align 8, !tbaa !41
  %i.ra = fneg double %i.jm
  %i.rb = shufflevector <2 x double> %i.nu, <2 x double> %i.nw, <2 x i32> <i32 1, i32 3>
  %i.rc = fmul <2 x double> %i.md, %i.rb
  %i.rd = shufflevector <2 x double> %i.nu, <2 x double> %i.nw, <2 x i32> <i32 0, i32 2>
  %i.re = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ma, <2 x double> %i.rd, <2 x double> %i.rc)
  %i.rf = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rg = shufflevector <2 x double> %i.pg, <2 x double> %i.op, <2 x i32> <i32 1, i32 2>
  %i.rh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.rg, <2 x double> %i.rf)
  %i.ri = fdiv <2 x double> %i.rh, %i.qh          ; 2 uses
  %i.rj = insertelement <2 x double> poison, double %i.ra, i64 0
  %i.rk = insertelement <2 x double> %i.rj, double %i.jf, i64 1 ; 2 uses
  %i.rl = fsub <2 x double> %i.rk, %i.ri
  %i.rm = fadd <2 x double> %i.rk, %i.ri
  %i.rn = shufflevector <2 x double> %i.rl, <2 x double> %i.rm, <2 x i32> <i32 0, i32 3>
  %i.ro = fmul <2 x double> %i.rn, <double 1.000000e+00, double 5.000000e-01>
  store <2 x double> %i.ro, ptr %i.ge, align 8, !tbaa !41
  %i.rp = shufflevector <2 x double> %i.nv, <2 x double> %i.nw, <2 x i32> <i32 1, i32 3>
  %i.rq = fmul <2 x double> %i.mo, %i.rp
  %i.rr = shufflevector <2 x double> %i.nv, <2 x double> %i.nw, <2 x i32> <i32 0, i32 2>
  %i.rs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> %i.rr, <2 x double> %i.rq)
  %i.rt = shufflevector <2 x double> %i.op, <2 x double> %i.pg, <2 x i32> <i32 1, i32 3>
  %i.ru = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.rt, <2 x double> %i.rs)
  %i.rv = fdiv <2 x double> %i.ru, %i.qh
  %i.rw = fadd <2 x double> %i.jh, %i.rv
  %i.rx = fmul <2 x double> %i.rw, splat (double 5.000000e-01)
  store <2 x double> %i.rx, ptr %i.gf, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  store i32 -1056833530, ptr %14, align 8, !tbaa !39
  store ptr %9, ptr %i.gh, align 8, !tbaa !11
  store i64 12884901891, ptr %i.gg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  store i64 0, ptr %i.gj, align 8
  store i32 33619968, ptr %15, align 8, !tbaa !39
  store ptr %10, ptr %i.gi, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  store i64 0, ptr %i.gl, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !39
  store ptr %11, ptr %i.gk, align 8, !tbaa !11
  invoke void @_ZN2cv17eigenNonSymmetricERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  %i.rz = load i32, ptr %i.gm, align 4, !tbaa !45
  %i.sa = load ptr, ptr %i.gn, align 8, !tbaa !27 ; 5 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 16
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !41
  %i.sd = icmp slt i32 %i.rz, 2                   ; 3 uses
  %i.se = load i64, ptr %i.go, align 8            ; 3 uses
  %.sink.idx.i215 = select i1 %i.sd, i64 0, i64 %i.se
  %.sink.i216 = getelementptr inbounds nuw i8, ptr %i.sa, i64 %.sink.idx.i215 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %.sink.i216, i64 16
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !41
  %i.sh = load <2 x double>, ptr %i.sa, align 8, !tbaa !41 ; 2 uses
  %i.si = load <2 x double>, ptr %.sink.i216, align 8, !tbaa !41 ; 2 uses
  %i.sj = shufflevector <2 x double> %i.sh, <2 x double> %i.si, <2 x i32> <i32 0, i32 2>
  %i.sk = fmul <2 x double> %i.sj, splat (double 4.000000e+00)
  %i.sl = shufflevector <2 x double> %i.sh, <2 x double> %i.si, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.sm = fneg <2 x double> %i.sl
  %i.sn = fmul <2 x double> %i.sl, %i.sm
  %i.so = insertelement <2 x double> poison, double %i.sc, i64 0
  %i.sp = insertelement <2 x double> %i.so, double %i.sg, i64 1
  %i.sq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sk, <2 x double> %i.sp, <2 x double> %i.sn) ; 3 uses
  store <2 x double> %i.sq, ptr %i.a, align 16, !tbaa !41
  %i.sr = shl i64 %i.se, 1
  %.sink.idx.i223 = select i1 %i.sd, i64 0, i64 %i.sr
  %.sink.i224 = getelementptr inbounds nuw i8, ptr %i.sa, i64 %.sink.idx.i223 ; 3 uses
  %i.ss = load double, ptr %.sink.i224, align 8, !tbaa !41
  %i.st = fmul double %i.ss, 4.000000e+00
  %i.su = getelementptr inbounds nuw i8, ptr %.sink.i224, i64 16
  %i.sv = load double, ptr %i.su, align 8, !tbaa !41
  %i.sw = getelementptr inbounds nuw i8, ptr %.sink.i224, i64 8
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !41 ; 2 uses
  %i.sy = fneg double %i.sx
  %i.sz = fmul double %i.sx, %i.sy
  %i.ta = call double @llvm.fmuladd.f64(double %i.st, double %i.sv, double %i.sz) ; 3 uses
  store double %i.ta, ptr %i.gp, align 16, !tbaa !41
  %i.tb = extractelement <2 x double> %i.sq, i64 0 ; 2 uses
  %i.tc = extractelement <2 x double> %i.sq, i64 1 ; 2 uses
  %i.td = fcmp olt double %i.tb, %i.tc
  %i.te = fcmp olt double %i.tc, %i.ta
  %i.tf = select i1 %i.te, i64 2, i64 1
  %i.tg = fcmp olt double %i.tb, %i.ta
  %i.th = select i1 %i.tg, i64 2, i64 0
  %.4 = select i1 %i.td, i64 %i.tf, i64 %i.th     ; 2 uses
  %i.ti = mul i64 %i.se, %.4
  %.sink.idx.i231 = select i1 %i.sd, i64 0, i64 %i.ti
  %.sink.i232 = getelementptr inbounds nuw i8, ptr %i.sa, i64 %.sink.idx.i231 ; 3 uses
  %i.tj = load double, ptr %.sink.i232, align 8, !tbaa !41 ; 4 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.sink.i232, i64 8
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !41 ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.sink.i232, i64 16
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !41 ; 4 uses
  %i.to = fmul double %i.tl, %i.tl
  %i.tp = call double @llvm.fmuladd.f64(double %i.tj, double %i.tj, double %i.to)
  %i.tq = call double @llvm.fmuladd.f64(double %i.tn, double %i.tn, double %i.tp) ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.4
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !41
  %i.tt = fmul double %i.tq, f0x3EB0C6F7A0B5ED8D
  %i.tu = fcmp ogt double %i.ts, %i.tt
  br i1 %i.tu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.aa
  br i1 %i.gt, label %.lr.ph390, label %bb.am, !llvm.loop !79

bb.ag:                                            ; preds = %bb.ae
  %sqrt353 = call double @llvm.sqrt.f64(double %i.tq) ; 2 uses
  %i.tv = fcmp olt double %i.tl, 0.000000e+00
  %i.tw = select i1 %i.tv, i32 -1, i32 1          ; 2 uses
  %i.tx = fcmp olt double %i.tj, 0.000000e+00
  %i.ty = sub nsw i32 0, %i.tw
  %i.tz = select i1 %i.tx, i32 %i.ty, i32 %i.tw   ; 2 uses
  %i.ua = fcmp olt double %i.tn, 0.000000e+00
  %i.ub = sub nsw i32 0, %i.tz
  %i.uc = select i1 %i.ua, i32 %i.ub, i32 %i.tz
  %i.ud = icmp slt i32 %i.uc, 1
  %i.ue = fneg double %sqrt353
  %.0135 = select i1 %i.ud, double %i.ue, double %sqrt353 ; 2 uses
  %i.uf = insertelement <2 x double> poison, double %i.tn, i64 0
  %i.ug = insertelement <2 x double> %i.uf, double %i.tj, i64 1
  %i.uh = insertelement <2 x double> poison, double %.0135, i64 0
  %i.ui = shufflevector <2 x double> %i.uh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uj = fdiv <2 x double> %i.ug, %i.ui          ; 6 uses
  %i.uk = shufflevector <2 x double> %i.uj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ul = shufflevector <2 x double> %i.uj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.um = extractelement <2 x double> %i.uj, i64 1 ; 7 uses
  %i.un = extractelement <2 x double> %i.uj, i64 0 ; 6 uses
  %i.uo = fmul double %i.um, %i.un
  %i.up = fsub double %i.um, %i.un                ; 3 uses
  %i.uq = fmul double %i.up, %i.up
end_hunk_0
