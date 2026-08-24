Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_compand?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@config_output:bb.a
  br i1 %exitcond466.not, label %._crit_edge421.thread523, label %.lr.ph420, !llvm.loop !87

._crit_edge421.thread523:                         ; preds = %._crit_edge493, %bb.aa
  %.4332.lcssa526 = phi i32 [ 1, %bb.aa ], [ %.0, %._crit_edge493 ] ; 3 uses
  %.pre496.pre527 = load ptr, ptr %i.au, align 8, !tbaa !62 ; 3 uses
  %i.el = shl nuw nsw i32 %.4332.lcssa526, 1
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %.pre496.pre527, i64 %i.em
  %i.eo = load double, ptr %i.en, align 8, !tbaa !63
  %i.ep = fcmp nsz une double %i.eo, 0.000000e+00
  br i1 %i.ep, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge421.thread, %._crit_edge421.thread523
  %.pre496.pre522 = phi ptr [ %.pre496.pre519, %._crit_edge421.thread ], [ %.pre496.pre527, %._crit_edge421.thread523 ]
  %.4332.lcssa520 = phi i32 [ 0, %._crit_edge421.thread ], [ %.4332.lcssa526, %._crit_edge421.thread523 ]
  %i.eq = add nuw nsw i32 %.4332.lcssa520, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge421.thread523
  %.pre496.pre521 = phi ptr [ %.pre496.pre522, %bb.ad ], [ %.pre496.pre527, %._crit_edge421.thread523 ] ; 3 uses
  %.0334 = phi i32 [ %i.eq, %bb.ad ], [ %.4332.lcssa526, %._crit_edge421.thread523 ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.pre496.pre521, i64 64
  %i.es = load double, ptr %i.g, align 8, !tbaa !73
  %i.et = load <2 x double>, ptr %i.er, align 8, !tbaa !57
  %i.eu = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.es, i64 0
  %i.ev = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> <double -2.000000e+00, double 0.000000e+00>, <2 x double> %i.et)
  store <2 x double> %i.ev, ptr %.pre496.pre521, align 8, !tbaa !57
  %i.ew = icmp sgt i32 %.0334, 1
  br i1 %i.ew, label %.lr.ph429.preheader, label %.preheader395

.lr.ph429.preheader:                              ; preds = %bb.ae
  %i.ex = add nuw nsw i32 %.0334, 1
  br label %.lr.ph429

.preheader395.loopexit:                           ; preds = %.loopexit
  %.pre497.pre.pre = load ptr, ptr %i.au, align 8, !tbaa !62
  br label %.preheader395

.preheader395:                                    ; preds = %.preheader395.loopexit, %bb.ae
  %.pre497.pre = phi ptr [ %.pre497.pre.pre, %.preheader395.loopexit ], [ %.pre496.pre521, %bb.ae ] ; 7 uses
  %i.ey = load i32, ptr %i.ar, align 8, !tbaa !61 ; 4 uses
  %i.ez = icmp sgt i32 %i.ey, 0
  br i1 %i.ez, label %.lr.ph431, label %.lr.ph439

.lr.ph431:                                        ; preds = %.preheader395
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !88 ; 3 uses
  %i.fc = zext nneg i32 %i.ey to i64
  %i.fd = add nsw i64 %i.fc, -1                   ; 2 uses
  %i.fe = lshr i64 %i.fd, 1                       ; 2 uses
  %i.ff = add nuw i64 %i.fe, 1                    ; 2 uses
  %i.fg = icmp eq i64 %i.fe, 0
  br i1 %i.fg, label %.epil.preheader, label %.lr.ph431.new

.lr.ph431.new:                                    ; preds = %.lr.ph431
  %unroll_iter = and i64 %i.ff, -2
  br label %bb.ah

.lr.ph429:                                        ; preds = %.lr.ph429.preheader, %.loopexit
  %.1335427 = phi i32 [ %.2336, %.loopexit ], [ %i.ex, %.lr.ph429.preheader ] ; 5 uses
  %.4341426 = phi i32 [ %.5342, %.loopexit ], [ 2, %.lr.ph429.preheader ] ; 9 uses
  %i.fh = load ptr, ptr %i.au, align 8, !tbaa !62 ; 3 uses
  %i.fi = shl i32 %.4341426, 1                    ; 3 uses
  %i.fj = add i32 %i.fi, -2
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [32 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = add i32 %i.fi, -4
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [32 x i8], ptr %i.fh, i64 %i.fn
  %i.fp = sext i32 %i.fi to i64
  %i.fq = getelementptr inbounds [32 x i8], ptr %i.fh, i64 %i.fp
  %i.fr = load <2 x double>, ptr %i.fl, align 8, !tbaa !57 ; 2 uses
  %i.fs = load <2 x double>, ptr %i.fq, align 8, !tbaa !57
  %i.ft = fsub nsz <2 x double> %i.fs, %i.fr
  %i.fu = load <2 x double>, ptr %i.fo, align 8, !tbaa !57
  %i.fv = fsub nsz <2 x double> %i.fr, %i.fu
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fx = fmul nsz <2 x double> %i.ft, %i.fw      ; 2 uses
  %shift = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub nsz <2 x double> %i.fx, %shift
  %i.fy = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.fz = fcmp nsz une double %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph429
  %i.ga = add nsw i32 %.4341426, 1
  br label %.loopexit

bb.ag:                                            ; preds = %.lr.ph429
  %i.gb = add nsw i32 %.1335427, -1               ; 4 uses
  %i.gc = icmp slt i32 %.4341426, %.1335427
  br i1 %i.gc, label %.lr.ph425.preheader, label %.loopexit

.lr.ph425.preheader:                              ; preds = %bb.ag
  %i.gd = add i32 %.4341426, -1
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  %i.gf = sub i32 %.1335427, %.4341426
  %.neg = add i32 %.4341426, 1
  %xtraiter547 = and i32 %i.gf, 1
  %lcmp.mod548.not = icmp eq i32 %xtraiter547, 0
  br i1 %lcmp.mod548.not, label %.lr.ph425.prol.loopexit, label %.lr.ph425.prol

.lr.ph425.prol:                                   ; preds = %.lr.ph425.preheader
  %i.gg = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  %.idx516.prol = shl nsw i64 %i.ge, 6
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %.idx516.prol
  %indvars.iv.next471.prol = add nsw i64 %i.ge, 1 ; 2 uses
  %.idx517.prol = shl nsw i64 %indvars.iv.next471.prol, 6
  %i.gi = getelementptr inbounds i8, ptr %i.gg, i64 %.idx517.prol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gh, ptr noundef nonnull align 8 dereferenceable(32) %i.gi, i64 32, i1 false), !tbaa.struct !89
  br label %.lr.ph425.prol.loopexit

.lr.ph425.prol.loopexit:                          ; preds = %.lr.ph425.prol, %.lr.ph425.preheader
  %indvars.iv470.unr = phi i64 [ %i.ge, %.lr.ph425.preheader ], [ %indvars.iv.next471.prol, %.lr.ph425.prol ]
  %i.gj = icmp eq i32 %.1335427, %.neg
  br i1 %i.gj, label %.loopexit, label %.lr.ph425

.lr.ph425:                                        ; preds = %.lr.ph425.prol.loopexit, %.lr.ph425
  %indvars.iv470 = phi i64 [ %indvars.iv.next471.1, %.lr.ph425 ], [ %indvars.iv470.unr, %.lr.ph425.prol.loopexit ] ; 3 uses
  %i.gk = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  %.idx516 = shl nsw i64 %indvars.iv470, 6
  %i.gl = getelementptr inbounds i8, ptr %i.gk, i64 %.idx516
  %indvars.iv.next471 = add nsw i64 %indvars.iv470, 1 ; 2 uses
  %.idx517 = shl nsw i64 %indvars.iv.next471, 6
  %i.gm = getelementptr inbounds i8, ptr %i.gk, i64 %.idx517
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gl, ptr noundef nonnull align 8 dereferenceable(32) %i.gm, i64 32, i1 false), !tbaa.struct !89
  %i.gn = load ptr, ptr %i.au, align 8, !tbaa !62 ; 2 uses
  %.idx516.1 = shl nsw i64 %indvars.iv.next471, 6
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 %.idx516.1
  %indvars.iv.next471.1 = add nsw i64 %indvars.iv470, 2 ; 3 uses
  %.idx517.1 = shl nsw i64 %indvars.iv.next471.1, 6
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 %.idx517.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.go, ptr noundef nonnull align 8 dereferenceable(32) %i.gp, i64 32, i1 false), !tbaa.struct !89
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next471.1 to i32
  %exitcond473.not.1 = icmp eq i32 %i.gb, %lftr.wideiv.1
  br i1 %exitcond473.not.1, label %.loopexit, label %.lr.ph425, !llvm.loop !90

.loopexit:                                        ; preds = %.lr.ph425.prol.loopexit, %.lr.ph425, %bb.ag, %bb.af
  %.5342 = phi i32 [ %i.ga, %bb.af ], [ %.4341426, %bb.ag ], [ %.4341426, %.lr.ph425 ], [ %.4341426, %.lr.ph425.prol.loopexit ] ; 2 uses
  %.2336 = phi i32 [ %.1335427, %bb.af ], [ %i.gb, %bb.ag ], [ %i.gb, %.lr.ph425 ], [ %i.gb, %.lr.ph425.prol.loopexit ] ; 2 uses
  %i.gq = icmp slt i32 %.5342, %.2336
  br i1 %i.gq, label %.lr.ph429, label %.preheader395.loopexit, !llvm.loop !91

.preheader.unr-lcssa:                             ; preds = %bb.ah
  %i.gr = and i64 %i.fd, 2
  %lcmp.mod551.not.not = icmp eq i64 %i.gr, 0
  br i1 %lcmp.mod551.not.not, label %.epil.preheader, label %.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %.lr.ph431
  %indvars.iv474.epil.init = phi i64 [ 0, %.lr.ph431 ], [ %indvars.iv.next475.1, %.preheader.unr-lcssa ]
  %lcmp.mod552 = trunc i64 %i.ff to i1
  call void @llvm.assume(i1 %lcmp.mod552)
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %.pre497.pre, i64 %indvars.iv474.epil.init ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !67
  %i.gv = fadd nsz double %i.fb, %i.gu
  %i.gw = load double, ptr %i.gs, align 8, !tbaa !63
  %i.gx = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gv, i64 1
  %i.gz = fmul nsz <2 x double> %i.gy, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.gz, ptr %i.gs, align 8, !tbaa !57
  br label %.preheader

.preheader:                                       ; preds = %.preheader.unr-lcssa, %.epil.preheader
  %i.ha = icmp samesign ugt i32 %i.ey, 4
  br i1 %i.ha, label %.lr.ph434, label %.lr.ph439

.lr.ph434:                                        ; preds = %.preheader
  %i.hb = zext nneg i32 %i.ey to i64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ah, %.lr.ph431.new
  %indvars.iv474 = phi i64 [ 0, %.lr.ph431.new ], [ %indvars.iv.next475.1, %bb.ah ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph431.new ], [ %niter.next.1, %bb.ah ]
  %i.hc = getelementptr inbounds nuw [32 x i8], ptr %.pre497.pre, i64 %indvars.iv474 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load double, ptr %i.hd, align 8, !tbaa !67
  %i.hf = fadd nsz double %i.fb, %i.he
  %i.hg = load double, ptr %i.hc, align 8, !tbaa !63
  %i.hh = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.hf, i64 1
  %i.hj = fmul nsz <2 x double> %i.hi, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.hj, ptr %i.hc, align 8, !tbaa !57
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %.pre497.pre, i64 %indvars.iv474 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 64 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !67
  %i.ho = fadd nsz double %i.fb, %i.hn
  %i.hp = load double, ptr %i.hl, align 8, !tbaa !63
  %i.hq = insertelement <2 x double> poison, double %i.hp, i64 0
  %i.hr = insertelement <2 x double> %i.hq, double %i.ho, i64 1
  %i.hs = fmul nsz <2 x double> %i.hr, splat (double f0x3FBD791C5F888823)
  store <2 x double> %i.hs, ptr %i.hl, align 8, !tbaa !57
  %indvars.iv.next475.1 = add nuw nsw i64 %indvars.iv474, 4 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.unr-lcssa, label %bb.ah, !llvm.loop !92

bb.ai:                                            ; preds = %.lr.ph434, %bb.ai
  %indvars.iv477 = phi i64 [ 4, %.lr.ph434 ], [ %indvars.iv.next478, %bb.ai ] ; 2 uses
  %i.ht = getelementptr [32 x i8], ptr %.pre497.pre, i64 %indvars.iv477 ; 11 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 -128
  %i.hv = getelementptr i8, ptr %i.ht, i64 -112
  store double 0.000000e+00, ptr %i.hv, align 8, !tbaa !68
  %1 = getelementptr i8, ptr %i.ht, i64 -64       ; 2 uses
  %i.hw = getelementptr i8, ptr %i.ht, i64 -56
  %i.hx = getelementptr i8, ptr %i.ht, i64 -104
  %i.hy = getelementptr i8, ptr %i.ht, i64 -48
  store double 0.000000e+00, ptr %i.hy, align 8, !tbaa !68
  %i.hz = getelementptr i8, ptr %i.ht, i64 -40
  %i.ia = getelementptr i8, ptr %i.ht, i64 -96
  %i.ib = load <2 x double>, ptr %1, align 8, !tbaa !57 ; 7 uses
  %i.ic = load <2 x double>, ptr %i.hu, align 8, !tbaa !57 ; 2 uses
  %i.id = load <2 x double>, ptr %i.ht, align 8, !tbaa !57 ; 2 uses
  %i.ie = shufflevector <2 x double> %i.ib, <2 x double> %i.id, <2 x i32> <i32 1, i32 3>
  %i.if = shufflevector <2 x double> %i.ib, <2 x double> %i.ic, <2 x i32> <i32 3, i32 1>
  %i.ig = fsub nsz <2 x double> %i.ie, %i.if      ; 3 uses
  %i.ih = shufflevector <2 x double> %i.ib, <2 x double> %i.id, <2 x i32> <i32 0, i32 2>
  %i.ii = shufflevector <2 x double> %i.ic, <2 x double> %i.ib, <2 x i32> <i32 0, i32 2>
  %i.ij = fsub nsz <2 x double> %i.ih, %i.ii      ; 3 uses
  %i.ik = fdiv nsz <2 x double> %i.ig, %i.ij      ; 2 uses
  %i.il = extractelement <2 x double> %i.ik, i64 0
  store double %i.il, ptr %i.hx, align 8, !tbaa !69
  %i.im = extractelement <2 x double> %i.ik, i64 1
  store double %i.im, ptr %i.hz, align 8, !tbaa !69
  %i.in = extractelement <2 x double> %i.ig, i64 0 ; 2 uses
  %i.io = extractelement <2 x double> %i.ij, i64 0 ; 2 uses
  %i.ip = call nsz double @llvm.atan2.f64(double %i.in, double %i.io)
  %sincos = call nsz { double, double } @llvm.sincos.f64(double %i.ip) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.iq = call nsz double @hypot(double noundef %i.io, double noundef %i.in) #13 ; 2 uses
  %i.ir = fcmp nsz ogt double %i.ag, %i.iq
  %i.is = select nsz i1 %i.ir, double %i.iq, double %i.ag
  %i.it = fneg nsz double %i.is
  %i.iu = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = insertelement <2 x double> poison, double %cos, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %sin, i64 1
  %i.iy = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.ix, <2 x double> %i.ib) ; 4 uses
  store <2 x double> %i.iy, ptr %i.ia, align 8, !tbaa !57
  %i.iz = extractelement <2 x double> %i.ig, i64 1 ; 2 uses
  %i.ja = extractelement <2 x double> %i.ij, i64 1 ; 2 uses
  %i.jb = call nsz double @llvm.atan2.f64(double %i.iz, double %i.ja)
  %sincos362 = call nsz { double, double } @llvm.sincos.f64(double %i.jb) ; 2 uses
  %sin363 = extractvalue { double, double } %sincos362, 0
  %cos364 = extractvalue { double, double } %sincos362, 1
  %i.jc = call nsz double @hypot(double noundef %i.ja, double noundef %i.iz) #13
  %i.jd = fmul nsz double %i.jc, 5.000000e-01     ; 2 uses
  %i.je = fcmp nsz ogt double %i.ag, %i.jd
  %i.jf = select nsz i1 %i.je, double %i.jd, double %i.ag
  %i.jg = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x double> poison, double %cos364, i64 0
  %i.jj = insertelement <2 x double> %i.ji, double %sin363, i64 1
  %i.jk = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.jj, <2 x double> %i.ib) ; 5 uses
  %i.jl = fadd nsz <2 x double> %i.ib, %i.iy
  %i.jm = fadd nsz <2 x double> %i.jl, %i.jk
  %i.jn = fdiv nsz <2 x double> %i.jm, splat (double 3.000000e+00) ; 2 uses
  %2 = extractelement <2 x double> %i.jk, i64 0
  store double %2, ptr %1, align 8, !tbaa !63
  %3 = extractelement <2 x double> %i.jk, i64 1
  store double %3, ptr %i.hw, align 8, !tbaa !67
  %i.jo = shufflevector <2 x double> %i.jk, <2 x double> %i.jn, <2 x i32> <i32 0, i32 2>
  %i.jp = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jq = fsub nsz <2 x double> %i.jo, %i.jp      ; 3 uses
  %i.jr = shufflevector <2 x double> %i.jk, <2 x double> %i.jn, <2 x i32> <i32 1, i32 3>
  %i.js = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jt = fsub nsz <2 x double> %i.jr, %i.js
  %i.ju = fdiv nsz <2 x double> %i.jt, %i.jq      ; 2 uses
  %i.jv = extractelement <2 x double> %i.ju, i64 0
  %i.jw = extractelement <2 x double> %i.ju, i64 1 ; 2 uses
  %i.jx = fsub nsz double %i.jv, %i.jw
  %i.jy = extractelement <2 x double> %i.jq, i64 0
  %i.jz = extractelement <2 x double> %i.jq, i64 1 ; 2 uses
  %i.ka = fsub nsz double %i.jy, %i.jz
  %i.kb = fdiv nsz double %i.jx, %i.ka            ; 2 uses
  %i.kc = getelementptr i8, ptr %i.ht, i64 -80
  store double %i.kb, ptr %i.kc, align 8, !tbaa !68
  %i.kd = fneg nsz double %i.kb
  %i.ke = call nsz double @llvm.fmuladd.f64(double %i.kd, double %i.jz, double %i.jw)
  %i.kf = getelementptr i8, ptr %i.ht, i64 -72
  store double %i.ke, ptr %i.kf, align 8, !tbaa !69
  %indvars.iv.next478 = add nuw nsw i64 %indvars.iv477, 2 ; 3 uses
  %i.kg = icmp samesign ult i64 %indvars.iv.next478, %i.hb
  br i1 %i.kg, label %bb.ai, label %.lr.ph439, !llvm.loop !93

.lr.ph439:                                        ; preds = %bb.ai, %.preheader395, %.preheader
  %.7.lcssa = phi i64 [ 4, %.preheader ], [ 4, %.preheader395 ], [ %indvars.iv.next478, %bb.ai ]
  %i.kh = getelementptr [32 x i8], ptr %.pre497.pre, i64 %.7.lcssa ; 2 uses
  %i.ki = getelementptr i8, ptr %i.kh, i64 -96
  %i.kj = getelementptr i8, ptr %i.kh, i64 -56
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !67
  %i.kl = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.kk, i64 1
  store <2 x double> %i.kl, ptr %i.ki, align 8, !tbaa !57
  %i.km = getelementptr inbounds nuw i8, ptr %.pre497.pre, i64 32
  %i.kn = load double, ptr %i.km, align 8, !tbaa !63
  %i.ko = call nsz double @llvm.exp.f64(double %i.kn)
  %i.kp = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store double %i.ko, ptr %i.kp, align 8, !tbaa !60
  %i.kq = getelementptr inbounds nuw i8, ptr %.pre497.pre, i64 40
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !67
  %i.ks = call nsz double @llvm.exp.f64(double %i.kr)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store double %i.ks, ptr %i.kt, align 8, !tbaa !70
  %i.ku = load ptr, ptr %i.ao, align 8, !tbaa !53
  %i.kv = sitofp nsz i32 %i.f to double           ; 4 uses
  %i.kw = fdiv nsz double 1.000000e+00, %i.kv     ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !94
  %i.kz = fdiv nsz double %i.ky, 2.000000e+01
  %i.la = fmul nsz double %i.kz, f0x400A934F0979A371
  %i.lb = call nsz double @llvm.exp2.f64(double %i.la)
  %wide.trip.count483 = zext nneg i32 %i.j to i64
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph439, %bb.an
  %indvars.iv480 = phi i64 [ 0, %.lr.ph439 ], [ %indvars.iv.next481, %bb.an ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.ku, i64 %indvars.iv480 ; 4 uses
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !79 ; 2 uses
  %i.le = fcmp nsz ogt double %i.ld, %i.kw
  br i1 %i.le, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lf = fmul nsz double %i.ld, %i.kv
  %i.lg = fdiv nsz double -1.000000e+00, %i.lf
  %i.lh = call nsz double @llvm.exp.f64(double %i.lg)
  %i.li = fsub nsz double 1.000000e+00, %i.lh
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %storemerge = phi double [ %i.li, %bb.ak ], [ 1.000000e+00, %bb.aj ]
  store double %storemerge, ptr %i.lc, align 8, !tbaa !79
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 2 uses
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !82 ; 2 uses
  %i.ll = fcmp nsz ogt double %i.lk, %i.kw
  br i1 %i.ll, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lm = fmul nsz double %i.lk, %i.kv
  %i.ln = fdiv nsz double -1.000000e+00, %i.lm
  %i.lo = call nsz double @llvm.exp.f64(double %i.ln)
  %i.lp = fsub nsz double 1.000000e+00, %i.lo
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %storemerge361 = phi double [ %i.lp, %bb.am ], [ 1.000000e+00, %bb.al ]
  store double %storemerge361, ptr %i.lj, align 8, !tbaa !82
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  store double %i.lb, ptr %i.lq, align 8, !tbaa !58
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge440, label %bb.aj, !llvm.loop !95

._crit_edge440:                                   ; preds = %bb.an
  %i.lr = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !96
  %i.lt = fmul nsz double %i.ls, %i.kv
  %i.lu = fptosi double %i.lt to i32              ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 %i.lu, ptr %i.lv, align 8, !tbaa !55
  %i.lw = icmp slt i32 %i.lu, 1
  br i1 %i.lw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge440
  %i.lx = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr @compand_nodelay, ptr %i.lx, align 8, !tbaa !36
  br label %.critedge

bb.ap:                                            ; preds = %._crit_edge440
  %i.ly = call ptr @ff_get_audio_buffer(ptr noundef nonnull %0, i32 noundef %i.lu) #12 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.ly, ptr %i.lz, align 8, !tbaa !51
  %.not360 = icmp eq ptr %i.ly, null
  br i1 %.not360, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ma = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr @compand_delay, ptr %i.ma, align 8, !tbaa !36
  br label %.critedge

.critedge:                                        ; preds = %.loopexit468, %.loopexit469, %.loopexit455, %.loopexit454, %.loopexit447, %.loopexit446, %bb.ap, %bb.aq, %bb.ao, %bb.y, %bb.o, %bb.k
  %.6 = phi i32 [ -22, %bb.k ], [ -12, %bb.ap ], [ -22, %.loopexit447 ], [ -22, %bb.y ], [ -22, %.loopexit455 ], [ 0, %bb.ao ], [ 0, %bb.aq ], [ -12, %bb.o ], [ -22, %.loopexit446 ], [ -22, %.loopexit454 ], [ -22, %.loopexit469 ], [ -22, %.loopexit468 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.6
}

declare i32 @ff_request_frame(ptr noundef) local_unnamed_addr #4

declare ptr @ff_get_audio_buffer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #5

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #7

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare ptr @av_strtok(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal i32 @compand_nodelay(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.k = load i32, ptr %i.j, align 8, !tbaa !49   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.l = tail call i32 @av_frame_is_writable(ptr noundef %1) #12
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !98
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = tail call ptr @ff_get_audio_buffer(ptr noundef %i.o, i32 noundef %i.k) #12 ; 4 uses
  store ptr %i.p, ptr %i.b, align 8, !tbaa !97
  %.not31 = icmp eq ptr %i.p, null
  br i1 %.not31, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @av_frame_free(ptr noundef nonnull %i.a) #12
  br label %bb.m

bb.d:                                             ; preds = %bb.b
end_hunk_0
