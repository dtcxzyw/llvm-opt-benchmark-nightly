Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_afftdn?download=true
inline.NumInlined: 43
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 54
begin_hunk_0_@filter_channel:bb.a
  %i.fx = load i32, ptr %i.af, align 4, !tbaa !85 ; 6 uses
  %i.fy = icmp sgt i32 %i.fx, 0                   ; 2 uses
  br i1 %i.fy, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.fz = load i32, ptr %i.x, align 8, !tbaa !66  ; 2 uses
  %i.ga = and i32 %i.fz, -2
  %switch.i = icmp eq i32 %i.ga, 8
  br i1 %switch.i, label %.lr.ph.split.i, label %bb.h

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.az, i64 416
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !97
  %wide.trip.count.i = zext nneg i32 %i.fx to i64 ; 3 uses
  %cond.i = icmp eq i32 %i.fz, 8
  br label %bb.e

._crit_edge.i:                                    ; preds = %bb.i
  %.not222.i = icmp eq i32 %i.fd, 0
  br i1 %.not222.i, label %bb.p, label %bb.j

._crit_edge.thread.i:                             ; preds = %bb.d
  %.not222135.i = icmp eq i32 %i.fd, 0
  br i1 %.not222135.i, label %bb.p, label %spectral_flatness.exit.i

bb.e:                                             ; preds = %bb.i, %.lr.ph.split.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.i ], [ %indvars.iv.next.i, %bb.i ] ; 8 uses
  br i1 %cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %indvars.iv.i
  %i.ge = load <2 x float>, ptr %i.gd, align 4, !tbaa !71
  %i.gf = fpext <2 x float> %i.ge to <2 x double> ; 2 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 0
  %i.gh = extractelement <2 x double> %i.gf, i64 1
  %i.gi = tail call nsz double @hypot(double noundef %i.gg, double noundef %i.gh) #16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %indvars.iv.i ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !253
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !254
  %i.gn = tail call nsz double @hypot(double noundef %i.gk, double noundef %i.gm) #16
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 382) #14
  tail call void @abort() #17
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi double [ %i.gi, %bb.f ], [ %i.gn, %bb.g ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i
  store double %.sink.i, ptr %i.go, align 8, !tbaa !68
  %i.gp = fmul nsz double %.sink.i, %.sink.i      ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %indvars.iv.i
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !68
  %i.gs = fdiv nsz double %i.gp, %i.gr            ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !68
  %i.gv = fadd nsz double %i.gs, -1.000000e+00
  %i.gw = tail call nsz double @llvm.maxnum.f64(double %i.gv, double 0.000000e+00)
  %i.gx = fmul nsz double %i.fk, %i.gw
  %i.gy = tail call nsz double @llvm.fmuladd.f64(double %i.fj, double %i.gu, double %i.gx) ; 2 uses
  %i.gz = fadd nsz double %i.gy, 1.000000e+00
  %i.ha = fdiv nsz double %i.gy, %i.gz            ; 3 uses
  %i.hb = fmul nsz double %i.ha, %i.ha            ; 2 uses
  %i.hc = fmul nsz double %i.gs, %i.hb
  store double %i.hc, ptr %i.gt, align 8, !tbaa !68
  %i.hd = fmul nsz double %i.gp, %i.hb
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv.i
  store double %i.hd, ptr %i.he, align 8, !tbaa !68
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv.i
  store double %i.ha, ptr %i.hf, align 8, !tbaa !68
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !210

bb.j:                                             ; preds = %._crit_edge.i
  %i.hg = load double, ptr %i.ag, align 8, !tbaa !79 ; 3 uses
  %xtraiter348 = and i64 %wide.trip.count.i, 1
  %i.hh = icmp eq i32 %i.fx, 1
  br i1 %i.hh, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.j
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.n
  %lcmp.mod349.not = icmp eq i64 %xtraiter348, 0
  br i1 %lcmp.mod349.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %bb.j
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %bb.j ], [ %indvars.iv.next.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.0223.i.i.epil.init = phi i32 [ 0, %bb.j ], [ %.1.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.epil.init = phi <2 x double> [ zeroinitializer, %bb.j ], [ %i.il, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod352 = trunc i32 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod352)
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i.i.epil.init
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !68 ; 3 uses
  %i.hk = fcmp nsz ogt double %i.hj, %i.hg
  br i1 %i.hk, label %bb.k, label %._crit_edge.loopexit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.hl = tail call nsz double @llvm.log.f64(double %i.hj)
  %i.hm = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hj, i64 1
  %i.ho = fadd nsz <2 x double> %.epil.init, %i.hn
  %i.hp = add nsw i32 %.0223.i.i.epil.init, 1
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.epil.preheader, %bb.k, %._crit_edge.loopexit.i.i.unr-lcssa
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.hp, %bb.k ], [ %.0223.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.lcssa = phi <2 x double> [ %i.il, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.ho, %bb.k ], [ %.epil.init, %.lr.ph.i.i.epil.preheader ]
  %i.hq = tail call i32 @llvm.smax.i32(i32 %.1.i.i.lcssa, i32 1)
  %i.hr = uitofp nsz nneg i32 %i.hq to double
  br label %spectral_flatness.exit.i

.lr.ph.i.i:                                       ; preds = %bb.n, %.new
  %indvars.iv.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.i.1, %bb.n ] ; 3 uses
  %.0223.i.i = phi i32 [ 0, %.new ], [ %.1.i.i.1, %bb.n ] ; 2 uses
  %i.hs = phi <2 x double> [ zeroinitializer, %.new ], [ %i.il, %bb.n ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.n ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i.i
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !68 ; 3 uses
  %i.hv = fcmp nsz ogt double %i.hu, %i.hg
  br i1 %i.hv, label %bb.l, label %.lr.ph.i.i.1

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.hw = tail call nsz double @llvm.log.f64(double %i.hu)
  %i.hx = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hy = insertelement <2 x double> %i.hx, double %i.hu, i64 1
  %i.hz = fadd nsz <2 x double> %i.hs, %i.hy
  %i.ia = add nsw i32 %.0223.i.i, 1
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.l, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.ia, %bb.l ], [ %.0223.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.ib = phi <2 x double> [ %i.hz, %bb.l ], [ %i.hs, %.lr.ph.i.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load double, ptr %i.id, align 8, !tbaa !68 ; 3 uses
  %i.if = fcmp nsz ogt double %i.ie, %i.hg
  br i1 %i.if, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i.i.1
  %i.ig = tail call nsz double @llvm.log.f64(double %i.ie)
  %i.ih = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ii = insertelement <2 x double> %i.ih, double %i.ie, i64 1
  %i.ij = fadd nsz <2 x double> %i.ib, %i.ii
  %i.ik = add nsw i32 %.1.i.i, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.1
  %.1.i.i.1 = phi i32 [ %i.ik, %bb.m ], [ %.1.i.i, %.lr.ph.i.i.1 ] ; 3 uses
  %i.il = phi <2 x double> [ %i.ij, %bb.m ], [ %i.ib, %.lr.ph.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !211

spectral_flatness.exit.i:                         ; preds = %._crit_edge.loopexit.i.i, %._crit_edge.thread.i
  %.022.lcssa.i.i = phi double [ 1.000000e+00, %._crit_edge.thread.i ], [ %i.hr, %._crit_edge.loopexit.i.i ]
  %i.im = phi <2 x double> [ zeroinitializer, %._crit_edge.thread.i ], [ %.lcssa, %._crit_edge.loopexit.i.i ]
  %i.in = insertelement <2 x double> poison, double %.022.lcssa.i.i, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = fdiv nsz <2 x double> %i.im, %i.io      ; 3 uses
  %i.iq = extractelement <2 x double> %i.ip, i64 1 ; 4 uses
  %i.ir = extractelement <2 x double> %i.ip, i64 0
  %i.is = tail call nsz double @llvm.exp.f64(double %i.ir)
  %i.it = fdiv nsz double %i.is, %i.iq
  %i.iu = fcmp nsz ogt double %i.it, 8.000000e-01
  br i1 %i.iu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %spectral_flatness.exit.i
  %i.iv = load float, ptr %i.ah, align 8, !tbaa !255
  %i.iw = fpext nsz float %i.iv to double
  br i1 %i.fy, label %.lr.ph.preheader.i224.i, label %floor_offset.exit.i

.lr.ph.preheader.i224.i:                          ; preds = %bb.o
  %wide.trip.count.i225.i = zext nneg i32 %i.fx to i64 ; 3 uses
  %min.iters.check289 = icmp ult i32 %i.fx, 4
  br i1 %min.iters.check289, label %.lr.ph.i226.i.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %.lr.ph.preheader.i224.i
  %n.vec291 = and i64 %wide.trip.count.i225.i, 2147483644 ; 3 uses
  %broadcast.splat293 = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  br label %vector.body294

vector.body294:                                   ; preds = %vector.body294, %vector.ph290
  %index295 = phi i64 [ 0, %vector.ph290 ], [ %index.next299, %vector.body294 ] ; 3 uses
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph290 ], [ %i.jd, %vector.body294 ] ; 2 uses
  %vec.phi296 = phi <2 x double> [ zeroinitializer, %vector.ph290 ], [ %i.je, %vector.body294 ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %index295 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %wide.load297 = load <2 x double>, ptr %i.ix, align 8, !tbaa !68
  %wide.load298 = load <2 x double>, ptr %i.iy, align 8, !tbaa !68
  %i.iz = fsub nsz <2 x double> %wide.load297, %broadcast.splat293
  %i.ja = fsub nsz <2 x double> %wide.load298, %broadcast.splat293
  %.fr = freeze <2 x double> %i.iz
  %i.jb = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr) ; 2 uses
  %.fr336 = freeze <2 x double> %i.ja
  %i.jc = tail call nsz <2 x double> @llvm.fabs.v2f64(<2 x double> %.fr336) ; 2 uses
  %i.jd = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %i.jb) ; 2 uses
  %i.je = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi296, <2 x double> %i.jc) ; 2 uses
  %index.next299 = add nuw i64 %index295, 4       ; 2 uses
  %i.jf = fcmp uno <2 x double> %i.jb, %i.jc
  %i.jg = bitcast <2 x i1> %i.jf to i2
  %i.jh = icmp ne i2 %i.jg, 0                     ; 5 uses
  %i.ji = icmp eq i64 %index.next299, %n.vec291
  %i.jj = or i1 %i.jh, %i.ji
  br i1 %i.jj, label %middle.block300, label %vector.body294, !llvm.loop !212

middle.block300:                                  ; preds = %vector.body294
  %i.jk = select i1 %i.jh, <2 x double> %vec.phi, <2 x double> %i.jd
  %i.jl = select i1 %i.jh, <2 x double> %vec.phi296, <2 x double> %i.je
  %i.jm = select i1 %i.jh, i64 %index295, i64 %n.vec291
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.jk, <2 x double> %i.jl)
  %i.jn = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax) ; 2 uses
  %cmp.n301 = icmp ne i64 %n.vec291, %wide.trip.count.i225.i
  %.not = or i1 %cmp.n301, %i.jh
  br i1 %.not, label %.lr.ph.i226.i.preheader, label %floor_offset.exit.i

.lr.ph.i226.i.preheader:                          ; preds = %.lr.ph.preheader.i224.i, %middle.block300
  %indvars.iv.i227.i.ph = phi i64 [ 0, %.lr.ph.preheader.i224.i ], [ %i.jm, %middle.block300 ]
  %.011.i.i.ph = phi double [ 0.000000e+00, %.lr.ph.preheader.i224.i ], [ %i.jn, %middle.block300 ]
  br label %.lr.ph.i226.i

.lr.ph.i226.i:                                    ; preds = %.lr.ph.i226.i.preheader, %.lr.ph.i226.i
  %indvars.iv.i227.i = phi i64 [ %indvars.iv.next.i228.i, %.lr.ph.i226.i ], [ %indvars.iv.i227.i.ph, %.lr.ph.i226.i.preheader ] ; 2 uses
  %.011.i.i = phi double [ %i.js, %.lr.ph.i226.i ], [ %.011.i.i.ph, %.lr.ph.i226.i.preheader ]
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.i227.i
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !68
  %i.jq = fsub nsz double %i.jp, %i.iq
  %i.jr = tail call nsz double @llvm.fabs.f64(double %i.jq)
  %i.js = tail call nsz double @llvm.maxnum.f64(double %.011.i.i, double %i.jr) ; 2 uses
  %indvars.iv.next.i228.i = add nuw nsw i64 %indvars.iv.i227.i, 1 ; 2 uses
  %exitcond.not.i229.i = icmp eq i64 %indvars.iv.next.i228.i, %wide.trip.count.i225.i
  br i1 %exitcond.not.i229.i, label %floor_offset.exit.i, label %.lr.ph.i226.i, !llvm.loop !213

floor_offset.exit.i:                              ; preds = %.lr.ph.i226.i, %middle.block300, %bb.o
  %.0.lcssa.i.i = phi double [ 0.000000e+00, %bb.o ], [ %i.jn, %middle.block300 ], [ %i.js, %.lr.ph.i226.i ]
  %i.jt = fdiv nsz double %.0.lcssa.i.i, %i.iq
  %i.ju = fmul nsz double %i.jt, %i.iw
  %i.jv = tail call nsz double @llvm.log10.f64(double %i.iq)
  %i.jw = tail call nsz double @llvm.fmuladd.f64(double %i.jv, double 1.000000e+01, double -1.000000e+02)
  %i.jx = fadd nsz double %i.jw, %i.ju            ; 2 uses
  %i.jy = fcmp nsz ogt double %i.jx, -9.000000e+01
  %i.jz = select nsz i1 %i.jy, double %i.jx, double -9.000000e+01 ; 2 uses
  %i.ka = fcmp nsz ogt double %i.jz, -2.000000e+01
  %..i.i = select nsz i1 %i.ka, double -2.000000e+01, double %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.az, i64 1016 ; 2 uses
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !36
  %i.kd = fmul nsz double %i.kc, 9.000000e-01
  %i.ke = tail call nsz double @llvm.fmuladd.f64(double %..i.i, double 1.000000e-01, double %i.kd)
  store double %i.ke, ptr %i.kb, align 8, !tbaa !36
  tail call fastcc void @set_parameters(ptr noundef nonnull %i.b, ptr noundef %i.az, i32 noundef 1)
  br label %bb.p

bb.p:                                             ; preds = %floor_offset.exit.i, %spectral_flatness.exit.i, %._crit_edge.thread.i, %._crit_edge.i
  %i.kf = load i32, ptr %i.ai, align 8, !tbaa !87 ; 6 uses
  %i.kg = icmp sgt i32 %i.kf, 0                   ; 2 uses
  br i1 %i.kg, label %.lr.ph22.preheader.i, label %.preheader12.i

.lr.ph22.preheader.i:                             ; preds = %bb.p
  %i.kh = zext nneg i32 %i.kf to i64
  %i.ki = shl nuw nsw i64 %i.kh, 3                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fp, i8 0, i64 %i.ki, i1 false), !tbaa !68
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fr, i8 0, i64 %i.ki, i1 false), !tbaa !68
  br label %.preheader12.i

.preheader12.i:                                   ; preds = %.lr.ph22.preheader.i, %bb.p
  %i.kj = load i32, ptr %i.af, align 4, !tbaa !85 ; 7 uses
  %i.kk = icmp sgt i32 %i.kj, 0                   ; 2 uses
  br i1 %i.kk, label %.lr.ph25.i, label %.preheader11.i

.lr.ph25.i:                                       ; preds = %.preheader12.i
  %i.kl = getelementptr inbounds nuw i8, ptr %i.az, i64 416
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !97 ; 3 uses
  %wide.trip.count68.i = zext nneg i32 %i.kj to i64 ; 2 uses
  %xtraiter353 = and i64 %wide.trip.count68.i, 1
  %i.kn = icmp eq i32 %i.kj, 1
  br i1 %i.kn, label %.epil.preheader, label %.lr.ph25.i.new

.lr.ph25.i.new:                                   ; preds = %.lr.ph25.i
  %unroll_iter356 = and i64 %wide.trip.count68.i, 2147483646
  br label %bb.q

.preheader11.i.loopexit.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod354.not = icmp eq i64 %xtraiter353, 0
  br i1 %lcmp.mod354.not, label %.preheader11.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader11.i.loopexit.unr-lcssa, %.lr.ph25.i
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.lr.ph25.i ], [ %indvars.iv.next66.i.1, %.preheader11.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod355 = trunc i32 %i.kj to i1
  tail call void @llvm.assume(i1 %lcmp.mod355)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv65.i.epil.init
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !68
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv65.i.epil.init
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !76
  %i.ks = sext i32 %i.kr to i64
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.ks ; 2 uses
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !68
  %i.kv = fadd nsz double %i.kp, %i.ku
  store double %i.kv, ptr %i.kt, align 8, !tbaa !68
  br label %.preheader11.i

.preheader11.i:                                   ; preds = %.epil.preheader, %.preheader11.i.loopexit.unr-lcssa, %.preheader12.i
  br i1 %i.kg, label %.lr.ph28.i, label %.preheader8.i

.lr.ph28.i:                                       ; preds = %.preheader11.i
  %i.kw = load ptr, ptr %i.aj, align 8, !tbaa !88 ; 5 uses
  %i.kx = load ptr, ptr %i.ak, align 8, !tbaa !89 ; 5 uses
  %wide.trip.count73.i = zext nneg i32 %i.kf to i64 ; 7 uses
  %min.iters.check275 = icmp ult i32 %i.kf, 6
  br i1 %min.iters.check275, label %scalar.ph274.preheader, label %vector.memcheck250

vector.memcheck250:                               ; preds = %.lr.ph28.i
  %i.ky = shl nuw nsw i64 %wide.trip.count73.i, 3 ; 4 uses
  %scevgep251 = getelementptr i8, ptr %i.fp, i64 %i.ky ; 3 uses
  %scevgep252 = getelementptr i8, ptr %i.fc, i64 %i.ky ; 3 uses
  %scevgep253 = getelementptr i8, ptr %i.kw, i64 %i.ky ; 2 uses
  %scevgep254 = getelementptr i8, ptr %i.kx, i64 %i.ky ; 2 uses
  %bound0255 = icmp ult ptr %i.fp, %scevgep252
  %bound1256 = icmp ult ptr %i.fc, %scevgep251
  %found.conflict257 = and i1 %bound0255, %bound1256
  %bound0258 = icmp ult ptr %i.fp, %scevgep253
  %bound1259 = icmp ult ptr %i.kw, %scevgep251
  %found.conflict260 = and i1 %bound0258, %bound1259
  %conflict.rdx261 = or i1 %found.conflict257, %found.conflict260
  %bound0262 = icmp ult ptr %i.fp, %scevgep254
  %bound1263 = icmp ult ptr %i.kx, %scevgep251
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx265 = or i1 %conflict.rdx261, %found.conflict264
  %bound0266 = icmp ult ptr %i.fc, %scevgep253
  %bound1267 = icmp ult ptr %i.kw, %scevgep252
  %found.conflict268 = and i1 %bound0266, %bound1267
  %conflict.rdx269 = or i1 %conflict.rdx265, %found.conflict268
  %bound0270 = icmp ult ptr %i.fc, %scevgep254
  %bound1271 = icmp ult ptr %i.kx, %scevgep252
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx269, %found.conflict272
  br i1 %conflict.rdx273, label %scalar.ph274.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %vector.memcheck250
  %n.vec277 = and i64 %wide.trip.count73.i, 2147483646 ; 3 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next284, %vector.body278 ] ; 5 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %index279 ; 2 uses
  %wide.load280 = load <2 x double>, ptr %i.kz, align 8, !tbaa !68, !alias.scope !256, !noalias !257 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %index279
  %wide.load281 = load <2 x double>, ptr %i.la, align 8, !tbaa !68, !alias.scope !258
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %index279
  %wide.load282 = load <2 x double>, ptr %i.lb, align 8, !tbaa !68, !alias.scope !259
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %index279 ; 2 uses
  %wide.load283 = load <2 x double>, ptr %i.lc, align 8, !tbaa !68, !alias.scope !260, !noalias !261
  %i.ld = fmul nsz <2 x double> %wide.load282, %wide.load283
  %i.le = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load281, <2 x double> %wide.load280, <2 x double> %i.ld)
  %i.lf = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %wide.load280, <2 x double> %i.le) ; 2 uses
  store <2 x double> %i.lf, ptr %i.kz, align 8, !tbaa !68, !alias.scope !256, !noalias !257
  store <2 x double> %i.lf, ptr %i.lc, align 8, !tbaa !68, !alias.scope !260, !noalias !261
  %index.next284 = add nuw i64 %index279, 2       ; 2 uses
  %i.lg = icmp eq i64 %index.next284, %n.vec277
  br i1 %i.lg, label %middle.block285, label %vector.body278, !llvm.loop !219

middle.block285:                                  ; preds = %vector.body278
  %cmp.n286 = icmp eq i64 %n.vec277, %wide.trip.count73.i
  br i1 %cmp.n286, label %.preheader9.lr.ph.i, label %scalar.ph274.preheader

scalar.ph274.preheader:                           ; preds = %vector.memcheck250, %.lr.ph28.i, %middle.block285
  %indvars.iv70.i.ph = phi i64 [ 0, %vector.memcheck250 ], [ 0, %.lr.ph28.i ], [ %n.vec277, %middle.block285 ]
  br label %scalar.ph274

bb.q:                                             ; preds = %bb.q, %.lr.ph25.i.new
  %indvars.iv65.i = phi i64 [ 0, %.lr.ph25.i.new ], [ %indvars.iv.next66.i.1, %bb.q ] ; 4 uses
  %niter357 = phi i64 [ 0, %.lr.ph25.i.new ], [ %niter357.next.1, %bb.q ]
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv65.i
  %i.li = load double, ptr %i.lh, align 8, !tbaa !68
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv65.i
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !76
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.ll ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !68
  %i.lo = fadd nsz double %i.li, %i.ln
  store double %i.lo, ptr %i.lm, align 8, !tbaa !68
  %indvars.iv.next66.i = or disjoint i64 %indvars.iv65.i, 1 ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %indvars.iv.next66.i
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !68
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.fl, i64 %indvars.iv.next66.i
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !76
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.lt ; 2 uses
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !68
  %i.lw = fadd nsz double %i.lq, %i.lv
  store double %i.lw, ptr %i.lu, align 8, !tbaa !68
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv65.i, 2 ; 2 uses
  %niter357.next.1 = add i64 %niter357, 2         ; 2 uses
  %niter357.ncmp.1 = icmp eq i64 %niter357.next.1, %unroll_iter356
  br i1 %niter357.ncmp.1, label %.preheader11.i.loopexit.unr-lcssa, label %bb.q, !llvm.loop !220

.preheader9.lr.ph.i:                              ; preds = %scalar.ph274, %middle.block285
  %i.lx = getelementptr inbounds nuw i8, ptr %i.az, i64 440
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !103 ; 3 uses
  %xtraiter359 = and i64 %wide.trip.count73.i, 1
  %i.lz = icmp eq i32 %i.kf, 1
  %unroll_iter365 = and i64 %wide.trip.count73.i, 2147483646
end_hunk_0
