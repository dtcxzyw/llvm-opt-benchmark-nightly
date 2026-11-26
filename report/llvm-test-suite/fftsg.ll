Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fftsg?download=true
inline.NumInlined: 74
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@dfct:bb.a
  %i.iz = fneg double %i.iy
  %i.ja = fsub double %i.ir, %i.iu
  %i.jb = fadd double %i.ir, %i.iu
  %i.jc = insertelement <2 x double> poison, double %i.ja, i64 0
  %i.jd = insertelement <2 x double> %i.jc, double %i.jb, i64 1 ; 2 uses
  %i.je = insertelement <2 x double> poison, double %i.iz, i64 0
  %i.jf = insertelement <2 x double> %i.je, double %i.iy, i64 1
  %i.jg = fmul <2 x double> %i.jd, %i.jf
  %i.jh = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ji = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.jj, <2 x double> %i.jg) ; 2 uses
  %i.jl = extractelement <2 x double> %i.jk, i64 1
  store double %i.jl, ptr %i.iv, align 8, !tbaa !14
  %i.jm = extractelement <2 x double> %i.jk, i64 0
  store double %i.jm, ptr %i.ix, align 8, !tbaa !14
  %indvars.iv.next44.i251 = add nuw nsw i64 %indvars.iv43.i248, 1 ; 2 uses
  %exitcond.not.i252 = icmp eq i64 %indvars.iv.next44.i251, %wide.trip.count.i246
  br i1 %exitcond.not.i252, label %dctsub.exit253, label %.lr.ph.i247, !llvm.loop !3

dctsub.exit253:                                   ; preds = %.lr.ph.i247
  %i.jn = load double, ptr %i.eo, align 8, !tbaa !14
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %wide.trip.count.i246 ; 5 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !14
  %i.jq = fmul double %i.jn, %i.jp
  store double %i.jq, ptr %i.jo, align 8, !tbaa !14
  %.not310 = icmp eq i32 %.0225274, 4
  br i1 %.not310, label %bb.m, label %bb.k

bb.k:                                             ; preds = %dctsub.exit253
  tail call void @cftfsub(i32 noundef %.0225274, ptr noundef nonnull %2, ptr noundef nonnull %i.hx, i32 noundef %.0224, ptr noundef nonnull %4)
  %.not261 = icmp eq i32 %.0225274, 5
  br i1 %.not261, label %rftfsub.exit260, label %.lr.ph.preheader.i254

.lr.ph.preheader.i254:                            ; preds = %bb.k
  %i.jr = sdiv i32 %i.hy, %i.ik
  %i.js = sext i32 %i.jr to i64
  %i.jt = zext nneg i32 %.0225274 to i64
  br label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %.lr.ph.i255, %.lr.ph.preheader.i254
  %indvars.iv45.i256 = phi i64 [ 2, %.lr.ph.preheader.i254 ], [ %indvars.iv.next46.i259, %.lr.ph.i255 ] ; 3 uses
  %indvars.iv.i257 = phi i64 [ 0, %.lr.ph.preheader.i254 ], [ %indvars.iv.next.i258, %.lr.ph.i255 ]
  %i.ju = sub nsw i64 %i.jt, %indvars.iv45.i256
  %indvars.iv.next.i258 = add nsw i64 %indvars.iv.i257, %i.js ; 3 uses
  %i.jv = sub nsw i64 %i.hu, %indvars.iv.next.i258
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.jv
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !14
  %i.jy = fsub double 5.000000e-01, %i.jx
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %indvars.iv.next.i258
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !14
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv45.i256 ; 2 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ju ; 3 uses
  %i.kd = load <2 x double>, ptr %i.kb, align 8, !tbaa !14 ; 3 uses
  %i.ke = load <2 x double>, ptr %i.kc, align 8, !tbaa !14 ; 2 uses
  %i.kf = fsub <2 x double> %i.kd, %i.ke          ; 2 uses
  %i.kg = fadd <2 x double> %i.kd, %i.ke
  %i.kh = shufflevector <2 x double> %i.kf, <2 x double> %i.kg, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ki = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = fneg <2 x double> %i.kh
  %i.kl = shufflevector <2 x double> %i.kk, <2 x double> %i.kf, <2 x i32> <i32 1, i32 2>
  %i.km = fmul <2 x double> %i.kj, %i.kl
  %i.kn = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ko, <2 x double> %i.kh, <2 x double> %i.km) ; 3 uses
  %i.kq = fsub <2 x double> %i.kd, %i.kp
  store <2 x double> %i.kq, ptr %i.kb, align 8, !tbaa !14
  %i.kr = load <2 x double>, ptr %i.kc, align 8, !tbaa !14 ; 2 uses
  %i.ks = fadd <2 x double> %i.kr, %i.kp
  %i.kt = fsub <2 x double> %i.kr, %i.kp
  %i.ku = shufflevector <2 x double> %i.ks, <2 x double> %i.kt, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ku, ptr %i.kc, align 8, !tbaa !14
  %indvars.iv.next46.i259 = add nuw nsw i64 %indvars.iv45.i256, 2 ; 2 uses
  %i.kv = icmp samesign ult i64 %indvars.iv.next46.i259, %wide.trip.count.i246
  br i1 %i.kv, label %.lr.ph.i255, label %rftfsub.exit260, !llvm.loop !1

bb.l:                                             ; preds = %bb.j
  %.pre296 = zext nneg i32 %i.ik to i64           ; 2 uses
  %i.kw = load double, ptr %i.eo, align 8, !tbaa !14
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.pre296 ; 3 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !14
  %i.kz = fmul double %i.kw, %i.ky
  store double %i.kz, ptr %i.kx, align 8, !tbaa !14
  br label %rftfsub.exit260

bb.m:                                             ; preds = %dctsub.exit253
  %i.la = load <2 x double>, ptr %2, align 8, !tbaa !14 ; 2 uses
  %i.lb = load <2 x double>, ptr %i.hv, align 8, !tbaa !14 ; 2 uses
  %i.lc = fadd <2 x double> %i.la, %i.lb
  store <2 x double> %i.lc, ptr %2, align 8, !tbaa !14
  %i.ld = fsub <2 x double> %i.la, %i.lb
  store <2 x double> %i.ld, ptr %i.hv, align 8, !tbaa !14
  br label %rftfsub.exit260

rftfsub.exit260:                                  ; preds = %.lr.ph.i255, %bb.l, %bb.k, %bb.m
  %i.le = phi ptr [ %i.jo, %bb.m ], [ %i.jo, %bb.k ], [ %i.kx, %bb.l ], [ %i.jo, %.lr.ph.i255 ]
  %.pre-phi297302 = phi i64 [ %wide.trip.count.i246, %bb.m ], [ %wide.trip.count.i246, %bb.k ], [ %.pre296, %bb.l ], [ %wide.trip.count.i246, %.lr.ph.i255 ] ; 7 uses
  %i.lf = load double, ptr %2, align 8, !tbaa !14
  %i.lg = load double, ptr %i.hw, align 8, !tbaa !14
  %i.lh = fsub double %i.lf, %i.lg
  %i.li = sub nsw i32 %0, %.0226273
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lj
  store double %i.lh, ptr %i.lk, align 8, !tbaa !14
  %i.ll = load double, ptr %2, align 8, !tbaa !14
  %i.lm = load double, ptr %i.hw, align 8, !tbaa !14
  %i.ln = fadd double %i.ll, %i.lm
  %i.lo = sext i32 %.0226273 to i64               ; 5 uses
  %i.lp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lo
  store double %i.ln, ptr %i.lp, align 8, !tbaa !14
  %i.lq = icmp samesign ugt i32 %.0225274, 2
  br i1 %i.lq, label %.lr.ph267, label %._crit_edge268

.lr.ph267:                                        ; preds = %rftfsub.exit260
  %i.lr = shl i32 %.0226273, 2
  %i.ls = sext i32 %i.lr to i64                   ; 3 uses
  %i.lt = zext nneg i32 %.0225274 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.lo ; 3 uses
  %i.lu = add nsw i64 %i.lt, -3                   ; 2 uses
  %i.lv = lshr i64 %i.lu, 1                       ; 2 uses
  %i.lw = add nuw i64 %i.lv, 1                    ; 2 uses
  %i.lx = icmp eq i64 %i.lv, 0
  br i1 %i.lx, label %.epil.preheader, label %.lr.ph267.new

.lr.ph267.new:                                    ; preds = %.lr.ph267
  %unroll_iter501 = and i64 %i.lw, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph267.new
  %indvars.iv284 = phi i64 [ 2, %.lr.ph267.new ], [ %indvars.iv.next285.1, %bb.n ] ; 3 uses
  %indvars.iv282 = phi i64 [ 0, %.lr.ph267.new ], [ %indvars.iv.next283.1, %bb.n ]
  %niter502 = phi i64 [ 0, %.lr.ph267.new ], [ %niter502.next.1, %bb.n ]
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, %i.ls ; 3 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284 ; 3 uses
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !14
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !14
  %i.mc = fsub double %i.lz, %i.mb
  %i.md = sub nsw i64 %indvars.iv.next283, %i.lo
  %i.me = getelementptr inbounds [8 x i8], ptr %1, i64 %i.md
  store double %i.mc, ptr %i.me, align 8, !tbaa !14
  %i.mf = load double, ptr %i.ly, align 8, !tbaa !14
  %i.mg = load double, ptr %i.ma, align 8, !tbaa !14
  %i.mh = fadd double %i.mf, %i.mg
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next283
  store double %i.mh, ptr %gep, align 8, !tbaa !14
  %indvars.iv.next283.1 = add nsw i64 %indvars.iv.next283, %i.ls ; 4 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !14
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 24 ; 2 uses
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !14
  %i.mn = fsub double %i.mk, %i.mm
  %i.mo = sub nsw i64 %indvars.iv.next283.1, %i.lo
  %i.mp = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mo
  store double %i.mn, ptr %i.mp, align 8, !tbaa !14
  %i.mq = load double, ptr %i.mj, align 8, !tbaa !14
  %i.mr = load double, ptr %i.ml, align 8, !tbaa !14
  %i.ms = fadd double %i.mq, %i.mr
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next283.1
  store double %i.ms, ptr %gep.1, align 8, !tbaa !14
  %indvars.iv.next285.1 = add nuw nsw i64 %indvars.iv284, 4 ; 2 uses
  %niter502.next.1 = add nuw i64 %niter502, 2     ; 2 uses
  %niter502.ncmp.1.not = icmp eq i64 %niter502.next.1, %unroll_iter501
  br i1 %niter502.ncmp.1.not, label %._crit_edge268.loopexit.unr-lcssa, label %bb.n, !llvm.loop !49

._crit_edge268.loopexit.unr-lcssa:                ; preds = %bb.n
  %i.mt = and i64 %i.lu, 2
  %lcmp.mod499.not.not = icmp eq i64 %i.mt, 0
  br i1 %lcmp.mod499.not.not, label %.epil.preheader, label %._crit_edge268

.epil.preheader:                                  ; preds = %._crit_edge268.loopexit.unr-lcssa, %.lr.ph267
  %indvars.iv284.epil.init = phi i64 [ 2, %.lr.ph267 ], [ %indvars.iv.next285.1, %._crit_edge268.loopexit.unr-lcssa ]
  %indvars.iv282.epil.init = phi i64 [ 0, %.lr.ph267 ], [ %indvars.iv.next283.1, %._crit_edge268.loopexit.unr-lcssa ]
  %lcmp.mod500 = trunc i64 %i.lw to i1
  tail call void @llvm.assume(i1 %lcmp.mod500)
  %indvars.iv.next283.epil = add nsw i64 %indvars.iv282.epil.init, %i.ls ; 2 uses
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv284.epil.init ; 3 uses
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !14
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 2 uses
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !14
  %i.my = fsub double %i.mv, %i.mx
  %i.mz = sub nsw i64 %indvars.iv.next283.epil, %i.lo
  %i.na = getelementptr inbounds [8 x i8], ptr %1, i64 %i.mz
  store double %i.my, ptr %i.na, align 8, !tbaa !14
  %i.nb = load double, ptr %i.mu, align 8, !tbaa !14
  %i.nc = load double, ptr %i.mw, align 8, !tbaa !14
  %i.nd = fadd double %i.nb, %i.nc
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next283.epil
  store double %i.nd, ptr %gep.epil, align 8, !tbaa !14
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %.epil.preheader, %._crit_edge268.loopexit.unr-lcssa, %rftfsub.exit260
  %i.ne = shl i32 %.0226273, 1                    ; 2 uses
  %.not277 = icmp eq i32 %i.ik, 0
  br i1 %.not277, label %._crit_edge272, label %.lr.ph271.preheader

.lr.ph271.preheader:                              ; preds = %._crit_edge268
  %i.nf = zext nneg i32 %.0225274 to i64          ; 8 uses
  %invariant.gep306 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nf ; 6 uses
  %invariant.gep308 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nf ; 4 uses
  %min.iters.check460 = icmp samesign ult i64 %.pre-phi297302, 10
  br i1 %min.iters.check460, label %.lr.ph271.preheader495, label %vector.memcheck461

vector.memcheck461:                               ; preds = %.lr.ph271.preheader
  %i.ng = shl nuw nsw i64 %.pre-phi297302, 3      ; 4 uses
  %i.nh = getelementptr i8, ptr %2, i64 %i.ng     ; 3 uses
  %i.ni = shl nuw nsw i64 %i.nf, 3                ; 3 uses
  %i.nj = sub nsw i64 %i.ni, %i.ng
  %i.nk = getelementptr i8, ptr %i.hw, i64 %i.nj  ; 3 uses
  %i.nl = getelementptr i8, ptr %i.hw, i64 %i.ni  ; 3 uses
  %i.nm = shl nuw nsw i64 %i.nf, 4                ; 2 uses
  %i.nn = sub nsw i64 %i.nm, %i.ng
  %i.no = getelementptr i8, ptr %i.hw, i64 %i.nn  ; 2 uses
  %i.np = getelementptr i8, ptr %i.hw, i64 %i.nm  ; 2 uses
  %i.nq = getelementptr i8, ptr %2, i64 %i.ng
  %i.nr = getelementptr i8, ptr %i.nq, i64 %i.ni  ; 2 uses
  %bound0462 = icmp ult ptr %2, %i.nl
  %bound1463 = icmp ult ptr %i.nk, %i.nh
  %found.conflict464 = and i1 %bound0462, %bound1463
  %bound0465.a = icmp ult ptr %2, %i.np
  %bound1466.a = icmp ult ptr %i.no, %i.nh
  %found.conflict467.a = and i1 %bound0465.a, %bound1466.a
  %conflict.rdx468 = or i1 %found.conflict464, %found.conflict467.a
  %bound0469.a = icmp ult ptr %2, %i.nr
  %bound1470.a = icmp ult ptr %invariant.gep306, %i.nh
  %found.conflict471.a = and i1 %bound0469.a, %bound1470.a
  %conflict.rdx472.a = or i1 %conflict.rdx468, %found.conflict471.a
  %bound0473 = icmp ult ptr %i.nk, %i.np
  %bound1474 = icmp ult ptr %i.no, %i.nl
  %found.conflict475 = and i1 %bound0473, %bound1474
  %conflict.rdx476 = or i1 %conflict.rdx472.a, %found.conflict475
  %bound0477 = icmp ult ptr %i.nk, %i.nr
  %bound1478 = icmp ult ptr %invariant.gep306, %i.nl
  %found.conflict479 = and i1 %bound0477, %bound1478
  %conflict.rdx480 = or i1 %conflict.rdx476, %found.conflict479
  br i1 %conflict.rdx480, label %.lr.ph271.preheader495, label %vector.ph481

vector.ph481:                                     ; preds = %vector.memcheck461
  %n.vec482 = and i64 %.pre-phi297302, 2147483646 ; 3 uses
  br label %vector.body483

vector.body483:                                   ; preds = %vector.body483, %vector.ph481
  %index484 = phi i64 [ 0, %vector.ph481 ], [ %index.next491, %vector.body483 ] ; 4 uses
  %i.ns = sub nuw nsw i64 %i.nf, %index484        ; 2 uses
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep306, i64 %i.ns
  %i.nu = getelementptr inbounds i8, ptr %i.nt, i64 -8 ; 2 uses
  %wide.load485 = load <2 x double>, ptr %i.nu, align 8, !tbaa !14, !alias.scope !69
  %reverse486 = shufflevector <2 x double> %wide.load485, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308, i64 %index484
  %wide.load487 = load <2 x double>, ptr %i.nv, align 8, !tbaa !14, !alias.scope !70 ; 2 uses
  %i.nw = fsub <2 x double> %reverse486, %wide.load487
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index484
  store <2 x double> %i.nw, ptr %i.nx, align 8, !tbaa !14, !alias.scope !71, !noalias !72
  %wide.load488 = load <2 x double>, ptr %i.nu, align 8, !tbaa !14, !alias.scope !69
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ns
  %i.nz = getelementptr inbounds i8, ptr %i.ny, i64 -8
  %i.oa = shufflevector <2 x double> %wide.load487, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse490 = fadd <2 x double> %i.oa, %wide.load488
  store <2 x double> %reverse490, ptr %i.nz, align 8, !tbaa !14, !alias.scope !73, !noalias !74
  %index.next491 = add nuw i64 %index484, 2       ; 2 uses
  %i.ob = icmp eq i64 %index.next491, %n.vec482
  br i1 %i.ob, label %middle.block492, label %vector.body483, !llvm.loop !55

middle.block492:                                  ; preds = %vector.body483
  %cmp.n493 = icmp eq i64 %.pre-phi297302, %n.vec482
  br i1 %cmp.n493, label %._crit_edge272, label %.lr.ph271.preheader495

.lr.ph271.preheader495:                           ; preds = %vector.memcheck461, %.lr.ph271.preheader, %middle.block492
  %indvars.iv289.ph = phi i64 [ 0, %vector.memcheck461 ], [ 0, %.lr.ph271.preheader ], [ %n.vec482, %middle.block492 ] ; 6 uses
  %.neg = or disjoint i64 %indvars.iv289.ph, 1
  %xtraiter503 = and i64 %.pre-phi297302, 1
  %lcmp.mod504.not = icmp eq i64 %xtraiter503, 0
  br i1 %lcmp.mod504.not, label %.lr.ph271.prol.loopexit, label %.lr.ph271.prol

.lr.ph271.prol:                                   ; preds = %.lr.ph271.preheader495
  %i.oc = sub nuw nsw i64 %i.nf, %indvars.iv289.ph ; 2 uses
  %gep307.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep306, i64 %i.oc ; 2 uses
  %i.od = load double, ptr %gep307.prol, align 8, !tbaa !14
  %gep309.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308, i64 %indvars.iv289.ph
  %i.oe = load double, ptr %gep309.prol, align 8, !tbaa !14 ; 2 uses
  %i.of = fsub double %i.od, %i.oe
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv289.ph
  store double %i.of, ptr %i.og, align 8, !tbaa !14
  %i.oh = load double, ptr %gep307.prol, align 8, !tbaa !14
  %i.oi = fadd double %i.oe, %i.oh
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.oc
  store double %i.oi, ptr %i.oj, align 8, !tbaa !14
  %indvars.iv.next290.prol = or disjoint i64 %indvars.iv289.ph, 1
  br label %.lr.ph271.prol.loopexit

.lr.ph271.prol.loopexit:                          ; preds = %.lr.ph271.prol, %.lr.ph271.preheader495
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph271.preheader495 ], [ %indvars.iv.next290.prol, %.lr.ph271.prol ]
  %i.ok = icmp eq i64 %.pre-phi297302, %.neg
  br i1 %i.ok, label %._crit_edge272, label %.lr.ph271

.lr.ph271:                                        ; preds = %.lr.ph271.prol.loopexit, %.lr.ph271
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.1, %.lr.ph271 ], [ %indvars.iv289.unr, %.lr.ph271.prol.loopexit ] ; 5 uses
  %i.ol = sub nuw nsw i64 %i.nf, %indvars.iv289   ; 2 uses
  %gep307 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep306, i64 %i.ol ; 2 uses
  %i.om = load double, ptr %gep307, align 8, !tbaa !14
  %gep309 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308, i64 %indvars.iv289
  %i.on = load double, ptr %gep309, align 8, !tbaa !14 ; 2 uses
  %i.oo = fsub double %i.om, %i.on
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv289
  store double %i.oo, ptr %i.op, align 8, !tbaa !14
  %i.oq = load double, ptr %gep307, align 8, !tbaa !14
  %i.or = fadd double %i.on, %i.oq
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ol
  store double %i.or, ptr %i.os, align 8, !tbaa !14
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 3 uses
  %i.ot = sub nuw nsw i64 %i.nf, %indvars.iv.next290 ; 2 uses
  %gep307.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep306, i64 %i.ot ; 2 uses
  %i.ou = load double, ptr %gep307.1, align 8, !tbaa !14
  %gep309.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep308, i64 %indvars.iv.next290
  %i.ov = load double, ptr %gep309.1, align 8, !tbaa !14 ; 2 uses
  %i.ow = fsub double %i.ou, %i.ov
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next290
  store double %i.ow, ptr %i.ox, align 8, !tbaa !14
  %i.oy = load double, ptr %gep307.1, align 8, !tbaa !14
  %i.oz = fadd double %i.ov, %i.oy
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ot
  store double %i.oz, ptr %i.pa, align 8, !tbaa !14
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %exitcond293.not.1 = icmp eq i64 %indvars.iv.next290.1, %.pre-phi297302
  br i1 %exitcond293.not.1, label %._crit_edge272, label %.lr.ph271, !llvm.loop !56

._crit_edge272:                                   ; preds = %.lr.ph271.prol.loopexit, %.lr.ph271, %middle.block492, %._crit_edge268
  %i.pb = add nuw nsw i32 %i.ik, %.0225274
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.pc
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !14
  store double %i.pe, ptr %i.le, align 8, !tbaa !14
  br i1 %i.il, label %bb.j, label %._crit_edge276.loopexit, !llvm.loop !57

._crit_edge276.loopexit:                          ; preds = %._crit_edge272
  %i.pf = sext i32 %i.ne to i64
  br label %._crit_edge276

._crit_edge276:                                   ; preds = %._crit_edge276.loopexit, %.preheader
  %.0226.lcssa = phi i64 [ 2, %.preheader ], [ %i.pf, %._crit_edge276.loopexit ]
  %i.pg = load double, ptr %2, align 8, !tbaa !14
  %i.ph = getelementptr inbounds [8 x i8], ptr %1, i64 %.0226.lcssa
  store double %i.pg, ptr %i.ph, align 8, !tbaa !14
  %i.pi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !14
  %i.pk = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !14
  %i.pm = fsub double %i.pj, %i.pl
  store double %i.pm, ptr %i.bh, align 8, !tbaa !14
  %i.pn = load <2 x double>, ptr %i.pk, align 8, !tbaa !14
  %i.po = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.pn)
  br label %bb.p

bb.o:                                             ; preds = %makect.exit
  %i.pp = load double, ptr %1, align 8, !tbaa !14
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.pp, ptr %i.pq, align 8, !tbaa !14
  %i.pr = load double, ptr %2, align 8, !tbaa !14
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 16
  store double %i.pr, ptr %i.ps, align 8, !tbaa !14
  %i.pt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge276
  %storemerge = phi double [ %i.pu, %bb.o ], [ %i.po, %._crit_edge276 ]
  store double %storemerge, ptr %1, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @dfst(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 !guid !94 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !12     ; 2 uses
  %i.b = shl i32 %i.a, 3
  %i.c = icmp sgt i32 %0, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = ashr i32 %0, 3                           ; 2 uses
  tail call void @makewt(i32 noundef %i.d, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0198 = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !12   ; 2 uses
  %i.g = shl i32 %i.f, 1
  %i.h = icmp sgt i32 %0, %i.g
  br i1 %i.h, label %bb.d, label %makect.exit

bb.d:                                             ; preds = %bb.c
  %i.i = ashr i32 %0, 1                           ; 9 uses
  %i.j = sext i32 %.0198 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %4, i64 %i.j ; 8 uses
  store i32 %i.i, ptr %i.e, align 4, !tbaa !12
  %i.l = icmp sgt i32 %i.i, 1
  br i1 %i.l, label %bb.e, label %makect.exit

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %i.i, 1                         ; 3 uses
  %i.n = uitofp nneg i32 %i.m to double           ; 2 uses
  %i.o = fdiv double f0x3FE921FB54442D18, %i.n    ; 4 uses
  %i.p = fmul double %i.o, %i.n
  %i.q = tail call double @cos(double noundef %i.p) #9, !tbaa !12 ; 2 uses
  store double %i.q, ptr %i.k, align 8, !tbaa !14
  %i.r = fmul double %i.q, 5.000000e-01
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.s
  store double %i.r, ptr %i.t, align 8, !tbaa !14
  %i.u = icmp samesign ugt i32 %i.i, 3
  br i1 %i.u, label %.lr.ph.preheader.i, label %makect.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.v = zext nneg i32 %i.i to i64                ; 3 uses
  %i.w = add nsw i64 %i.s, -1                     ; 3 uses
  %xtraiter = and i64 %i.w, 1
  %i.x = icmp eq i32 %i.m, 2
  br i1 %i.x, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.w, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
end_hunk_0
begin_hunk_1_@dfst:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader483

.lr.ph.preheader483:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader ], [ %i.cf, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader483, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader483 ] ; 5 uses
  %i.da = sub nsw i64 %i.bg, %indvars.iv          ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !14 ; 2 uses
  %i.dd = sub nuw nsw i64 %i.bh, %indvars.iv
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !14 ; 2 uses
  %i.dg = fadd double %i.dc, %i.df
  %i.dh = fsub double %i.dc, %i.df                ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %1, i64 %i.da ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !14 ; 2 uses
  %i.dk = sub nsw i64 %i.bh, %i.da
  %i.dl = getelementptr inbounds [8 x i8], ptr %1, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !14 ; 2 uses
  %i.dn = fadd double %i.dj, %i.dm
  %i.do = fsub double %i.dj, %i.dm                ; 2 uses
  store double %i.dg, ptr %i.db, align 8, !tbaa !14
  store double %i.dn, ptr %i.di, align 8, !tbaa !14
  %i.dp = fadd double %i.dh, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store double %i.dp, ptr %i.dq, align 8, !tbaa !14
  %i.dr = fsub double %i.dh, %i.do
  %i.ds = getelementptr inbounds [8 x i8], ptr %2, i64 %i.da
  store double %i.dr, ptr %i.ds, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %makect.exit.thread.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre268, %makect.exit.thread.._crit_edge_crit_edge ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %.lr.ph ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi ; 7 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !14
  %i.dv = sub nuw nsw i32 %0, %i.be
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dw ; 2 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !14
  %i.dz = fsub double %i.du, %i.dy
  store double %i.dz, ptr %2, align 8, !tbaa !14
  %i.ea = load double, ptr %i.dx, align 8, !tbaa !14
  %i.eb = load double, ptr %i.dt, align 8, !tbaa !14
  %i.ec = fadd double %i.ea, %i.eb
  store double %i.ec, ptr %i.dt, align 8, !tbaa !14
  %i.ed = zext nneg i32 %i.bd to i64              ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !14
  store double %i.ef, ptr %1, align 8, !tbaa !14
  %i.eg = sext i32 %.0198 to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.eg ; 12 uses
  br i1 %i.bf, label %.lr.ph.preheader.i210, label %dstsub.exit.thread

dstsub.exit.thread:                               ; preds = %._crit_edge
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !14
  %i.ej = load double, ptr %i.dt, align 8, !tbaa !14
  %i.ek = fmul double %i.ei, %i.ej
  store double %i.ek, ptr %i.dt, align 8, !tbaa !14
  br label %bb.g

.lr.ph.preheader.i210:                            ; preds = %._crit_edge
  %i.el = sdiv i32 %.0236, %i.bd
  %i.em = sext i32 %i.el to i64
  %i.en = sext i32 %.0236 to i64
  br label %.lr.ph.i211

.lr.ph.i211:                                      ; preds = %.lr.ph.i211, %.lr.ph.preheader.i210
  %indvars.iv43.i = phi i64 [ 1, %.lr.ph.preheader.i210 ], [ %indvars.iv.next44.i, %.lr.ph.i211 ] ; 3 uses
  %indvars.iv.i212 = phi i64 [ 0, %.lr.ph.preheader.i210 ], [ %indvars.iv.next.i213, %.lr.ph.i211 ]
  %i.eo = sub nsw i64 %i.ed, %indvars.iv43.i
  %indvars.iv.next.i213 = add nsw i64 %indvars.iv.i212, %i.em ; 3 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i213
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !14 ; 2 uses
  %i.er = sub nsw i64 %i.en, %indvars.iv.next.i213
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.er
  %i.et = load double, ptr %i.es, align 8, !tbaa !14 ; 2 uses
  %i.eu = getelementptr inbounds [8 x i8], ptr %1, i64 %i.eo ; 2 uses
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !14
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv43.i ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !14 ; 2 uses
  %i.ey = fneg double %i.ex
  %i.ez = fsub double %i.eq, %i.et
  %i.fa = fadd double %i.eq, %i.et
  %i.fb = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.fa, i64 1 ; 2 uses
  %i.fd = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.ex, i64 1
  %i.ff = fmul <2 x double> %i.fc, %i.fe
  %i.fg = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fh = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> %i.fi, <2 x double> %i.ff) ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 1
  store double %i.fk, ptr %i.eu, align 8, !tbaa !14
  %i.fl = extractelement <2 x double> %i.fj, i64 0
  store double %i.fl, ptr %i.ew, align 8, !tbaa !14
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond.not.i214 = icmp eq i64 %indvars.iv.next44.i, %.pre-phi
  br i1 %exitcond.not.i214, label %dstsub.exit, label %.lr.ph.i211, !llvm.loop !4

dstsub.exit:                                      ; preds = %.lr.ph.i211
  %i.fm = load double, ptr %i.eh, align 8, !tbaa !14
  %i.fn = load double, ptr %i.dt, align 8, !tbaa !14
  %i.fo = fmul double %i.fm, %i.fn
  store double %i.fo, ptr %i.dt, align 8, !tbaa !14
  %i.fp = icmp samesign ugt i32 %0, 9
  br i1 %i.fp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %dstsub.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 8
  tail call void @cftfsub(i32 noundef %i.bd, ptr noundef nonnull %1, ptr noundef nonnull %i.fq, i32 noundef %.0198, ptr noundef nonnull %4)
  %i.fr = icmp samesign ugt i32 %0, 11
  br i1 %i.fr, label %.lr.ph.preheader.i215, label %rftfsub.exit

.lr.ph.preheader.i215:                            ; preds = %bb.f
  %i.fs = shl nsw i32 %.0236, 1
  %i.ft = sdiv i32 %i.fs, %i.be
  %i.fu = sext i32 %i.ft to i64
  %i.fv = sext i32 %.0236 to i64
  br label %.lr.ph.i216

.lr.ph.i216:                                      ; preds = %.lr.ph.i216, %.lr.ph.preheader.i215
  %indvars.iv45.i = phi i64 [ 2, %.lr.ph.preheader.i215 ], [ %indvars.iv.next46.i, %.lr.ph.i216 ] ; 3 uses
  %indvars.iv.i217 = phi i64 [ 0, %.lr.ph.preheader.i215 ], [ %indvars.iv.next.i218, %.lr.ph.i216 ]
  %i.fw = sub nsw i64 %i.ed, %indvars.iv45.i
  %indvars.iv.next.i218 = add nsw i64 %indvars.iv.i217, %i.fu ; 3 uses
  %i.fx = sub nsw i64 %i.fv, %indvars.iv.next.i218
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !14
  %i.ga = fsub double 5.000000e-01, %i.fz
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i218
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !14
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv45.i ; 2 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fw ; 3 uses
  %i.gf = load <2 x double>, ptr %i.gd, align 8, !tbaa !14 ; 3 uses
  %i.gg = load <2 x double>, ptr %i.ge, align 8, !tbaa !14 ; 2 uses
  %i.gh = fsub <2 x double> %i.gf, %i.gg          ; 2 uses
  %i.gi = fadd <2 x double> %i.gf, %i.gg
  %i.gj = shufflevector <2 x double> %i.gh, <2 x double> %i.gi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gk = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gl = shufflevector <2 x double> %i.gk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gm = fneg <2 x double> %i.gj
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> %i.gh, <2 x i32> <i32 1, i32 2>
  %i.go = fmul <2 x double> %i.gl, %i.gn
  %i.gp = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gj, <2 x double> %i.go) ; 3 uses
  %i.gs = fsub <2 x double> %i.gf, %i.gr
  store <2 x double> %i.gs, ptr %i.gd, align 8, !tbaa !14
  %i.gt = load <2 x double>, ptr %i.ge, align 8, !tbaa !14 ; 2 uses
  %i.gu = fadd <2 x double> %i.gt, %i.gr
  %i.gv = fsub <2 x double> %i.gt, %i.gr
  %i.gw = shufflevector <2 x double> %i.gu, <2 x double> %i.gv, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.gw, ptr %i.ge, align 8, !tbaa !14
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 2 ; 2 uses
  %i.gx = icmp samesign ult i64 %indvars.iv.next46.i, %.pre-phi
  br i1 %i.gx, label %.lr.ph.i216, label %rftfsub.exit, !llvm.loop !1

bb.g:                                             ; preds = %dstsub.exit.thread, %dstsub.exit
  %i.gy = icmp eq i32 %i.bd, 4
  br i1 %i.gy, label %bb.h, label %rftfsub.exit

bb.h:                                             ; preds = %bb.g
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ha = load <2 x double>, ptr %1, align 8, !tbaa !14 ; 2 uses
  %i.hb = load <2 x double>, ptr %i.gz, align 8, !tbaa !14 ; 2 uses
  %i.hc = fadd <2 x double> %i.ha, %i.hb
  store <2 x double> %i.hc, ptr %1, align 8, !tbaa !14
  %i.hd = fsub <2 x double> %i.ha, %i.hb
  store <2 x double> %i.hd, ptr %i.gz, align 8, !tbaa !14
  br label %rftfsub.exit

rftfsub.exit:                                     ; preds = %.lr.ph.i216, %bb.f, %bb.g, %bb.h
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !14
  %i.hg = load double, ptr %1, align 8, !tbaa !14
  %i.hh = fsub double %i.hf, %i.hg
  %i.hi = zext nneg i32 %0 to i64
  %i.hj = getelementptr [8 x i8], ptr %1, i64 %i.hi
  %i.hk = getelementptr i8, ptr %i.hj, i64 -8
  store double %i.hh, ptr %i.hk, align 8, !tbaa !14
  %i.hl = load double, ptr %1, align 8, !tbaa !14
  %i.hm = load double, ptr %i.he, align 8, !tbaa !14
  %i.hn = fadd double %i.hl, %i.hm
  store double %i.hn, ptr %i.he, align 8, !tbaa !14
  br i1 %i.bf, label %.lr.ph240, label %.preheader.._crit_edge252_crit_edge

.preheader.._crit_edge252_crit_edge:              ; preds = %rftfsub.exit
  %.pre = load double, ptr %2, align 8, !tbaa !14
  br label %._crit_edge252

.lr.ph251:                                        ; preds = %.lr.ph240
  %i.ho = sext i32 %.0236 to i64                  ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hq = getelementptr i8, ptr %2, i64 8         ; 8 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hs = shl nsw i32 %.0236, 1
  br label %bb.i

.lr.ph240:                                        ; preds = %rftfsub.exit, %.lr.ph240
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %.lr.ph240 ], [ %i.ed, %rftfsub.exit ] ; 2 uses
  %indvars.iv.next255 = add nsw i64 %indvars.iv254, -2 ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next255 ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !14 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 8 ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !14
  %i.hx = fsub double %i.hu, %i.hw
  %.idx = shl nuw nsw i64 %indvars.iv.next255, 4
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store double %i.hx, ptr %i.hz, align 8, !tbaa !14
  %i.ia = fneg double %i.hu
  %i.ib = load double, ptr %i.hv, align 8, !tbaa !14
  %i.ic = fsub double %i.ia, %i.ib
  %i.id = getelementptr i8, ptr %i.hy, i64 -8
  store double %i.ic, ptr %i.id, align 8, !tbaa !14
  %i.ie = icmp samesign ugt i64 %indvars.iv254, 5
  br i1 %i.ie, label %.lr.ph240, label %.lr.ph251, !llvm.loop !84

bb.i:                                             ; preds = %._crit_edge248, %.lr.ph251
  %.0199250 = phi i32 [ %i.be, %.lr.ph251 ], [ %i.if, %._crit_edge248 ] ; 13 uses
  %.0200249 = phi i32 [ 2, %.lr.ph251 ], [ %i.mb, %._crit_edge248 ] ; 5 uses
  %i.if = lshr i32 %.0199250, 1                   ; 6 uses
  %i.ig = icmp samesign ugt i32 %.0199250, 3      ; 2 uses
  br i1 %i.ig, label %.lr.ph.preheader.i219, label %bb.k

.lr.ph.preheader.i219:                            ; preds = %bb.i
  %i.ih = sdiv i32 %.0236, %.0199250
  %i.ii = sext i32 %i.ih to i64
  %i.ij = zext nneg i32 %.0199250 to i64
  %wide.trip.count.i220 = zext nneg i32 %i.if to i64 ; 6 uses
  br label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %.lr.ph.i221, %.lr.ph.preheader.i219
  %indvars.iv43.i222 = phi i64 [ 1, %.lr.ph.preheader.i219 ], [ %indvars.iv.next44.i225, %.lr.ph.i221 ] ; 3 uses
  %indvars.iv.i223 = phi i64 [ 0, %.lr.ph.preheader.i219 ], [ %indvars.iv.next.i224, %.lr.ph.i221 ]
  %i.ik = sub nsw i64 %i.ij, %indvars.iv43.i222
  %indvars.iv.next.i224 = add nsw i64 %indvars.iv.i223, %i.ii ; 3 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i224
  %i.im = load double, ptr %i.il, align 8, !tbaa !14 ; 2 uses
  %i.in = sub nsw i64 %i.ho, %indvars.iv.next.i224
  %i.io = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !14 ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ik ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !14
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv43.i222 ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !14 ; 2 uses
  %i.iu = fneg double %i.it
  %i.iv = fsub double %i.im, %i.ip
  %i.iw = fadd double %i.im, %i.ip
  %i.ix = insertelement <2 x double> poison, double %i.iv, i64 0
  %i.iy = insertelement <2 x double> %i.ix, double %i.iw, i64 1 ; 2 uses
  %i.iz = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.ja = insertelement <2 x double> %i.iz, double %i.it, i64 1
  %i.jb = fmul <2 x double> %i.iy, %i.ja
  %i.jc = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jd = insertelement <2 x double> poison, double %i.ir, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> %i.je, <2 x double> %i.jb) ; 2 uses
  %i.jg = extractelement <2 x double> %i.jf, i64 1
  store double %i.jg, ptr %i.iq, align 8, !tbaa !14
  %i.jh = extractelement <2 x double> %i.jf, i64 0
  store double %i.jh, ptr %i.is, align 8, !tbaa !14
  %indvars.iv.next44.i225 = add nuw nsw i64 %indvars.iv43.i222, 1 ; 2 uses
  %exitcond.not.i226 = icmp eq i64 %indvars.iv.next44.i225, %wide.trip.count.i220
  br i1 %exitcond.not.i226, label %dstsub.exit227, label %.lr.ph.i221, !llvm.loop !4

dstsub.exit227:                                   ; preds = %.lr.ph.i221
  %i.ji = load double, ptr %i.eh, align 8, !tbaa !14
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %wide.trip.count.i220 ; 2 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !14
  %i.jl = fmul double %i.ji, %i.jk
  store double %i.jl, ptr %i.jj, align 8, !tbaa !14
  %.not288 = icmp eq i32 %.0199250, 4
  br i1 %.not288, label %bb.l, label %bb.j

bb.j:                                             ; preds = %dstsub.exit227
  tail call void @cftfsub(i32 noundef %.0199250, ptr noundef nonnull %2, ptr noundef nonnull %i.hr, i32 noundef %.0198, ptr noundef nonnull %4)
  %.not = icmp eq i32 %.0199250, 5
  br i1 %.not, label %rftfsub.exit234, label %.lr.ph.preheader.i228

.lr.ph.preheader.i228:                            ; preds = %bb.j
  %i.jm = sdiv i32 %i.hs, %i.if
  %i.jn = sext i32 %i.jm to i64
  %i.jo = zext nneg i32 %.0199250 to i64
  br label %.lr.ph.i229

.lr.ph.i229:                                      ; preds = %.lr.ph.i229, %.lr.ph.preheader.i228
  %indvars.iv45.i230 = phi i64 [ 2, %.lr.ph.preheader.i228 ], [ %indvars.iv.next46.i233, %.lr.ph.i229 ] ; 3 uses
  %indvars.iv.i231 = phi i64 [ 0, %.lr.ph.preheader.i228 ], [ %indvars.iv.next.i232, %.lr.ph.i229 ]
  %i.jp = sub nsw i64 %i.jo, %indvars.iv45.i230
  %indvars.iv.next.i232 = add nsw i64 %indvars.iv.i231, %i.jn ; 3 uses
  %i.jq = sub nsw i64 %i.ho, %indvars.iv.next.i232
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.jq
  %i.js = load double, ptr %i.jr, align 8, !tbaa !14
  %i.jt = fsub double 5.000000e-01, %i.js
  %i.ju = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i232
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !14
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv45.i230 ; 2 uses
  %i.jx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.jp ; 3 uses
  %i.jy = load <2 x double>, ptr %i.jw, align 8, !tbaa !14 ; 3 uses
  %i.jz = load <2 x double>, ptr %i.jx, align 8, !tbaa !14 ; 2 uses
  %i.ka = fsub <2 x double> %i.jy, %i.jz          ; 2 uses
  %i.kb = fadd <2 x double> %i.jy, %i.jz
  %i.kc = shufflevector <2 x double> %i.ka, <2 x double> %i.kb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kd = insertelement <2 x double> poison, double %i.jv, i64 0
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kf = fneg <2 x double> %i.kc
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> %i.ka, <2 x i32> <i32 1, i32 2>
  %i.kh = fmul <2 x double> %i.ke, %i.kg
  %i.ki = insertelement <2 x double> poison, double %i.jt, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.kc, <2 x double> %i.kh) ; 3 uses
  %i.kl = fsub <2 x double> %i.jy, %i.kk
  store <2 x double> %i.kl, ptr %i.jw, align 8, !tbaa !14
  %i.km = load <2 x double>, ptr %i.jx, align 8, !tbaa !14 ; 2 uses
  %i.kn = fadd <2 x double> %i.km, %i.kk
  %i.ko = fsub <2 x double> %i.km, %i.kk
  %i.kp = shufflevector <2 x double> %i.kn, <2 x double> %i.ko, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.kp, ptr %i.jx, align 8, !tbaa !14
  %indvars.iv.next46.i233 = add nuw nsw i64 %indvars.iv45.i230, 2 ; 2 uses
  %i.kq = icmp samesign ult i64 %indvars.iv.next46.i233, %wide.trip.count.i220
  br i1 %i.kq, label %.lr.ph.i229, label %rftfsub.exit234, !llvm.loop !1

bb.k:                                             ; preds = %bb.i
  %.pre269 = zext nneg i32 %i.if to i64           ; 2 uses
  %i.kr = load double, ptr %i.eh, align 8, !tbaa !14
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.pre269 ; 2 uses
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !14
  %i.ku = fmul double %i.kr, %i.kt
  store double %i.ku, ptr %i.ks, align 8, !tbaa !14
  br label %rftfsub.exit234

bb.l:                                             ; preds = %dstsub.exit227
  %i.kv = load <2 x double>, ptr %2, align 8, !tbaa !14 ; 2 uses
  %i.kw = load <2 x double>, ptr %i.hp, align 8, !tbaa !14 ; 2 uses
  %i.kx = fadd <2 x double> %i.kv, %i.kw
  store <2 x double> %i.kx, ptr %2, align 8, !tbaa !14
  %i.ky = fsub <2 x double> %i.kv, %i.kw
  store <2 x double> %i.ky, ptr %i.hp, align 8, !tbaa !14
  br label %rftfsub.exit234

rftfsub.exit234:                                  ; preds = %.lr.ph.i229, %bb.k, %bb.j, %bb.l
  %.pre-phi270275 = phi i64 [ %wide.trip.count.i220, %bb.l ], [ %wide.trip.count.i220, %bb.j ], [ %.pre269, %bb.k ], [ %wide.trip.count.i220, %.lr.ph.i229 ] ; 5 uses
  %i.kz = load double, ptr %i.hq, align 8, !tbaa !14
  %i.la = load double, ptr %2, align 8, !tbaa !14
  %i.lb = fsub double %i.kz, %i.la
  %i.lc = sub nsw i32 %0, %.0200249
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ld
  store double %i.lb, ptr %i.le, align 8, !tbaa !14
  %i.lf = load double, ptr %2, align 8, !tbaa !14
  %i.lg = load double, ptr %i.hq, align 8, !tbaa !14
  %i.lh = fadd double %i.lf, %i.lg
  %i.li = sext i32 %.0200249 to i64               ; 3 uses
  %i.lj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.li
  store double %i.lh, ptr %i.lj, align 8, !tbaa !14
  %i.lk = icmp samesign ugt i32 %.0199250, 2
  br i1 %i.lk, label %.lr.ph243, label %._crit_edge244.thread

._crit_edge244.thread:                            ; preds = %rftfsub.exit234
  %i.ll = shl i32 %.0200249, 1
  br label %._crit_edge252.loopexit

.lr.ph243:                                        ; preds = %rftfsub.exit234
  %i.lm = shl i32 %.0200249, 2
  %i.ln = sext i32 %i.lm to i64
  %i.lo = zext nneg i32 %.0199250 to i64          ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.li
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph243, %bb.m
  %indvars.iv258 = phi i64 [ 2, %.lr.ph243 ], [ %indvars.iv.next259, %bb.m ] ; 2 uses
  %indvars.iv256 = phi i64 [ 0, %.lr.ph243 ], [ %indvars.iv.next257, %bb.m ]
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, %i.ln ; 3 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv258 ; 3 uses
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !14
  %i.lr = fneg double %i.lq
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 8 ; 2 uses
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !14
  %i.lu = fsub double %i.lr, %i.lt
  %i.lv = sub nsw i64 %indvars.iv.next257, %i.li
  %i.lw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lv
  store double %i.lu, ptr %i.lw, align 8, !tbaa !14
  %i.lx = load double, ptr %i.lp, align 8, !tbaa !14
  %i.ly = load double, ptr %i.ls, align 8, !tbaa !14
  %i.lz = fsub double %i.lx, %i.ly
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next257
  store double %i.lz, ptr %gep, align 8, !tbaa !14
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 2 ; 2 uses
  %i.ma = icmp samesign ult i64 %indvars.iv.next259, %i.lo
  br i1 %i.ma, label %bb.m, label %._crit_edge244, !llvm.loop !85

._crit_edge244:                                   ; preds = %bb.m
  %i.mb = shl i32 %.0200249, 1                    ; 2 uses
  br i1 %i.ig, label %.lr.ph247.preheader, label %._crit_edge252.loopexit

.lr.ph247.preheader:                              ; preds = %._crit_edge244
  %i.mc = zext nneg i32 %.0199250 to i64          ; 6 uses
  %invariant.gep284 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mc ; 7 uses
  %invariant.gep286 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mc ; 4 uses
  %i.md = add nsw i64 %.pre-phi270275, -1         ; 4 uses
  %min.iters.check442 = icmp ult i64 %i.md, 10
  br i1 %min.iters.check442, label %.lr.ph247.preheader477, label %vector.memcheck443

vector.memcheck443:                               ; preds = %.lr.ph247.preheader
  %i.me = shl nuw nsw i64 %.pre-phi270275, 3      ; 4 uses
  %i.mf = getelementptr i8, ptr %2, i64 %i.me     ; 3 uses
  %i.mg = shl nuw nsw i64 %i.lo, 3                ; 3 uses
  %i.mh = sub nsw i64 %i.mg, %i.me
  %i.mi = getelementptr i8, ptr %i.hq, i64 %i.mh  ; 3 uses
  %i.mj = shl nuw nsw i64 %i.lo, 4                ; 2 uses
  %i.mk = sub nsw i64 %i.mj, %i.me
  %i.ml = getelementptr i8, ptr %i.hq, i64 %i.mk  ; 2 uses
  %i.mm = getelementptr i8, ptr %2, i64 %i.mj     ; 2 uses
  %i.mn = getelementptr i8, ptr %i.hq, i64 %i.mg  ; 2 uses
  %i.mo = getelementptr i8, ptr %2, i64 %i.me
  %i.mp = getelementptr i8, ptr %i.mo, i64 %i.mg  ; 2 uses
  %bound0444 = icmp ult ptr %i.hq, %invariant.gep284
  %bound1445 = icmp ult ptr %i.mi, %i.mf
  %found.conflict446 = and i1 %bound0444, %bound1445
  %bound0447 = icmp ult ptr %i.hq, %i.mm
  %bound1448 = icmp ult ptr %i.ml, %i.mf
  %found.conflict449 = and i1 %bound0447, %bound1448
  %conflict.rdx450 = or i1 %found.conflict446, %found.conflict449
  %bound0451 = icmp ult ptr %i.hq, %i.mp
  %bound1452 = icmp ult ptr %i.mn, %i.mf
  %found.conflict453 = and i1 %bound0451, %bound1452
  %conflict.rdx454 = or i1 %conflict.rdx450, %found.conflict453
  %bound0455 = icmp ult ptr %i.mi, %i.mm
  %bound1456 = icmp ult ptr %i.ml, %invariant.gep284
  %found.conflict457 = and i1 %bound0455, %bound1456
  %conflict.rdx458 = or i1 %conflict.rdx454, %found.conflict457
  %bound0459 = icmp ult ptr %i.mi, %i.mp
  %bound1460 = icmp ult ptr %i.mn, %invariant.gep284
  %found.conflict461 = and i1 %bound0459, %bound1460
  %conflict.rdx462 = or i1 %conflict.rdx458, %found.conflict461
  br i1 %conflict.rdx462, label %.lr.ph247.preheader477, label %vector.ph463

vector.ph463:                                     ; preds = %vector.memcheck443
  %n.vec464 = and i64 %i.md, -2                   ; 2 uses
  %i.mq = or i64 %i.md, 1
  br label %vector.body465

vector.body465:                                   ; preds = %vector.body465, %vector.ph463
  %index466 = phi i64 [ 0, %vector.ph463 ], [ %index.next473, %vector.body465 ] ; 2 uses
  %i.mr = or disjoint i64 %index466, 1            ; 3 uses
  %i.ms = sub nuw nsw i64 %i.mc, %i.mr            ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.ms
  %i.mu = getelementptr inbounds i8, ptr %i.mt, i64 -8 ; 2 uses
  %wide.load467 = load <2 x double>, ptr %i.mu, align 8, !tbaa !14, !alias.scope !105
  %reverse468 = shufflevector <2 x double> %wide.load467, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %i.mr
  %wide.load469 = load <2 x double>, ptr %i.mv, align 8, !tbaa !14, !alias.scope !106 ; 2 uses
  %i.mw = fadd <2 x double> %reverse468, %wide.load469
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.mr
  store <2 x double> %i.mw, ptr %i.mx, align 8, !tbaa !14, !alias.scope !107, !noalias !108
  %wide.load470 = load <2 x double>, ptr %i.mu, align 8, !tbaa !14, !alias.scope !105
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ms
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 -8
  %i.na = shufflevector <2 x double> %wide.load469, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse472 = fsub <2 x double> %wide.load470, %i.na
  store <2 x double> %reverse472, ptr %i.mz, align 8, !tbaa !14, !alias.scope !109, !noalias !110
  %index.next473 = add nuw i64 %index466, 2       ; 2 uses
  %i.nb = icmp eq i64 %index.next473, %n.vec464
  br i1 %i.nb, label %middle.block474, label %vector.body465, !llvm.loop !91

middle.block474:                                  ; preds = %vector.body465
  %cmp.n475 = icmp eq i64 %i.md, %n.vec464
  br i1 %cmp.n475, label %._crit_edge248, label %.lr.ph247.preheader477

.lr.ph247.preheader477:                           ; preds = %vector.memcheck443, %.lr.ph247.preheader, %middle.block474
  %indvars.iv263.ph = phi i64 [ 1, %vector.memcheck443 ], [ 1, %.lr.ph247.preheader ], [ %i.mq, %middle.block474 ] ; 6 uses
  %.neg = add nsw i64 %indvars.iv263.ph, 1
  %i.nc = and i64 %.pre-phi270275, 1
  %lcmp.mod486.not.not = icmp eq i64 %i.nc, 0
  br i1 %lcmp.mod486.not.not, label %.lr.ph247.prol, label %.lr.ph247.prol.loopexit

.lr.ph247.prol:                                   ; preds = %.lr.ph247.preheader477
  %i.nd = sub nuw nsw i64 %i.mc, %indvars.iv263.ph ; 2 uses
  %gep285.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.nd ; 2 uses
  %i.ne = load double, ptr %gep285.prol, align 8, !tbaa !14
  %gep287.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv263.ph
  %i.nf = load double, ptr %gep287.prol, align 8, !tbaa !14 ; 2 uses
  %i.ng = fadd double %i.ne, %i.nf
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv263.ph
  store double %i.ng, ptr %i.nh, align 8, !tbaa !14
  %i.ni = load double, ptr %gep285.prol, align 8, !tbaa !14
  %i.nj = fsub double %i.ni, %i.nf
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nd
  store double %i.nj, ptr %i.nk, align 8, !tbaa !14
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv263.ph, 1
  br label %.lr.ph247.prol.loopexit

.lr.ph247.prol.loopexit:                          ; preds = %.lr.ph247.prol, %.lr.ph247.preheader477
  %indvars.iv263.unr = phi i64 [ %indvars.iv263.ph, %.lr.ph247.preheader477 ], [ %indvars.iv.next264.prol, %.lr.ph247.prol ]
  %i.nl = icmp eq i64 %.pre-phi270275, %.neg
  br i1 %i.nl, label %._crit_edge248, label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247
  %indvars.iv263 = phi i64 [ %indvars.iv.next264.1, %.lr.ph247 ], [ %indvars.iv263.unr, %.lr.ph247.prol.loopexit ] ; 5 uses
  %i.nm = sub nuw nsw i64 %i.mc, %indvars.iv263   ; 2 uses
  %gep285 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.nm ; 2 uses
  %i.nn = load double, ptr %gep285, align 8, !tbaa !14
  %gep287 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv263
  %i.no = load double, ptr %gep287, align 8, !tbaa !14 ; 2 uses
  %i.np = fadd double %i.nn, %i.no
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv263
  store double %i.np, ptr %i.nq, align 8, !tbaa !14
  %i.nr = load double, ptr %gep285, align 8, !tbaa !14
  %i.ns = fsub double %i.nr, %i.no
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nm
  store double %i.ns, ptr %i.nt, align 8, !tbaa !14
  %indvars.iv.next264 = add nuw nsw i64 %indvars.iv263, 1 ; 3 uses
  %i.nu = sub nuw nsw i64 %i.mc, %indvars.iv.next264 ; 2 uses
  %gep285.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %i.nu ; 2 uses
  %i.nv = load double, ptr %gep285.1, align 8, !tbaa !14
  %gep287.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv.next264
  %i.nw = load double, ptr %gep287.1, align 8, !tbaa !14 ; 2 uses
  %i.nx = fadd double %i.nv, %i.nw
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next264
  store double %i.nx, ptr %i.ny, align 8, !tbaa !14
  %i.nz = load double, ptr %gep285.1, align 8, !tbaa !14
  %i.oa = fsub double %i.nz, %i.nw
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.nu
  store double %i.oa, ptr %i.ob, align 8, !tbaa !14
  %indvars.iv.next264.1 = add nuw nsw i64 %indvars.iv263, 2 ; 2 uses
  %exitcond267.not.1 = icmp eq i64 %indvars.iv.next264.1, %.pre-phi270275
  br i1 %exitcond267.not.1, label %._crit_edge248, label %.lr.ph247, !llvm.loop !92

._crit_edge248:                                   ; preds = %.lr.ph247.prol.loopexit, %.lr.ph247, %middle.block474
  %i.oc = add nuw nsw i32 %i.if, %.0199250
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.od
  %i.of = load double, ptr %i.oe, align 8, !tbaa !14
  store double %i.of, ptr %2, align 8, !tbaa !14
  br label %bb.i, !llvm.loop !93

._crit_edge252.loopexit:                          ; preds = %._crit_edge244, %._crit_edge244.thread
  %.ph = phi i32 [ %i.ll, %._crit_edge244.thread ], [ %i.mb, %._crit_edge244 ]
  %i.og = add nuw nsw i32 %i.if, %.0199250
  %i.oh = zext nneg i32 %i.og to i64
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.oh
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !14 ; 2 uses
  store double %i.oj, ptr %2, align 8, !tbaa !14
  %i.ok = sext i32 %.ph to i64
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %.preheader.._crit_edge252_crit_edge, %._crit_edge252.loopexit
  %i.ol = phi double [ %.pre, %.preheader.._crit_edge252_crit_edge ], [ %i.oj, %._crit_edge252.loopexit ]
  %.0200.lcssa = phi i64 [ 2, %.preheader.._crit_edge252_crit_edge ], [ %i.ok, %._crit_edge252.loopexit ]
  %i.om = getelementptr inbounds [8 x i8], ptr %1, i64 %.0200.lcssa
  store double %i.ol, ptr %i.om, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge252, %makect.exit
  store double 0.000000e+00, ptr %1, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftf1st(i32 noundef %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 !guid !112 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = fadd double %i.k, %i.m                   ; 2 uses
  %i.o = fsub double %i.e, %i.h                   ; 2 uses
  %i.p = fsub double %i.k, %i.m                   ; 2 uses
  %i.q = sext i32 %i.b to i64                     ; 8 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.t = sext i32 %i.d to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 2 uses
  %i.w = fadd double %i.s, %i.v                   ; 2 uses
  %i.x = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %i.ab = fadd double %i.y, %i.aa                 ; 2 uses
  %i.ac = fsub double %i.s, %i.v                  ; 2 uses
  %i.ad = fsub double %i.y, %i.aa                 ; 2 uses
  %i.ae = fadd double %i.i, %i.w
  store double %i.ae, ptr %1, align 8, !tbaa !14
  %i.af = fadd double %i.n, %i.ab
  store double %i.af, ptr %i.j, align 8, !tbaa !14
  %i.ag = fsub double %i.i, %i.w
  store double %i.ag, ptr %i.r, align 8, !tbaa !14
  %i.ah = fsub double %i.n, %i.ab
  store double %i.ah, ptr %i.x, align 8, !tbaa !14
  %i.ai = fsub double %i.o, %i.ad
  store double %i.ai, ptr %i.g, align 8, !tbaa !14
  %i.aj = fadd double %i.p, %i.ac
  store double %i.aj, ptr %i.l, align 8, !tbaa !14
  %i.ak = fadd double %i.o, %i.ad
  store double %i.ak, ptr %i.u, align 8, !tbaa !14
  %i.al = fsub double %i.p, %i.ac
  store double %i.al, ptr %i.z, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !14 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !14 ; 4 uses
  %i.as = add nsw i32 %i.a, -2                    ; 2 uses
  %i.at = icmp sgt i32 %i.a, 4
  br i1 %i.at, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.as to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.au = zext nneg i32 %i.as to i64              ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.q
  %invariant.gep711 = getelementptr [8 x i8], ptr %1, i64 %i.q
  %i.av = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0695 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.cy, %.lr.ph ]
  %.0684694 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.cs, %.lr.ph ]
  %i.ax = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.ba, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.ba = load <2 x double>, ptr %i.ay, align 8, !tbaa !14 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bd = add nuw nsw i64 %indvars.iv703, %i.q    ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, %i.q             ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv703 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.be ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bg, i64 16     ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bd ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.be ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16     ; 2 uses
  %i.bl = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.bm = load <2 x double>, ptr %i.bf, align 8, !tbaa !14 ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bg, align 8, !tbaa !14 ; 2 uses
  %i.bo = fadd <2 x double> %i.bm, %i.bn          ; 2 uses
  %i.bp = load <2 x double>, ptr %i.bj, align 8, !tbaa !14 ; 2 uses
  %i.bq = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 2 uses
  %i.br = fadd <2 x double> %i.bp, %i.bq          ; 2 uses
  %i.bs = fadd <2 x double> %i.bo, %i.br
  %i.bt = load <2 x double>, ptr %i.bh, align 8, !tbaa !14 ; 2 uses
  %i.bu = load <2 x double>, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bv = fadd <2 x double> %i.bt, %i.bu          ; 2 uses
  %i.bw = load <2 x double>, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %i.bx = load <2 x double>, ptr %i.bl, align 8, !tbaa !14 ; 2 uses
  %i.by = fadd <2 x double> %i.bw, %i.bx          ; 2 uses
  %i.bz = fadd <2 x double> %i.bv, %i.by
  %i.ca = fsub <2 x double> %i.bo, %i.br
  %i.cb = fsub <2 x double> %i.bv, %i.by
  %i.cc = sub nsw i64 %i.q, %indvars.iv703        ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, %i.q             ; 2 uses
  %i.ce = add nuw nsw i64 %i.cd, %i.q             ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cc ; 3 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ce ; 3 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 -16    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cg, i64 -16    ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cd ; 3 uses
  %gep712 = getelementptr [8 x i8], ptr %invariant.gep711, i64 %i.ce ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -16    ; 2 uses
  %i.cl = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %i.cm = fsub <2 x double> %i.bm, %i.bn          ; 2 uses
  %i.cn = fsub <2 x double> %i.bp, %i.bq
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cp = fadd <2 x double> %i.cm, %i.co          ; 2 uses
  %i.cq = fsub <2 x double> %i.cm, %i.co          ; 4 uses
  %i.cr = shufflevector <2 x double> %i.cp, <2 x double> %i.cq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cs = load double, ptr %i.bb, align 8, !tbaa !14 ; 4 uses
  %i.ct = fadd double %.0684694, %i.cs
  %i.cu = fmul double %i.ar, %i.ct
  %i.cv = load double, ptr %i.bc, align 8, !tbaa !14 ; 3 uses
  %i.cw = fsub double %.0695, %i.cv
  %i.cx = fmul double %i.ar, %i.cw
  %i.cy = fneg double %i.cv                       ; 3 uses
  store <2 x double> %i.bs, ptr %i.bf, align 8, !tbaa !14
  store <2 x double> %i.bz, ptr %i.bh, align 8, !tbaa !14
  store <2 x double> %i.ca, ptr %i.bj, align 8, !tbaa !14
  store <2 x double> %i.cb, ptr %i.bk, align 8, !tbaa !14
  %i.cz = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = fneg <2 x double> %i.cr
  %i.dc = shufflevector <2 x double> %i.cq, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %i.dd = fmul <2 x double> %i.da, %i.dc
  %i.de = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.df = shufflevector <2 x double> %i.de, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.cr, <2 x double> %i.dd)
  %i.dh = fadd <2 x double> %i.ax, %i.ba
  %i.di = fmul <2 x double> %i.aw, %i.dh          ; 2 uses
  %i.dj = shufflevector <2 x double> %i.cq, <2 x double> %i.cp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dl = fneg <2 x double> %i.dj
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> %i.cq, <2 x i32> <i32 1, i32 2>
  %i.dn = fmul <2 x double> %i.dk, %i.dm
  %i.do = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.dj, <2 x double> %i.dn)
  store <2 x double> %i.dp, ptr %i.bg, align 8, !tbaa !14
  %i.dq = fsub <2 x double> %i.bt, %i.bu          ; 2 uses
  %i.dr = fsub <2 x double> %i.bw, %i.bx
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dt = fadd <2 x double> %i.dq, %i.ds          ; 3 uses
  %i.du = fsub <2 x double> %i.dq, %i.ds          ; 4 uses
  %i.dv = shufflevector <2 x double> %i.dt, <2 x double> %i.du, <2 x i32> <i32 0, i32 3>
  %i.dw = shufflevector <2 x double> %i.du, <2 x double> %i.dt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dx = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dy = fneg <2 x double> %i.dw
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> %i.du, <2 x i32> <i32 1, i32 2>
  %i.ea = fmul <2 x double> %i.dx, %i.dz
  %i.eb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.dw, <2 x double> %i.ea)
  store <2 x double> %i.ec, ptr %i.bi, align 8, !tbaa !14
  store <2 x double> %i.dg, ptr %gep, align 8, !tbaa !14
  %i.ed = shufflevector <2 x double> %i.du, <2 x double> %i.dt, <2 x i32> <i32 1, i32 2>
  %i.ee = insertelement <2 x double> poison, double %i.cy, i64 0 ; 2 uses
  %i.ef = insertelement <2 x double> %i.ee, double %i.cv, i64 1
  %i.eg = fmul <2 x double> %i.ed, %i.ef
  %i.eh = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.dv, <2 x double> %i.eg)
  store <2 x double> %i.ej, ptr %i.bl, align 8, !tbaa !14
  %i.ek = load <2 x double>, ptr %i.ch, align 8, !tbaa !14 ; 2 uses
  %i.el = load <2 x double>, ptr %i.ci, align 8, !tbaa !14 ; 2 uses
  %i.em = fadd <2 x double> %i.ek, %i.el          ; 2 uses
  %i.en = load <2 x double>, ptr %i.ck, align 8, !tbaa !14 ; 2 uses
  %i.eo = load <2 x double>, ptr %i.cl, align 8, !tbaa !14 ; 2 uses
  %i.ep = fadd <2 x double> %i.en, %i.eo          ; 2 uses
  %i.eq = load <2 x double>, ptr %i.cf, align 8, !tbaa !14 ; 2 uses
  %i.er = load <2 x double>, ptr %i.cg, align 8, !tbaa !14 ; 2 uses
  %i.es = fadd <2 x double> %i.eq, %i.er          ; 2 uses
  %i.et = fsub <2 x double> %i.eq, %i.er          ; 2 uses
  %i.eu = load <2 x double>, ptr %i.cj, align 8, !tbaa !14 ; 2 uses
  %i.ev = load <2 x double>, ptr %gep712, align 8, !tbaa !14 ; 2 uses
  %i.ew = fadd <2 x double> %i.eu, %i.ev          ; 2 uses
  %i.ex = fsub <2 x double> %i.eu, %i.ev
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ez = fadd <2 x double> %i.es, %i.ew
  store <2 x double> %i.ez, ptr %i.cf, align 8, !tbaa !14
  %i.fa = fadd <2 x double> %i.em, %i.ep
  store <2 x double> %i.fa, ptr %i.ch, align 8, !tbaa !14
  %i.fb = fsub <2 x double> %i.es, %i.ew
  store <2 x double> %i.fb, ptr %i.cj, align 8, !tbaa !14
  %i.fc = fsub <2 x double> %i.em, %i.ep
  store <2 x double> %i.fc, ptr %i.ck, align 8, !tbaa !14
  %i.fd = fsub <2 x double> %i.et, %i.ey          ; 4 uses
  %i.fe = fadd <2 x double> %i.et, %i.ey          ; 2 uses
  %i.ff = shufflevector <2 x double> %i.fd, <2 x double> %i.fe, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.fg = fneg <2 x double> %i.ff
  %i.fh = shufflevector <2 x double> %i.fd, <2 x double> %i.fg, <2 x i32> <i32 0, i32 2>
  %i.fi = fmul <2 x double> %i.do, %i.fh
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.ff, <2 x double> %i.fi)
  %i.fk = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fk, ptr %i.cg, align 8, !tbaa !14
  %i.fl = shufflevector <2 x double> %i.fe, <2 x double> %i.fd, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fm = fneg <2 x double> %i.fl
  %i.fn = shufflevector <2 x double> %i.fd, <2 x double> %i.fm, <2 x i32> <i32 1, i32 2>
  %i.fo = fmul <2 x double> %i.df, %i.fn
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.da, <2 x double> %i.fl, <2 x double> %i.fo)
  %i.fq = fsub <2 x double> %i.ek, %i.el          ; 2 uses
  %i.fr = fsub <2 x double> %i.en, %i.eo
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ft = fsub <2 x double> %i.fq, %i.fs          ; 4 uses
  %i.fu = fadd <2 x double> %i.fq, %i.fs          ; 2 uses
  %i.fv = shufflevector <2 x double> %i.ft, <2 x double> %i.fu, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.fw = fneg <2 x double> %i.fv
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> %i.ft, <2 x i32> <i32 1, i32 2>
  %i.fy = fmul <2 x double> %i.eb, %i.fx
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.fv, <2 x double> %i.fy)
  store <2 x double> %i.fz, ptr %i.ci, align 8, !tbaa !14
  store <2 x double> %i.fp, ptr %gep712, align 8, !tbaa !14
  %i.ga = shufflevector <2 x double> %i.fu, <2 x double> %i.ft, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.gb = fneg <2 x double> %i.ga
  %i.gc = shufflevector <2 x double> %i.ft, <2 x double> %i.gb, <2 x i32> <i32 1, i32 2>
  %i.gd = fmul <2 x double> %i.ei, %i.gc
  %i.ge = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ge, <2 x double> %i.ga, <2 x double> %i.gd)
  store <2 x double> %i.gf, ptr %i.cl, align 8, !tbaa !14
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.gg = icmp samesign ult i64 %indvars.iv.next704, %i.au
  br i1 %i.gg, label %.lr.ph, label %._crit_edge, !llvm.loop !111

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.au, %.lr.ph ]
  %.0684.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %i.cs, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.cy, %.lr.ph ]
  %i.gh = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.._crit_edge_crit_edge ], [ %i.ba, %.lr.ph ]
  %i.gi = insertelement <2 x double> poison, double %i.an, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = fadd <2 x double> %i.gj, %i.gh
  %i.gl = fsub double %.0684.lcssa, %i.an
  %i.gm = fsub double %.0.lcssa, %i.an
  %i.gn = mul nsw i32 %i.a, 3
  %i.go = mul nsw i32 %i.a, 5
  %i.gp = mul nsw i32 %i.a, 7
  %i.gq = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !14 ; 2 uses
  %i.gs = sext i32 %i.go to i64
  %i.gt = getelementptr [8 x i8], ptr %1, i64 %i.gs ; 5 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 -16    ; 2 uses
  %i.gv = sext i32 %i.a to i64
  %i.gw = getelementptr [8 x i8], ptr %1, i64 %i.gv ; 6 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 -8     ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !14 ; 2 uses
  %i.gz = sext i32 %i.gn to i64
  %i.ha = getelementptr [8 x i8], ptr %1, i64 %i.gz ; 7 uses
  %i.hb = getelementptr i8, ptr %i.ha, i64 -16    ; 2 uses
  %i.hc = sext i32 %i.gp to i64
  %i.hd = getelementptr [8 x i8], ptr %1, i64 %i.hc ; 5 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 -16    ; 2 uses
  %i.hf = getelementptr i8, ptr %i.ha, i64 -8
  %i.hg = load <2 x double>, ptr %i.gu, align 8, !tbaa !14 ; 3 uses
  %i.hh = extractelement <2 x double> %i.hg, i64 0
  %i.hi = fadd double %i.gr, %i.hh                ; 2 uses
  %i.hj = extractelement <2 x double> %i.hg, i64 1
  %i.hk = fadd double %i.gy, %i.hj                ; 2 uses
  %i.hl = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.gy, i64 1
  %i.hn = fsub <2 x double> %i.hm, %i.hg          ; 2 uses
  %i.ho = load <2 x double>, ptr %i.hb, align 8, !tbaa !14 ; 3 uses
  %i.hp = load <2 x double>, ptr %i.he, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop = fadd <2 x double> %i.ho, %i.hp
  %i.hq = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop717 = fadd <2 x double> %i.ho, %i.hp
  %i.hr = extractelement <2 x double> %foldExtExtBinop717, i64 1 ; 2 uses
  %i.hs = fsub <2 x double> %i.ho, %i.hp
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.hu = fadd double %i.hi, %i.hq
  store double %i.hu, ptr %i.gq, align 8, !tbaa !14
  %i.hv = fadd double %i.hk, %i.hr
  store double %i.hv, ptr %i.gx, align 8, !tbaa !14
  %i.hw = fsub double %i.hi, %i.hq
  store double %i.hw, ptr %i.hb, align 8, !tbaa !14
  %i.hx = fsub double %i.hk, %i.hr
  store double %i.hx, ptr %i.hf, align 8, !tbaa !14
  %i.hy = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = fmul <2 x double> %i.hz, %i.gk          ; 2 uses
  %i.ib = fsub <2 x double> %i.hn, %i.ht          ; 4 uses
  %i.ic = fadd <2 x double> %i.hn, %i.ht          ; 3 uses
  %i.id = shufflevector <2 x double> %i.ib, <2 x double> %i.ic, <2 x i32> <i32 0, i32 3>
  %i.ie = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.if = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ig = shufflevector <2 x double> %i.ic, <2 x double> %i.ib, <2 x i32> <i32 0, i32 3>
  %i.ih = fneg <2 x double> %i.ic
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ij = shufflevector <2 x double> %i.ii, <2 x double> %i.ib, <2 x i32> <i32 0, i32 2>
  %i.ik = fmul <2 x double> %i.ie, %i.ij
  %i.il = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.id, <2 x double> %i.ik)
  store <2 x double> %i.il, ptr %i.gu, align 8, !tbaa !14
  %i.im = shufflevector <2 x double> %i.ib, <2 x double> %i.ii, <2 x i32> <i32 1, i32 3>
  %i.in = getelementptr i8, ptr %i.gw, i64 8      ; 2 uses
  %i.io = getelementptr i8, ptr %i.gt, i64 8      ; 2 uses
  %i.ip = load double, ptr %i.ha, align 8, !tbaa !14 ; 2 uses
  %i.iq = load double, ptr %i.hd, align 8, !tbaa !14 ; 2 uses
  %i.ir = fadd double %i.ip, %i.iq                ; 2 uses
  %i.is = getelementptr i8, ptr %i.ha, i64 8      ; 2 uses
  %i.it = load double, ptr %i.is, align 8, !tbaa !14 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.hd, i64 8      ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !14 ; 2 uses
  %i.iw = fadd double %i.it, %i.iv                ; 2 uses
  %i.ix = fsub double %i.ip, %i.iq                ; 2 uses
  %i.iy = fsub double %i.it, %i.iv                ; 2 uses
  %i.iz = fneg double %i.an                       ; 2 uses
  %i.ja = getelementptr i8, ptr %i.gw, i64 16     ; 2 uses
  %i.jb = getelementptr i8, ptr %i.gt, i64 16     ; 2 uses
  %i.jc = getelementptr i8, ptr %i.gw, i64 24
  %i.jd = getelementptr i8, ptr %i.ha, i64 16     ; 2 uses
  %i.je = getelementptr i8, ptr %i.hd, i64 16     ; 2 uses
  %i.jf = getelementptr i8, ptr %i.ha, i64 24
  %i.jg = fmul double %i.ar, %i.gl
  %i.jh = fmul double %i.ar, %i.gm
  %i.ji = insertelement <2 x double> poison, double %i.jh, i64 0
  %i.jj = shufflevector <2 x double> %i.ji, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jk = fmul <2 x double> %i.jj, %i.im
  %i.jl = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.jm = shufflevector <2 x double> %i.jl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.ig, <2 x double> %i.jk)
  store <2 x double> %i.jn, ptr %i.he, align 8, !tbaa !14
  %i.jo = load double, ptr %i.gw, align 8, !tbaa !14 ; 2 uses
  %i.jp = load double, ptr %i.gt, align 8, !tbaa !14 ; 2 uses
  %i.jq = fadd double %i.jo, %i.jp                ; 2 uses
  %i.jr = load double, ptr %i.in, align 8, !tbaa !14 ; 2 uses
  %i.js = load double, ptr %i.io, align 8, !tbaa !14 ; 2 uses
  %i.jt = fadd double %i.jr, %i.js                ; 2 uses
  %i.ju = fsub double %i.jo, %i.jp                ; 2 uses
  %i.jv = fsub double %i.jr, %i.js                ; 2 uses
  %i.jw = fadd double %i.jq, %i.ir
  store double %i.jw, ptr %i.gw, align 8, !tbaa !14
  %i.jx = fadd double %i.jt, %i.iw
  store double %i.jx, ptr %i.in, align 8, !tbaa !14
  %i.jy = fsub double %i.jq, %i.ir
  store double %i.jy, ptr %i.ha, align 8, !tbaa !14
  %i.jz = fsub double %i.jt, %i.iw
  store double %i.jz, ptr %i.is, align 8, !tbaa !14
  %i.ka = fsub double %i.ju, %i.iy                ; 2 uses
  %i.kb = fadd double %i.jv, %i.ix                ; 2 uses
  %i.kc = fsub double %i.ka, %i.kb
  %i.kd = fmul double %i.an, %i.kc
  store double %i.kd, ptr %i.gt, align 8, !tbaa !14
  %i.ke = fadd double %i.kb, %i.ka
  %i.kf = fmul double %i.an, %i.ke
  store double %i.kf, ptr %i.io, align 8, !tbaa !14
  %i.kg = fadd double %i.ju, %i.iy                ; 2 uses
  %i.kh = fsub double %i.jv, %i.ix                ; 2 uses
  %i.ki = fadd double %i.kh, %i.kg
  %i.kj = fmul double %i.ki, %i.iz
  store double %i.kj, ptr %i.hd, align 8, !tbaa !14
  %i.kk = fsub double %i.kh, %i.kg
  %i.kl = fmul double %i.kk, %i.iz
  store double %i.kl, ptr %i.iu, align 8, !tbaa !14
  %i.km = load <2 x double>, ptr %i.ja, align 8, !tbaa !14 ; 3 uses
  %i.kn = load <2 x double>, ptr %i.jb, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop719 = fadd <2 x double> %i.km, %i.kn ; 2 uses
  %foldExtExtBinop721 = fadd <2 x double> %i.km, %i.kn
  %i.ko = extractelement <2 x double> %foldExtExtBinop721, i64 1 ; 2 uses
  %i.kp = fsub <2 x double> %i.km, %i.kn          ; 2 uses
  %i.kq = load <2 x double>, ptr %i.jd, align 8, !tbaa !14 ; 3 uses
  %i.kr = load <2 x double>, ptr %i.je, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop723 = fadd <2 x double> %i.kq, %i.kr ; 2 uses
  %foldExtExtBinop725 = fadd <2 x double> %i.kq, %i.kr
  %i.ks = extractelement <2 x double> %foldExtExtBinop725, i64 1 ; 2 uses
  %i.kt = fsub <2 x double> %i.kq, %i.kr
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %foldExtExtBinop727 = fadd <2 x double> %foldExtExtBinop719, %foldExtExtBinop723
  %i.kv = extractelement <2 x double> %foldExtExtBinop727, i64 0
  store double %i.kv, ptr %i.ja, align 8, !tbaa !14
  %i.kw = fadd double %i.ko, %i.ks
  store double %i.kw, ptr %i.jc, align 8, !tbaa !14
  %foldExtExtBinop729 = fsub <2 x double> %foldExtExtBinop719, %foldExtExtBinop723
  %i.kx = extractelement <2 x double> %foldExtExtBinop729, i64 0
  store double %i.kx, ptr %i.jd, align 8, !tbaa !14
  %i.ky = fsub double %i.ko, %i.ks
  store double %i.ky, ptr %i.jf, align 8, !tbaa !14
  %i.kz = fsub <2 x double> %i.kp, %i.ku          ; 4 uses
  %i.la = fadd <2 x double> %i.kp, %i.ku          ; 3 uses
  %i.lb = shufflevector <2 x double> %i.kz, <2 x double> %i.la, <2 x i32> <i32 0, i32 3>
  %i.lc = shufflevector <2 x double> %i.la, <2 x double> %i.kz, <2 x i32> <i32 0, i32 3>
  %i.ld = fneg <2 x double> %i.la
  %i.le = shufflevector <2 x double> %i.ld, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lf = shufflevector <2 x double> %i.le, <2 x double> %i.kz, <2 x i32> <i32 0, i32 2>
  %i.lg = fmul <2 x double> %i.if, %i.lf
  %i.lh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.lb, <2 x double> %i.lg)
  store <2 x double> %i.lh, ptr %i.jb, align 8, !tbaa !14
  %i.li = shufflevector <2 x double> %i.kz, <2 x double> %i.le, <2 x i32> <i32 1, i32 3>
  %i.lj = fmul <2 x double> %i.jm, %i.li
  %i.lk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> %i.lc, <2 x double> %i.lj)
  store <2 x double> %i.lk, ptr %i.je, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftrec1(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 !guid !113 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 2 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = sub nsw i32 %2, %i.b
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %3, i64 %i.d
  tail call void @cftmdl1(i32 noundef %0, ptr noundef %1, ptr noundef %i.e)
  %i.f = icmp sgt i32 %0, 512
  br i1 %i.f, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %i.g = phi i32 [ %i.q, %tailrecurse ], [ %i.b, %bb.a ]
  %i.h = phi i32 [ %i.p, %tailrecurse ], [ %i.a, %bb.a ] ; 9 uses
  %.tr2932 = phi ptr [ %i.o, %tailrecurse ], [ %1, %bb.a ] ; 4 uses
  tail call void @cftrec1(i32 noundef %i.h, ptr noundef %.tr2932, i32 noundef %2, ptr noundef %3)
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.i
  tail call void @cftrec2(i32 noundef %i.h, ptr noundef %i.j, i32 noundef %2, ptr noundef %3)
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.k
  tail call void @cftrec1(i32 noundef %i.h, ptr noundef %i.l, i32 noundef %2, ptr noundef %3)
  %i.m = mul nuw nsw i32 %i.h, 3
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.tr2932, i64 %i.n ; 3 uses
  %i.p = lshr i32 %i.h, 2                         ; 2 uses
  %i.q = shl nuw nsw i32 %i.p, 1                  ; 2 uses
  %i.r = sub nsw i32 %2, %i.q
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %3, i64 %i.s
  tail call void @cftmdl1(i32 noundef %i.h, ptr noundef %i.o, ptr noundef %i.t)
  %i.u = icmp sgt i32 %i.h, 512
  br i1 %i.u, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi i32 [ %0, %bb.a ], [ %i.h, %tailrecurse ]
  %.tr29.lcssa = phi ptr [ %1, %bb.a ], [ %i.o, %tailrecurse ]
  tail call void @cftexp1(i32 noundef %.tr.lcssa, ptr noundef %.tr29.lcssa, i32 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftrec2(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 !guid !114 {
bb.a:
  %i.a = sub nsw i32 %2, %0
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %3, i64 %i.b
  tail call void @cftmdl2(i32 noundef %0, ptr noundef %1, ptr noundef %i.c)
  %i.d = icmp sgt i32 %0, 512
  br i1 %i.d, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse:                                      ; preds = %bb.a, %tailrecurse
  %.tr2933 = phi ptr [ %i.m, %tailrecurse ], [ %1, %bb.a ] ; 4 uses
  %.tr32 = phi i32 [ %i.e, %tailrecurse ], [ %0, %bb.a ] ; 2 uses
  %i.e = lshr i32 %.tr32, 2                       ; 10 uses
  tail call void @cftrec1(i32 noundef %i.e, ptr noundef %.tr2933, i32 noundef %2, ptr noundef %3)
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.tr2933, i64 %i.f
  tail call void @cftrec2(i32 noundef %i.e, ptr noundef %i.g, i32 noundef %2, ptr noundef %3)
  %i.h = shl nuw nsw i32 %i.e, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.tr2933, i64 %i.i
  tail call void @cftrec1(i32 noundef %i.e, ptr noundef %i.j, i32 noundef %2, ptr noundef %3)
  %i.k = mul nuw nsw i32 %i.e, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.tr2933, i64 %i.l ; 3 uses
  %i.n = sub nsw i32 %2, %i.e
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %3, i64 %i.o
  tail call void @cftmdl2(i32 noundef %i.e, ptr noundef %i.m, ptr noundef %i.p)
  %i.q = icmp samesign ugt i32 %.tr32, 2051
  br i1 %i.q, label %tailrecurse, label %tailrecurse._crit_edge

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi i32 [ %0, %bb.a ], [ %i.e, %tailrecurse ]
  %.tr29.lcssa = phi ptr [ %1, %bb.a ], [ %i.m, %tailrecurse ]
  tail call void @cftexp2(i32 noundef %.tr.lcssa, ptr noundef %.tr29.lcssa, i32 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftexp1(i32 noundef %0, ptr nofree noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 !guid !120 {
bb.a:
  %i.a = ashr i32 %0, 2                           ; 3 uses
  %i.b = icmp sgt i32 %i.a, 128
  br i1 %i.b, label %.preheader105.preheader, label %.preheader

.preheader105.preheader:                          ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  br label %.preheader105

.preheader105:                                    ; preds = %.preheader105.preheader, %._crit_edge109
  %.0110 = phi i32 [ %i.au, %._crit_edge109 ], [ %i.a, %.preheader105.preheader ] ; 13 uses
  %i.d = icmp slt i32 %.0110, %0
  %i.e = lshr i32 %.0110, 1
  %i.f = sub nsw i32 %2, %i.e
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  br i1 %i.d, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader105
  %i.h = getelementptr inbounds [8 x i8], ptr %3, i64 %i.g ; 2 uses
  %i.i = sub nsw i32 %2, %.0110
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %3, i64 %i.j
  %i.l = sub nsw i32 0, %.0110
  %i.m = sext i32 %i.l to i64
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge109, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.au, %._crit_edge109 ] ; 15 uses
  %i.n = icmp slt i32 %.0.lcssa, %0
  %i.o = ashr i32 %.0.lcssa, 1
  %i.p = sub nsw i32 %2, %i.o
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  br i1 %i.n, label %.lr.ph116, label %._crit_edge117

.lr.ph116:                                        ; preds = %.preheader
  %i.r = getelementptr inbounds [8 x i8], ptr %3, i64 %i.q ; 3 uses
  %i.s = icmp eq i32 %.0.lcssa, 128
  %i.t = sext i32 %2 to i64
  %i.u = getelementptr [8 x i8], ptr %3, i64 %i.t ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -120     ; 12 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -96      ; 4 uses
  %i.x = getelementptr i8, ptr %i.u, i64 -64      ; 8 uses
  %i.y = getelementptr i8, ptr %i.u, i64 -256     ; 4 uses
  %i.z = sub nsw i32 %2, %.0.lcssa
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aa ; 2 uses
  %i.ac = sub nsw i32 0, %.0.lcssa
  %i.ad = sext i32 %i.ac to i64
  %i.ae = sext i32 %0 to i64
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph108, %._crit_edge
  %.099107 = phi i32 [ %.0110, %.lr.ph108 ], [ %.pre-phi, %._crit_edge ] ; 5 uses
  %i.af = sub nsw i32 %.099107, %.0110
  %i.ag = icmp slt i32 %i.af, %0
  br i1 %i.ag, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = shl i32 %.099107, 2
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ah = shl nsw i32 %.099107, 1
  %i.ai = shl i32 %.099107, 2                     ; 2 uses
  %i.aj = sext i32 %.099107 to i64                ; 2 uses
  %i.ak = add nsw i64 %i.m, %i.aj
  %i.al = sext i32 %i.ai to i64
  %i.am = sext i32 %i.ah to i64
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.aj
  %invariant.gep138 = getelementptr [8 x i8], ptr %1, i64 %i.am
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  tail call void @cftmdl1(i32 noundef %.0110, ptr noundef %i.an, ptr noundef %i.h)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  tail call void @cftmdl2(i32 noundef %.0110, ptr noundef %gep, ptr noundef %i.k)
  %gep139 = getelementptr [8 x i8], ptr %invariant.gep138, i64 %indvars.iv
  tail call void @cftmdl1(i32 noundef %.0110, ptr noundef %gep139, ptr noundef %i.h)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.al ; 2 uses
  %i.ao = icmp slt i64 %indvars.iv.next, %i.c
  br i1 %i.ao, label %bb.c, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.c, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ai, %bb.c ] ; 2 uses
  %i.ap = icmp slt i32 %.pre-phi, %0
  br i1 %i.ap, label %bb.b, label %._crit_edge109, !llvm.loop !116

._crit_edge109:                                   ; preds = %._crit_edge, %.preheader105
  %i.aq = sub nsw i32 %0, %.0110
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ar
  %i.at = getelementptr inbounds [8 x i8], ptr %3, i64 %i.g
  tail call void @cftmdl1(i32 noundef %.0110, ptr noundef %i.as, ptr noundef %i.at)
  %i.au = lshr i32 %.0110, 2                      ; 2 uses
  %i.av = icmp samesign ugt i32 %.0110, 515
  br i1 %i.av, label %.preheader105, label %.preheader, !llvm.loop !117

bb.d:                                             ; preds = %.lr.ph116, %._crit_edge114
  %.1115 = phi i32 [ %.0.lcssa, %.lr.ph116 ], [ %.pre-phi129, %._crit_edge114 ] ; 5 uses
  %i.aw = sub nsw i32 %.1115, %.0.lcssa
  %i.ax = icmp slt i32 %i.aw, %0
  br i1 %i.ax, label %.lr.ph113, label %.._crit_edge114_crit_edge

.._crit_edge114_crit_edge:                        ; preds = %bb.d
  %.pre128 = shl i32 %.1115, 2
  br label %._crit_edge114

.lr.ph113:                                        ; preds = %bb.d
  %i.ay = shl nsw i32 %.1115, 1
  %i.az = shl i32 %.1115, 2                       ; 2 uses
  %i.ba = sext i32 %.1115 to i64                  ; 3 uses
  %i.bb = add nsw i64 %i.ad, %i.ba
  %i.bc = sext i32 %i.az to i64
  %i.bd = sext i32 %i.ay to i64                   ; 2 uses
  %invariant.gep140 = getelementptr [8 x i8], ptr %1, i64 %i.ba
  %invariant.gep142 = getelementptr [8 x i8], ptr %1, i64 %i.bd
  %invariant.gep144 = getelementptr [8 x i8], ptr %1, i64 %i.ba
  %invariant.gep146 = getelementptr [8 x i8], ptr %1, i64 %i.bd
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph113, %cftfx41.exit104
  %indvars.iv119 = phi i64 [ %i.bb, %.lr.ph113 ], [ %indvars.iv.next120, %cftfx41.exit104 ] ; 6 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv119 ; 52 uses
  tail call void @cftmdl1(i32 noundef %.0.lcssa, ptr noundef %i.be, ptr noundef %i.r)
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @cftf161(ptr noundef %i.be, ptr noundef readonly %i.x)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.bf, ptr noundef readonly %i.y)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.bg, ptr noundef readonly %i.x)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 768
  tail call void @cftf161(ptr noundef nonnull %i.bh, ptr noundef readonly %i.x)
  %gep145 = getelementptr [8 x i8], ptr %invariant.gep144, i64 %indvars.iv119 ; 5 uses
  tail call void @cftmdl2(i32 noundef %.0.lcssa, ptr noundef %gep145, ptr noundef %i.ab)
  tail call void @cftf161(ptr noundef %gep145, ptr noundef readonly %i.x)
  %i.bi = getelementptr inbounds nuw i8, ptr %gep145, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.bi, ptr noundef readonly %i.y)
  %i.bj = getelementptr inbounds nuw i8, ptr %gep145, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.bj, ptr noundef readonly %i.x)
  %i.bk = getelementptr inbounds nuw i8, ptr %gep145, i64 768
  tail call void @cftf162(ptr noundef nonnull %i.bk, ptr noundef readonly %i.y)
  %gep147 = getelementptr [8 x i8], ptr %invariant.gep146, i64 %indvars.iv119 ; 5 uses
  tail call void @cftmdl1(i32 noundef %.0.lcssa, ptr noundef %gep147, ptr noundef %i.r)
  tail call void @cftf161(ptr noundef %gep147, ptr noundef readonly %i.x)
  %i.bl = getelementptr inbounds nuw i8, ptr %gep147, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.bl, ptr noundef readonly %i.y)
  %i.bm = getelementptr inbounds nuw i8, ptr %gep147, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.bm, ptr noundef readonly %i.x)
  %i.bn = getelementptr inbounds nuw i8, ptr %gep147, i64 768
  tail call void @cftf161(ptr noundef nonnull %i.bn, ptr noundef readonly %i.x)
  br label %cftfx41.exit104

bb.g:                                             ; preds = %bb.e
  %i.bo = load double, ptr %i.v, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 96 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  %i.by = load <2 x double>, ptr %i.be, align 8, !tbaa !14 ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bp, align 8, !tbaa !14 ; 2 uses
  %i.ca = fadd <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = load <2 x double>, ptr %i.bq, align 8, !tbaa !14 ; 2 uses
  %i.cc = load <2 x double>, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.cd = fadd <2 x double> %i.cb, %i.cc          ; 2 uses
  %i.ce = fadd <2 x double> %i.ca, %i.cd          ; 2 uses
  %i.cf = load <2 x double>, ptr %i.bt, align 8, !tbaa !14 ; 2 uses
  %i.cg = load <2 x double>, ptr %i.bu, align 8, !tbaa !14 ; 2 uses
  %i.ch = fadd <2 x double> %i.cf, %i.cg          ; 2 uses
  %i.ci = load <2 x double>, ptr %i.bv, align 8, !tbaa !14 ; 2 uses
  %i.cj = load <2 x double>, ptr %i.bw, align 8, !tbaa !14 ; 2 uses
  %i.ck = fadd <2 x double> %i.ci, %i.cj          ; 2 uses
  %i.cl = fadd <2 x double> %i.ch, %i.ck          ; 2 uses
  %i.cm = fsub <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cn = fsub <2 x double> %i.cb, %i.cc
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cp = fsub <2 x double> %i.cm, %i.co          ; 3 uses
  %i.cq = fadd <2 x double> %i.cm, %i.co          ; 2 uses
  %i.cr = shufflevector <2 x double> %i.cp, <2 x double> %i.cq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cs = fsub <2 x double> %i.cf, %i.cg          ; 4 uses
  %i.ct = fsub <2 x double> %i.ci, %i.cj
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.cv = fsub <2 x double> %i.cs, %i.cu
  %i.cw = fadd <2 x double> %i.cs, %i.cu
  %i.cx = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cy = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cz = fsub <2 x double> %i.cx, %i.cy
  %i.da = fadd <2 x double> %i.cx, %i.cy
  %i.db = shufflevector <2 x double> %i.cz, <2 x double> %i.da, <2 x i32> <i32 0, i32 3>
  %i.dc = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.de = fmul <2 x double> %i.dd, %i.db          ; 2 uses
  %i.df = fadd <2 x double> %i.cr, %i.de
  store <2 x double> %i.df, ptr %i.bp, align 8, !tbaa !14
  %i.dg = fsub <2 x double> %i.cr, %i.de
  store <2 x double> %i.dg, ptr %i.bu, align 8, !tbaa !14
  %i.dh = shufflevector <2 x double> %i.cp, <2 x double> %i.cq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.cs, %i.cu
  %i.di = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop149 = fsub <2 x double> %i.cs, %i.cu
  %i.dj = extractelement <2 x double> %foldExtExtBinop149, i64 1 ; 2 uses
  %i.dk = fsub double %i.di, %i.dj
  %i.dl = fadd double %i.dj, %i.di
  %i.dm = insertelement <2 x double> poison, double %i.dk, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.dl, i64 1
  %i.do = fmul <2 x double> %i.dd, %i.dn          ; 3 uses
  %foldExtExtBinop151 = fsub <2 x double> %i.dh, %i.do
  %i.dp = extractelement <2 x double> %foldExtExtBinop151, i64 1
  store double %i.dp, ptr %i.br, align 8, !tbaa !14
  %i.dq = fadd <2 x double> %i.dh, %i.do
  store <2 x double> %i.dq, ptr %i.bs, align 8, !tbaa !14
  %i.dr = fadd <2 x double> %i.ce, %i.cl
  store <2 x double> %i.dr, ptr %i.be, align 8, !tbaa !14
  %i.ds = fsub <2 x double> %i.ce, %i.cl
  store <2 x double> %i.ds, ptr %i.bt, align 8, !tbaa !14
  %i.dt = fsub <2 x double> %i.ca, %i.cd          ; 2 uses
  %i.du = fsub <2 x double> %i.ch, %i.ck
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dw = fsub <2 x double> %i.dt, %i.dv          ; 2 uses
  %i.dx = fadd <2 x double> %i.dt, %i.dv          ; 2 uses
  %i.dy = shufflevector <2 x double> %i.dw, <2 x double> %i.dx, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dy, ptr %i.bq, align 8, !tbaa !14
  %i.dz = shufflevector <2 x double> %i.dx, <2 x double> %i.dw, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dz, ptr %i.bv, align 8, !tbaa !14
  %i.ea = getelementptr inbounds nuw i8, ptr %i.be, i64 128 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.ec = getelementptr inbounds nuw i8, ptr %i.be, i64 136 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.be, i64 192
  %i.ee = getelementptr inbounds nuw i8, ptr %i.be, i64 160 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.be, i64 232
  %i.eg = getelementptr inbounds nuw i8, ptr %i.be, i64 168
  %i.eh = getelementptr inbounds nuw i8, ptr %i.be, i64 224 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.be, i64 144 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.be, i64 216
  %i.ek = getelementptr inbounds nuw i8, ptr %i.be, i64 152 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.be, i64 208 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.be, i64 176 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.be, i64 248 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.be, i64 184 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.be, i64 240 ; 2 uses
  %i.eq = load double, ptr %i.ea, align 8, !tbaa !14 ; 2 uses
  %i.er = load <2 x double>, ptr %i.ed, align 8, !tbaa !14 ; 3 uses
  %i.es = extractelement <2 x double> %i.er, i64 1
  %i.et = fsub double %i.eq, %i.es                ; 2 uses
  %i.eu = load double, ptr %i.ec, align 8, !tbaa !14 ; 2 uses
  %i.ev = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.eq, i64 1
  %i.ex = fadd <2 x double> %i.ew, %i.er          ; 3 uses
  %i.ey = extractelement <2 x double> %i.er, i64 0
  %i.ez = fsub double %i.eu, %i.ey                ; 2 uses
  %i.fa = load <2 x double>, ptr %i.ee, align 8, !tbaa !14 ; 2 uses
  %i.fb = load <2 x double>, ptr %i.eh, align 8, !tbaa !14 ; 2 uses
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fd = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fe = fadd <2 x double> %i.fd, %i.fb          ; 3 uses
  %i.ff = fsub <2 x double> %i.fa, %i.fc          ; 3 uses
  %foldExtExtBinop153 = fsub <2 x double> %i.ff, %i.fe
  %i.fg = extractelement <2 x double> %foldExtExtBinop153, i64 0
  %i.fh = shufflevector <2 x double> %i.cp, <2 x double> %i.fe, <2 x i32> <i32 1, i32 3>
  %i.fi = shufflevector <2 x double> %i.do, <2 x double> %i.ff, <2 x i32> <i32 0, i32 3>
  %i.fj = fsub <2 x double> %i.fh, %i.fi          ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 0
  store double %i.fk, ptr %i.bx, align 8, !tbaa !14
  %i.fl = load double, ptr %i.v, align 8, !tbaa !14 ; 3 uses
  %i.fm = load <2 x double>, ptr %i.w, align 8, !tbaa !14 ; 5 uses
  %i.fn = fmul double %i.fl, %i.fg                ; 2 uses
  %i.fo = extractelement <2 x double> %i.fj, i64 1
  %i.fp = fmul double %i.fl, %i.fo                ; 2 uses
  %i.fq = fadd <2 x double> %i.ff, %i.fe
  %i.fr = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = fmul <2 x double> %i.fs, %i.fq          ; 3 uses
  %i.fu = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.fv = load <2 x double>, ptr %i.ei, align 8, !tbaa !14 ; 2 uses
  %i.fw = load double, ptr %i.ek, align 8, !tbaa !14
  %i.fx = load <2 x double>, ptr %i.el, align 8, !tbaa !14 ; 2 uses
  %i.fy = load double, ptr %i.ej, align 8, !tbaa !14
  %i.fz = load <2 x double>, ptr %i.em, align 8, !tbaa !14 ; 2 uses
  %i.ga = load double, ptr %i.eo, align 8, !tbaa !14
  %i.gb = load <2 x double>, ptr %i.ep, align 8, !tbaa !14 ; 2 uses
  %i.gc = load double, ptr %i.en, align 8, !tbaa !14
  %i.gd = shufflevector <2 x double> %i.fv, <2 x double> %i.fz, <2 x i32> <i32 1, i32 3>
  %i.ge = shufflevector <2 x double> %i.fx, <2 x double> %i.gb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gf = fsub <2 x double> %i.gd, %i.ge          ; 3 uses
  %i.gg = shufflevector <2 x double> %i.fv, <2 x double> %i.fz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gh = shufflevector <2 x double> %i.fx, <2 x double> %i.gb, <2 x i32> <i32 1, i32 3>
  %i.gi = fadd <2 x double> %i.gg, %i.gh          ; 3 uses
  %i.gj = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.ga, i64 1
  %i.gl = fadd <2 x double> %i.gk, %i.ge          ; 3 uses
end_hunk_1
begin_hunk_2_@cftexp1:bb.a
  %i.ahw = fsub <2 x double> %i.afd, %i.afz       ; 4 uses
  %i.ahx = fsub <2 x double> %i.agz, %i.ahg       ; 4 uses
  %foldExtExtBinop229 = fadd <2 x double> %i.ahw, %i.ahx
  %i.ahy = extractelement <2 x double> %foldExtExtBinop229, i64 0
  store double %i.ahy, ptr %i.aem, align 8, !tbaa !14
  %i.ahz = fadd double %i.aht, %i.ahu
  store double %i.ahz, ptr %i.aes, align 8, !tbaa !14
  %i.aia = fadd double %i.aff, %i.afv             ; 2 uses
  %i.aib = extractelement <2 x double> %i.ahi, i64 0 ; 2 uses
  %i.aic = extractelement <2 x double> %i.ahi, i64 1 ; 2 uses
  %i.aid = fsub double %i.aib, %i.aic             ; 2 uses
  %i.aie = fsub <2 x double> %i.ahw, %i.ahx
  %i.aif = fadd <2 x double> %i.ahw, %i.ahx
  %i.aig = shufflevector <2 x double> %i.aie, <2 x double> %i.aif, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.aig, ptr %i.aeu, align 8, !tbaa !14
  %i.aih = fadd double %i.aia, %i.aid
  store double %i.aih, ptr %i.aeh, align 8, !tbaa !14
  %i.aii = shufflevector <2 x double> %i.ahw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aij = insertelement <2 x double> %i.aii, double %i.aia, i64 1
  %i.aik = shufflevector <2 x double> %i.ahx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ail = insertelement <2 x double> %i.aik, double %i.aid, i64 1
  %i.aim = fsub <2 x double> %i.aij, %i.ail
  store <2 x double> %i.aim, ptr %i.aer, align 8, !tbaa !14
  %foldExtExtBinop231 = fadd <2 x double> %i.afd, %i.afz
  %i.ain = extractelement <2 x double> %foldExtExtBinop231, i64 1 ; 2 uses
  %i.aio = fsub double %i.aff, %i.afv             ; 2 uses
  %foldExtExtBinop233 = fadd <2 x double> %i.agz, %i.ahg
  %i.aip = extractelement <2 x double> %foldExtExtBinop233, i64 1 ; 2 uses
  %i.aiq = fadd double %i.aib, %i.aic             ; 2 uses
  %i.air = fsub double %i.ain, %i.aiq
  store double %i.air, ptr %i.aen, align 8, !tbaa !14
  %i.ais = fadd double %i.aio, %i.aip
  store double %i.ais, ptr %i.ael, align 8, !tbaa !14
  %i.ait = fadd double %i.ain, %i.aiq
  store double %i.ait, ptr %i.aev, align 8, !tbaa !14
  %i.aiu = fsub double %i.aio, %i.aip
  store double %i.aiu, ptr %i.aet, align 8, !tbaa !14
  %i.aiv = getelementptr inbounds nuw i8, ptr %gep143, i64 256 ; 2 uses
  %i.aiw = load double, ptr %i.v, align 8, !tbaa !14
  %i.aix = getelementptr inbounds nuw i8, ptr %gep143, i64 320 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %gep143, i64 288 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %gep143, i64 352 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %gep143, i64 360
  %i.ajb = getelementptr inbounds nuw i8, ptr %gep143, i64 272 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %gep143, i64 336 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %gep143, i64 304 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %gep143, i64 368
  %i.ajf = getelementptr inbounds nuw i8, ptr %gep143, i64 376
  %i.ajg = load <2 x double>, ptr %i.aiv, align 8, !tbaa !14 ; 2 uses
  %i.ajh = load <2 x double>, ptr %i.aix, align 8, !tbaa !14 ; 2 uses
  %i.aji = fadd <2 x double> %i.ajg, %i.ajh       ; 2 uses
  %i.ajj = load <2 x double>, ptr %i.aiy, align 8, !tbaa !14 ; 2 uses
  %i.ajk = load <2 x double>, ptr %i.aiz, align 8, !tbaa !14 ; 2 uses
  %i.ajl = fadd <2 x double> %i.ajj, %i.ajk       ; 2 uses
  %i.ajm = fadd <2 x double> %i.aji, %i.ajl       ; 2 uses
  %i.ajn = load <2 x double>, ptr %i.ajb, align 8, !tbaa !14 ; 2 uses
  %i.ajo = load <2 x double>, ptr %i.ajc, align 8, !tbaa !14 ; 2 uses
  %i.ajp = fadd <2 x double> %i.ajn, %i.ajo       ; 2 uses
  %i.ajq = load <2 x double>, ptr %i.ajd, align 8, !tbaa !14 ; 2 uses
  %i.ajr = load <2 x double>, ptr %i.aje, align 8, !tbaa !14 ; 2 uses
  %i.ajs = fadd <2 x double> %i.ajq, %i.ajr       ; 2 uses
  %i.ajt = fadd <2 x double> %i.ajp, %i.ajs       ; 2 uses
  %i.aju = fsub <2 x double> %i.ajg, %i.ajh       ; 2 uses
  %i.ajv = fsub <2 x double> %i.ajj, %i.ajk
  %i.ajw = shufflevector <2 x double> %i.ajv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ajx = fsub <2 x double> %i.aju, %i.ajw       ; 2 uses
  %i.ajy = fadd <2 x double> %i.aju, %i.ajw       ; 2 uses
  %i.ajz = shufflevector <2 x double> %i.ajx, <2 x double> %i.ajy, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aka = fsub <2 x double> %i.ajn, %i.ajo       ; 4 uses
  %i.akb = fsub <2 x double> %i.ajq, %i.ajr
  %i.akc = shufflevector <2 x double> %i.akb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.akd = fsub <2 x double> %i.aka, %i.akc
  %i.ake = fadd <2 x double> %i.aka, %i.akc
  %i.akf = shufflevector <2 x double> %i.akd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akg = shufflevector <2 x double> %i.ake, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.akh = fsub <2 x double> %i.akf, %i.akg
  %i.aki = fadd <2 x double> %i.akf, %i.akg
  %i.akj = shufflevector <2 x double> %i.akh, <2 x double> %i.aki, <2 x i32> <i32 0, i32 3>
  %i.akk = insertelement <2 x double> poison, double %i.aiw, i64 0
  %i.akl = shufflevector <2 x double> %i.akk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.akm = fmul <2 x double> %i.akl, %i.akj       ; 2 uses
  %i.akn = fadd <2 x double> %i.ajz, %i.akm
  store <2 x double> %i.akn, ptr %i.aix, align 8, !tbaa !14
  %i.ako = fsub <2 x double> %i.ajz, %i.akm
  store <2 x double> %i.ako, ptr %i.ajc, align 8, !tbaa !14
  %i.akp = shufflevector <2 x double> %i.ajx, <2 x double> %i.ajy, <2 x i32> <i32 1, i32 2> ; 3 uses
  %foldExtExtBinop235 = fadd <2 x double> %i.aka, %i.akc
  %i.akq = extractelement <2 x double> %foldExtExtBinop235, i64 0 ; 2 uses
  %foldExtExtBinop237 = fsub <2 x double> %i.aka, %i.akc
  %i.akr = extractelement <2 x double> %foldExtExtBinop237, i64 1 ; 2 uses
  %i.aks = fsub double %i.akq, %i.akr
  %i.akt = fadd double %i.akr, %i.akq
  %i.aku = insertelement <2 x double> poison, double %i.aks, i64 0
  %i.akv = insertelement <2 x double> %i.aku, double %i.akt, i64 1
  %i.akw = fmul <2 x double> %i.akl, %i.akv       ; 3 uses
  %foldExtExtBinop239 = fsub <2 x double> %i.akp, %i.akw
  %i.akx = extractelement <2 x double> %foldExtExtBinop239, i64 1
  store double %i.akx, ptr %i.aiz, align 8, !tbaa !14
  %i.aky = fadd <2 x double> %i.akp, %i.akw
  store <2 x double> %i.aky, ptr %i.aja, align 8, !tbaa !14
  %foldExtExtBinop241 = fsub <2 x double> %i.akp, %i.akw
  %i.akz = extractelement <2 x double> %foldExtExtBinop241, i64 0
  store double %i.akz, ptr %i.ajf, align 8, !tbaa !14
  %i.ala = fadd <2 x double> %i.ajm, %i.ajt
  store <2 x double> %i.ala, ptr %i.aiv, align 8, !tbaa !14
  %i.alb = fsub <2 x double> %i.ajm, %i.ajt
  store <2 x double> %i.alb, ptr %i.ajb, align 8, !tbaa !14
  %i.alc = fsub <2 x double> %i.aji, %i.ajl       ; 2 uses
  %i.ald = fsub <2 x double> %i.ajp, %i.ajs
  %i.ale = shufflevector <2 x double> %i.ald, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.alf = fsub <2 x double> %i.alc, %i.ale       ; 2 uses
  %i.alg = fadd <2 x double> %i.alc, %i.ale       ; 2 uses
  %i.alh = shufflevector <2 x double> %i.alf, <2 x double> %i.alg, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.alh, ptr %i.aiy, align 8, !tbaa !14
  %i.ali = shufflevector <2 x double> %i.alg, <2 x double> %i.alf, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ali, ptr %i.ajd, align 8, !tbaa !14
  %i.alj = getelementptr inbounds nuw i8, ptr %gep143, i64 384 ; 2 uses
  %i.alk = load double, ptr %i.v, align 8, !tbaa !14
  %i.all = getelementptr inbounds nuw i8, ptr %gep143, i64 448 ; 2 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %gep143, i64 416 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %gep143, i64 480 ; 2 uses
  %i.alo = getelementptr inbounds nuw i8, ptr %gep143, i64 488
  %i.alp = getelementptr inbounds nuw i8, ptr %gep143, i64 400 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %gep143, i64 464 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %gep143, i64 432 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %gep143, i64 496
  %i.alt = getelementptr inbounds nuw i8, ptr %gep143, i64 504
  %i.alu = load <2 x double>, ptr %i.alj, align 8, !tbaa !14 ; 2 uses
  %i.alv = load <2 x double>, ptr %i.all, align 8, !tbaa !14 ; 2 uses
  %i.alw = fadd <2 x double> %i.alu, %i.alv       ; 2 uses
  %i.alx = load <2 x double>, ptr %i.alm, align 8, !tbaa !14 ; 2 uses
  %i.aly = load <2 x double>, ptr %i.aln, align 8, !tbaa !14 ; 2 uses
  %i.alz = fadd <2 x double> %i.alx, %i.aly       ; 2 uses
  %i.ama = fadd <2 x double> %i.alw, %i.alz       ; 2 uses
  %i.amb = load <2 x double>, ptr %i.alp, align 8, !tbaa !14 ; 2 uses
  %i.amc = load <2 x double>, ptr %i.alq, align 8, !tbaa !14 ; 2 uses
  %i.amd = fadd <2 x double> %i.amb, %i.amc       ; 2 uses
  %i.ame = load <2 x double>, ptr %i.alr, align 8, !tbaa !14 ; 2 uses
  %i.amf = load <2 x double>, ptr %i.als, align 8, !tbaa !14 ; 2 uses
  %i.amg = fadd <2 x double> %i.ame, %i.amf       ; 2 uses
  %i.amh = fadd <2 x double> %i.amd, %i.amg       ; 2 uses
  %i.ami = fsub <2 x double> %i.alu, %i.alv       ; 2 uses
  %i.amj = fsub <2 x double> %i.alx, %i.aly
  %i.amk = shufflevector <2 x double> %i.amj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aml = fsub <2 x double> %i.ami, %i.amk       ; 2 uses
  %i.amm = fadd <2 x double> %i.ami, %i.amk       ; 2 uses
  %i.amn = shufflevector <2 x double> %i.aml, <2 x double> %i.amm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.amo = fsub <2 x double> %i.amb, %i.amc       ; 4 uses
  %i.amp = fsub <2 x double> %i.ame, %i.amf
  %i.amq = shufflevector <2 x double> %i.amp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.amr = fsub <2 x double> %i.amo, %i.amq
  %i.ams = fadd <2 x double> %i.amo, %i.amq
  %i.amt = shufflevector <2 x double> %i.amr, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.amu = shufflevector <2 x double> %i.ams, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.amv = fsub <2 x double> %i.amt, %i.amu
  %i.amw = fadd <2 x double> %i.amt, %i.amu
  %i.amx = shufflevector <2 x double> %i.amv, <2 x double> %i.amw, <2 x i32> <i32 0, i32 3>
  %i.amy = insertelement <2 x double> poison, double %i.alk, i64 0
  %i.amz = shufflevector <2 x double> %i.amy, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ana = fmul <2 x double> %i.amz, %i.amx       ; 2 uses
  %i.anb = fadd <2 x double> %i.amn, %i.ana
  store <2 x double> %i.anb, ptr %i.all, align 8, !tbaa !14
  %i.anc = fsub <2 x double> %i.amn, %i.ana
  store <2 x double> %i.anc, ptr %i.alq, align 8, !tbaa !14
  %i.and = shufflevector <2 x double> %i.aml, <2 x double> %i.amm, <2 x i32> <i32 1, i32 2> ; 3 uses
  %foldExtExtBinop243 = fadd <2 x double> %i.amo, %i.amq
  %i.ane = extractelement <2 x double> %foldExtExtBinop243, i64 0 ; 2 uses
  %foldExtExtBinop245 = fsub <2 x double> %i.amo, %i.amq
  %i.anf = extractelement <2 x double> %foldExtExtBinop245, i64 1 ; 2 uses
  %i.ang = fsub double %i.ane, %i.anf
  %i.anh = fadd double %i.anf, %i.ane
  %i.ani = insertelement <2 x double> poison, double %i.ang, i64 0
  %i.anj = insertelement <2 x double> %i.ani, double %i.anh, i64 1
  %i.ank = fmul <2 x double> %i.amz, %i.anj       ; 3 uses
  %foldExtExtBinop247 = fsub <2 x double> %i.and, %i.ank
  %i.anl = extractelement <2 x double> %foldExtExtBinop247, i64 1
  store double %i.anl, ptr %i.aln, align 8, !tbaa !14
  %i.anm = fadd <2 x double> %i.and, %i.ank
  store <2 x double> %i.anm, ptr %i.alo, align 8, !tbaa !14
  %foldExtExtBinop249 = fsub <2 x double> %i.and, %i.ank
  %i.ann = extractelement <2 x double> %foldExtExtBinop249, i64 0
  store double %i.ann, ptr %i.alt, align 8, !tbaa !14
  %i.ano = fadd <2 x double> %i.ama, %i.amh
  store <2 x double> %i.ano, ptr %i.alj, align 8, !tbaa !14
  %i.anp = fsub <2 x double> %i.ama, %i.amh
  store <2 x double> %i.anp, ptr %i.alp, align 8, !tbaa !14
  %i.anq = fsub <2 x double> %i.alw, %i.alz       ; 2 uses
  %i.anr = fsub <2 x double> %i.amd, %i.amg
  %i.ans = shufflevector <2 x double> %i.anr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ant = fsub <2 x double> %i.anq, %i.ans       ; 2 uses
  %i.anu = fadd <2 x double> %i.anq, %i.ans       ; 2 uses
  %i.anv = shufflevector <2 x double> %i.ant, <2 x double> %i.anu, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.anv, ptr %i.alm, align 8, !tbaa !14
  %i.anw = shufflevector <2 x double> %i.anu, <2 x double> %i.ant, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.anw, ptr %i.alr, align 8, !tbaa !14
  br label %cftfx41.exit104

cftfx41.exit104:                                  ; preds = %bb.f, %bb.g
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, %i.bc ; 2 uses
  %i.anx = icmp slt i64 %indvars.iv.next120, %i.ae
  br i1 %i.anx, label %bb.e, label %._crit_edge114, !llvm.loop !118

._crit_edge114:                                   ; preds = %cftfx41.exit104, %.._crit_edge114_crit_edge
  %.pre-phi129 = phi i32 [ %.pre128, %.._crit_edge114_crit_edge ], [ %i.az, %cftfx41.exit104 ] ; 2 uses
  %i.any = icmp slt i32 %.pre-phi129, %0
  br i1 %i.any, label %bb.d, label %._crit_edge117, !llvm.loop !119

._crit_edge117:                                   ; preds = %._crit_edge114, %.preheader
  %i.anz = sub nsw i32 %0, %.0.lcssa
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = getelementptr inbounds [8 x i8], ptr %1, i64 %i.aoa ; 2 uses
  %i.aoc = getelementptr inbounds [8 x i8], ptr %3, i64 %i.q
  tail call void @cftmdl1(i32 noundef %.0.lcssa, ptr noundef %i.aob, ptr noundef %i.aoc)
  tail call void @cftfx41(i32 noundef %.0.lcssa, ptr noundef %i.aob, i32 noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftfx41(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 !guid !121 {
bb.a:
  %i.a = icmp eq i32 %0, 128
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr [8 x i8], ptr %3, i64 %i.b ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 -64      ; 3 uses
  tail call void @cftf161(ptr noundef %1, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = getelementptr i8, ptr %i.c, i64 -256
  tail call void @cftf162(ptr noundef nonnull %i.e, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.g, ptr noundef %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call void @cftf161(ptr noundef nonnull %i.h, ptr noundef %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 -128     ; 4 uses
  tail call void @cftf081(ptr noundef %1, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @cftf082(ptr noundef nonnull %i.j, ptr noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @cftf081(ptr noundef nonnull %i.k, ptr noundef %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @cftf081(ptr noundef nonnull %i.l, ptr noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bitrv2(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 !guid !129 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !12
  %i.a = icmp sgt i32 %0, 8
  br i1 %i.a, label %.lr.ph216, label %._crit_edge217.thread

.lr.ph216:                                        ; preds = %bb.a, %._crit_edge
  %.0214 = phi i32 [ %i.o, %._crit_edge ], [ 1, %bb.a ] ; 6 uses
  %.0203213 = phi i32 [ %i.b, %._crit_edge ], [ %0, %bb.a ]
  %i.b = lshr i32 %.0203213, 1                    ; 5 uses
  %i.c = icmp sgt i32 %.0214, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph216
  %i.d = zext nneg i32 %.0214 to i64              ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d ; 2 uses
  %min.iters.check = icmp ult i32 %.0214, 8
  br i1 %min.iters.check, label %.lr.ph.preheader274, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !12
  %wide.load272 = load <4 x i32>, ptr %i.f, align 4, !tbaa !12
  %i.g = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.h = add nsw <4 x i32> %wide.load272, %broadcast.splat
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %i.g, ptr %i.i, align 4, !tbaa !12
  store <4 x i32> %i.h, ptr %i.j, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader274

.lr.ph.preheader274:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader274, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader274 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  %i.n = add nsw i32 %i.m, %i.b
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.n, ptr %gep, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.lr.ph216
  %i.o = shl i32 %.0214, 1                        ; 5 uses
  %i.p = shl i32 %.0214, 4                        ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.b
  br i1 %i.q, label %.lr.ph216, label %._crit_edge217, !llvm.loop !124

._crit_edge217:                                   ; preds = %._crit_edge
  %i.r = shl i32 %.0214, 2                        ; 3 uses
  %i.s = icmp eq i32 %i.p, %i.b
  br i1 %i.s, label %.preheader208, label %.preheader210

._crit_edge217.thread:                            ; preds = %bb.a
  %i.t = icmp eq i32 %0, 8
  br i1 %i.t, label %.preheader.lr.ph, label %.loopexit

.preheader210:                                    ; preds = %._crit_edge217
  %i.u = icmp sgt i32 %i.o, 1
  br i1 %i.u, label %.preheader209.preheader, label %.loopexit

.preheader209.preheader:                          ; preds = %.preheader210
  %i.v = zext nneg i32 %i.r to i64
  %wide.trip.count239 = zext nneg i32 %i.o to i64
  %invariant.gep265 = getelementptr [8 x i8], ptr %2, i64 %i.v
  br label %.preheader209

.preheader208:                                    ; preds = %._crit_edge217
  %i.w = icmp sgt i32 %i.o, 0
  br i1 %i.w, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge217.thread, %.preheader208
  %.0.lcssa258261 = phi i32 [ %i.o, %.preheader208 ], [ 1, %._crit_edge217.thread ] ; 3 uses
  %i.x = phi i32 [ %i.r, %.preheader208 ], [ 2, %._crit_edge217.thread ] ; 3 uses
  %i.y = shl nuw nsw i32 %.0.lcssa258261, 2       ; 2 uses
  %i.z = zext nneg i32 %i.x to i64                ; 3 uses
  %i.aa = zext nneg i32 %.0.lcssa258261 to i64
  %invariant.gep267 = getelementptr [8 x i8], ptr %2, i64 %i.z
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge224
  %indvars.iv246 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next247, %._crit_edge224 ] ; 6 uses
  %.not = icmp eq i64 %indvars.iv246, 0
  br i1 %.not, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv246
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %indvars.iv246.tr = trunc nuw i64 %indvars.iv246 to i32
  %i.ae = shl nuw i32 %indvars.iv246.tr, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph223, %bb.b
  %indvars.iv241 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next242, %bb.b ] ; 3 uses
  %i.af = shl nuw nsw i64 %indvars.iv241, 1
  %i.ag = add nsw i64 %i.af, %i.ad                ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv241
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.aj = add nsw i32 %i.ai, %i.ae                ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %2, i64 %i.al ; 2 uses
  %i.an = load <2 x double>, ptr %i.ak, align 8, !tbaa !14
  %i.ao = load <2 x double>, ptr %i.am, align 8, !tbaa !14
  store <2 x double> %i.ao, ptr %i.ak, align 8, !tbaa !14
  store <2 x double> %i.an, ptr %i.am, align 8, !tbaa !14
  %i.ap = add nsw i64 %i.ag, %i.z                 ; 2 uses
  %i.aq = add nsw i32 %i.aj, %i.y                 ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ap ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as ; 2 uses
  %i.au = load <2 x double>, ptr %i.ar, align 8, !tbaa !14
  %i.av = load <2 x double>, ptr %i.at, align 8, !tbaa !14
  store <2 x double> %i.av, ptr %i.ar, align 8, !tbaa !14
  store <2 x double> %i.au, ptr %i.at, align 8, !tbaa !14
  %i.aw = add nsw i64 %i.ap, %i.z                 ; 2 uses
  %i.ax = sub nsw i32 %i.aq, %i.x                 ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aw ; 2 uses
  %i.az = sext i32 %i.ax to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %2, i64 %i.az ; 2 uses
  %i.bb = load <2 x double>, ptr %i.ay, align 8, !tbaa !14
  %i.bc = load <2 x double>, ptr %i.ba, align 8, !tbaa !14
  store <2 x double> %i.bc, ptr %i.ay, align 8, !tbaa !14
  store <2 x double> %i.bb, ptr %i.ba, align 8, !tbaa !14
  %i.bd = add nsw i32 %i.ax, %i.y
  %gep268 = getelementptr [8 x i8], ptr %invariant.gep267, i64 %i.aw ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.be ; 2 uses
  %i.bg = load <2 x double>, ptr %gep268, align 8, !tbaa !14
  %i.bh = load <2 x double>, ptr %i.bf, align 8, !tbaa !14
  store <2 x double> %i.bh, ptr %gep268, align 8, !tbaa !14
  store <2 x double> %i.bg, ptr %i.bf, align 8, !tbaa !14
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %indvars.iv246
  br i1 %exitcond245.not, label %._crit_edge224, label %bb.b, !llvm.loop !125

._crit_edge224:                                   ; preds = %bb.b, %.preheader
  %i.bi = phi i32 [ 0, %.preheader ], [ %i.ac, %bb.b ]
  %i.bj = trunc i64 %indvars.iv246 to i32
  %i.bk = add i32 %.0.lcssa258261, %i.bj
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add nsw i32 %i.bi, %i.bl                ; 2 uses
  %i.bn = add nsw i32 %i.bm, %i.x
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bo ; 2 uses
  %i.bq = sext i32 %i.bn to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bq ; 2 uses
  %i.bs = load <2 x double>, ptr %i.bp, align 8, !tbaa !14
  %i.bt = load <2 x double>, ptr %i.br, align 8, !tbaa !14
  store <2 x double> %i.bt, ptr %i.bp, align 8, !tbaa !14
  store <2 x double> %i.bs, ptr %i.br, align 8, !tbaa !14
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %i.aa
  br i1 %exitcond250.not, label %.loopexit, label %.preheader, !llvm.loop !126

.preheader209:                                    ; preds = %.preheader209.preheader, %bb.d
  %indvars.iv236 = phi i64 [ 1, %.preheader209.preheader ], [ %indvars.iv.next237, %bb.d ] ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv236
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !12
  %i.bw = sext i32 %i.bv to i64
  %indvars.iv236.tr = trunc nuw nsw i64 %indvars.iv236 to i32
  %i.bx = shl nuw nsw i32 %indvars.iv236.tr, 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader209, %bb.c
  %indvars.iv231 = phi i64 [ 0, %.preheader209 ], [ %indvars.iv.next232, %bb.c ] ; 3 uses
  %i.by = shl nuw nsw i64 %indvars.iv231, 1
  %i.bz = add nsw i64 %i.by, %i.bw                ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv231
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12
  %i.cc = add nsw i32 %i.cb, %i.bx                ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bz ; 2 uses
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ce ; 2 uses
  %i.cg = load <2 x double>, ptr %i.cd, align 8, !tbaa !14
  %i.ch = load <2 x double>, ptr %i.cf, align 8, !tbaa !14
  store <2 x double> %i.ch, ptr %i.cd, align 8, !tbaa !14
  store <2 x double> %i.cg, ptr %i.cf, align 8, !tbaa !14
  %i.ci = add nsw i32 %i.cc, %i.r
  %gep266 = getelementptr [8 x i8], ptr %invariant.gep265, i64 %i.bz ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cj ; 2 uses
  %i.cl = load <2 x double>, ptr %gep266, align 8, !tbaa !14
  %i.cm = load <2 x double>, ptr %i.ck, align 8, !tbaa !14
  store <2 x double> %i.cm, ptr %gep266, align 8, !tbaa !14
  store <2 x double> %i.cl, ptr %i.ck, align 8, !tbaa !14
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %indvars.iv236
  br i1 %exitcond235.not, label %bb.d, label %bb.c, !llvm.loop !127

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %.loopexit, label %.preheader209, !llvm.loop !128

.loopexit:                                        ; preds = %bb.d, %._crit_edge224, %._crit_edge217.thread, %.preheader210, %.preheader208
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf161(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 !guid !130 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load <2 x double>, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.u = load <2 x double>, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.v = fadd <2 x double> %i.t, %i.u             ; 2 uses
  %i.w = load <2 x double>, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.x = load <2 x double>, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.y = fadd <2 x double> %i.w, %i.x             ; 2 uses
  %i.z = fadd <2 x double> %i.v, %i.y             ; 2 uses
  %i.aa = load <2 x double>, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %i.ab = load <2 x double>, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.ac = fadd <2 x double> %i.aa, %i.ab          ; 2 uses
  %i.ad = load <2 x double>, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.ae = load <2 x double>, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.af = fadd <2 x double> %i.ad, %i.ae          ; 2 uses
  %i.ag = fadd <2 x double> %i.ac, %i.af          ; 2 uses
  %i.ah = load <2 x double>, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.ai = load <2 x double>, ptr %i.k, align 8, !tbaa !14 ; 2 uses
  %i.aj = fadd <2 x double> %i.ah, %i.ai          ; 2 uses
  %i.ak = load <2 x double>, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.al = load <2 x double>, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.am = fadd <2 x double> %i.ak, %i.al          ; 2 uses
  %i.an = fadd <2 x double> %i.aj, %i.am          ; 2 uses
  %i.ao = load <2 x double>, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %i.ap = load <2 x double>, ptr %i.p, align 8, !tbaa !14 ; 2 uses
  %i.aq = fadd <2 x double> %i.ao, %i.ap          ; 2 uses
  %i.ar = load <2 x double>, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.as = load <2 x double>, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.at = fadd <2 x double> %i.ar, %i.as          ; 2 uses
  %i.au = fadd <2 x double> %i.aq, %i.at          ; 2 uses
  %i.av = load <2 x double>, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.aw = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.ax = extractelement <2 x double> %i.av, i64 0 ; 3 uses
  %i.ay = fsub <2 x double> %i.t, %i.u            ; 2 uses
  %i.az = fsub <2 x double> %i.w, %i.x
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bb = fsub <2 x double> %i.ay, %i.ba          ; 2 uses
  %i.bc = fadd <2 x double> %i.ay, %i.ba          ; 2 uses
  %i.bd = shufflevector <2 x double> %i.bb, <2 x double> %i.bc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.be = fsub <2 x double> %i.aa, %i.ab          ; 2 uses
  %i.bf = fsub <2 x double> %i.ad, %i.ae
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bh = fsub <2 x double> %i.be, %i.bg          ; 4 uses
  %i.bi = fadd <2 x double> %i.be, %i.bg          ; 4 uses
  %i.bj = shufflevector <2 x double> %i.bh, <2 x double> %i.bi, <2 x i32> <i32 0, i32 3>
  %i.bk = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bl = fsub <2 x double> %i.ao, %i.ap          ; 2 uses
  %i.bm = fsub <2 x double> %i.ar, %i.as
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bo = fsub <2 x double> %i.bl, %i.bn          ; 4 uses
  %i.bp = fadd <2 x double> %i.bl, %i.bn          ; 4 uses
  %i.bq = shufflevector <2 x double> %i.bo, <2 x double> %i.bp, <2 x i32> <i32 0, i32 3>
  %i.br = shufflevector <2 x double> %i.bi, <2 x double> %i.bp, <2 x i32> <i32 1, i32 3>
  %i.bs = fneg <2 x double> %i.br                 ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> %i.bh, <2 x i32> <i32 0, i32 2>
  %i.bu = shufflevector <2 x double> %i.bs, <2 x double> %i.bo, <2 x i32> <i32 1, i32 2>
  %i.bv = fmul double %i.ax, %i.aw                ; 2 uses
  %i.bw = fadd double %i.aw, %i.bv
  %i.bx = shufflevector <2 x double> %i.bc, <2 x double> %i.bb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ca = fmul <2 x double> %i.bz, %i.bt
  %i.cb = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.bj, <2 x double> %i.ca) ; 2 uses
  %i.ce = shufflevector <2 x double> %i.bi, <2 x double> %i.bh, <2 x i32> <i32 0, i32 3>
  %i.cf = fsub <2 x double> %i.ah, %i.ai
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ch = fsub <2 x double> %i.ak, %i.al          ; 4 uses
  %foldExtExtBinop = fadd <2 x double> %i.cg, %i.ch
  %i.ci = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop350 = fsub <2 x double> %i.cg, %i.ch
  %i.cj = extractelement <2 x double> %foldExtExtBinop350, i64 1 ; 2 uses
  %i.ck = fsub <2 x double> %i.cg, %i.ch
  %i.cl = fadd <2 x double> %i.cg, %i.ch
  %i.cm = fsub double %i.cj, %i.ci
  %i.cn = fadd double %i.ci, %i.cj
  %i.co = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %i.cn, i64 1
  %i.cq = fmul <2 x double> %i.bk, %i.cp          ; 2 uses
  %i.cr = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ct = fadd <2 x double> %i.cr, %i.cs
  %i.cu = fsub <2 x double> %i.cr, %i.cs
  %i.cv = shufflevector <2 x double> %i.ct, <2 x double> %i.cu, <2 x i32> <i32 0, i32 3>
  %i.cw = fmul <2 x double> %i.bk, %i.cv          ; 2 uses
  %i.cx = fmul <2 x double> %i.cc, %i.bu
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bq, <2 x double> %i.cx) ; 2 uses
  %i.cz = shufflevector <2 x double> %i.bp, <2 x double> %i.bo, <2 x i32> <i32 0, i32 3>
  %i.da = shufflevector <2 x double> %i.bh, <2 x double> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.db = fneg <2 x double> %i.da                 ; 2 uses
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> %i.bi, <2 x i32> <i32 0, i32 2>
  %i.dd = fmul <2 x double> %i.cc, %i.dc
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ce, <2 x double> %i.dd) ; 2 uses
  %i.df = shufflevector <2 x double> %i.db, <2 x double> %i.bp, <2 x i32> <i32 1, i32 2>
  %i.dg = fmul <2 x double> %i.bz, %i.df
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> %i.cz, <2 x double> %i.dg) ; 2 uses
  %i.di = fsub <2 x double> %i.bx, %i.cw          ; 2 uses
  %i.dj = fsub <2 x double> %i.de, %i.dh          ; 2 uses
  %i.dk = fadd <2 x double> %i.di, %i.dj
  store <2 x double> %i.dk, ptr %i.e, align 8, !tbaa !14
  %i.dl = fsub <2 x double> %i.di, %i.dj
  store <2 x double> %i.dl, ptr %i.i, align 8, !tbaa !14
  %i.dm = fadd <2 x double> %i.bx, %i.cw          ; 2 uses
  %i.dn = fadd <2 x double> %i.de, %i.dh
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dp = fsub <2 x double> %i.dm, %i.do          ; 2 uses
  %i.dq = fadd <2 x double> %i.dm, %i.do          ; 2 uses
  %i.dr = shufflevector <2 x double> %i.dp, <2 x double> %i.dq, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dr, ptr %i.m, align 8, !tbaa !14
  %i.ds = shufflevector <2 x double> %i.dq, <2 x double> %i.dp, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ds, ptr %i.r, align 8, !tbaa !14
  %i.dt = fadd <2 x double> %i.bd, %i.cq          ; 2 uses
  %i.du = fadd <2 x double> %i.cd, %i.cy          ; 2 uses
  %i.dv = fadd <2 x double> %i.dt, %i.du
  store <2 x double> %i.dv, ptr %i.c, align 8, !tbaa !14
  %i.dw = fsub <2 x double> %i.dt, %i.du
  store <2 x double> %i.dw, ptr %i.g, align 8, !tbaa !14
  %i.dx = fsub <2 x double> %i.bd, %i.cq          ; 2 uses
  %i.dy = fsub <2 x double> %i.cd, %i.cy
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ea = fsub <2 x double> %i.dx, %i.dz          ; 2 uses
  %i.eb = fadd <2 x double> %i.dx, %i.dz          ; 2 uses
  %i.ec = shufflevector <2 x double> %i.ea, <2 x double> %i.eb, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ec, ptr %i.k, align 8, !tbaa !14
  %i.ed = shufflevector <2 x double> %i.eb, <2 x double> %i.ea, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ed, ptr %i.p, align 8, !tbaa !14
  %i.ee = fsub <2 x double> %i.v, %i.y            ; 4 uses
  %i.ef = fsub <2 x double> %i.ac, %i.af          ; 4 uses
  %i.eg = fsub <2 x double> %i.aj, %i.am
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ei = fsub <2 x double> %i.aq, %i.at
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ek = fsub <2 x double> %i.ef, %i.ej
  %i.el = fadd <2 x double> %i.ef, %i.ej
  %i.em = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.en = shufflevector <2 x double> %i.el, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.eo = fsub <2 x double> %i.em, %i.en
  %i.ep = fadd <2 x double> %i.em, %i.en
  %i.eq = shufflevector <2 x double> %i.eo, <2 x double> %i.ep, <2 x i32> <i32 0, i32 3>
  %i.er = fmul <2 x double> %i.bk, %i.eq
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %foldExtExtBinop352 = fadd <2 x double> %i.ef, %i.ej
  %i.et = extractelement <2 x double> %foldExtExtBinop352, i64 0 ; 2 uses
  %foldExtExtBinop354 = fsub <2 x double> %i.ef, %i.ej
  %i.eu = extractelement <2 x double> %foldExtExtBinop354, i64 1 ; 2 uses
  %i.ev = fsub double %i.et, %i.eu
  %i.ew = fmul double %i.ax, %i.ev                ; 2 uses
  %i.ex = fadd double %i.eu, %i.et
  %i.ey = fmul double %i.ax, %i.ex                ; 2 uses
  %i.ez = fsub <2 x double> %i.ee, %i.eh
  %i.fa = fadd <2 x double> %i.ee, %i.eh
  %i.fb = shufflevector <2 x double> %i.ez, <2 x double> %i.fa, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %foldExtExtBinop356 = fadd <2 x double> %i.ee, %i.eh
  %i.fc = extractelement <2 x double> %foldExtExtBinop356, i64 0 ; 2 uses
  %foldExtExtBinop358 = fsub <2 x double> %i.ee, %i.eh
  %i.fd = extractelement <2 x double> %foldExtExtBinop358, i64 1 ; 2 uses
  %i.fe = fadd <4 x double> %i.fb, %i.es
  %i.ff = fsub <4 x double> %i.fb, %i.es
  %i.fg = shufflevector <4 x double> %i.fe, <4 x double> %i.ff, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x double> %i.fg, ptr %i.d, align 8, !tbaa !14
  %i.fh = fsub double %i.fc, %i.ey
  store double %i.fh, ptr %i.l, align 8, !tbaa !14
  %i.fi = fadd double %i.fd, %i.ew
  store double %i.fi, ptr %i.n, align 8, !tbaa !14
  %i.fj = fadd double %i.fc, %i.ey
  store double %i.fj, ptr %i.q, align 8, !tbaa !14
  %i.fk = fsub double %i.fd, %i.ew
  store double %i.fk, ptr %i.s, align 8, !tbaa !14
  %i.fl = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fm = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fn = fadd <4 x double> %i.fl, %i.fm          ; 2 uses
  %i.fo = shufflevector <2 x double> %i.ag, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fp = shufflevector <2 x double> %i.au, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fq = fadd <4 x double> %i.fo, %i.fp          ; 2 uses
  %i.fr = fadd <4 x double> %i.fn, %i.fq
  %i.fs = fsub <4 x double> %i.fn, %i.fq
  %i.ft = shufflevector <4 x double> %i.fs, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.fu = shufflevector <4 x double> %i.fr, <4 x double> %i.ft, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.fu, ptr %0, align 8, !tbaa !14
  %i.fv = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fw = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fx = fsub <4 x double> %i.fv, %i.fw          ; 2 uses
  %i.fy = fsub <2 x double> %i.ag, %i.au
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.ga = fsub <4 x double> %i.fx, %i.fz
  %i.gb = fadd <4 x double> %i.fx, %i.fz
  %i.gc = shufflevector <4 x double> %i.ga, <4 x double> %i.gb, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x double> %i.gc, ptr %i.j, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv216(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 !guid !131 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.m = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.o = load <2 x double>, ptr %i.j, align 8, !tbaa !14
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.n, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.p, ptr %i.d, align 8, !tbaa !14
  %i.q = load <2 x double>, ptr %i.h, align 8, !tbaa !14
  %i.r = load <2 x double>, ptr %i.l, align 8, !tbaa !14
  %i.s = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.m, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.s, ptr %i.g, align 8, !tbaa !14
  %i.t = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  store <2 x double> %i.q, ptr %i.e, align 8, !tbaa !14
  store <2 x double> %i.t, ptr %i.h, align 8, !tbaa !14
  %i.u = load <2 x double>, ptr %i.k, align 8, !tbaa !14
  %i.v = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  store <2 x double> %i.o, ptr %i.c, align 8, !tbaa !14
  store <2 x double> %i.v, ptr %i.j, align 8, !tbaa !14
  %i.w = load <2 x double>, ptr %i.i, align 8, !tbaa !14
  store <2 x double> %i.u, ptr %i.i, align 8, !tbaa !14
  store <2 x double> %i.w, ptr %i.k, align 8, !tbaa !14
  %i.x = load <2 x double>, ptr %i.f, align 8, !tbaa !14
  store <2 x double> %i.r, ptr %i.f, align 8, !tbaa !14
  store <2 x double> %i.x, ptr %i.l, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf081(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 !guid !132 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load <2 x double>, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.m = load <2 x double>, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %i.n = fadd <2 x double> %i.l, %i.m             ; 2 uses
  %i.o = load <2 x double>, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.p = load <2 x double>, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.q = fadd <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = shufflevector <2 x double> %i.n, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.s = shufflevector <2 x double> %i.q, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.t = fadd <4 x double> %i.r, %i.s             ; 2 uses
  %i.u = load <2 x double>, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.v = load <2 x double>, ptr %i.h, align 8, !tbaa !14 ; 2 uses
  %i.w = fadd <2 x double> %i.u, %i.v             ; 2 uses
  %i.x = load <2 x double>, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.y = load <2 x double>, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.z = fadd <2 x double> %i.x, %i.y             ; 2 uses
  %i.aa = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ac = fadd <4 x double> %i.aa, %i.ab          ; 2 uses
  %i.ad = fsub <2 x double> %i.l, %i.m            ; 4 uses
  %i.ae = fsub <2 x double> %i.o, %i.p
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ag = fsub <2 x double> %i.ad, %i.af
  %i.ah = fadd <2 x double> %i.ad, %i.af
  %i.ai = shufflevector <2 x double> %i.ag, <2 x double> %i.ah, <4 x i32> <i32 0, i32 3, i32 0, i32 3> ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.ad, %i.af
  %i.aj = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop126 = fsub <2 x double> %i.ad, %i.af
  %i.ak = extractelement <2 x double> %foldExtExtBinop126, i64 1 ; 2 uses
  %i.al = fsub <2 x double> %i.u, %i.v            ; 4 uses
  %i.am = fsub <2 x double> %i.x, %i.y
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ao = fsub <2 x double> %i.al, %i.an
  %i.ap = fadd <2 x double> %i.al, %i.an
  %foldExtExtBinop128 = fadd <2 x double> %i.al, %i.an
  %i.aq = extractelement <2 x double> %foldExtExtBinop128, i64 0 ; 2 uses
  %foldExtExtBinop130 = fsub <2 x double> %i.al, %i.an
  %i.ar = extractelement <2 x double> %foldExtExtBinop130, i64 1 ; 2 uses
  %i.as = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.au = fsub <2 x double> %i.as, %i.at
  %i.av = fadd <2 x double> %i.as, %i.at
  %i.aw = shufflevector <2 x double> %i.au, <2 x double> %i.av, <2 x i32> <i32 0, i32 3>
  %i.ax = insertelement <2 x double> poison, double %i.b, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fmul <2 x double> %i.ay, %i.aw
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bb = fsub double %i.aq, %i.ar
  %i.bc = fmul double %i.b, %i.bb                 ; 2 uses
  %i.bd = fadd double %i.ar, %i.aq
  %i.be = fmul double %i.b, %i.bd                 ; 2 uses
  %i.bf = fadd <4 x double> %i.ai, %i.ba
  %i.bg = fsub <4 x double> %i.ai, %i.ba
  %i.bh = shufflevector <4 x double> %i.bf, <4 x double> %i.bg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x double> %i.bh, ptr %i.c, align 8, !tbaa !14
  %i.bi = fsub double %i.aj, %i.be
  store double %i.bi, ptr %i.e, align 8, !tbaa !14
  %i.bj = fadd double %i.ak, %i.bc
  store double %i.bj, ptr %i.f, align 8, !tbaa !14
  %i.bk = fadd double %i.aj, %i.be
  store double %i.bk, ptr %i.j, align 8, !tbaa !14
  %i.bl = fsub double %i.ak, %i.bc
  store double %i.bl, ptr %i.k, align 8, !tbaa !14
  %i.bm = fadd <4 x double> %i.t, %i.ac
  %i.bn = fsub <4 x double> %i.t, %i.ac
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x double> %i.bm, <4 x double> %i.bo, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x double> %i.bp, ptr %0, align 8, !tbaa !14
  %i.bq = shufflevector <2 x double> %i.n, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.br = shufflevector <2 x double> %i.q, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bs = fsub <4 x double> %i.bq, %i.br          ; 2 uses
  %i.bt = fsub <2 x double> %i.w, %i.z
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.bv = fsub <4 x double> %i.bs, %i.bu
  %i.bw = fadd <4 x double> %i.bs, %i.bu
  %i.bx = shufflevector <4 x double> %i.bv, <4 x double> %i.bw, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x double> %i.bx, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv208(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 !guid !133 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.e = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.f = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.g = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.g, ptr %i.c, align 8, !tbaa !14
  %i.h = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.f, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.h, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf040(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 !guid !134 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.f, %i.h                   ; 2 uses
  %i.j = fsub double %i.a, %i.c                   ; 2 uses
  %i.k = fsub double %i.f, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = fadd double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.m, %i.o                   ; 2 uses
  %i.w = fsub double %i.r, %i.t                   ; 2 uses
  %i.x = fadd double %i.d, %i.p
  store double %i.x, ptr %0, align 8, !tbaa !14
  %i.y = fadd double %i.i, %i.u
  store double %i.y, ptr %i.e, align 8, !tbaa !14
  %i.z = fsub double %i.d, %i.p
  store double %i.z, ptr %i.b, align 8, !tbaa !14
  %i.aa = fsub double %i.i, %i.u
  store double %i.aa, ptr %i.g, align 8, !tbaa !14
  %i.ab = fsub double %i.j, %i.w
  store double %i.ab, ptr %i.l, align 8, !tbaa !14
  %i.ac = fadd double %i.k, %i.v
  store double %i.ac, ptr %i.q, align 8, !tbaa !14
  %i.ad = fadd double %i.j, %i.w
  store double %i.ad, ptr %i.n, align 8, !tbaa !14
  %i.ae = fsub double %i.k, %i.v
  store double %i.ae, ptr %i.s, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftx020(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 !guid !135 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load <2 x double>, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.c = load <2 x double>, ptr %i.a, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd <2 x double> %i.b, %i.c
  store <2 x double> %i.d, ptr %0, align 8, !tbaa !14
  %i.e = fsub <2 x double> %i.b, %i.c
  store <2 x double> %i.e, ptr %i.a, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftb1st(i32 noundef %0, ptr nofree noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 !guid !137 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = fneg double %i.k
  %i.m = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = fsub double %i.e, %i.h                   ; 2 uses
  %i.q = fsub double %i.n, %i.k                   ; 2 uses
  %i.r = sext i32 %i.b to i64                     ; 8 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = sext i32 %i.d to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.u ; 3 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !14 ; 2 uses
  %i.x = fadd double %i.t, %i.w                   ; 2 uses
  %i.y = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !14 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.v, i64 8       ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.ac = fadd double %i.z, %i.ab                 ; 2 uses
  %i.ad = fsub double %i.t, %i.w                  ; 2 uses
  %i.ae = fsub double %i.z, %i.ab                 ; 2 uses
  %i.af = fadd double %i.i, %i.x
  store double %i.af, ptr %1, align 8, !tbaa !14
  %i.ag = fsub double %i.o, %i.ac
  store double %i.ag, ptr %i.j, align 8, !tbaa !14
  %i.ah = fsub double %i.i, %i.x
  store double %i.ah, ptr %i.s, align 8, !tbaa !14
  %i.ai = fadd double %i.o, %i.ac
  store double %i.ai, ptr %i.y, align 8, !tbaa !14
  %i.aj = fadd double %i.p, %i.ae
  store double %i.aj, ptr %i.g, align 8, !tbaa !14
  %i.ak = fadd double %i.q, %i.ad
  store double %i.ak, ptr %i.m, align 8, !tbaa !14
  %i.al = fsub double %i.p, %i.ae
  store double %i.al, ptr %i.v, align 8, !tbaa !14
  %i.am = fsub double %i.q, %i.ad
  store double %i.am, ptr %i.aa, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load double, ptr %i.an, align 8, !tbaa !14 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !14 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.as = load double, ptr %i.ar, align 8, !tbaa !14 ; 4 uses
  %i.at = add nsw i32 %i.a, -2                    ; 2 uses
  %i.au = icmp sgt i32 %i.a, 4
  br i1 %i.au, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.at to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.av = zext nneg i32 %i.at to i64              ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.r
  %invariant.gep711 = getelementptr [8 x i8], ptr %1, i64 %i.r
  %i.aw = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv703 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next704, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.0695 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.dh, %.lr.ph ]
  %.0684694 = phi double [ 1.000000e+00, %.lr.ph.preheader ], [ %i.db, %.lr.ph ]
  %i.ay = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bb = load <2 x double>, ptr %i.az, align 8, !tbaa !14 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.be = add nuw nsw i64 %indvars.iv703, %i.r    ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, %i.r             ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv703 ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bf ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bh, i64 16     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bh, i64 24
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.be ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bf ; 3 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = getelementptr i8, ptr %i.bo, i64 16     ; 2 uses
  %i.br = getelementptr i8, ptr %gep, i64 16      ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bo, i64 24
  %i.bt = sub nsw i64 %i.r, %indvars.iv703        ; 2 uses
  %i.bu = add nuw nsw i64 %i.bt, %i.r             ; 2 uses
  %i.bv = add nuw nsw i64 %i.bu, %i.r             ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bt ; 5 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bv ; 5 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 8      ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bx, i64 8
  %i.ca = getelementptr i8, ptr %i.bw, i64 -16    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bx, i64 -16    ; 2 uses
  %i.cc = getelementptr i8, ptr %i.bw, i64 -8     ; 2 uses
  %i.cd = getelementptr i8, ptr %i.bx, i64 -8
  %i.ce = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bu ; 5 uses
  %gep712 = getelementptr [8 x i8], ptr %invariant.gep711, i64 %i.bv ; 3 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %i.cg = getelementptr i8, ptr %i.ce, i64 -16    ; 2 uses
  %i.ch = getelementptr i8, ptr %gep712, i64 -16  ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ce, i64 -8
  %i.cj = load <2 x double>, ptr %i.bg, align 8, !tbaa !14 ; 3 uses
  %i.ck = load double, ptr %i.bi, align 8, !tbaa !14
  %i.cl = load <2 x double>, ptr %i.bh, align 8, !tbaa !14 ; 3 uses
  %i.cm = load double, ptr %i.bj, align 8, !tbaa !14
  %foldExtExtBinop = fadd <2 x double> %i.cj, %i.cl ; 2 uses
  %i.cn = fneg double %i.ck
  %i.co = fsub double %i.cn, %i.cm                ; 2 uses
  %i.cp = shufflevector <2 x double> %i.cl, <2 x double> %i.cj, <2 x i32> <i32 1, i32 2>
  %i.cq = shufflevector <2 x double> %i.cj, <2 x double> %i.cl, <2 x i32> <i32 1, i32 2>
  %i.cr = fsub <2 x double> %i.cp, %i.cq          ; 2 uses
  %i.cs = load <2 x double>, ptr %i.bo, align 8, !tbaa !14 ; 3 uses
  %i.ct = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop717 = fadd <2 x double> %i.cs, %i.ct ; 2 uses
  %foldExtExtBinop719 = fadd <2 x double> %i.cs, %i.ct
  %i.cu = extractelement <2 x double> %foldExtExtBinop719, i64 1 ; 2 uses
  %i.cv = fsub <2 x double> %i.cs, %i.ct          ; 2 uses
  %foldExtExtBinop721 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop717
  %i.cw = extractelement <2 x double> %foldExtExtBinop721, i64 0
  %i.cx = fsub double %i.co, %i.cu
  %foldExtExtBinop723 = fsub <2 x double> %foldExtExtBinop, %foldExtExtBinop717
  %i.cy = extractelement <2 x double> %foldExtExtBinop723, i64 0
  %i.cz = fadd double %i.co, %i.cu
  %i.da = fsub <2 x double> %i.cr, %i.cv          ; 3 uses
  %i.db = load double, ptr %i.bc, align 8, !tbaa !14 ; 4 uses
  %i.dc = fadd double %.0684694, %i.db
  %i.dd = fmul double %i.as, %i.dc
  %i.de = load double, ptr %i.bd, align 8, !tbaa !14 ; 3 uses
  %i.df = fsub double %.0695, %i.de
  %i.dg = fmul double %i.as, %i.df
  %i.dh = fneg double %i.de                       ; 3 uses
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = fneg <2 x double> %i.da
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> %i.da, <2 x i32> <i32 1, i32 2>
  %i.dm = fmul <2 x double> %i.dj, %i.dl
  %i.dn = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.da, <2 x double> %i.dm)
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dr = fadd <2 x double> %i.ay, %i.bb
  %i.ds = fmul <2 x double> %i.ax, %i.dr          ; 2 uses
  %i.dt = load <2 x double>, ptr %i.bk, align 8, !tbaa !14 ; 3 uses
  %i.du = load double, ptr %i.bm, align 8, !tbaa !14
  %i.dv = load <2 x double>, ptr %i.bl, align 8, !tbaa !14 ; 3 uses
  %i.dw = load double, ptr %i.bn, align 8, !tbaa !14
  %foldExtExtBinop725 = fadd <2 x double> %i.dt, %i.dv ; 2 uses
  %i.dx = fneg double %i.du
  %i.dy = fsub double %i.dx, %i.dw                ; 2 uses
  %i.dz = shufflevector <2 x double> %i.dv, <2 x double> %i.dt, <2 x i32> <i32 1, i32 2>
  %i.ea = shufflevector <2 x double> %i.dt, <2 x double> %i.dv, <2 x i32> <i32 1, i32 2>
  %i.eb = fsub <2 x double> %i.dz, %i.ea          ; 2 uses
  %i.ec = load <2 x double>, ptr %i.bq, align 8, !tbaa !14 ; 3 uses
  %i.ed = load <2 x double>, ptr %i.br, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop727 = fadd <2 x double> %i.ec, %i.ed ; 2 uses
  %foldExtExtBinop729 = fadd <2 x double> %i.ec, %i.ed
  %i.ee = extractelement <2 x double> %foldExtExtBinop729, i64 1 ; 2 uses
  %i.ef = fsub <2 x double> %i.ec, %i.ed          ; 2 uses
  %foldExtExtBinop731 = fadd <2 x double> %foldExtExtBinop725, %foldExtExtBinop727
  %i.eg = extractelement <2 x double> %foldExtExtBinop731, i64 0
  %i.eh = fsub double %i.dy, %i.ee
  %foldExtExtBinop733 = fsub <2 x double> %foldExtExtBinop725, %foldExtExtBinop727
  %i.ei = extractelement <2 x double> %foldExtExtBinop733, i64 0
  %i.ej = fadd double %i.dy, %i.ee
  %i.ek = fsub <2 x double> %i.eb, %i.ef          ; 2 uses
  store double %i.cw, ptr %i.bg, align 8, !tbaa !14
  store double %i.cx, ptr %i.bi, align 8, !tbaa !14
  store double %i.eg, ptr %i.bk, align 8, !tbaa !14
  store double %i.eh, ptr %i.bm, align 8, !tbaa !14
  store double %i.cy, ptr %i.bo, align 8, !tbaa !14
  store double %i.cz, ptr %i.bp, align 8, !tbaa !14
  store double %i.ei, ptr %i.bq, align 8, !tbaa !14
  store double %i.ej, ptr %i.bs, align 8, !tbaa !14
  %i.el = fadd <2 x double> %i.eb, %i.ef          ; 3 uses
  %i.em = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.en = fneg <2 x double> %i.el
  %i.eo = shufflevector <2 x double> %i.el, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.ep = fmul <2 x double> %i.em, %i.eo
  %i.eq = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eq, <2 x double> %i.el, <2 x double> %i.ep)
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.es, ptr %i.bl, align 8, !tbaa !14
  store <2 x double> %i.dq, ptr %gep, align 8, !tbaa !14
  %i.et = insertelement <2 x double> poison, double %i.dh, i64 0 ; 2 uses
  %i.eu = insertelement <2 x double> %i.et, double %i.de, i64 1
  %i.ev = fmul <2 x double> %i.ek, %i.eu
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ex = insertelement <2 x double> poison, double %i.db, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ek, <2 x double> %i.ew)
  %i.fa = fadd <2 x double> %i.cr, %i.cv          ; 3 uses
  %i.fb = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.fc = fneg <2 x double> %i.fa
  %i.fd = shufflevector <2 x double> %i.fa, <2 x double> %i.fc, <2 x i32> <i32 1, i32 2>
  %i.fe = fmul <2 x double> %i.fb, %i.fd
  %i.ff = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.fa, <2 x double> %i.fe)
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fh, ptr %i.bh, align 8, !tbaa !14
  %i.fi = shufflevector <2 x double> %i.ez, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.fi, ptr %i.br, align 8, !tbaa !14
  %i.fj = load <2 x double>, ptr %i.bw, align 8, !tbaa !14 ; 3 uses
  %i.fk = load double, ptr %i.by, align 8, !tbaa !14
  %i.fl = load <2 x double>, ptr %i.bx, align 8, !tbaa !14 ; 3 uses
  %i.fm = load double, ptr %i.bz, align 8, !tbaa !14
  %foldExtExtBinop735 = fadd <2 x double> %i.fj, %i.fl ; 2 uses
  %i.fn = fneg double %i.fk
  %i.fo = fsub double %i.fn, %i.fm                ; 2 uses
  %i.fp = shufflevector <2 x double> %i.fl, <2 x double> %i.fj, <2 x i32> <i32 1, i32 2>
  %i.fq = shufflevector <2 x double> %i.fj, <2 x double> %i.fl, <2 x i32> <i32 1, i32 2>
  %i.fr = fsub <2 x double> %i.fp, %i.fq          ; 2 uses
  %i.fs = load <2 x double>, ptr %i.ce, align 8, !tbaa !14 ; 3 uses
  %i.ft = load <2 x double>, ptr %gep712, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop737 = fadd <2 x double> %i.fs, %i.ft ; 2 uses
  %foldExtExtBinop739 = fadd <2 x double> %i.fs, %i.ft
  %i.fu = extractelement <2 x double> %foldExtExtBinop739, i64 1 ; 2 uses
  %i.fv = fsub <2 x double> %i.fs, %i.ft          ; 2 uses
  %foldExtExtBinop741 = fadd <2 x double> %foldExtExtBinop735, %foldExtExtBinop737
  %i.fw = extractelement <2 x double> %foldExtExtBinop741, i64 0
  %i.fx = fsub double %i.fo, %i.fu
  %foldExtExtBinop743 = fsub <2 x double> %foldExtExtBinop735, %foldExtExtBinop737
  %i.fy = extractelement <2 x double> %foldExtExtBinop743, i64 0
  %i.fz = fadd double %i.fo, %i.fu
  %i.ga = fadd <2 x double> %i.fr, %i.fv          ; 3 uses
  %i.gb = fneg <2 x double> %i.ga
  %i.gc = shufflevector <2 x double> %i.ga, <2 x double> %i.gb, <2 x i32> <i32 1, i32 2>
  %i.gd = fmul <2 x double> %i.ff, %i.gc
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> %i.ga, <2 x double> %i.gd)
  %i.gf = fsub <2 x double> %i.fr, %i.fv          ; 3 uses
  %i.gg = fneg <2 x double> %i.gf
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> %i.gf, <2 x i32> <i32 1, i32 2>
  %i.gi = fmul <2 x double> %i.do, %i.gh
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.gf, <2 x double> %i.gi)
  %i.gk = load <2 x double>, ptr %i.ca, align 8, !tbaa !14 ; 3 uses
  %i.gl = load double, ptr %i.cc, align 8, !tbaa !14
  %i.gm = load <2 x double>, ptr %i.cb, align 8, !tbaa !14 ; 3 uses
  %i.gn = load double, ptr %i.cd, align 8, !tbaa !14
  %foldExtExtBinop745 = fadd <2 x double> %i.gk, %i.gm ; 2 uses
  %i.go = fneg double %i.gl
  %i.gp = fsub double %i.go, %i.gn                ; 2 uses
  %i.gq = shufflevector <2 x double> %i.gm, <2 x double> %i.gk, <2 x i32> <i32 1, i32 2>
  %i.gr = shufflevector <2 x double> %i.gk, <2 x double> %i.gm, <2 x i32> <i32 1, i32 2>
  %i.gs = fsub <2 x double> %i.gq, %i.gr          ; 2 uses
  %i.gt = load <2 x double>, ptr %i.cg, align 8, !tbaa !14 ; 3 uses
  %i.gu = load <2 x double>, ptr %i.ch, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop747 = fadd <2 x double> %i.gt, %i.gu ; 2 uses
  %foldExtExtBinop749 = fadd <2 x double> %i.gt, %i.gu
  %i.gv = extractelement <2 x double> %foldExtExtBinop749, i64 1 ; 2 uses
  %i.gw = fsub <2 x double> %i.gt, %i.gu          ; 2 uses
  store double %i.fw, ptr %i.bw, align 8, !tbaa !14
  store double %i.fx, ptr %i.by, align 8, !tbaa !14
  %foldExtExtBinop751 = fadd <2 x double> %foldExtExtBinop745, %foldExtExtBinop747
  %i.gx = extractelement <2 x double> %foldExtExtBinop751, i64 0
  store double %i.gx, ptr %i.ca, align 8, !tbaa !14
  %i.gy = fsub double %i.gp, %i.gv
  store double %i.gy, ptr %i.cc, align 8, !tbaa !14
  store double %i.fy, ptr %i.ce, align 8, !tbaa !14
  store double %i.fz, ptr %i.cf, align 8, !tbaa !14
  %foldExtExtBinop753 = fsub <2 x double> %foldExtExtBinop745, %foldExtExtBinop747
  %i.gz = extractelement <2 x double> %foldExtExtBinop753, i64 0
  store double %i.gz, ptr %i.cg, align 8, !tbaa !14
  %i.ha = fadd double %i.gp, %i.gv
  store double %i.ha, ptr %i.ci, align 8, !tbaa !14
  %i.hb = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hb, ptr %i.bx, align 8, !tbaa !14
  %i.hc = fadd <2 x double> %i.gs, %i.gw          ; 3 uses
  %i.hd = fneg <2 x double> %i.hc
  %i.he = shufflevector <2 x double> %i.hc, <2 x double> %i.hd, <2 x i32> <i32 1, i32 2>
  %i.hf = fmul <2 x double> %i.eq, %i.he
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.hc, <2 x double> %i.hf)
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hh, ptr %i.cb, align 8, !tbaa !14
  %i.hi = shufflevector <2 x double> %i.gj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hi, ptr %gep712, align 8, !tbaa !14
  %i.hj = fsub <2 x double> %i.gs, %i.gw          ; 3 uses
  %i.hk = fneg <2 x double> %i.hj
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> %i.hj, <2 x i32> <i32 1, i32 2>
  %i.hm = fmul <2 x double> %i.ey, %i.hl
  %i.hn = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.hj, <2 x double> %i.hm)
  %i.hp = shufflevector <2 x double> %i.ho, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hp, ptr %i.ch, align 8, !tbaa !14
  %indvars.iv.next704 = add nuw nsw i64 %indvars.iv703, 4 ; 2 uses
  %i.hq = icmp samesign ult i64 %indvars.iv.next704, %i.av
  br i1 %i.hq, label %.lr.ph, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.av, %.lr.ph ]
  %.0684.lcssa = phi double [ 1.000000e+00, %.._crit_edge_crit_edge ], [ %i.db, %.lr.ph ]
  %.0.lcssa = phi double [ 0.000000e+00, %.._crit_edge_crit_edge ], [ %i.dh, %.lr.ph ]
  %i.hr = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %.._crit_edge_crit_edge ], [ %i.bb, %.lr.ph ]
  %i.hs = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ht = shufflevector <2 x double> %i.hs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hu = fadd <2 x double> %i.ht, %i.hr
  %i.hv = fsub double %.0684.lcssa, %i.ao
  %i.hw = fsub double %.0.lcssa, %i.ao
  %i.hx = mul nsw i32 %i.a, 3
  %i.hy = mul nsw i32 %i.a, 5
  %i.hz = mul nsw i32 %i.a, 7
  %i.ia = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !14 ; 2 uses
  %i.ic = sext i32 %i.hy to i64
  %i.id = getelementptr [8 x i8], ptr %1, i64 %i.ic ; 7 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 -16    ; 2 uses
  %i.if = sext i32 %i.a to i64
  %i.ig = getelementptr [8 x i8], ptr %1, i64 %i.if ; 6 uses
  %i.ih = getelementptr i8, ptr %i.ig, i64 -8     ; 2 uses
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !14 ; 2 uses
  %i.ij = fneg double %i.ii
  %i.ik = getelementptr i8, ptr %i.id, i64 -8
  %i.il = sext i32 %i.hx to i64
  %i.im = getelementptr [8 x i8], ptr %1, i64 %i.il ; 7 uses
  %i.in = getelementptr i8, ptr %i.im, i64 -16    ; 2 uses
  %i.io = sext i32 %i.hz to i64
  %i.ip = getelementptr [8 x i8], ptr %1, i64 %i.io ; 5 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 -16    ; 2 uses
  %i.ir = getelementptr i8, ptr %i.im, i64 -8
  %i.is = load <2 x double>, ptr %i.ie, align 8, !tbaa !14 ; 2 uses
  %i.it = load double, ptr %i.ik, align 8, !tbaa !14
  %i.iu = extractelement <2 x double> %i.is, i64 0
  %i.iv = fadd double %i.ib, %i.iu                ; 2 uses
  %i.iw = fsub double %i.ij, %i.it                ; 2 uses
  %i.ix = shufflevector <2 x double> %i.is, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.iy = insertelement <2 x double> %i.ix, double %i.ib, i64 1
  %i.iz = insertelement <2 x double> %i.ix, double %i.ii, i64 0
  %i.ja = fsub <2 x double> %i.iy, %i.iz          ; 2 uses
  %i.jb = load <2 x double>, ptr %i.in, align 8, !tbaa !14 ; 3 uses
  %i.jc = load <2 x double>, ptr %i.iq, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop755 = fadd <2 x double> %i.jb, %i.jc
  %i.jd = extractelement <2 x double> %foldExtExtBinop755, i64 0 ; 2 uses
  %foldExtExtBinop757 = fadd <2 x double> %i.jb, %i.jc
  %i.je = extractelement <2 x double> %foldExtExtBinop757, i64 1 ; 2 uses
  %i.jf = fsub <2 x double> %i.jb, %i.jc          ; 2 uses
  %i.jg = fadd double %i.iv, %i.jd
  store double %i.jg, ptr %i.ia, align 8, !tbaa !14
  %i.jh = fsub double %i.iw, %i.je
  store double %i.jh, ptr %i.ih, align 8, !tbaa !14
  %i.ji = fsub double %i.iv, %i.jd
  store double %i.ji, ptr %i.in, align 8, !tbaa !14
  %i.jj = fadd double %i.iw, %i.je
  store double %i.jj, ptr %i.ir, align 8, !tbaa !14
  %i.jk = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.jl = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x double> %i.jl, %i.hu          ; 2 uses
  %i.jn = fadd <2 x double> %i.ja, %i.jf          ; 2 uses
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jp = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jq = fneg <2 x double> %i.jo
  %i.jr = shufflevector <2 x double> %i.jn, <2 x double> %i.jq, <2 x i32> <i32 3, i32 1>
  %i.js = fmul <2 x double> %i.jp, %i.jr
  %i.jt = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jo, <2 x double> %i.js)
  store <2 x double> %i.ju, ptr %i.ie, align 8, !tbaa !14
  %i.jv = fsub <2 x double> %i.ja, %i.jf          ; 3 uses
  %i.jw = fneg <2 x double> %i.jv
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> %i.jv, <2 x i32> <i32 1, i32 2>
  %i.jy = getelementptr i8, ptr %i.ig, i64 8      ; 2 uses
  %i.jz = getelementptr i8, ptr %i.id, i64 8      ; 2 uses
  %i.ka = load double, ptr %i.im, align 8, !tbaa !14 ; 2 uses
  %i.kb = load double, ptr %i.ip, align 8, !tbaa !14 ; 2 uses
  %i.kc = fadd double %i.ka, %i.kb                ; 2 uses
  %i.kd = getelementptr i8, ptr %i.im, i64 8      ; 2 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !14 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.ip, i64 8      ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !14 ; 2 uses
  %i.kh = fadd double %i.ke, %i.kg                ; 2 uses
  %i.ki = fsub double %i.ka, %i.kb                ; 2 uses
  %i.kj = fsub double %i.ke, %i.kg                ; 2 uses
  %i.kk = fneg double %i.ao                       ; 2 uses
  %i.kl = getelementptr i8, ptr %i.ig, i64 16     ; 2 uses
  %i.km = getelementptr i8, ptr %i.id, i64 16     ; 2 uses
  %i.kn = getelementptr i8, ptr %i.ig, i64 24     ; 2 uses
  %i.ko = getelementptr i8, ptr %i.id, i64 24
  %i.kp = getelementptr i8, ptr %i.im, i64 16     ; 2 uses
  %i.kq = getelementptr i8, ptr %i.ip, i64 16     ; 2 uses
  %i.kr = getelementptr i8, ptr %i.im, i64 24
  %i.ks = fmul double %i.as, %i.hv
  %i.kt = fmul double %i.as, %i.hw
  %i.ku = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.kv = shufflevector <2 x double> %i.ku, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kw = fmul <2 x double> %i.kv, %i.jx
  %i.kx = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ky, <2 x double> %i.jv, <2 x double> %i.kw)
  %i.la = shufflevector <2 x double> %i.kz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.la, ptr %i.iq, align 8, !tbaa !14
  %i.lb = load double, ptr %i.ig, align 8, !tbaa !14 ; 2 uses
  %i.lc = load double, ptr %i.id, align 8, !tbaa !14 ; 2 uses
  %i.ld = fadd double %i.lb, %i.lc                ; 2 uses
  %i.le = load double, ptr %i.jy, align 8, !tbaa !14 ; 2 uses
  %i.lf = fneg double %i.le
  %i.lg = load double, ptr %i.jz, align 8, !tbaa !14 ; 2 uses
  %i.lh = fsub double %i.lf, %i.lg                ; 2 uses
  %i.li = fsub double %i.lb, %i.lc                ; 2 uses
  %i.lj = fsub double %i.lg, %i.le                ; 2 uses
  %i.lk = fadd double %i.ld, %i.kc
  store double %i.lk, ptr %i.ig, align 8, !tbaa !14
  %i.ll = fsub double %i.lh, %i.kh
  store double %i.ll, ptr %i.jy, align 8, !tbaa !14
  %i.lm = fsub double %i.ld, %i.kc
  store double %i.lm, ptr %i.im, align 8, !tbaa !14
  %i.ln = fadd double %i.lh, %i.kh
  store double %i.ln, ptr %i.kd, align 8, !tbaa !14
  %i.lo = fadd double %i.li, %i.kj                ; 2 uses
  %i.lp = fadd double %i.lj, %i.ki                ; 2 uses
  %i.lq = fsub double %i.lo, %i.lp
  %i.lr = fmul double %i.ao, %i.lq
  store double %i.lr, ptr %i.id, align 8, !tbaa !14
  %i.ls = fadd double %i.lp, %i.lo
  %i.lt = fmul double %i.ao, %i.ls
  store double %i.lt, ptr %i.jz, align 8, !tbaa !14
  %i.lu = fsub double %i.li, %i.kj                ; 2 uses
  %i.lv = fsub double %i.lj, %i.ki                ; 2 uses
  %i.lw = fadd double %i.lv, %i.lu
  %i.lx = fmul double %i.lw, %i.kk
  store double %i.lx, ptr %i.ip, align 8, !tbaa !14
  %i.ly = fsub double %i.lv, %i.lu
  %i.lz = fmul double %i.ly, %i.kk
  store double %i.lz, ptr %i.kf, align 8, !tbaa !14
  %i.ma = load <2 x double>, ptr %i.kl, align 8, !tbaa !14 ; 3 uses
  %i.mb = load double, ptr %i.kn, align 8, !tbaa !14
  %i.mc = load <2 x double>, ptr %i.km, align 8, !tbaa !14 ; 3 uses
  %i.md = load double, ptr %i.ko, align 8, !tbaa !14
  %foldExtExtBinop759 = fadd <2 x double> %i.ma, %i.mc ; 2 uses
  %i.me = fneg double %i.mb
  %i.mf = fsub double %i.me, %i.md                ; 2 uses
  %i.mg = shufflevector <2 x double> %i.mc, <2 x double> %i.ma, <2 x i32> <i32 1, i32 2>
  %i.mh = shufflevector <2 x double> %i.ma, <2 x double> %i.mc, <2 x i32> <i32 1, i32 2>
  %i.mi = fsub <2 x double> %i.mg, %i.mh          ; 2 uses
  %i.mj = load <2 x double>, ptr %i.kp, align 8, !tbaa !14 ; 3 uses
  %i.mk = load <2 x double>, ptr %i.kq, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop761 = fadd <2 x double> %i.mj, %i.mk ; 2 uses
  %foldExtExtBinop763 = fadd <2 x double> %i.mj, %i.mk
  %i.ml = extractelement <2 x double> %foldExtExtBinop763, i64 1 ; 2 uses
  %i.mm = fsub <2 x double> %i.mj, %i.mk          ; 2 uses
  %foldExtExtBinop765 = fadd <2 x double> %foldExtExtBinop759, %foldExtExtBinop761
  %i.mn = extractelement <2 x double> %foldExtExtBinop765, i64 0
  store double %i.mn, ptr %i.kl, align 8, !tbaa !14
  %i.mo = fsub double %i.mf, %i.ml
  store double %i.mo, ptr %i.kn, align 8, !tbaa !14
  %foldExtExtBinop767 = fsub <2 x double> %foldExtExtBinop759, %foldExtExtBinop761
  %i.mp = extractelement <2 x double> %foldExtExtBinop767, i64 0
  store double %i.mp, ptr %i.kp, align 8, !tbaa !14
  %i.mq = fadd double %i.mf, %i.ml
  store double %i.mq, ptr %i.kr, align 8, !tbaa !14
  %i.mr = fadd <2 x double> %i.mi, %i.mm          ; 3 uses
  %i.ms = fneg <2 x double> %i.mr
  %i.mt = shufflevector <2 x double> %i.mr, <2 x double> %i.ms, <2 x i32> <i32 1, i32 2>
  %i.mu = fmul <2 x double> %i.jt, %i.mt
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jp, <2 x double> %i.mr, <2 x double> %i.mu)
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.mw, ptr %i.km, align 8, !tbaa !14
  %i.mx = fsub <2 x double> %i.mi, %i.mm          ; 3 uses
  %i.my = fneg <2 x double> %i.mx
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> %i.mx, <2 x i32> <i32 1, i32 2>
  %i.na = fmul <2 x double> %i.ky, %i.mz
  %i.nb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.mx, <2 x double> %i.na)
  %i.nc = shufflevector <2 x double> %i.nb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.nc, ptr %i.kq, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bitrv2conj(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 !guid !145 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !12
  %i.a = icmp sgt i32 %0, 8
  br i1 %i.a, label %.lr.ph245, label %._crit_edge246.thread

.lr.ph245:                                        ; preds = %bb.a, %._crit_edge
  %.0243 = phi i32 [ %i.o, %._crit_edge ], [ 1, %bb.a ] ; 6 uses
  %.0233242 = phi i32 [ %i.b, %._crit_edge ], [ %0, %bb.a ]
  %i.b = lshr i32 %.0233242, 1                    ; 5 uses
  %i.c = icmp sgt i32 %.0243, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph245
  %i.d = zext nneg i32 %.0243 to i64              ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.d ; 2 uses
  %min.iters.check = icmp ult i32 %.0243, 8
  br i1 %min.iters.check, label %.lr.ph.preheader306, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 4, !tbaa !12
  %wide.load304 = load <4 x i32>, ptr %i.f, align 4, !tbaa !12
  %i.g = add nsw <4 x i32> %wide.load, %broadcast.splat
  %i.h = add nsw <4 x i32> %wide.load304, %broadcast.splat
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %i.g, ptr %i.i, align 4, !tbaa !12
  store <4 x i32> %i.h, ptr %i.j, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader306

.lr.ph.preheader306:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader306, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader306 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !12
  %i.n = add nsw i32 %i.m, %i.b
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  store i32 %i.n, ptr %gep, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !139

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.lr.ph245
  %i.o = shl i32 %.0243, 1                        ; 4 uses
  %i.p = shl i32 %.0243, 4                        ; 2 uses
  %i.q = icmp slt i32 %i.p, %i.b
  br i1 %i.q, label %.lr.ph245, label %._crit_edge246, !llvm.loop !140

._crit_edge246:                                   ; preds = %._crit_edge
  %i.r = shl i32 %.0243, 2                        ; 2 uses
  %i.s = icmp eq i32 %i.p, %i.b
  br i1 %i.s, label %.preheader238, label %bb.c

._crit_edge246.thread:                            ; preds = %bb.a
  %i.t = icmp eq i32 %0, 8
  br i1 %i.t, label %.preheader.lr.ph, label %bb.c

.preheader238:                                    ; preds = %._crit_edge246
  %i.u = icmp sgt i32 %i.o, 0
  br i1 %i.u, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %._crit_edge246.thread, %.preheader238
  %.0.lcssa289291 = phi i32 [ %i.o, %.preheader238 ], [ 1, %._crit_edge246.thread ] ; 2 uses
  %i.v = phi i32 [ %i.r, %.preheader238 ], [ 2, %._crit_edge246.thread ] ; 5 uses
  %i.w = shl nuw nsw i32 %.0.lcssa289291, 2       ; 2 uses
  %i.x = zext nneg i32 %i.v to i64                ; 3 uses
  %wide.trip.count278 = zext nneg i32 %.0.lcssa289291 to i64
  %invariant.gep299 = getelementptr [8 x i8], ptr %2, i64 %i.x
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge253
  %indvars.iv275 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next276, %._crit_edge253 ] ; 5 uses
  %.not = icmp eq i64 %indvars.iv275, 0
  br i1 %.not, label %._crit_edge253, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv275
  %i.z = load i32, ptr %i.y, align 4, !tbaa !12   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %indvars.iv275.tr = trunc nuw i64 %indvars.iv275 to i32
  %i.ab = shl nuw i32 %indvars.iv275.tr, 1        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph252, %bb.b
  %indvars.iv270 = phi i64 [ 0, %.lr.ph252 ], [ %indvars.iv.next271, %bb.b ] ; 3 uses
  %i.ac = shl nuw nsw i64 %indvars.iv270, 1
  %i.ad = add nsw i64 %i.ac, %i.aa                ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv270
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !12
  %i.ag = add nsw i32 %i.af, %i.ab                ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ad ; 3 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !14
  %i.aj = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !14
  %i.al = fneg double %i.ak
  %i.am = sext i32 %i.ag to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.am ; 3 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !14
  %i.ap = getelementptr i8, ptr %i.an, i64 8      ; 2 uses
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !14
  %i.ar = fneg double %i.aq
  store double %i.ao, ptr %i.ah, align 8, !tbaa !14
  store double %i.ar, ptr %i.aj, align 8, !tbaa !14
  store double %i.ai, ptr %i.an, align 8, !tbaa !14
  store double %i.al, ptr %i.ap, align 8, !tbaa !14
  %i.as = add nsw i64 %i.ad, %i.x                 ; 2 uses
  %i.at = add nsw i32 %i.ag, %i.w                 ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %2, i64 %i.as ; 3 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr i8, ptr %i.au, i64 8      ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !14
  %i.ay = fneg double %i.ax
  %i.az = sext i32 %i.at to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %2, i64 %i.az ; 3 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !14
  %i.bc = getelementptr i8, ptr %i.ba, i64 8      ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !14
  %i.be = fneg double %i.bd
  store double %i.bb, ptr %i.au, align 8, !tbaa !14
  store double %i.be, ptr %i.aw, align 8, !tbaa !14
  store double %i.av, ptr %i.ba, align 8, !tbaa !14
  store double %i.ay, ptr %i.bc, align 8, !tbaa !14
  %i.bf = add nsw i64 %i.as, %i.x                 ; 2 uses
  %i.bg = sub nsw i32 %i.at, %i.v                 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bf ; 3 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = getelementptr i8, ptr %i.bh, i64 8      ; 2 uses
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !14
  %i.bl = fneg double %i.bk
  %i.bm = sext i32 %i.bg to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bm ; 3 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !14
  %i.bp = getelementptr i8, ptr %i.bn, i64 8      ; 2 uses
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !14
  %i.br = fneg double %i.bq
  store double %i.bo, ptr %i.bh, align 8, !tbaa !14
  store double %i.br, ptr %i.bj, align 8, !tbaa !14
  store double %i.bi, ptr %i.bn, align 8, !tbaa !14
  store double %i.bl, ptr %i.bp, align 8, !tbaa !14
  %i.bs = add nsw i32 %i.bg, %i.w
  %gep300 = getelementptr [8 x i8], ptr %invariant.gep299, i64 %i.bf ; 3 uses
  %i.bt = load double, ptr %gep300, align 8, !tbaa !14
  %i.bu = getelementptr i8, ptr %gep300, i64 8    ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !14
  %i.bw = fneg double %i.bv
  %i.bx = sext i32 %i.bs to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bx ; 3 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !14
  %i.ca = getelementptr i8, ptr %i.by, i64 8      ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !14
  %i.cc = fneg double %i.cb
  store double %i.bz, ptr %gep300, align 8, !tbaa !14
  store double %i.cc, ptr %i.bu, align 8, !tbaa !14
  store double %i.bt, ptr %i.by, align 8, !tbaa !14
  store double %i.bw, ptr %i.ca, align 8, !tbaa !14
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond274.not = icmp eq i64 %indvars.iv.next271, %indvars.iv275
  br i1 %exitcond274.not, label %._crit_edge253.loopexit, label %bb.b, !llvm.loop !141

._crit_edge253.loopexit:                          ; preds = %bb.b
  %i.cd = add nsw i32 %i.z, %i.ab
  br label %._crit_edge253

._crit_edge253:                                   ; preds = %.preheader, %._crit_edge253.loopexit
  %i.ce = phi i32 [ %i.cd, %._crit_edge253.loopexit ], [ 0, %.preheader ] ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr [8 x i8], ptr %2, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 8      ; 2 uses
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !14
  %i.cj = fneg double %i.ci
  store double %i.cj, ptr %i.ch, align 8, !tbaa !14
  %i.ck = add nsw i32 %i.ce, %i.v                 ; 2 uses
  %i.cl = add nsw i32 %i.ck, %i.v                 ; 2 uses
  %i.cm = sext i32 %i.ck to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cm ; 3 uses
  %i.co = load double, ptr %i.cn, align 8, !tbaa !14
  %i.cp = getelementptr i8, ptr %i.cn, i64 8      ; 2 uses
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !14
  %i.cr = fneg double %i.cq
  %i.cs = sext i32 %i.cl to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cs ; 3 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !14
  %i.cv = getelementptr i8, ptr %i.ct, i64 8      ; 2 uses
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !14
  %i.cx = fneg double %i.cw
  store double %i.cu, ptr %i.cn, align 8, !tbaa !14
  store double %i.cx, ptr %i.cp, align 8, !tbaa !14
  store double %i.co, ptr %i.ct, align 8, !tbaa !14
  store double %i.cr, ptr %i.cv, align 8, !tbaa !14
  %i.cy = add nsw i32 %i.cl, %i.v
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr [8 x i8], ptr %2, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 8      ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !14
  %i.dd = fneg double %i.dc
  store double %i.dd, ptr %i.db, align 8, !tbaa !14
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond279.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count278
  br i1 %exitcond279.not, label %.loopexit, label %.preheader, !llvm.loop !142

bb.c:                                             ; preds = %._crit_edge246.thread, %._crit_edge246
  %i.de = phi i32 [ 2, %._crit_edge246.thread ], [ %i.r, %._crit_edge246 ] ; 3 uses
  %.0.lcssa288 = phi i32 [ 1, %._crit_edge246.thread ], [ %i.o, %._crit_edge246 ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !14
  %i.dh = fneg double %i.dg
  store double %i.dh, ptr %i.df, align 8, !tbaa !14
  %i.di = sext i32 %i.de to i64                   ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %2, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 8      ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !14
  %i.dm = fneg double %i.dl
  store double %i.dm, ptr %i.dk, align 8, !tbaa !14
  %i.dn = icmp sgt i32 %.0.lcssa288, 1
  br i1 %i.dn, label %.preheader239.preheader, label %.loopexit

.preheader239.preheader:                          ; preds = %bb.c
  %wide.trip.count268 = zext nneg i32 %.0.lcssa288 to i64
  %invariant.gep297 = getelementptr [8 x i8], ptr %2, i64 %i.di
  br label %.preheader239

.preheader239:                                    ; preds = %.preheader239.preheader, %bb.e
  %indvars.iv265 = phi i64 [ 1, %.preheader239.preheader ], [ %indvars.iv.next266, %bb.e ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv265
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !12 ; 2 uses
  %i.dq = sext i32 %i.dp to i64
  %indvars.iv265.tr = trunc nuw nsw i64 %indvars.iv265 to i32
  %i.dr = shl nuw nsw i32 %indvars.iv265.tr, 1    ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader239, %bb.d
  %indvars.iv260 = phi i64 [ 0, %.preheader239 ], [ %indvars.iv.next261, %bb.d ] ; 3 uses
  %i.ds = shl nuw nsw i64 %indvars.iv260, 1
  %i.dt = add nsw i64 %i.ds, %i.dq                ; 2 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv260
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !12
  %i.dw = add nsw i32 %i.dv, %i.dr                ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dt ; 3 uses
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !14
  %i.dz = getelementptr i8, ptr %i.dx, i64 8      ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !14
  %i.eb = fneg double %i.ea
  %i.ec = sext i32 %i.dw to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ec ; 3 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !14
  %i.ef = getelementptr i8, ptr %i.ed, i64 8      ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !14
  %i.eh = fneg double %i.eg
  store double %i.ee, ptr %i.dx, align 8, !tbaa !14
  store double %i.eh, ptr %i.dz, align 8, !tbaa !14
  store double %i.dy, ptr %i.ed, align 8, !tbaa !14
  store double %i.eb, ptr %i.ef, align 8, !tbaa !14
  %i.ei = add nsw i32 %i.dw, %i.de
  %gep298 = getelementptr [8 x i8], ptr %invariant.gep297, i64 %i.dt ; 3 uses
  %i.ej = load double, ptr %gep298, align 8, !tbaa !14
  %i.ek = getelementptr i8, ptr %gep298, i64 8    ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !14
  %i.em = fneg double %i.el
  %i.en = sext i32 %i.ei to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.en ; 3 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !14
  %i.eq = getelementptr i8, ptr %i.eo, i64 8      ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !14
  %i.es = fneg double %i.er
  store double %i.ep, ptr %gep298, align 8, !tbaa !14
  store double %i.es, ptr %i.ek, align 8, !tbaa !14
  store double %i.ej, ptr %i.eo, align 8, !tbaa !14
  store double %i.em, ptr %i.eq, align 8, !tbaa !14
  %indvars.iv.next261 = add nuw nsw i64 %indvars.iv260, 1 ; 2 uses
  %exitcond264.not = icmp eq i64 %indvars.iv.next261, %indvars.iv265
  br i1 %exitcond264.not, label %bb.e, label %bb.d, !llvm.loop !143

bb.e:                                             ; preds = %bb.d
  %i.et = add nsw i32 %i.dp, %i.dr                ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr [8 x i8], ptr %2, i64 %i.eu
  %i.ew = getelementptr i8, ptr %i.ev, i64 8      ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !14
  %i.ey = fneg double %i.ex
  store double %i.ey, ptr %i.ew, align 8, !tbaa !14
  %i.ez = add nsw i32 %i.et, %i.de
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr [8 x i8], ptr %2, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 8      ; 2 uses
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !14
  %i.fe = fneg double %i.fd
  store double %i.fe, ptr %i.fc, align 8, !tbaa !14
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond269.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count268
  br i1 %exitcond269.not, label %.loopexit, label %.preheader239, !llvm.loop !144

.loopexit:                                        ; preds = %bb.e, %._crit_edge253, %bb.c, %.preheader238
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv216neg(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 !guid !146 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.p = load <2 x double>, ptr %i.o, align 8, !tbaa !14
  %i.q = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.r = load <2 x double>, ptr %i.k, align 8, !tbaa !14
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  store <2 x double> %i.r, ptr %i.c, align 8, !tbaa !14
  %i.t = load <2 x double>, ptr %i.m, align 8, !tbaa !14
  %i.u = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  store <2 x double> %i.t, ptr %i.e, align 8, !tbaa !14
  %i.v = load <2 x double>, ptr %i.i, align 8, !tbaa !14
  store <2 x double> %i.v, ptr %i.g, align 8, !tbaa !14
  %i.w = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.p, ptr %i.a, align 8, !tbaa !14
  %i.x = load <2 x double>, ptr %i.n, align 8, !tbaa !14
  store <2 x double> %i.x, ptr %i.i, align 8, !tbaa !14
  %i.y = load <2 x double>, ptr %i.f, align 8, !tbaa !14
  store <2 x double> %i.u, ptr %i.f, align 8, !tbaa !14
  %i.z = load <2 x double>, ptr %i.j, align 8, !tbaa !14
  store <2 x double> %i.y, ptr %i.j, align 8, !tbaa !14
  store <2 x double> %i.z, ptr %i.k, align 8, !tbaa !14
  %i.aa = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.q, ptr %i.b, align 8, !tbaa !14
  %i.ab = load <2 x double>, ptr %i.l, align 8, !tbaa !14
  store <2 x double> %i.aa, ptr %i.l, align 8, !tbaa !14
  store <2 x double> %i.ab, ptr %i.m, align 8, !tbaa !14
  %i.ac = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  store <2 x double> %i.s, ptr %i.d, align 8, !tbaa !14
  store <2 x double> %i.ac, ptr %i.n, align 8, !tbaa !14
  %i.ad = load <2 x double>, ptr %i.h, align 8, !tbaa !14
  store <2 x double> %i.w, ptr %i.h, align 8, !tbaa !14
  store <2 x double> %i.ad, ptr %i.o, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @bitrv208neg(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 !guid !147 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !14
  %i.i = load <2 x double>, ptr %i.c, align 8, !tbaa !14
  %i.j = load <2 x double>, ptr %i.e, align 8, !tbaa !14
  store <2 x double> %i.j, ptr %i.c, align 8, !tbaa !14
  %i.k = load <2 x double>, ptr %i.a, align 8, !tbaa !14
  store <2 x double> %i.h, ptr %i.a, align 8, !tbaa !14
  %i.l = load <2 x double>, ptr %i.f, align 8, !tbaa !14
  store <2 x double> %i.l, ptr %i.e, align 8, !tbaa !14
  %i.m = load <2 x double>, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.i, ptr %i.b, align 8, !tbaa !14
  store <2 x double> %i.m, ptr %i.f, align 8, !tbaa !14
  %i.n = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  store <2 x double> %i.k, ptr %i.d, align 8, !tbaa !14
  store <2 x double> %i.n, ptr %i.g, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftb040(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 !guid !148 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !14  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load double, ptr %i.b, align 8, !tbaa !14 ; 2 uses
  %i.d = fadd double %i.a, %i.c                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !14 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.f, %i.h                   ; 2 uses
  %i.j = fsub double %i.a, %i.c                   ; 2 uses
  %i.k = fsub double %i.f, %i.h                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.p = fadd double %i.m, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.u = fadd double %i.r, %i.t                   ; 2 uses
  %i.v = fsub double %i.m, %i.o                   ; 2 uses
  %i.w = fsub double %i.r, %i.t                   ; 2 uses
  %i.x = fadd double %i.d, %i.p
  store double %i.x, ptr %0, align 8, !tbaa !14
  %i.y = fadd double %i.i, %i.u
  store double %i.y, ptr %i.e, align 8, !tbaa !14
  %i.z = fsub double %i.d, %i.p
  store double %i.z, ptr %i.b, align 8, !tbaa !14
  %i.aa = fsub double %i.i, %i.u
  store double %i.aa, ptr %i.g, align 8, !tbaa !14
  %i.ab = fadd double %i.j, %i.w
  store double %i.ab, ptr %i.l, align 8, !tbaa !14
  %i.ac = fsub double %i.k, %i.v
  store double %i.ac, ptr %i.q, align 8, !tbaa !14
  %i.ad = fsub double %i.j, %i.w
  store double %i.ad, ptr %i.n, align 8, !tbaa !14
  %i.ae = fadd double %i.k, %i.v
  store double %i.ae, ptr %i.s, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftmdl1(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 !guid !150 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = shl nsw i32 %i.a, 2
  %i.d = mul nsw i32 %i.a, 6
  %i.e = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.i = fadd double %i.e, %i.h                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !14 ; 2 uses
  %i.n = fadd double %i.k, %i.m                   ; 2 uses
  %i.o = fsub double %i.e, %i.h                   ; 2 uses
  %i.p = fsub double %i.k, %i.m                   ; 2 uses
  %i.q = sext i32 %i.b to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %1, i64 %i.q ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.t = sext i32 %i.d to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %i.t ; 3 uses
  %i.v = load double, ptr %i.u, align 8, !tbaa !14 ; 2 uses
  %i.w = fadd double %i.s, %i.v                   ; 2 uses
  %i.x = getelementptr i8, ptr %i.r, i64 8        ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 2 uses
  %i.z = getelementptr i8, ptr %i.u, i64 8        ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !14 ; 2 uses
  %i.ab = fadd double %i.y, %i.aa                 ; 2 uses
  %i.ac = fsub double %i.s, %i.v                  ; 2 uses
  %i.ad = fsub double %i.y, %i.aa                 ; 2 uses
  %i.ae = fadd double %i.i, %i.w
  store double %i.ae, ptr %1, align 8, !tbaa !14
  %i.af = fadd double %i.n, %i.ab
  store double %i.af, ptr %i.j, align 8, !tbaa !14
  %i.ag = fsub double %i.i, %i.w
  store double %i.ag, ptr %i.r, align 8, !tbaa !14
  %i.ah = fsub double %i.n, %i.ab
  store double %i.ah, ptr %i.x, align 8, !tbaa !14
  %i.ai = fsub double %i.o, %i.ad
  store double %i.ai, ptr %i.g, align 8, !tbaa !14
  %i.aj = fadd double %i.p, %i.ac
  store double %i.aj, ptr %i.l, align 8, !tbaa !14
  %i.ak = fadd double %i.o, %i.ad
  store double %i.ak, ptr %i.u, align 8, !tbaa !14
  %i.al = fsub double %i.p, %i.ac
  store double %i.al, ptr %i.z, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !14 ; 3 uses
  %i.ao = icmp sgt i32 %i.a, 2
  br i1 %i.ao, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.a to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.ap = zext nneg i32 %i.b to i64               ; 7 uses
  %i.aq = zext nneg i32 %i.a to i64               ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  %invariant.gep344 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ap
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv338 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next339, %.lr.ph ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.av = load double, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !14 ; 2 uses
  %i.ay = fneg double %i.ax
  %i.az = add nuw nsw i64 %indvars.iv338, %i.ap   ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, %i.ap            ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv338 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ba ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.az ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.ba ; 2 uses
  %i.be = load <2 x double>, ptr %i.bb, align 8, !tbaa !14 ; 2 uses
  %i.bf = load <2 x double>, ptr %i.bc, align 8, !tbaa !14 ; 2 uses
  %i.bg = fadd <2 x double> %i.be, %i.bf          ; 2 uses
  %i.bh = load <2 x double>, ptr %i.bd, align 8, !tbaa !14 ; 2 uses
  %i.bi = load <2 x double>, ptr %gep, align 8, !tbaa !14 ; 2 uses
  %i.bj = fadd <2 x double> %i.bh, %i.bi          ; 2 uses
  %i.bk = fadd <2 x double> %i.bg, %i.bj
  %i.bl = fsub <2 x double> %i.bg, %i.bj
  %i.bm = sub nuw nsw i64 %i.ap, %indvars.iv338   ; 2 uses
  %i.bn = add nuw nsw i64 %i.bm, %i.ap            ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, %i.ap            ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bm ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bn ; 2 uses
  %gep345 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep344, i64 %i.bo ; 2 uses
  %i.bs = fsub <2 x double> %i.be, %i.bf          ; 2 uses
  %i.bt = fsub <2 x double> %i.bh, %i.bi
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bv = fadd <2 x double> %i.bs, %i.bu          ; 3 uses
  %i.bw = fsub <2 x double> %i.bs, %i.bu          ; 4 uses
  %i.bx = shufflevector <2 x double> %i.bv, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.by = shufflevector <2 x double> %i.bw, <2 x double> %i.bv, <2 x i32> <i32 1, i32 2>
  %i.bz = insertelement <2 x double> poison, double %i.ay, i64 0 ; 2 uses
  %i.ca = insertelement <2 x double> %i.bz, double %i.ax, i64 1
  %i.cb = fmul <2 x double> %i.by, %i.ca
  %i.cc = insertelement <2 x double> poison, double %i.av, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.bx, <2 x double> %i.cb)
  %i.cf = load double, ptr %i.ar, align 8, !tbaa !14
  %i.cg = load double, ptr %i.at, align 8, !tbaa !14
  store <2 x double> %i.bk, ptr %i.bb, align 8, !tbaa !14
  store <2 x double> %i.bl, ptr %i.bd, align 8, !tbaa !14
  %i.ch = shufflevector <2 x double> %i.bw, <2 x double> %i.bv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ci = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fneg <2 x double> %i.ch
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.cm = fmul <2 x double> %i.cj, %i.cl
  %i.cn = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.ch, <2 x double> %i.cm)
  store <2 x double> %i.cp, ptr %i.bc, align 8, !tbaa !14
  store <2 x double> %i.ce, ptr %gep, align 8, !tbaa !14
  %i.cq = load <2 x double>, ptr %i.bp, align 8, !tbaa !14 ; 2 uses
  %i.cr = load <2 x double>, ptr %i.bq, align 8, !tbaa !14 ; 2 uses
  %i.cs = fadd <2 x double> %i.cq, %i.cr          ; 2 uses
  %i.ct = load <2 x double>, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.cu = load <2 x double>, ptr %gep345, align 8, !tbaa !14 ; 2 uses
  %i.cv = fadd <2 x double> %i.ct, %i.cu          ; 2 uses
  %i.cw = fadd <2 x double> %i.cs, %i.cv
  store <2 x double> %i.cw, ptr %i.bp, align 8, !tbaa !14
  %i.cx = fsub <2 x double> %i.cs, %i.cv
  store <2 x double> %i.cx, ptr %i.br, align 8, !tbaa !14
  %i.cy = fsub <2 x double> %i.cq, %i.cr          ; 2 uses
  %i.cz = fsub <2 x double> %i.ct, %i.cu
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.db = fsub <2 x double> %i.cy, %i.da          ; 4 uses
  %i.dc = fadd <2 x double> %i.cy, %i.da          ; 2 uses
  %i.dd = shufflevector <2 x double> %i.db, <2 x double> %i.dc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.de = fneg <2 x double> %i.dd
  %i.df = shufflevector <2 x double> %i.de, <2 x double> %i.db, <2 x i32> <i32 1, i32 2>
  %i.dg = fmul <2 x double> %i.co, %i.df
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.dd, <2 x double> %i.dg)
  store <2 x double> %i.dh, ptr %i.bq, align 8, !tbaa !14
  %i.di = shufflevector <2 x double> %i.dc, <2 x double> %i.db, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.dj = fneg <2 x double> %i.di
  %i.dk = shufflevector <2 x double> %i.db, <2 x double> %i.dj, <2 x i32> <i32 1, i32 2>
  %i.dl = fmul <2 x double> %i.cd, %i.dk
  %i.dm = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.di, <2 x double> %i.dl)
  store <2 x double> %i.dn, ptr %gep345, align 8, !tbaa !14
  %indvars.iv.next339 = add nuw nsw i64 %indvars.iv338, 2 ; 2 uses
  %i.do = icmp samesign ult i64 %indvars.iv.next339, %i.aq
  br i1 %i.do, label %.lr.ph, label %._crit_edge, !llvm.loop !149

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.aq, %.lr.ph ]
  %i.dp = mul nsw i32 %i.a, 3
  %i.dq = mul nsw i32 %i.a, 5
  %i.dr = mul nsw i32 %i.a, 7
  %i.ds = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 3 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !14 ; 2 uses
  %i.du = sext i32 %i.dq to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.du ; 3 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !14 ; 2 uses
  %i.dx = fadd double %i.dt, %i.dw                ; 2 uses
  %i.dy = getelementptr i8, ptr %i.ds, i64 8      ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !14 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dv, i64 8      ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !14 ; 2 uses
  %i.ec = fadd double %i.dz, %i.eb                ; 2 uses
  %i.ed = fsub double %i.dt, %i.dw                ; 2 uses
  %i.ee = fsub double %i.dz, %i.eb                ; 2 uses
  %i.ef = sext i32 %i.dp to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ef ; 3 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !14 ; 2 uses
  %i.ei = sext i32 %i.dr to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ei ; 3 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !14 ; 2 uses
  %i.el = fadd double %i.eh, %i.ek                ; 2 uses
  %i.em = getelementptr i8, ptr %i.eg, i64 8      ; 2 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !14 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ej, i64 8      ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !14 ; 2 uses
  %i.eq = fadd double %i.en, %i.ep                ; 2 uses
  %i.er = fsub double %i.eh, %i.ek                ; 2 uses
  %i.es = fsub double %i.en, %i.ep                ; 2 uses
  %i.et = fadd double %i.dx, %i.el
  store double %i.et, ptr %i.ds, align 8, !tbaa !14
  %i.eu = fadd double %i.ec, %i.eq
  store double %i.eu, ptr %i.dy, align 8, !tbaa !14
  %i.ev = fsub double %i.dx, %i.el
  store double %i.ev, ptr %i.eg, align 8, !tbaa !14
  %i.ew = fsub double %i.ec, %i.eq
  store double %i.ew, ptr %i.em, align 8, !tbaa !14
  %i.ex = fsub double %i.ed, %i.es                ; 2 uses
  %i.ey = fadd double %i.ee, %i.er                ; 2 uses
  %i.ez = fsub double %i.ex, %i.ey
  %i.fa = fmul double %i.an, %i.ez
  store double %i.fa, ptr %i.dv, align 8, !tbaa !14
  %i.fb = fadd double %i.ey, %i.ex
  %i.fc = fmul double %i.an, %i.fb
  store double %i.fc, ptr %i.ea, align 8, !tbaa !14
  %i.fd = fadd double %i.ed, %i.es                ; 2 uses
  %i.fe = fsub double %i.ee, %i.er                ; 2 uses
  %i.ff = fneg double %i.an                       ; 2 uses
  %i.fg = fadd double %i.fe, %i.fd
  %i.fh = fmul double %i.fg, %i.ff
  store double %i.fh, ptr %i.ej, align 8, !tbaa !14
  %i.fi = fsub double %i.fe, %i.fd
  %i.fj = fmul double %i.fi, %i.ff
  store double %i.fj, ptr %i.eo, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftmdl2(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 !guid !152 {
bb.a:
  %i.a = ashr i32 %0, 3                           ; 9 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load double, ptr %i.c, align 8, !tbaa !14 ; 4 uses
  %i.e = shl nsw i32 %i.a, 2
  %i.f = mul nsw i32 %i.a, 6
  %i.g = load double, ptr %1, align 8, !tbaa !14  ; 2 uses
  %i.h = sext i32 %i.e to i64                     ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %1, i64 %i.h ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.l = fsub double %i.g, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = load double, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.p = fadd double %i.n, %i.o                   ; 2 uses
  %i.q = fadd double %i.g, %i.k                   ; 2 uses
  %i.r = fsub double %i.n, %i.o                   ; 2 uses
  %i.s = sext i32 %i.b to i64                     ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !14 ; 2 uses
  %i.v = sext i32 %i.f to i64
  %i.w = getelementptr [8 x i8], ptr %1, i64 %i.v ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8        ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !14 ; 2 uses
  %i.z = fsub double %i.u, %i.y                   ; 2 uses
  %i.aa = or disjoint i32 %i.b, 1
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ab ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14 ; 2 uses
  %i.ae = load double, ptr %i.w, align 8, !tbaa !14 ; 2 uses
  %i.af = fadd double %i.ad, %i.ae                ; 2 uses
  %i.ag = fadd double %i.u, %i.y                  ; 2 uses
  %i.ah = fsub double %i.ad, %i.ae                ; 2 uses
  %i.ai = fsub double %i.z, %i.af
  %i.aj = fmul double %i.d, %i.ai                 ; 2 uses
  %i.ak = fadd double %i.z, %i.af
  %i.al = fmul double %i.d, %i.ak                 ; 2 uses
  %i.am = fadd double %i.l, %i.aj
  store double %i.am, ptr %1, align 8, !tbaa !14
  %i.an = fadd double %i.p, %i.al
  store double %i.an, ptr %i.m, align 8, !tbaa !14
  %i.ao = fsub double %i.l, %i.aj
  store double %i.ao, ptr %i.t, align 8, !tbaa !14
  %i.ap = fsub double %i.p, %i.al
  store double %i.ap, ptr %i.ac, align 8, !tbaa !14
  %i.aq = fsub double %i.ag, %i.ah
  %i.ar = fmul double %i.d, %i.aq                 ; 2 uses
  %i.as = fadd double %i.ag, %i.ah
  %i.at = fmul double %i.d, %i.as                 ; 2 uses
  %i.au = fsub double %i.q, %i.at
  store double %i.au, ptr %i.i, align 8, !tbaa !14
  %i.av = fadd double %i.r, %i.ar
  store double %i.av, ptr %i.j, align 8, !tbaa !14
  %i.aw = fadd double %i.q, %i.at
  store double %i.aw, ptr %i.w, align 8, !tbaa !14
  %i.ax = fsub double %i.r, %i.ar
  store double %i.ax, ptr %i.x, align 8, !tbaa !14
  %i.ay = icmp sgt i32 %i.a, 2
  br i1 %i.ay, label %.lr.ph.preheader, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = sext i32 %i.a to i64
  br label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.az = zext nneg i32 %i.b to i64               ; 7 uses
  %i.ba = zext nneg i32 %i.a to i64               ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.az
  %invariant.gep428 = getelementptr [8 x i8], ptr %1, i64 %i.az
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv420 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next421, %.lr.ph ] ; 4 uses
  %indvars.iv418 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next419, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.h, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %indvars.iv.next419 = add nuw nsw i64 %indvars.iv418, 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next419
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv418 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bk = fneg double %i.bj
  %indvars.iv.next = add nsw i64 %indvars.iv, -4  ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !14
  %i.bn = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 3 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -24
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !14
  %i.bq = getelementptr i8, ptr %i.bn, i64 -16
  %i.br = load double, ptr %i.bq, align 8, !tbaa !14
  %i.bs = getelementptr i8, ptr %i.bn, i64 -8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !14 ; 2 uses
  %i.bu = fneg double %i.bt
  %i.bv = add nuw nsw i64 %indvars.iv420, %i.az   ; 2 uses
  %i.bw = add nuw nsw i64 %i.bv, %i.az            ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv420 ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %1, i64 %i.bw ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bv ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bw ; 2 uses
  %i.ca = load <2 x double>, ptr %i.bx, align 8, !tbaa !14 ; 2 uses
  %i.cb = load <2 x double>, ptr %i.by, align 8, !tbaa !14
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cd = fadd <2 x double> %i.ca, %i.cc          ; 4 uses
  %i.ce = fsub <2 x double> %i.ca, %i.cc          ; 4 uses
  %i.cf = shufflevector <2 x double> %i.cd, <2 x double> %i.ce, <2 x i32> <i32 0, i32 3>
  %i.cg = load <2 x double>, ptr %i.bz, align 8, !tbaa !14 ; 2 uses
  %i.ch = load <2 x double>, ptr %gep, align 8, !tbaa !14
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cj = fadd <2 x double> %i.cg, %i.ci          ; 3 uses
  %i.ck = fsub <2 x double> %i.cg, %i.ci          ; 4 uses
  %i.cl = shufflevector <2 x double> %i.cj, <2 x double> %i.ck, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cm = shufflevector <2 x double> %i.ce, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.cn = shufflevector <2 x double> %i.ck, <2 x double> %i.cj, <2 x i32> <i32 0, i32 3>
  %i.co = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.cr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = shufflevector <2 x double> %i.cd, <2 x double> %i.cj, <2 x i32> <i32 1, i32 3>
  %i.ct = fneg <2 x double> %i.cs                 ; 2 uses
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cv = fmul <2 x double> %i.cp, %i.cu
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cm, <2 x double> %i.cv) ; 2 uses
  %i.cx = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = shufflevector <2 x double> %i.ct, <2 x double> %i.ck, <2 x i32> <i32 1, i32 2>
  %i.da = fmul <2 x double> %i.cy, %i.cz
  %i.db = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.cn, <2 x double> %i.da) ; 2 uses
  %i.de = fadd <2 x double> %i.cw, %i.dd
  store <2 x double> %i.de, ptr %i.bx, align 8, !tbaa !14
  %i.df = fsub <2 x double> %i.cw, %i.dd
  store <2 x double> %i.df, ptr %i.bz, align 8, !tbaa !14
  %i.dg = shufflevector <2 x double> %i.ce, <2 x double> %i.cd, <2 x i32> <i32 1, i32 2>
  %i.dh = insertelement <2 x double> poison, double %i.bk, i64 0 ; 2 uses
  %i.di = insertelement <2 x double> %i.dh, double %i.bj, i64 1
  %i.dj = fmul <2 x double> %i.dg, %i.di
  %i.dk = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.cf, <2 x double> %i.dj) ; 2 uses
  %i.dn = insertelement <2 x double> poison, double %i.br, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = fneg <2 x double> %i.cl
  %i.dq = shufflevector <2 x double> %i.ck, <2 x double> %i.dp, <2 x i32> <i32 1, i32 2>
  %i.dr = fmul <2 x double> %i.do, %i.dq
  %i.ds = insertelement <2 x double> poison, double %i.bu, i64 0 ; 2 uses
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.cl, <2 x double> %i.dr) ; 2 uses
  %i.dv = fadd <2 x double> %i.dm, %i.du
  store <2 x double> %i.dv, ptr %i.by, align 8, !tbaa !14
  %i.dw = fsub <2 x double> %i.dm, %i.du
  store <2 x double> %i.dw, ptr %gep, align 8, !tbaa !14
  %i.dx = sub nuw nsw i64 %i.az, %indvars.iv420   ; 2 uses
  %i.dy = add nuw nsw i64 %i.dx, %i.az            ; 2 uses
  %i.dz = add nuw nsw i64 %i.dy, %i.az            ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dx ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %1, i64 %i.dz ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.dy ; 2 uses
  %gep429 = getelementptr [8 x i8], ptr %invariant.gep428, i64 %i.dz ; 2 uses
  %i.ed = load <2 x double>, ptr %i.ea, align 8, !tbaa !14 ; 2 uses
  %i.ee = load <2 x double>, ptr %i.eb, align 8, !tbaa !14
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.eg = fadd <2 x double> %i.ed, %i.ef          ; 3 uses
  %i.eh = fsub <2 x double> %i.ed, %i.ef          ; 4 uses
  %i.ei = shufflevector <2 x double> %i.eg, <2 x double> %i.eh, <2 x i32> <i32 0, i32 3>
  %i.ej = load <2 x double>, ptr %i.ec, align 8, !tbaa !14 ; 2 uses
  %i.ek = load <2 x double>, ptr %gep429, align 8, !tbaa !14
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.em = fadd <2 x double> %i.ej, %i.el          ; 2 uses
  %i.en = fsub <2 x double> %i.ej, %i.el          ; 4 uses
  %i.eo = shufflevector <2 x double> %i.em, <2 x double> %i.en, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ep = shufflevector <2 x double> %i.eh, <2 x double> %i.eg, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.eq = shufflevector <2 x double> %i.en, <2 x double> %i.em, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.er = fneg <2 x double> %i.ep
  %i.es = shufflevector <2 x double> %i.er, <2 x double> %i.eh, <2 x i32> <i32 1, i32 2>
  %i.et = fmul <2 x double> %i.dc, %i.es
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.ep, <2 x double> %i.et) ; 2 uses
  %i.ev = fneg <2 x double> %i.eq
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> %i.en, <2 x i32> <i32 1, i32 2>
  %i.ex = fmul <2 x double> %i.cr, %i.ew
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.eq, <2 x double> %i.ex) ; 2 uses
  %i.ez = fadd <2 x double> %i.eu, %i.ey
  store <2 x double> %i.ez, ptr %i.ea, align 8, !tbaa !14
  %i.fa = fsub <2 x double> %i.eu, %i.ey
  store <2 x double> %i.fa, ptr %i.ec, align 8, !tbaa !14
  %i.fb = shufflevector <2 x double> %i.eh, <2 x double> %i.eg, <2 x i32> <i32 1, i32 2>
  %i.fc = insertelement <2 x double> %i.ds, double %i.bt, i64 1
  %i.fd = fmul <2 x double> %i.fb, %i.fc
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.ei, <2 x double> %i.fd) ; 2 uses
  %i.ff = fneg <2 x double> %i.eo
  %i.fg = shufflevector <2 x double> %i.en, <2 x double> %i.ff, <2 x i32> <i32 1, i32 2>
  %i.fh = fmul <2 x double> %i.dl, %i.fg
  %i.fi = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.eo, <2 x double> %i.fh) ; 2 uses
  %i.fk = fadd <2 x double> %i.fe, %i.fj
  store <2 x double> %i.fk, ptr %i.eb, align 8, !tbaa !14
  %i.fl = fsub <2 x double> %i.fe, %i.fj
  store <2 x double> %i.fl, ptr %gep429, align 8, !tbaa !14
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 2 ; 2 uses
  %i.fm = icmp samesign ult i64 %indvars.iv.next421, %i.ba
  br i1 %i.fm, label %.lr.ph, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ba, %.lr.ph ]
  %i.fn = getelementptr inbounds [8 x i8], ptr %2, i64 %i.s
  %i.fo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ab
  %i.fp = mul nsw i32 %i.a, 3
  %i.fq = mul nsw i32 %i.a, 5
  %i.fr = mul nsw i32 %i.a, 7
  %i.fs = getelementptr inbounds [8 x i8], ptr %1, i64 %.pre-phi ; 2 uses
  %i.ft = sext i32 %i.fq to i64
  %i.fu = getelementptr [8 x i8], ptr %1, i64 %i.ft ; 2 uses
  %i.fv = sext i32 %i.fp to i64
  %i.fw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.fv ; 2 uses
  %i.fx = sext i32 %i.fr to i64
  %i.fy = getelementptr [8 x i8], ptr %1, i64 %i.fx ; 2 uses
  %i.fz = load <2 x double>, ptr %i.fs, align 8, !tbaa !14 ; 2 uses
  %i.ga = load <2 x double>, ptr %i.fu, align 8, !tbaa !14
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gc = fadd <2 x double> %i.fz, %i.gb          ; 4 uses
  %i.gd = fsub <2 x double> %i.fz, %i.gb          ; 4 uses
  %i.ge = shufflevector <2 x double> %i.gc, <2 x double> %i.gd, <2 x i32> <i32 0, i32 3>
  %i.gf = load <2 x double>, ptr %i.fw, align 8, !tbaa !14 ; 2 uses
  %i.gg = load <2 x double>, ptr %i.fy, align 8, !tbaa !14
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gi = fadd <2 x double> %i.gf, %i.gh          ; 4 uses
  %i.gj = fsub <2 x double> %i.gf, %i.gh          ; 4 uses
  %i.gk = shufflevector <2 x double> %i.gi, <2 x double> %i.gj, <2 x i32> <i32 0, i32 3>
  %i.gl = load double, ptr %i.fn, align 8, !tbaa !14
  %i.gm = load double, ptr %i.fo, align 8, !tbaa !14
  %i.gn = shufflevector <2 x double> %i.gd, <2 x double> %i.gc, <2 x i32> <i32 0, i32 3>
  %i.go = shufflevector <2 x double> %i.gj, <2 x double> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.gp = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gq = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gr = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.gt = shufflevector <2 x double> %i.gc, <2 x double> %i.gi, <2 x i32> <i32 1, i32 3>
  %i.gu = fneg <2 x double> %i.gt                 ; 2 uses
  %i.gv = shufflevector <2 x double> %i.gu, <2 x double> %i.gd, <2 x i32> <i32 0, i32 2>
  %i.gw = fmul <2 x double> %i.gq, %i.gv
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gn, <2 x double> %i.gw) ; 2 uses
  %i.gy = shufflevector <2 x double> %i.gu, <2 x double> %i.gj, <2 x i32> <i32 1, i32 2>
  %i.gz = fmul <2 x double> %i.gs, %i.gy
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.go, <2 x double> %i.gz) ; 2 uses
  %i.hb = fadd <2 x double> %i.gx, %i.ha
  store <2 x double> %i.hb, ptr %i.fs, align 8, !tbaa !14
  %i.hc = fsub <2 x double> %i.gx, %i.ha
  store <2 x double> %i.hc, ptr %i.fw, align 8, !tbaa !14
  %i.hd = shufflevector <2 x double> %i.gd, <2 x double> %i.gj, <2 x i32> <i32 1, i32 3>
  %i.he = fneg <2 x double> %i.hd                 ; 2 uses
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.hg = fmul <2 x double> %i.gs, %i.hf
  %i.hh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.ge, <2 x double> %i.hg) ; 2 uses
  %i.hi = shufflevector <2 x double> %i.he, <2 x double> %i.gi, <2 x i32> <i32 1, i32 2>
  %i.hj = fmul <2 x double> %i.gq, %i.hi
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gs, <2 x double> %i.gk, <2 x double> %i.hj) ; 2 uses
  %i.hl = fsub <2 x double> %i.hh, %i.hk
  store <2 x double> %i.hl, ptr %i.fu, align 8, !tbaa !14
  %i.hm = fadd <2 x double> %i.hh, %i.hk
  store <2 x double> %i.hm, ptr %i.fy, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @cftexp2(i32 noundef %0, ptr nofree noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 !guid !160 {
bb.a:
  %i.a = ashr i32 %0, 1                           ; 12 uses
  %i.b = ashr i32 %0, 2                           ; 3 uses
  %i.c = icmp sgt i32 %i.b, 128
  br i1 %i.c, label %.preheader115.preheader, label %.preheader

.preheader115.preheader:                          ; preds = %bb.a
  %i.d = sext i32 %i.a to i64                     ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.d
  %invariant.gep171 = getelementptr [8 x i8], ptr %1, i64 %i.d
  br label %.preheader115

.preheader115:                                    ; preds = %.preheader115.preheader, %._crit_edge123
  %.0124 = phi i32 [ %i.at, %._crit_edge123 ], [ %i.b, %.preheader115.preheader ] ; 13 uses
  %i.e = icmp slt i32 %.0124, %i.a
  br i1 %i.e, label %.lr.ph122, label %._crit_edge123

.lr.ph122:                                        ; preds = %.preheader115
  %i.f = lshr i32 %.0124, 1
  %i.g = sub nsw i32 %2, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %3, i64 %i.h ; 2 uses
  %i.j = sub nsw i32 %2, %.0124
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %3, i64 %i.k ; 2 uses
  %i.m = sub nsw i32 0, %.0124
  %i.n = sext i32 %i.m to i64
  %invariant.op = add nsw i32 %.0124, %i.a
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge123, %bb.a
  %.0.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.at, %._crit_edge123 ] ; 13 uses
  %i.o = icmp slt i32 %.0.lcssa, %i.a
  br i1 %i.o, label %.lr.ph135, label %._crit_edge136

.lr.ph135:                                        ; preds = %.preheader
  %i.p = ashr i32 %.0.lcssa, 1
  %i.q = sub nsw i32 %2, %i.p
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %3, i64 %i.r ; 4 uses
  %i.t = icmp eq i32 %.0.lcssa, 128               ; 2 uses
  %i.u = sext i32 %2 to i64
  %i.v = getelementptr [8 x i8], ptr %3, i64 %i.u ; 4 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -120     ; 16 uses
  %i.x = getelementptr i8, ptr %i.v, i64 -96      ; 6 uses
  %i.y = getelementptr i8, ptr %i.v, i64 -64      ; 10 uses
  %i.z = getelementptr i8, ptr %i.v, i64 -256     ; 6 uses
  %i.aa = sub nsw i32 %2, %.0.lcssa
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ab ; 4 uses
  %i.ad = sext i32 %i.a to i64                    ; 8 uses
  %invariant.gep173 = getelementptr [8 x i8], ptr %1, i64 %i.ad
  %invariant.gep175 = getelementptr [8 x i8], ptr %1, i64 %i.ad
  %invariant.gep177 = getelementptr [8 x i8], ptr %1, i64 %i.ad
  %invariant.gep179 = getelementptr [8 x i8], ptr %1, i64 %i.ad
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph122, %._crit_edge120
  %.0109121 = phi i32 [ %.0124, %.lr.ph122 ], [ %i.an, %._crit_edge120 ] ; 4 uses
  %i.ae = icmp slt i32 %.0109121, %invariant.op
  %i.af = shl i32 %.0109121, 1                    ; 2 uses
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ag = sext i32 %.0109121 to i64
  %i.ah = add nsw i64 %i.n, %i.ag
  %i.ai = sext i32 %i.af to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  tail call void @cftmdl1(i32 noundef %.0124, ptr noundef %i.aj, ptr noundef %i.i)
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  tail call void @cftmdl1(i32 noundef %.0124, ptr noundef %gep, ptr noundef %i.i)
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ai ; 2 uses
  %i.ak = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.ak, label %bb.c, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.al = sub nsw i32 %i.af, %.0124               ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.a
  %i.an = shl i32 %.0109121, 2                    ; 3 uses
  br i1 %i.am, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %._crit_edge
  %i.ao = sext i32 %i.al to i64
  %i.ap = sext i32 %i.an to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph119, %bb.d
  %indvars.iv140 = phi i64 [ %i.ao, %.lr.ph119 ], [ %indvars.iv.next141, %bb.d ] ; 3 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv140
  tail call void @cftmdl2(i32 noundef %.0124, ptr noundef %i.aq, ptr noundef %i.l)
  %gep172 = getelementptr [8 x i8], ptr %invariant.gep171, i64 %indvars.iv140
  tail call void @cftmdl2(i32 noundef %.0124, ptr noundef %gep172, ptr noundef %i.l)
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, %i.ap ; 2 uses
  %i.ar = icmp slt i64 %indvars.iv.next141, %i.d
  br i1 %i.ar, label %bb.d, label %._crit_edge120, !llvm.loop !154

._crit_edge120:                                   ; preds = %bb.d, %._crit_edge
  %i.as = icmp slt i32 %i.an, %i.a
  br i1 %i.as, label %bb.b, label %._crit_edge123, !llvm.loop !155

._crit_edge123:                                   ; preds = %._crit_edge120, %.preheader115
  %i.at = lshr i32 %.0124, 2                      ; 2 uses
  %i.au = icmp samesign ugt i32 %.0124, 515
  br i1 %i.au, label %.preheader115, label %.preheader, !llvm.loop !156

bb.e:                                             ; preds = %.lr.ph135, %._crit_edge132
  %.1134 = phi i32 [ %.0.lcssa, %.lr.ph135 ], [ %.pre-phi160, %._crit_edge132 ] ; 6 uses
  %i.av = sub nsw i32 %.1134, %.0.lcssa           ; 2 uses
  %i.aw = icmp slt i32 %i.av, %i.a
  %i.ax = shl i32 %.1134, 1                       ; 4 uses
  br i1 %i.aw, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %bb.e
  %i.ay = sext i32 %i.av to i64                   ; 2 uses
  %i.az = sext i32 %i.ax to i64                   ; 2 uses
  br i1 %i.t, label %cftfx41.exit113.us, label %cftfx41.exit113

cftfx41.exit113.us:                               ; preds = %.lr.ph127, %cftfx41.exit113.us
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %cftfx41.exit113.us ], [ %i.ay, %.lr.ph127 ] ; 3 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv146 ; 5 uses
  tail call void @cftmdl1(i32 noundef 128, ptr noundef %i.ba, ptr noundef %i.s)
  tail call void @cftf161(ptr noundef %i.ba, ptr noundef readonly %i.y)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.bb, ptr noundef readonly %i.z)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.bc, ptr noundef readonly %i.y)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 768
  tail call void @cftf161(ptr noundef nonnull %i.bd, ptr noundef readonly %i.y)
  %gep178 = getelementptr [8 x i8], ptr %invariant.gep177, i64 %indvars.iv146 ; 5 uses
  tail call void @cftmdl1(i32 noundef 128, ptr noundef %gep178, ptr noundef %i.s)
  tail call void @cftf161(ptr noundef %gep178, ptr noundef readonly %i.y)
  %i.be = getelementptr inbounds nuw i8, ptr %gep178, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.be, ptr noundef readonly %i.z)
  %i.bf = getelementptr inbounds nuw i8, ptr %gep178, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.bf, ptr noundef readonly %i.y)
  %i.bg = getelementptr inbounds nuw i8, ptr %gep178, i64 768
  tail call void @cftf161(ptr noundef nonnull %i.bg, ptr noundef readonly %i.y)
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, %i.az ; 2 uses
  %i.bh = icmp slt i64 %indvars.iv.next147, %i.ad
  br i1 %i.bh, label %cftfx41.exit113.us, label %._crit_edge128.thread167, !llvm.loop !157

cftfx41.exit113:                                  ; preds = %.lr.ph127, %cftfx41.exit113
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %cftfx41.exit113 ], [ %i.ay, %.lr.ph127 ] ; 3 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv143 ; 48 uses
  tail call void @cftmdl1(i32 noundef %.0.lcssa, ptr noundef %i.bi, ptr noundef %i.s)
  %i.bj = load double, ptr %i.w, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 80 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 48 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 112
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  %i.bt = load <2 x double>, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bu = load <2 x double>, ptr %i.bk, align 8, !tbaa !14 ; 2 uses
  %i.bv = fadd <2 x double> %i.bt, %i.bu          ; 2 uses
  %i.bw = load <2 x double>, ptr %i.bl, align 8, !tbaa !14 ; 2 uses
  %i.bx = load <2 x double>, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %i.by = fadd <2 x double> %i.bw, %i.bx          ; 2 uses
  %i.bz = fadd <2 x double> %i.bv, %i.by          ; 2 uses
  %i.ca = load <2 x double>, ptr %i.bo, align 8, !tbaa !14 ; 2 uses
  %i.cb = load <2 x double>, ptr %i.bp, align 8, !tbaa !14 ; 2 uses
  %i.cc = fadd <2 x double> %i.ca, %i.cb          ; 2 uses
  %i.cd = load <2 x double>, ptr %i.bq, align 8, !tbaa !14 ; 2 uses
  %i.ce = load <2 x double>, ptr %i.br, align 8, !tbaa !14 ; 2 uses
  %i.cf = fadd <2 x double> %i.cd, %i.ce          ; 2 uses
  %i.cg = fadd <2 x double> %i.cc, %i.cf          ; 2 uses
  %i.ch = fsub <2 x double> %i.bt, %i.bu          ; 2 uses
  %i.ci = fsub <2 x double> %i.bw, %i.bx
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ck = fsub <2 x double> %i.ch, %i.cj          ; 3 uses
  %i.cl = fadd <2 x double> %i.ch, %i.cj          ; 2 uses
  %i.cm = shufflevector <2 x double> %i.ck, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cn = fsub <2 x double> %i.ca, %i.cb          ; 4 uses
  %i.co = fsub <2 x double> %i.cd, %i.ce
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.cq = fsub <2 x double> %i.cn, %i.cp
  %i.cr = fadd <2 x double> %i.cn, %i.cp
  %i.cs = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cu = fsub <2 x double> %i.cs, %i.ct
  %i.cv = fadd <2 x double> %i.cs, %i.ct
  %i.cw = shufflevector <2 x double> %i.cu, <2 x double> %i.cv, <2 x i32> <i32 0, i32 3>
  %i.cx = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = fmul <2 x double> %i.cy, %i.cw          ; 2 uses
  %i.da = fadd <2 x double> %i.cm, %i.cz
  store <2 x double> %i.da, ptr %i.bk, align 8, !tbaa !14
  %i.db = fsub <2 x double> %i.cm, %i.cz
  store <2 x double> %i.db, ptr %i.bp, align 8, !tbaa !14
  %i.dc = shufflevector <2 x double> %i.ck, <2 x double> %i.cl, <2 x i32> <i32 1, i32 2> ; 2 uses
  %foldExtExtBinop = fadd <2 x double> %i.cn, %i.cp
  %i.dd = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop183 = fsub <2 x double> %i.cn, %i.cp
  %i.de = extractelement <2 x double> %foldExtExtBinop183, i64 1 ; 2 uses
  %i.df = fsub double %i.dd, %i.de
  %i.dg = fadd double %i.de, %i.dd
  %i.dh = insertelement <2 x double> poison, double %i.df, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.dg, i64 1
  %i.dj = fmul <2 x double> %i.cy, %i.di          ; 3 uses
  %foldExtExtBinop185 = fsub <2 x double> %i.dc, %i.dj
  %i.dk = extractelement <2 x double> %foldExtExtBinop185, i64 1
  store double %i.dk, ptr %i.bm, align 8, !tbaa !14
  %i.dl = fadd <2 x double> %i.dc, %i.dj
  store <2 x double> %i.dl, ptr %i.bn, align 8, !tbaa !14
  %i.dm = fadd <2 x double> %i.bz, %i.cg
  store <2 x double> %i.dm, ptr %i.bi, align 8, !tbaa !14
  %i.dn = fsub <2 x double> %i.bz, %i.cg
  store <2 x double> %i.dn, ptr %i.bo, align 8, !tbaa !14
  %i.do = fsub <2 x double> %i.bv, %i.by          ; 2 uses
  %i.dp = fsub <2 x double> %i.cc, %i.cf
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dr = fsub <2 x double> %i.do, %i.dq          ; 2 uses
  %i.ds = fadd <2 x double> %i.do, %i.dq          ; 2 uses
  %i.dt = shufflevector <2 x double> %i.dr, <2 x double> %i.ds, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.dt, ptr %i.bl, align 8, !tbaa !14
  %i.du = shufflevector <2 x double> %i.ds, <2 x double> %i.dr, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.du, ptr %i.bq, align 8, !tbaa !14
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bi, i64 128 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bi, i64 136 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bi, i64 192
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bi, i64 160 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bi, i64 232
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bi, i64 168
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bi, i64 224 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bi, i64 144 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bi, i64 216
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bi, i64 152 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bi, i64 208 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bi, i64 176 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bi, i64 248 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bi, i64 184 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bi, i64 240 ; 2 uses
  %i.el = load double, ptr %i.dv, align 8, !tbaa !14 ; 2 uses
  %i.em = load <2 x double>, ptr %i.dy, align 8, !tbaa !14 ; 3 uses
  %i.en = extractelement <2 x double> %i.em, i64 1
  %i.eo = fsub double %i.el, %i.en                ; 2 uses
  %i.ep = load double, ptr %i.dx, align 8, !tbaa !14 ; 2 uses
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %i.el, i64 1
  %i.es = fadd <2 x double> %i.er, %i.em          ; 3 uses
  %i.et = extractelement <2 x double> %i.em, i64 0
  %i.eu = fsub double %i.ep, %i.et                ; 2 uses
  %i.ev = load <2 x double>, ptr %i.dz, align 8, !tbaa !14 ; 2 uses
  %i.ew = load <2 x double>, ptr %i.ec, align 8, !tbaa !14 ; 2 uses
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ey = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ez = fadd <2 x double> %i.ey, %i.ew          ; 3 uses
  %i.fa = fsub <2 x double> %i.ev, %i.ex          ; 3 uses
  %foldExtExtBinop187 = fsub <2 x double> %i.fa, %i.ez
  %i.fb = extractelement <2 x double> %foldExtExtBinop187, i64 0
  %i.fc = shufflevector <2 x double> %i.ck, <2 x double> %i.ez, <2 x i32> <i32 1, i32 3>
  %i.fd = shufflevector <2 x double> %i.dj, <2 x double> %i.fa, <2 x i32> <i32 0, i32 3>
  %i.fe = fsub <2 x double> %i.fc, %i.fd          ; 2 uses
  %i.ff = extractelement <2 x double> %i.fe, i64 0
  store double %i.ff, ptr %i.bs, align 8, !tbaa !14
  %i.fg = load double, ptr %i.w, align 8, !tbaa !14 ; 3 uses
  %i.fh = load <2 x double>, ptr %i.x, align 8, !tbaa !14 ; 5 uses
  %i.fi = fmul double %i.fg, %i.fb                ; 2 uses
  %i.fj = extractelement <2 x double> %i.fe, i64 1
  %i.fk = fmul double %i.fg, %i.fj                ; 2 uses
  %i.fl = fadd <2 x double> %i.fa, %i.ez
  %i.fm = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = fmul <2 x double> %i.fn, %i.fl          ; 3 uses
  %i.fp = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.fq = load <2 x double>, ptr %i.ed, align 8, !tbaa !14 ; 2 uses
  %i.fr = load double, ptr %i.ef, align 8, !tbaa !14
  %i.fs = load <2 x double>, ptr %i.eg, align 8, !tbaa !14 ; 2 uses
  %i.ft = load double, ptr %i.ee, align 8, !tbaa !14
  %i.fu = load <2 x double>, ptr %i.eh, align 8, !tbaa !14 ; 2 uses
  %i.fv = load double, ptr %i.ej, align 8, !tbaa !14
  %i.fw = load <2 x double>, ptr %i.ek, align 8, !tbaa !14 ; 2 uses
  %i.fx = load double, ptr %i.ei, align 8, !tbaa !14
  %i.fy = shufflevector <2 x double> %i.fq, <2 x double> %i.fu, <2 x i32> <i32 1, i32 3>
  %i.fz = shufflevector <2 x double> %i.fs, <2 x double> %i.fw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ga = fsub <2 x double> %i.fy, %i.fz          ; 3 uses
  %i.gb = shufflevector <2 x double> %i.fq, <2 x double> %i.fu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gc = shufflevector <2 x double> %i.fs, <2 x double> %i.fw, <2 x i32> <i32 1, i32 3>
  %i.gd = fadd <2 x double> %i.gb, %i.gc          ; 3 uses
  %i.ge = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fv, i64 1
  %i.gg = fadd <2 x double> %i.gf, %i.fz          ; 3 uses
  %i.gh = shufflevector <2 x double> %i.gg, <2 x double> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.gi = fneg <2 x double> %i.gh
  %i.gj = fmul <2 x double> %i.fp, %i.gi
  %i.gk = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.fx, i64 1
  %i.gm = fsub <2 x double> %i.gb, %i.gl          ; 3 uses
  %i.gn = shufflevector <2 x double> %i.gm, <2 x double> %i.gd, <2 x i32> <i32 0, i32 2>
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.gn, <2 x double> %i.gj) ; 3 uses
  %i.gp = fmul <2 x double> %i.fp, %i.gm
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.gg, <2 x double> %i.gp) ; 2 uses
  %i.gr = shufflevector <2 x double> %i.gg, <2 x double> %i.ga, <2 x i32> <i32 1, i32 3>
  %i.gs = fneg <2 x double> %i.gr
  %i.gt = fmul <2 x double> %i.fh, %i.gs
  %i.gu = shufflevector <2 x double> %i.gm, <2 x double> %i.gd, <2 x i32> <i32 1, i32 3>
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.gu, <2 x double> %i.gt) ; 3 uses
  %i.gw = fmul <2 x double> %i.fh, %i.gd
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.ga, <2 x double> %i.gw) ; 2 uses
  %i.gy = fadd double %i.eo, %i.fi                ; 2 uses
  %foldExtExtBinop189 = fadd <2 x double> %i.es, %i.fo
  %i.gz = extractelement <2 x double> %foldExtExtBinop189, i64 0 ; 2 uses
  %foldExtExtBinop191 = fadd <2 x double> %i.go, %i.gv
  %i.ha = extractelement <2 x double> %foldExtExtBinop191, i64 0 ; 2 uses
  %i.hb = extractelement <2 x double> %i.gq, i64 0 ; 2 uses
  %i.hc = extractelement <2 x double> %i.gq, i64 1 ; 2 uses
  %i.hd = fadd double %i.hb, %i.hc                ; 2 uses
  %i.he = fadd double %i.gy, %i.ha
  store double %i.he, ptr %i.dv, align 8, !tbaa !14
  %i.hf = fadd double %i.gz, %i.hd
  store double %i.hf, ptr %i.dx, align 8, !tbaa !14
  %i.hg = fsub double %i.gy, %i.ha
  store double %i.hg, ptr %i.ed, align 8, !tbaa !14
  %i.hh = fsub double %i.gz, %i.hd
  store double %i.hh, ptr %i.ef, align 8, !tbaa !14
  %i.hi = fsub double %i.eo, %i.fi                ; 2 uses
  %i.hj = fsub double %i.hb, %i.hc                ; 2 uses
  %i.hk = fsub double %i.hi, %i.hj
  store double %i.hk, ptr %i.dz, align 8, !tbaa !14
  %i.hl = fsub <2 x double> %i.es, %i.fo          ; 4 uses
  %i.hm = fsub <2 x double> %i.go, %i.gv          ; 4 uses
  %foldExtExtBinop193 = fadd <2 x double> %i.hl, %i.hm
  %i.hn = extractelement <2 x double> %foldExtExtBinop193, i64 0
  store double %i.hn, ptr %i.eb, align 8, !tbaa !14
  %i.ho = fadd double %i.hi, %i.hj
  store double %i.ho, ptr %i.eh, align 8, !tbaa !14
  %i.hp = fadd double %i.eu, %i.fk                ; 2 uses
  %i.hq = extractelement <2 x double> %i.gx, i64 0 ; 2 uses
  %i.hr = extractelement <2 x double> %i.gx, i64 1 ; 2 uses
  %i.hs = fsub double %i.hq, %i.hr                ; 2 uses
  %i.ht = fsub <2 x double> %i.hl, %i.hm
  %i.hu = fadd <2 x double> %i.hl, %i.hm
  %i.hv = shufflevector <2 x double> %i.ht, <2 x double> %i.hu, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.hv, ptr %i.ej, align 8, !tbaa !14
  %i.hw = fadd double %i.hp, %i.hs
  store double %i.hw, ptr %i.dw, align 8, !tbaa !14
end_hunk_2
begin_hunk_3_@cftexp2:bb.a
  %i.tm = fsub double %i.te, %i.tf                ; 2 uses
  %i.tn = fsub double %i.tl, %i.tm
  store double %i.tn, ptr %i.qc, align 8, !tbaa !14
  %i.to = fsub <2 x double> %i.qv, %i.rr          ; 4 uses
  %i.tp = fsub <2 x double> %i.sr, %i.sy          ; 4 uses
  %foldExtExtBinop227 = fadd <2 x double> %i.to, %i.tp
  %i.tq = extractelement <2 x double> %foldExtExtBinop227, i64 0
  store double %i.tq, ptr %i.qe, align 8, !tbaa !14
  %i.tr = fadd double %i.tl, %i.tm
  store double %i.tr, ptr %i.qk, align 8, !tbaa !14
  %i.ts = fadd double %i.qx, %i.rn                ; 2 uses
  %i.tt = extractelement <2 x double> %i.ta, i64 0 ; 2 uses
  %i.tu = extractelement <2 x double> %i.ta, i64 1 ; 2 uses
  %i.tv = fsub double %i.tt, %i.tu                ; 2 uses
  %i.tw = fsub <2 x double> %i.to, %i.tp
  %i.tx = fadd <2 x double> %i.to, %i.tp
  %i.ty = shufflevector <2 x double> %i.tw, <2 x double> %i.tx, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ty, ptr %i.qm, align 8, !tbaa !14
  %i.tz = fadd double %i.ts, %i.tv
  store double %i.tz, ptr %i.pz, align 8, !tbaa !14
  %i.ua = shufflevector <2 x double> %i.to, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ub = insertelement <2 x double> %i.ua, double %i.ts, i64 1
  %i.uc = shufflevector <2 x double> %i.tp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ud = insertelement <2 x double> %i.uc, double %i.tv, i64 1
  %i.ue = fsub <2 x double> %i.ub, %i.ud
  store <2 x double> %i.ue, ptr %i.qj, align 8, !tbaa !14
  %foldExtExtBinop229 = fadd <2 x double> %i.qv, %i.rr
  %i.uf = extractelement <2 x double> %foldExtExtBinop229, i64 1 ; 2 uses
  %i.ug = fsub double %i.qx, %i.rn                ; 2 uses
  %foldExtExtBinop231 = fadd <2 x double> %i.sr, %i.sy
  %i.uh = extractelement <2 x double> %foldExtExtBinop231, i64 1 ; 2 uses
  %i.ui = fadd double %i.tt, %i.tu                ; 2 uses
  %i.uj = fsub double %i.uf, %i.ui
  store double %i.uj, ptr %i.qf, align 8, !tbaa !14
  %i.uk = fadd double %i.ug, %i.uh
  store double %i.uk, ptr %i.qd, align 8, !tbaa !14
  %i.ul = fadd double %i.uf, %i.ui
  store double %i.ul, ptr %i.qn, align 8, !tbaa !14
  %i.um = fsub double %i.ug, %i.uh
  store double %i.um, ptr %i.ql, align 8, !tbaa !14
  %i.un = getelementptr inbounds nuw i8, ptr %gep174, i64 256 ; 2 uses
  %i.uo = load double, ptr %i.w, align 8, !tbaa !14
  %i.up = getelementptr inbounds nuw i8, ptr %gep174, i64 320 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %gep174, i64 288 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %gep174, i64 352 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %gep174, i64 360
  %i.ut = getelementptr inbounds nuw i8, ptr %gep174, i64 272 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %gep174, i64 336 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %gep174, i64 304 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %gep174, i64 368
  %i.ux = getelementptr inbounds nuw i8, ptr %gep174, i64 376
  %i.uy = load <2 x double>, ptr %i.un, align 8, !tbaa !14 ; 2 uses
  %i.uz = load <2 x double>, ptr %i.up, align 8, !tbaa !14 ; 2 uses
  %i.va = fadd <2 x double> %i.uy, %i.uz          ; 2 uses
  %i.vb = load <2 x double>, ptr %i.uq, align 8, !tbaa !14 ; 2 uses
  %i.vc = load <2 x double>, ptr %i.ur, align 8, !tbaa !14 ; 2 uses
  %i.vd = fadd <2 x double> %i.vb, %i.vc          ; 2 uses
  %i.ve = fadd <2 x double> %i.va, %i.vd          ; 2 uses
  %i.vf = load <2 x double>, ptr %i.ut, align 8, !tbaa !14 ; 2 uses
  %i.vg = load <2 x double>, ptr %i.uu, align 8, !tbaa !14 ; 2 uses
  %i.vh = fadd <2 x double> %i.vf, %i.vg          ; 2 uses
  %i.vi = load <2 x double>, ptr %i.uv, align 8, !tbaa !14 ; 2 uses
  %i.vj = load <2 x double>, ptr %i.uw, align 8, !tbaa !14 ; 2 uses
  %i.vk = fadd <2 x double> %i.vi, %i.vj          ; 2 uses
  %i.vl = fadd <2 x double> %i.vh, %i.vk          ; 2 uses
  %i.vm = fsub <2 x double> %i.uy, %i.uz          ; 2 uses
  %i.vn = fsub <2 x double> %i.vb, %i.vc
  %i.vo = shufflevector <2 x double> %i.vn, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.vp = fsub <2 x double> %i.vm, %i.vo          ; 2 uses
  %i.vq = fadd <2 x double> %i.vm, %i.vo          ; 2 uses
  %i.vr = shufflevector <2 x double> %i.vp, <2 x double> %i.vq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.vs = fsub <2 x double> %i.vf, %i.vg          ; 4 uses
  %i.vt = fsub <2 x double> %i.vi, %i.vj
  %i.vu = shufflevector <2 x double> %i.vt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.vv = fsub <2 x double> %i.vs, %i.vu
  %i.vw = fadd <2 x double> %i.vs, %i.vu
  %i.vx = shufflevector <2 x double> %i.vv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.vy = shufflevector <2 x double> %i.vw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.vz = fsub <2 x double> %i.vx, %i.vy
  %i.wa = fadd <2 x double> %i.vx, %i.vy
  %i.wb = shufflevector <2 x double> %i.vz, <2 x double> %i.wa, <2 x i32> <i32 0, i32 3>
  %i.wc = insertelement <2 x double> poison, double %i.uo, i64 0
  %i.wd = shufflevector <2 x double> %i.wc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.we = fmul <2 x double> %i.wd, %i.wb          ; 2 uses
  %i.wf = fadd <2 x double> %i.vr, %i.we
  store <2 x double> %i.wf, ptr %i.up, align 8, !tbaa !14
  %i.wg = fsub <2 x double> %i.vr, %i.we
  store <2 x double> %i.wg, ptr %i.uu, align 8, !tbaa !14
  %i.wh = shufflevector <2 x double> %i.vp, <2 x double> %i.vq, <2 x i32> <i32 1, i32 2> ; 3 uses
  %foldExtExtBinop233 = fadd <2 x double> %i.vs, %i.vu
  %i.wi = extractelement <2 x double> %foldExtExtBinop233, i64 0 ; 2 uses
  %foldExtExtBinop235 = fsub <2 x double> %i.vs, %i.vu
  %i.wj = extractelement <2 x double> %foldExtExtBinop235, i64 1 ; 2 uses
  %i.wk = fsub double %i.wi, %i.wj
  %i.wl = fadd double %i.wj, %i.wi
  %i.wm = insertelement <2 x double> poison, double %i.wk, i64 0
  %i.wn = insertelement <2 x double> %i.wm, double %i.wl, i64 1
  %i.wo = fmul <2 x double> %i.wd, %i.wn          ; 3 uses
  %foldExtExtBinop237 = fsub <2 x double> %i.wh, %i.wo
  %i.wp = extractelement <2 x double> %foldExtExtBinop237, i64 1
  store double %i.wp, ptr %i.ur, align 8, !tbaa !14
  %i.wq = fadd <2 x double> %i.wh, %i.wo
  store <2 x double> %i.wq, ptr %i.us, align 8, !tbaa !14
  %foldExtExtBinop239 = fsub <2 x double> %i.wh, %i.wo
  %i.wr = extractelement <2 x double> %foldExtExtBinop239, i64 0
  store double %i.wr, ptr %i.ux, align 8, !tbaa !14
  %i.ws = fadd <2 x double> %i.ve, %i.vl
  store <2 x double> %i.ws, ptr %i.un, align 8, !tbaa !14
  %i.wt = fsub <2 x double> %i.ve, %i.vl
  store <2 x double> %i.wt, ptr %i.ut, align 8, !tbaa !14
  %i.wu = fsub <2 x double> %i.va, %i.vd          ; 2 uses
  %i.wv = fsub <2 x double> %i.vh, %i.vk
  %i.ww = shufflevector <2 x double> %i.wv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.wx = fsub <2 x double> %i.wu, %i.ww          ; 2 uses
  %i.wy = fadd <2 x double> %i.wu, %i.ww          ; 2 uses
  %i.wz = shufflevector <2 x double> %i.wx, <2 x double> %i.wy, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.wz, ptr %i.uq, align 8, !tbaa !14
  %i.xa = shufflevector <2 x double> %i.wy, <2 x double> %i.wx, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.xa, ptr %i.uv, align 8, !tbaa !14
  %i.xb = getelementptr inbounds nuw i8, ptr %gep174, i64 384 ; 2 uses
  %i.xc = load double, ptr %i.w, align 8, !tbaa !14
  %i.xd = getelementptr inbounds nuw i8, ptr %gep174, i64 448 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %gep174, i64 416 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %gep174, i64 480 ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %gep174, i64 488
  %i.xh = getelementptr inbounds nuw i8, ptr %gep174, i64 400 ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %gep174, i64 464 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %gep174, i64 432 ; 2 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %gep174, i64 496
  %i.xl = getelementptr inbounds nuw i8, ptr %gep174, i64 504
  %i.xm = load <2 x double>, ptr %i.xb, align 8, !tbaa !14 ; 2 uses
  %i.xn = load <2 x double>, ptr %i.xd, align 8, !tbaa !14 ; 2 uses
  %i.xo = fadd <2 x double> %i.xm, %i.xn          ; 2 uses
  %i.xp = load <2 x double>, ptr %i.xe, align 8, !tbaa !14 ; 2 uses
  %i.xq = load <2 x double>, ptr %i.xf, align 8, !tbaa !14 ; 2 uses
  %i.xr = fadd <2 x double> %i.xp, %i.xq          ; 2 uses
  %i.xs = fadd <2 x double> %i.xo, %i.xr          ; 2 uses
  %i.xt = load <2 x double>, ptr %i.xh, align 8, !tbaa !14 ; 2 uses
  %i.xu = load <2 x double>, ptr %i.xi, align 8, !tbaa !14 ; 2 uses
  %i.xv = fadd <2 x double> %i.xt, %i.xu          ; 2 uses
  %i.xw = load <2 x double>, ptr %i.xj, align 8, !tbaa !14 ; 2 uses
  %i.xx = load <2 x double>, ptr %i.xk, align 8, !tbaa !14 ; 2 uses
  %i.xy = fadd <2 x double> %i.xw, %i.xx          ; 2 uses
  %i.xz = fadd <2 x double> %i.xv, %i.xy          ; 2 uses
  %i.ya = fsub <2 x double> %i.xm, %i.xn          ; 2 uses
  %i.yb = fsub <2 x double> %i.xp, %i.xq
  %i.yc = shufflevector <2 x double> %i.yb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.yd = fsub <2 x double> %i.ya, %i.yc          ; 2 uses
  %i.ye = fadd <2 x double> %i.ya, %i.yc          ; 2 uses
  %i.yf = shufflevector <2 x double> %i.yd, <2 x double> %i.ye, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.yg = fsub <2 x double> %i.xt, %i.xu          ; 4 uses
  %i.yh = fsub <2 x double> %i.xw, %i.xx
  %i.yi = shufflevector <2 x double> %i.yh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.yj = fsub <2 x double> %i.yg, %i.yi
  %i.yk = fadd <2 x double> %i.yg, %i.yi
  %i.yl = shufflevector <2 x double> %i.yj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ym = shufflevector <2 x double> %i.yk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.yn = fsub <2 x double> %i.yl, %i.ym
  %i.yo = fadd <2 x double> %i.yl, %i.ym
  %i.yp = shufflevector <2 x double> %i.yn, <2 x double> %i.yo, <2 x i32> <i32 0, i32 3>
  %i.yq = insertelement <2 x double> poison, double %i.xc, i64 0
  %i.yr = shufflevector <2 x double> %i.yq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ys = fmul <2 x double> %i.yr, %i.yp          ; 2 uses
  %i.yt = fadd <2 x double> %i.yf, %i.ys
  store <2 x double> %i.yt, ptr %i.xd, align 8, !tbaa !14
  %i.yu = fsub <2 x double> %i.yf, %i.ys
  store <2 x double> %i.yu, ptr %i.xi, align 8, !tbaa !14
  %i.yv = shufflevector <2 x double> %i.yd, <2 x double> %i.ye, <2 x i32> <i32 1, i32 2> ; 3 uses
  %foldExtExtBinop241 = fadd <2 x double> %i.yg, %i.yi
  %i.yw = extractelement <2 x double> %foldExtExtBinop241, i64 0 ; 2 uses
  %foldExtExtBinop243 = fsub <2 x double> %i.yg, %i.yi
  %i.yx = extractelement <2 x double> %foldExtExtBinop243, i64 1 ; 2 uses
  %i.yy = fsub double %i.yw, %i.yx
  %i.yz = fadd double %i.yx, %i.yw
  %i.za = insertelement <2 x double> poison, double %i.yy, i64 0
  %i.zb = insertelement <2 x double> %i.za, double %i.yz, i64 1
  %i.zc = fmul <2 x double> %i.yr, %i.zb          ; 3 uses
  %foldExtExtBinop245 = fsub <2 x double> %i.yv, %i.zc
  %i.zd = extractelement <2 x double> %foldExtExtBinop245, i64 1
  store double %i.zd, ptr %i.xf, align 8, !tbaa !14
  %i.ze = fadd <2 x double> %i.yv, %i.zc
  store <2 x double> %i.ze, ptr %i.xg, align 8, !tbaa !14
  %foldExtExtBinop247 = fsub <2 x double> %i.yv, %i.zc
  %i.zf = extractelement <2 x double> %foldExtExtBinop247, i64 0
  store double %i.zf, ptr %i.xl, align 8, !tbaa !14
  %i.zg = fadd <2 x double> %i.xs, %i.xz
  store <2 x double> %i.zg, ptr %i.xb, align 8, !tbaa !14
  %i.zh = fsub <2 x double> %i.xs, %i.xz
  store <2 x double> %i.zh, ptr %i.xh, align 8, !tbaa !14
  %i.zi = fsub <2 x double> %i.xo, %i.xr          ; 2 uses
  %i.zj = fsub <2 x double> %i.xv, %i.xy
  %i.zk = shufflevector <2 x double> %i.zj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.zl = fsub <2 x double> %i.zi, %i.zk          ; 2 uses
  %i.zm = fadd <2 x double> %i.zi, %i.zk          ; 2 uses
  %i.zn = shufflevector <2 x double> %i.zl, <2 x double> %i.zm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.zn, ptr %i.xe, align 8, !tbaa !14
  %i.zo = shufflevector <2 x double> %i.zm, <2 x double> %i.zl, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.zo, ptr %i.xj, align 8, !tbaa !14
  %indvars.iv.next144 = add nsw i64 %indvars.iv143, %i.az ; 2 uses
  %i.zp = icmp slt i64 %indvars.iv.next144, %i.ad
  br i1 %i.zp, label %cftfx41.exit113, label %._crit_edge128.thread, !llvm.loop !157

._crit_edge128:                                   ; preds = %bb.e
  %i.zq = sub nsw i32 %i.ax, %.0.lcssa            ; 3 uses
  %i.zr = icmp slt i32 %i.zq, %i.a
  br i1 %i.zr, label %.lr.ph131, label %._crit_edge128.._crit_edge132_crit_edge

._crit_edge128.thread167:                         ; preds = %cftfx41.exit113.us
  %i.zs = sub nsw i32 %i.ax, %.0.lcssa            ; 2 uses
  %i.zt = icmp slt i32 %i.zs, %i.a
  br i1 %i.zt, label %.lr.ph131.thread169, label %._crit_edge128.._crit_edge132_crit_edge

.lr.ph131.thread169:                              ; preds = %._crit_edge128.thread167
  %i.zu = shl i32 %.1134, 2
  br label %cftfx42.exit114.us.preheader

._crit_edge128.thread:                            ; preds = %cftfx41.exit113
  %i.zv = sub nsw i32 %i.ax, %.0.lcssa            ; 2 uses
  %i.zw = icmp slt i32 %i.zv, %i.a
  br i1 %i.zw, label %.lr.ph131.thread, label %._crit_edge128.._crit_edge132_crit_edge

.lr.ph131.thread:                                 ; preds = %._crit_edge128.thread
  %i.zx = shl i32 %.1134, 2
  br label %cftfx42.exit114.preheader

._crit_edge128.._crit_edge132_crit_edge:          ; preds = %._crit_edge128.thread167, %._crit_edge128.thread, %._crit_edge128
  %.pre159 = shl i32 %.1134, 2
  br label %._crit_edge132

.lr.ph131:                                        ; preds = %._crit_edge128
  %i.zy = shl i32 %.1134, 2                       ; 2 uses
  br i1 %i.t, label %cftfx42.exit114.us.preheader, label %cftfx42.exit114.preheader

cftfx42.exit114.preheader:                        ; preds = %.lr.ph131.thread, %.lr.ph131
  %i.zz = phi i32 [ %i.zx, %.lr.ph131.thread ], [ %i.zy, %.lr.ph131 ] ; 2 uses
  %i.aaa = phi i32 [ %i.zv, %.lr.ph131.thread ], [ %i.zq, %.lr.ph131 ]
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = sext i32 %i.zz to i64
  br label %cftfx42.exit114

cftfx42.exit114.us.preheader:                     ; preds = %.lr.ph131.thread169, %.lr.ph131
  %i.aad = phi i32 [ %i.zu, %.lr.ph131.thread169 ], [ %i.zy, %.lr.ph131 ] ; 2 uses
  %i.aae = phi i32 [ %i.zs, %.lr.ph131.thread169 ], [ %i.zq, %.lr.ph131 ]
  %i.aaf = sext i32 %i.aae to i64
  %i.aag = sext i32 %i.aad to i64
  br label %cftfx42.exit114.us

cftfx42.exit114.us:                               ; preds = %cftfx42.exit114.us.preheader, %cftfx42.exit114.us
  %indvars.iv152 = phi i64 [ %i.aaf, %cftfx42.exit114.us.preheader ], [ %indvars.iv.next153, %cftfx42.exit114.us ] ; 3 uses
  %i.aah = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv152 ; 5 uses
  tail call void @cftmdl2(i32 noundef 128, ptr noundef %i.aah, ptr noundef %i.ac)
  tail call void @cftf161(ptr noundef %i.aah, ptr noundef readonly %i.y)
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.aai, ptr noundef readonly %i.z)
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aah, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.aaj, ptr noundef readonly %i.y)
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 768
  tail call void @cftf162(ptr noundef nonnull %i.aak, ptr noundef readonly %i.z)
  %gep180 = getelementptr [8 x i8], ptr %invariant.gep179, i64 %indvars.iv152 ; 5 uses
  tail call void @cftmdl2(i32 noundef 128, ptr noundef %gep180, ptr noundef %i.ac)
  tail call void @cftf161(ptr noundef %gep180, ptr noundef readonly %i.y)
  %i.aal = getelementptr inbounds nuw i8, ptr %gep180, i64 256
  tail call void @cftf162(ptr noundef nonnull %i.aal, ptr noundef readonly %i.z)
  %i.aam = getelementptr inbounds nuw i8, ptr %gep180, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.aam, ptr noundef readonly %i.y)
  %i.aan = getelementptr inbounds nuw i8, ptr %gep180, i64 768
  tail call void @cftf162(ptr noundef nonnull %i.aan, ptr noundef readonly %i.z)
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, %i.aag ; 2 uses
  %i.aao = icmp slt i64 %indvars.iv.next153, %i.ad
  br i1 %i.aao, label %cftfx42.exit114.us, label %._crit_edge132, !llvm.loop !158

cftfx42.exit114:                                  ; preds = %cftfx42.exit114.preheader, %cftfx42.exit114
  %indvars.iv149 = phi i64 [ %i.aab, %cftfx42.exit114.preheader ], [ %indvars.iv.next150, %cftfx42.exit114 ] ; 3 uses
  %i.aap = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv149 ; 54 uses
  tail call void @cftmdl2(i32 noundef %.0.lcssa, ptr noundef %i.aap, ptr noundef %i.ac)
  %i.aaq = load double, ptr %i.w, align 8, !tbaa !14
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aap, i64 64 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 32 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aap, i64 96 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 104
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aap, i64 16 ; 2 uses
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aap, i64 80 ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aap, i64 48 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aap, i64 112
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aap, i64 120
  %i.aba = load <2 x double>, ptr %i.aap, align 8, !tbaa !14 ; 2 uses
  %i.abb = load <2 x double>, ptr %i.aar, align 8, !tbaa !14 ; 2 uses
  %i.abc = fadd <2 x double> %i.aba, %i.abb       ; 2 uses
  %i.abd = load <2 x double>, ptr %i.aas, align 8, !tbaa !14 ; 2 uses
  %i.abe = load <2 x double>, ptr %i.aat, align 8, !tbaa !14 ; 2 uses
  %i.abf = fadd <2 x double> %i.abd, %i.abe       ; 2 uses
  %i.abg = fadd <2 x double> %i.abc, %i.abf       ; 2 uses
  %i.abh = load <2 x double>, ptr %i.aav, align 8, !tbaa !14 ; 2 uses
  %i.abi = load <2 x double>, ptr %i.aaw, align 8, !tbaa !14 ; 2 uses
  %i.abj = fadd <2 x double> %i.abh, %i.abi       ; 2 uses
  %i.abk = load <2 x double>, ptr %i.aax, align 8, !tbaa !14 ; 2 uses
  %i.abl = load <2 x double>, ptr %i.aay, align 8, !tbaa !14 ; 2 uses
  %i.abm = fadd <2 x double> %i.abk, %i.abl       ; 2 uses
  %i.abn = fadd <2 x double> %i.abj, %i.abm       ; 2 uses
  %i.abo = fsub <2 x double> %i.aba, %i.abb       ; 2 uses
  %i.abp = fsub <2 x double> %i.abd, %i.abe
  %i.abq = shufflevector <2 x double> %i.abp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.abr = fsub <2 x double> %i.abo, %i.abq       ; 3 uses
  %i.abs = fadd <2 x double> %i.abo, %i.abq       ; 2 uses
  %i.abt = shufflevector <2 x double> %i.abr, <2 x double> %i.abs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.abu = fsub <2 x double> %i.abh, %i.abi       ; 4 uses
  %i.abv = fsub <2 x double> %i.abk, %i.abl
  %i.abw = shufflevector <2 x double> %i.abv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.abx = fsub <2 x double> %i.abu, %i.abw
  %i.aby = fadd <2 x double> %i.abu, %i.abw
  %i.abz = shufflevector <2 x double> %i.abx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aca = shufflevector <2 x double> %i.aby, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.acb = fsub <2 x double> %i.abz, %i.aca
  %i.acc = fadd <2 x double> %i.abz, %i.aca
  %i.acd = shufflevector <2 x double> %i.acb, <2 x double> %i.acc, <2 x i32> <i32 0, i32 3>
  %i.ace = insertelement <2 x double> poison, double %i.aaq, i64 0
  %i.acf = shufflevector <2 x double> %i.ace, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.acg = fmul <2 x double> %i.acf, %i.acd       ; 2 uses
  %i.ach = fadd <2 x double> %i.abt, %i.acg
  store <2 x double> %i.ach, ptr %i.aar, align 8, !tbaa !14
  %i.aci = fsub <2 x double> %i.abt, %i.acg
  store <2 x double> %i.aci, ptr %i.aaw, align 8, !tbaa !14
  %i.acj = shufflevector <2 x double> %i.abr, <2 x double> %i.abs, <2 x i32> <i32 1, i32 2> ; 2 uses
  %foldExtExtBinop249 = fadd <2 x double> %i.abu, %i.abw
  %i.ack = extractelement <2 x double> %foldExtExtBinop249, i64 0 ; 2 uses
  %foldExtExtBinop251 = fsub <2 x double> %i.abu, %i.abw
  %i.acl = extractelement <2 x double> %foldExtExtBinop251, i64 1 ; 2 uses
  %i.acm = fsub double %i.ack, %i.acl
  %i.acn = fadd double %i.acl, %i.ack
  %i.aco = insertelement <2 x double> poison, double %i.acm, i64 0
  %i.acp = insertelement <2 x double> %i.aco, double %i.acn, i64 1
  %i.acq = fmul <2 x double> %i.acf, %i.acp       ; 3 uses
  %foldExtExtBinop253 = fsub <2 x double> %i.acj, %i.acq
  %i.acr = extractelement <2 x double> %foldExtExtBinop253, i64 1
  store double %i.acr, ptr %i.aat, align 8, !tbaa !14
  %i.acs = fadd <2 x double> %i.acj, %i.acq
  store <2 x double> %i.acs, ptr %i.aau, align 8, !tbaa !14
  %i.act = fadd <2 x double> %i.abg, %i.abn
  store <2 x double> %i.act, ptr %i.aap, align 8, !tbaa !14
  %i.acu = fsub <2 x double> %i.abg, %i.abn
  store <2 x double> %i.acu, ptr %i.aav, align 8, !tbaa !14
  %i.acv = fsub <2 x double> %i.abc, %i.abf       ; 2 uses
  %i.acw = fsub <2 x double> %i.abj, %i.abm
  %i.acx = shufflevector <2 x double> %i.acw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.acy = fsub <2 x double> %i.acv, %i.acx       ; 2 uses
  %i.acz = fadd <2 x double> %i.acv, %i.acx       ; 2 uses
  %i.ada = shufflevector <2 x double> %i.acy, <2 x double> %i.acz, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ada, ptr %i.aas, align 8, !tbaa !14
  %i.adb = shufflevector <2 x double> %i.acz, <2 x double> %i.acy, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.adb, ptr %i.aax, align 8, !tbaa !14
  %i.adc = getelementptr inbounds nuw i8, ptr %i.aap, i64 128 ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %i.aap, i64 200
  %i.ade = getelementptr inbounds nuw i8, ptr %i.aap, i64 136 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.aap, i64 192
  %i.adg = getelementptr inbounds nuw i8, ptr %i.aap, i64 160 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aap, i64 232
  %i.adi = getelementptr inbounds nuw i8, ptr %i.aap, i64 168
  %i.adj = getelementptr inbounds nuw i8, ptr %i.aap, i64 224 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.aap, i64 144 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.aap, i64 216
  %i.adm = getelementptr inbounds nuw i8, ptr %i.aap, i64 152 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.aap, i64 208 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.aap, i64 176 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.aap, i64 248 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.aap, i64 184 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.aap, i64 240 ; 2 uses
  %i.ads = load double, ptr %i.adc, align 8, !tbaa !14 ; 2 uses
  %i.adt = load <2 x double>, ptr %i.adf, align 8, !tbaa !14 ; 3 uses
  %i.adu = extractelement <2 x double> %i.adt, i64 1
  %i.adv = fsub double %i.ads, %i.adu             ; 2 uses
  %i.adw = load double, ptr %i.ade, align 8, !tbaa !14 ; 2 uses
  %i.adx = insertelement <2 x double> poison, double %i.adw, i64 0
  %i.ady = insertelement <2 x double> %i.adx, double %i.ads, i64 1
  %i.adz = fadd <2 x double> %i.ady, %i.adt       ; 3 uses
  %i.aea = extractelement <2 x double> %i.adt, i64 0
  %i.aeb = fsub double %i.adw, %i.aea             ; 2 uses
  %i.aec = load <2 x double>, ptr %i.adg, align 8, !tbaa !14 ; 2 uses
  %i.aed = load <2 x double>, ptr %i.adj, align 8, !tbaa !14 ; 2 uses
  %i.aee = shufflevector <2 x double> %i.aed, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aef = shufflevector <2 x double> %i.aec, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aeg = fadd <2 x double> %i.aef, %i.aed       ; 3 uses
  %i.aeh = fsub <2 x double> %i.aec, %i.aee       ; 3 uses
  %foldExtExtBinop255 = fsub <2 x double> %i.aeh, %i.aeg
  %i.aei = extractelement <2 x double> %foldExtExtBinop255, i64 0
  %i.aej = shufflevector <2 x double> %i.abr, <2 x double> %i.aeg, <2 x i32> <i32 1, i32 3>
  %i.aek = shufflevector <2 x double> %i.acq, <2 x double> %i.aeh, <2 x i32> <i32 0, i32 3>
  %i.ael = fsub <2 x double> %i.aej, %i.aek       ; 2 uses
  %i.aem = extractelement <2 x double> %i.ael, i64 0
  store double %i.aem, ptr %i.aaz, align 8, !tbaa !14
  %i.aen = load double, ptr %i.w, align 8, !tbaa !14 ; 3 uses
  %i.aeo = load <2 x double>, ptr %i.x, align 8, !tbaa !14 ; 5 uses
  %i.aep = fmul double %i.aen, %i.aei             ; 2 uses
  %i.aeq = extractelement <2 x double> %i.ael, i64 1
  %i.aer = fmul double %i.aen, %i.aeq             ; 2 uses
  %i.aes = fadd <2 x double> %i.aeh, %i.aeg
  %i.aet = insertelement <2 x double> poison, double %i.aen, i64 0
  %i.aeu = shufflevector <2 x double> %i.aet, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aev = fmul <2 x double> %i.aeu, %i.aes       ; 3 uses
  %i.aew = shufflevector <2 x double> %i.aeo, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.aex = load <2 x double>, ptr %i.adk, align 8, !tbaa !14 ; 2 uses
  %i.aey = load double, ptr %i.adm, align 8, !tbaa !14
  %i.aez = load <2 x double>, ptr %i.adn, align 8, !tbaa !14 ; 2 uses
  %i.afa = load double, ptr %i.adl, align 8, !tbaa !14
  %i.afb = load <2 x double>, ptr %i.ado, align 8, !tbaa !14 ; 2 uses
  %i.afc = load double, ptr %i.adq, align 8, !tbaa !14
  %i.afd = load <2 x double>, ptr %i.adr, align 8, !tbaa !14 ; 2 uses
  %i.afe = load double, ptr %i.adp, align 8, !tbaa !14
  %i.aff = shufflevector <2 x double> %i.aex, <2 x double> %i.afb, <2 x i32> <i32 1, i32 3>
  %i.afg = shufflevector <2 x double> %i.aez, <2 x double> %i.afd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.afh = fsub <2 x double> %i.aff, %i.afg       ; 3 uses
  %i.afi = shufflevector <2 x double> %i.aex, <2 x double> %i.afb, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.afj = shufflevector <2 x double> %i.aez, <2 x double> %i.afd, <2 x i32> <i32 1, i32 3>
  %i.afk = fadd <2 x double> %i.afi, %i.afj       ; 3 uses
  %i.afl = insertelement <2 x double> poison, double %i.aey, i64 0
  %i.afm = insertelement <2 x double> %i.afl, double %i.afc, i64 1
  %i.afn = fadd <2 x double> %i.afm, %i.afg       ; 3 uses
  %i.afo = shufflevector <2 x double> %i.afn, <2 x double> %i.afh, <2 x i32> <i32 0, i32 2>
  %i.afp = fneg <2 x double> %i.afo
  %i.afq = fmul <2 x double> %i.aew, %i.afp
  %i.afr = insertelement <2 x double> poison, double %i.afa, i64 0
  %i.afs = insertelement <2 x double> %i.afr, double %i.afe, i64 1
  %i.aft = fsub <2 x double> %i.afi, %i.afs       ; 3 uses
  %i.afu = shufflevector <2 x double> %i.aft, <2 x double> %i.afk, <2 x i32> <i32 0, i32 2>
  %i.afv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeo, <2 x double> %i.afu, <2 x double> %i.afq) ; 3 uses
  %i.afw = fmul <2 x double> %i.aew, %i.aft
  %i.afx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aeo, <2 x double> %i.afn, <2 x double> %i.afw) ; 2 uses
  %i.afy = shufflevector <2 x double> %i.afn, <2 x double> %i.afh, <2 x i32> <i32 1, i32 3>
  %i.afz = fneg <2 x double> %i.afy
  %i.aga = fmul <2 x double> %i.aeo, %i.afz
  %i.agb = shufflevector <2 x double> %i.aft, <2 x double> %i.afk, <2 x i32> <i32 1, i32 3>
  %i.agc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aew, <2 x double> %i.agb, <2 x double> %i.aga) ; 3 uses
  %i.agd = fmul <2 x double> %i.aeo, %i.afk
  %i.age = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aew, <2 x double> %i.afh, <2 x double> %i.agd) ; 2 uses
  %i.agf = fadd double %i.adv, %i.aep             ; 2 uses
  %foldExtExtBinop257 = fadd <2 x double> %i.adz, %i.aev
  %i.agg = extractelement <2 x double> %foldExtExtBinop257, i64 0 ; 2 uses
  %foldExtExtBinop259 = fadd <2 x double> %i.afv, %i.agc
  %i.agh = extractelement <2 x double> %foldExtExtBinop259, i64 0 ; 2 uses
  %i.agi = extractelement <2 x double> %i.afx, i64 0 ; 2 uses
  %i.agj = extractelement <2 x double> %i.afx, i64 1 ; 2 uses
  %i.agk = fadd double %i.agi, %i.agj             ; 2 uses
  %i.agl = fadd double %i.agf, %i.agh
  store double %i.agl, ptr %i.adc, align 8, !tbaa !14
  %i.agm = fadd double %i.agg, %i.agk
  store double %i.agm, ptr %i.ade, align 8, !tbaa !14
  %i.agn = fsub double %i.agf, %i.agh
  store double %i.agn, ptr %i.adk, align 8, !tbaa !14
  %i.ago = fsub double %i.agg, %i.agk
  store double %i.ago, ptr %i.adm, align 8, !tbaa !14
  %i.agp = fsub double %i.adv, %i.aep             ; 2 uses
  %i.agq = fsub double %i.agi, %i.agj             ; 2 uses
  %i.agr = fsub double %i.agp, %i.agq
  store double %i.agr, ptr %i.adg, align 8, !tbaa !14
  %i.ags = fsub <2 x double> %i.adz, %i.aev       ; 4 uses
  %i.agt = fsub <2 x double> %i.afv, %i.agc       ; 4 uses
  %foldExtExtBinop261 = fadd <2 x double> %i.ags, %i.agt
  %i.agu = extractelement <2 x double> %foldExtExtBinop261, i64 0
  store double %i.agu, ptr %i.adi, align 8, !tbaa !14
  %i.agv = fadd double %i.agp, %i.agq
  store double %i.agv, ptr %i.ado, align 8, !tbaa !14
  %i.agw = fadd double %i.aeb, %i.aer             ; 2 uses
  %i.agx = extractelement <2 x double> %i.age, i64 0 ; 2 uses
  %i.agy = extractelement <2 x double> %i.age, i64 1 ; 2 uses
  %i.agz = fsub double %i.agx, %i.agy             ; 2 uses
  %i.aha = fsub <2 x double> %i.ags, %i.agt
  %i.ahb = fadd <2 x double> %i.ags, %i.agt
  %i.ahc = shufflevector <2 x double> %i.aha, <2 x double> %i.ahb, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ahc, ptr %i.adq, align 8, !tbaa !14
  %i.ahd = fadd double %i.agw, %i.agz
  store double %i.ahd, ptr %i.add, align 8, !tbaa !14
end_hunk_3
begin_hunk_4_@cftexp2:bb.a
  %i.awm = load <2 x double>, ptr %i.awa, align 8, !tbaa !14 ; 2 uses
  %i.awn = load <2 x double>, ptr %i.awb, align 8, !tbaa !14 ; 2 uses
  %i.awo = fadd <2 x double> %i.awm, %i.awn       ; 2 uses
  %i.awp = load <2 x double>, ptr %i.awc, align 8, !tbaa !14 ; 2 uses
  %i.awq = load <2 x double>, ptr %i.awd, align 8, !tbaa !14 ; 2 uses
  %i.awr = fadd <2 x double> %i.awp, %i.awq       ; 2 uses
  %i.aws = fadd <2 x double> %i.awo, %i.awr       ; 2 uses
  %i.awt = fsub <2 x double> %i.awf, %i.awg       ; 2 uses
  %i.awu = fsub <2 x double> %i.awi, %i.awj
  %i.awv = shufflevector <2 x double> %i.awu, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aww = fsub <2 x double> %i.awt, %i.awv       ; 3 uses
  %i.awx = fadd <2 x double> %i.awt, %i.awv       ; 2 uses
  %i.awy = shufflevector <2 x double> %i.aww, <2 x double> %i.awx, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.awz = fsub <2 x double> %i.awm, %i.awn       ; 4 uses
  %i.axa = fsub <2 x double> %i.awp, %i.awq
  %i.axb = shufflevector <2 x double> %i.axa, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.axc = fsub <2 x double> %i.awz, %i.axb
  %i.axd = fadd <2 x double> %i.awz, %i.axb
  %i.axe = shufflevector <2 x double> %i.axc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.axf = shufflevector <2 x double> %i.axd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.axg = fsub <2 x double> %i.axe, %i.axf
  %i.axh = fadd <2 x double> %i.axe, %i.axf
  %i.axi = shufflevector <2 x double> %i.axg, <2 x double> %i.axh, <2 x i32> <i32 0, i32 3>
  %i.axj = insertelement <2 x double> poison, double %i.avv, i64 0
  %i.axk = shufflevector <2 x double> %i.axj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.axl = fmul <2 x double> %i.axk, %i.axi       ; 2 uses
  %i.axm = fadd <2 x double> %i.awy, %i.axl
  store <2 x double> %i.axm, ptr %i.avw, align 8, !tbaa !14
  %i.axn = fsub <2 x double> %i.awy, %i.axl
  store <2 x double> %i.axn, ptr %i.awb, align 8, !tbaa !14
  %i.axo = shufflevector <2 x double> %i.aww, <2 x double> %i.awx, <2 x i32> <i32 1, i32 2> ; 2 uses
  %foldExtExtBinop303 = fadd <2 x double> %i.awz, %i.axb
  %i.axp = extractelement <2 x double> %foldExtExtBinop303, i64 0 ; 2 uses
  %foldExtExtBinop305 = fsub <2 x double> %i.awz, %i.axb
  %i.axq = extractelement <2 x double> %foldExtExtBinop305, i64 1 ; 2 uses
  %i.axr = fsub double %i.axp, %i.axq
  %i.axs = fadd double %i.axq, %i.axp
  %i.axt = insertelement <2 x double> poison, double %i.axr, i64 0
  %i.axu = insertelement <2 x double> %i.axt, double %i.axs, i64 1
  %i.axv = fmul <2 x double> %i.axk, %i.axu       ; 3 uses
  %foldExtExtBinop307 = fsub <2 x double> %i.axo, %i.axv
  %i.axw = extractelement <2 x double> %foldExtExtBinop307, i64 1
  store double %i.axw, ptr %i.avy, align 8, !tbaa !14
  %i.axx = fadd <2 x double> %i.axo, %i.axv
  store <2 x double> %i.axx, ptr %i.avz, align 8, !tbaa !14
  %i.axy = fadd <2 x double> %i.awl, %i.aws
  store <2 x double> %i.axy, ptr %i.avu, align 8, !tbaa !14
  %i.axz = fsub <2 x double> %i.awl, %i.aws
  store <2 x double> %i.axz, ptr %i.awa, align 8, !tbaa !14
  %i.aya = fsub <2 x double> %i.awh, %i.awk       ; 2 uses
  %i.ayb = fsub <2 x double> %i.awo, %i.awr
  %i.ayc = shufflevector <2 x double> %i.ayb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ayd = fsub <2 x double> %i.aya, %i.ayc       ; 2 uses
  %i.aye = fadd <2 x double> %i.aya, %i.ayc       ; 2 uses
  %i.ayf = shufflevector <2 x double> %i.ayd, <2 x double> %i.aye, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ayf, ptr %i.avx, align 8, !tbaa !14
  %i.ayg = shufflevector <2 x double> %i.aye, <2 x double> %i.ayd, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ayg, ptr %i.awc, align 8, !tbaa !14
  %i.ayh = getelementptr inbounds nuw i8, ptr %gep176, i64 384 ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %gep176, i64 456
  %i.ayj = getelementptr inbounds nuw i8, ptr %gep176, i64 392 ; 2 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %gep176, i64 448
  %i.ayl = getelementptr inbounds nuw i8, ptr %gep176, i64 416 ; 2 uses
  %i.aym = getelementptr inbounds nuw i8, ptr %gep176, i64 488
  %i.ayn = getelementptr inbounds nuw i8, ptr %gep176, i64 424
  %i.ayo = getelementptr inbounds nuw i8, ptr %gep176, i64 480 ; 2 uses
  %i.ayp = getelementptr inbounds nuw i8, ptr %gep176, i64 400 ; 2 uses
  %i.ayq = getelementptr inbounds nuw i8, ptr %gep176, i64 472
  %i.ayr = getelementptr inbounds nuw i8, ptr %gep176, i64 408 ; 2 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %gep176, i64 464 ; 2 uses
  %i.ayt = getelementptr inbounds nuw i8, ptr %gep176, i64 432 ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %gep176, i64 504 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %gep176, i64 440 ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %gep176, i64 496 ; 2 uses
  %i.ayx = load double, ptr %i.ayh, align 8, !tbaa !14 ; 2 uses
  %i.ayy = load <2 x double>, ptr %i.ayk, align 8, !tbaa !14 ; 3 uses
  %i.ayz = extractelement <2 x double> %i.ayy, i64 1
  %i.aza = fsub double %i.ayx, %i.ayz             ; 2 uses
  %i.azb = load double, ptr %i.ayj, align 8, !tbaa !14 ; 2 uses
  %i.azc = insertelement <2 x double> poison, double %i.azb, i64 0
  %i.azd = insertelement <2 x double> %i.azc, double %i.ayx, i64 1
  %i.aze = fadd <2 x double> %i.azd, %i.ayy       ; 3 uses
  %i.azf = extractelement <2 x double> %i.ayy, i64 0
  %i.azg = fsub double %i.azb, %i.azf             ; 2 uses
  %i.azh = load <2 x double>, ptr %i.ayl, align 8, !tbaa !14 ; 2 uses
  %i.azi = load <2 x double>, ptr %i.ayo, align 8, !tbaa !14 ; 2 uses
  %i.azj = shufflevector <2 x double> %i.azi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.azk = shufflevector <2 x double> %i.azh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.azl = fadd <2 x double> %i.azk, %i.azi       ; 3 uses
  %i.azm = fsub <2 x double> %i.azh, %i.azj       ; 3 uses
  %foldExtExtBinop309 = fsub <2 x double> %i.azm, %i.azl
  %i.azn = extractelement <2 x double> %foldExtExtBinop309, i64 0
  %i.azo = shufflevector <2 x double> %i.aww, <2 x double> %i.azl, <2 x i32> <i32 1, i32 3>
  %i.azp = shufflevector <2 x double> %i.axv, <2 x double> %i.azm, <2 x i32> <i32 0, i32 3>
  %i.azq = fsub <2 x double> %i.azo, %i.azp       ; 2 uses
  %i.azr = extractelement <2 x double> %i.azq, i64 0
  store double %i.azr, ptr %i.awe, align 8, !tbaa !14
  %i.azs = load double, ptr %i.w, align 8, !tbaa !14 ; 3 uses
  %i.azt = load <2 x double>, ptr %i.x, align 8, !tbaa !14 ; 5 uses
  %i.azu = fmul double %i.azs, %i.azn             ; 2 uses
  %i.azv = extractelement <2 x double> %i.azq, i64 1
  %i.azw = fmul double %i.azs, %i.azv             ; 2 uses
  %i.azx = fadd <2 x double> %i.azm, %i.azl
  %i.azy = insertelement <2 x double> poison, double %i.azs, i64 0
  %i.azz = shufflevector <2 x double> %i.azy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.baa = fmul <2 x double> %i.azz, %i.azx       ; 3 uses
  %i.bab = shufflevector <2 x double> %i.azt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.bac = load <2 x double>, ptr %i.ayp, align 8, !tbaa !14 ; 2 uses
  %i.bad = load double, ptr %i.ayr, align 8, !tbaa !14
  %i.bae = load <2 x double>, ptr %i.ays, align 8, !tbaa !14 ; 2 uses
  %i.baf = load double, ptr %i.ayq, align 8, !tbaa !14
  %i.bag = load <2 x double>, ptr %i.ayt, align 8, !tbaa !14 ; 2 uses
  %i.bah = load double, ptr %i.ayv, align 8, !tbaa !14
  %i.bai = load <2 x double>, ptr %i.ayw, align 8, !tbaa !14 ; 2 uses
  %i.baj = load double, ptr %i.ayu, align 8, !tbaa !14
  %i.bak = shufflevector <2 x double> %i.bac, <2 x double> %i.bag, <2 x i32> <i32 1, i32 3>
  %i.bal = shufflevector <2 x double> %i.bae, <2 x double> %i.bai, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bam = fsub <2 x double> %i.bak, %i.bal       ; 3 uses
  %i.ban = shufflevector <2 x double> %i.bac, <2 x double> %i.bag, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bao = shufflevector <2 x double> %i.bae, <2 x double> %i.bai, <2 x i32> <i32 1, i32 3>
  %i.bap = fadd <2 x double> %i.ban, %i.bao       ; 3 uses
  %i.baq = insertelement <2 x double> poison, double %i.bad, i64 0
  %i.bar = insertelement <2 x double> %i.baq, double %i.bah, i64 1
  %i.bas = fadd <2 x double> %i.bar, %i.bal       ; 3 uses
  %i.bat = shufflevector <2 x double> %i.bas, <2 x double> %i.bam, <2 x i32> <i32 0, i32 2>
  %i.bau = fneg <2 x double> %i.bat
  %i.bav = fmul <2 x double> %i.bab, %i.bau
  %i.baw = insertelement <2 x double> poison, double %i.baf, i64 0
  %i.bax = insertelement <2 x double> %i.baw, double %i.baj, i64 1
  %i.bay = fsub <2 x double> %i.ban, %i.bax       ; 3 uses
  %i.baz = shufflevector <2 x double> %i.bay, <2 x double> %i.bap, <2 x i32> <i32 0, i32 2>
  %i.bba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azt, <2 x double> %i.baz, <2 x double> %i.bav) ; 3 uses
  %i.bbb = fmul <2 x double> %i.bab, %i.bay
  %i.bbc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.azt, <2 x double> %i.bas, <2 x double> %i.bbb) ; 2 uses
  %i.bbd = shufflevector <2 x double> %i.bas, <2 x double> %i.bam, <2 x i32> <i32 1, i32 3>
  %i.bbe = fneg <2 x double> %i.bbd
  %i.bbf = fmul <2 x double> %i.azt, %i.bbe
  %i.bbg = shufflevector <2 x double> %i.bay, <2 x double> %i.bap, <2 x i32> <i32 1, i32 3>
  %i.bbh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bab, <2 x double> %i.bbg, <2 x double> %i.bbf) ; 3 uses
  %i.bbi = fmul <2 x double> %i.azt, %i.bap
  %i.bbj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bab, <2 x double> %i.bam, <2 x double> %i.bbi) ; 2 uses
  %i.bbk = fadd double %i.aza, %i.azu             ; 2 uses
  %foldExtExtBinop311 = fadd <2 x double> %i.aze, %i.baa
  %i.bbl = extractelement <2 x double> %foldExtExtBinop311, i64 0 ; 2 uses
  %foldExtExtBinop313 = fadd <2 x double> %i.bba, %i.bbh
  %i.bbm = extractelement <2 x double> %foldExtExtBinop313, i64 0 ; 2 uses
  %i.bbn = extractelement <2 x double> %i.bbc, i64 0 ; 2 uses
  %i.bbo = extractelement <2 x double> %i.bbc, i64 1 ; 2 uses
  %i.bbp = fadd double %i.bbn, %i.bbo             ; 2 uses
  %i.bbq = fadd double %i.bbk, %i.bbm
  store double %i.bbq, ptr %i.ayh, align 8, !tbaa !14
  %i.bbr = fadd double %i.bbl, %i.bbp
  store double %i.bbr, ptr %i.ayj, align 8, !tbaa !14
  %i.bbs = fsub double %i.bbk, %i.bbm
  store double %i.bbs, ptr %i.ayp, align 8, !tbaa !14
  %i.bbt = fsub double %i.bbl, %i.bbp
  store double %i.bbt, ptr %i.ayr, align 8, !tbaa !14
  %i.bbu = fsub double %i.aza, %i.azu             ; 2 uses
  %i.bbv = fsub double %i.bbn, %i.bbo             ; 2 uses
  %i.bbw = fsub double %i.bbu, %i.bbv
  store double %i.bbw, ptr %i.ayl, align 8, !tbaa !14
  %i.bbx = fsub <2 x double> %i.aze, %i.baa       ; 4 uses
  %i.bby = fsub <2 x double> %i.bba, %i.bbh       ; 4 uses
  %foldExtExtBinop315 = fadd <2 x double> %i.bbx, %i.bby
  %i.bbz = extractelement <2 x double> %foldExtExtBinop315, i64 0
  store double %i.bbz, ptr %i.ayn, align 8, !tbaa !14
  %i.bca = fadd double %i.bbu, %i.bbv
  store double %i.bca, ptr %i.ayt, align 8, !tbaa !14
  %i.bcb = fadd double %i.azg, %i.azw             ; 2 uses
  %i.bcc = extractelement <2 x double> %i.bbj, i64 0 ; 2 uses
  %i.bcd = extractelement <2 x double> %i.bbj, i64 1 ; 2 uses
  %i.bce = fsub double %i.bcc, %i.bcd             ; 2 uses
  %i.bcf = fsub <2 x double> %i.bbx, %i.bby
  %i.bcg = fadd <2 x double> %i.bbx, %i.bby
  %i.bch = shufflevector <2 x double> %i.bcf, <2 x double> %i.bcg, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.bch, ptr %i.ayv, align 8, !tbaa !14
  %i.bci = fadd double %i.bcb, %i.bce
  store double %i.bci, ptr %i.ayi, align 8, !tbaa !14
  %i.bcj = shufflevector <2 x double> %i.bbx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bck = insertelement <2 x double> %i.bcj, double %i.bcb, i64 1
  %i.bcl = shufflevector <2 x double> %i.bby, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bcm = insertelement <2 x double> %i.bcl, double %i.bce, i64 1
  %i.bcn = fsub <2 x double> %i.bck, %i.bcm
  store <2 x double> %i.bcn, ptr %i.ays, align 8, !tbaa !14
  %foldExtExtBinop317 = fadd <2 x double> %i.aze, %i.baa
  %i.bco = extractelement <2 x double> %foldExtExtBinop317, i64 1 ; 2 uses
  %i.bcp = fsub double %i.azg, %i.azw             ; 2 uses
  %foldExtExtBinop319 = fadd <2 x double> %i.bba, %i.bbh
  %i.bcq = extractelement <2 x double> %foldExtExtBinop319, i64 1 ; 2 uses
  %i.bcr = fadd double %i.bcc, %i.bcd             ; 2 uses
  %i.bcs = fsub double %i.bco, %i.bcr
  store double %i.bcs, ptr %i.ayo, align 8, !tbaa !14
  %i.bct = fadd double %i.bcp, %i.bcq
  store double %i.bct, ptr %i.aym, align 8, !tbaa !14
  %i.bcu = fadd double %i.bco, %i.bcr
  store double %i.bcu, ptr %i.ayw, align 8, !tbaa !14
  %i.bcv = fsub double %i.bcp, %i.bcq
  store double %i.bcv, ptr %i.ayu, align 8, !tbaa !14
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, %i.aac ; 2 uses
  %i.bcw = icmp slt i64 %indvars.iv.next150, %i.ad
  br i1 %i.bcw, label %cftfx42.exit114, label %._crit_edge132, !llvm.loop !158

._crit_edge132:                                   ; preds = %cftfx42.exit114, %cftfx42.exit114.us, %._crit_edge128.._crit_edge132_crit_edge
  %.pre-phi160 = phi i32 [ %.pre159, %._crit_edge128.._crit_edge132_crit_edge ], [ %i.aad, %cftfx42.exit114.us ], [ %i.zz, %cftfx42.exit114 ] ; 2 uses
  %i.bcx = icmp slt i32 %.pre-phi160, %i.a
  br i1 %i.bcx, label %bb.e, label %._crit_edge136, !llvm.loop !159

._crit_edge136:                                   ; preds = %._crit_edge132, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftfx42(i32 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #6 !guid !161 {
bb.a:
  %i.a = icmp eq i32 %0, 128
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr [8 x i8], ptr %3, i64 %i.b ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 -64      ; 2 uses
  tail call void @cftf161(ptr noundef %1, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = getelementptr i8, ptr %i.c, i64 -256     ; 2 uses
  tail call void @cftf162(ptr noundef nonnull %i.e, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @cftf161(ptr noundef nonnull %i.g, ptr noundef %i.d)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 768
  tail call void @cftf162(ptr noundef nonnull %i.h, ptr noundef %i.f)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.c, i64 -128     ; 4 uses
  tail call void @cftf081(ptr noundef %1, ptr noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @cftf082(ptr noundef nonnull %i.j, ptr noundef %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @cftf081(ptr noundef nonnull %i.k, ptr noundef %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 384
  tail call void @cftf082(ptr noundef nonnull %i.l, ptr noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf162(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 !guid !162 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load double, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load double, ptr %i.g, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load double, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = load double, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.n = load double, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.al = load <2 x double>, ptr %0, align 8, !tbaa !14 ; 2 uses
  %i.am = load <2 x double>, ptr %i.o, align 8, !tbaa !14
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ao = fadd <2 x double> %i.al, %i.an          ; 2 uses
  %i.ap = fsub <2 x double> %i.al, %i.an          ; 2 uses
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> %i.ao, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ar = insertelement <2 x double> poison, double %i.b, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.at = load <2 x double>, ptr %i.t, align 8, !tbaa !14
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = load <2 x double>, ptr %i.u, align 8, !tbaa !14 ; 2 uses
  %i.aw = fsub <2 x double> %i.au, %i.av          ; 4 uses
  %i.ax = fadd <2 x double> %i.au, %i.av          ; 3 uses
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> %i.aw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bb = fneg <2 x double> %i.ay
  %i.bc = shufflevector <2 x double> %i.aw, <2 x double> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.bd = fmul <2 x double> %i.ba, %i.bc
  %i.be = insertelement <2 x double> poison, double %i.d, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.ay, <2 x double> %i.bd) ; 2 uses
  %i.bh = load <2 x double>, ptr %i.v, align 8, !tbaa !14
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bj = load <2 x double>, ptr %i.y, align 8, !tbaa !14 ; 2 uses
  %i.bk = fsub <2 x double> %i.bi, %i.bj          ; 4 uses
  %i.bl = fadd <2 x double> %i.bi, %i.bj          ; 3 uses
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> %i.bk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.h, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bp = fneg <2 x double> %i.bm
  %i.bq = shufflevector <2 x double> %i.bk, <2 x double> %i.bp, <2 x i32> <i32 1, i32 2>
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = insertelement <2 x double> poison, double %i.j, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bm, <2 x double> %i.br) ; 2 uses
  %i.bv = fsub <2 x double> %i.bg, %i.bu          ; 2 uses
  %i.bw = load <2 x double>, ptr %i.z, align 8, !tbaa !14
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.by = load <2 x double>, ptr %i.aa, align 8, !tbaa !14 ; 2 uses
  %i.bz = fsub <2 x double> %i.bx, %i.by          ; 4 uses
  %i.ca = fadd <2 x double> %i.bx, %i.by          ; 3 uses
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> %i.bz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cc = insertelement <2 x double> poison, double %i.n, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ce = fneg <2 x double> %i.cb
  %i.cf = shufflevector <2 x double> %i.bz, <2 x double> %i.ce, <2 x i32> <i32 1, i32 2>
  %i.cg = fmul <2 x double> %i.cd, %i.cf
  %i.ch = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cb, <2 x double> %i.cg) ; 2 uses
  %i.ck = load <2 x double>, ptr %i.ab, align 8, !tbaa !14
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cm = load <2 x double>, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.cn = fsub <2 x double> %i.cl, %i.cm          ; 4 uses
  %i.co = fadd <2 x double> %i.cl, %i.cm          ; 3 uses
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> %i.cn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cq = fneg <2 x double> %i.cp
  %i.cr = shufflevector <2 x double> %i.cn, <2 x double> %i.cq, <2 x i32> <i32 1, i32 2>
  %i.cs = fmul <2 x double> %i.ci, %i.cr
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.cp, <2 x double> %i.cs) ; 2 uses
  %i.cu = fsub <2 x double> %i.cj, %i.ct          ; 3 uses
  %i.cv = load <2 x double>, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %i.cw = load <2 x double>, ptr %i.ag, align 8, !tbaa !14
  %i.cx = shufflevector <2 x double> %i.cw, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cy = fadd <2 x double> %i.cv, %i.cx          ; 4 uses
  %i.cz = fsub <2 x double> %i.cv, %i.cx          ; 4 uses
  %i.da = shufflevector <2 x double> %i.cz, <2 x double> %i.cy, <2 x i32> <i32 0, i32 3>
  %i.db = load <2 x double>, ptr %i.ah, align 8, !tbaa !14 ; 2 uses
  %i.dc = load <2 x double>, ptr %i.ak, align 8, !tbaa !14
  %i.dd = shufflevector <2 x double> %i.dc, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.de = fadd <2 x double> %i.db, %i.dd          ; 4 uses
  %i.df = fsub <2 x double> %i.db, %i.dd          ; 4 uses
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dh = shufflevector <2 x double> %i.cy, <2 x double> %i.de, <2 x i32> <i32 1, i32 3>
  %i.di = fneg <2 x double> %i.dh                 ; 2 uses
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.dk = fmul <2 x double> %i.bt, %i.dj
  %i.dl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.da, <2 x double> %i.dk) ; 2 uses
  %i.dm = shufflevector <2 x double> %i.di, <2 x double> %i.df, <2 x i32> <i32 1, i32 2>
  %i.dn = fmul <2 x double> %i.bf, %i.dm
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.dg, <2 x double> %i.dn) ; 2 uses
  %i.dp = fsub <2 x double> %i.dl, %i.do          ; 2 uses
  %i.dq = fadd <2 x double> %i.bv, %i.dp
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.ds = fsub <2 x double> %i.bv, %i.dp          ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.ds, %i.dr
  %i.dt = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.du = fmul double %i.b, %i.dt                 ; 2 uses
  %i.dv = fadd <2 x double> %i.ds, %i.dr
  %i.dw = fmul <2 x double> %i.as, %i.dv          ; 3 uses
  %foldExtExtBinop428 = fsub <2 x double> %i.dr, %i.ds
  %i.dx = extractelement <2 x double> %foldExtExtBinop428, i64 0
  %i.dy = fmul double %i.b, %i.dx                 ; 2 uses
  %i.dz = shufflevector <2 x double> %i.ax, <2 x double> %i.aw, <2 x i32> <i32 1, i32 2>
  %i.ea = shufflevector <2 x double> %i.bl, <2 x double> %i.bk, <2 x i32> <i32 1, i32 2>
  %i.eb = shufflevector <2 x double> %i.aw, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.ec = fneg <2 x double> %i.eb                 ; 2 uses
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> %i.ax, <2 x i32> <i32 0, i32 3>
  %i.ee = fmul <2 x double> %i.bt, %i.ed
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.dz, <2 x double> %i.ee) ; 2 uses
  %i.eg = shufflevector <2 x double> %i.bk, <2 x double> %i.ec, <2 x i32> <i32 0, i32 3>
  %i.eh = fmul <2 x double> %i.ba, %i.eg
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.ea, <2 x double> %i.eh) ; 2 uses
  %i.ej = fsub <2 x double> %i.ef, %i.ei          ; 2 uses
  %i.ek = shufflevector <2 x double> %i.ca, <2 x double> %i.bz, <2 x i32> <i32 1, i32 2>
  %i.el = shufflevector <2 x double> %i.co, <2 x double> %i.cn, <2 x i32> <i32 1, i32 2>
  %i.em = shufflevector <2 x double> %i.bz, <2 x double> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.en = fneg <2 x double> %i.em                 ; 2 uses
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> %i.ca, <2 x i32> <i32 0, i32 3>
  %i.ep = fmul <2 x double> %i.ci, %i.eo
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cd, <2 x double> %i.ek, <2 x double> %i.ep) ; 2 uses
  %i.er = shufflevector <2 x double> %i.co, <2 x double> %i.en, <2 x i32> <i32 3, i32 1>
  %i.es = fmul <2 x double> %i.cd, %i.er
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.el, <2 x double> %i.es) ; 2 uses
  %i.eu = fsub <2 x double> %i.eq, %i.et          ; 2 uses
  %i.ev = shufflevector <2 x double> %i.cy, <2 x double> %i.cz, <2 x i32> <i32 0, i32 3>
  %i.ew = shufflevector <2 x double> %i.de, <2 x double> %i.df, <2 x i32> <i32 0, i32 3>
  %i.ex = shufflevector <2 x double> %i.cy, <2 x double> %i.df, <2 x i32> <i32 0, i32 3>
  %i.ey = fneg <2 x double> %i.ex                 ; 2 uses
  %i.ez = shufflevector <2 x double> %i.cz, <2 x double> %i.ey, <2 x i32> <i32 1, i32 2>
  %i.fa = fmul <2 x double> %i.bf, %i.ez
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.ev, <2 x double> %i.fa) ; 2 uses
  %i.fc = shufflevector <2 x double> %i.ey, <2 x double> %i.de, <2 x i32> <i32 1, i32 2>
  %i.fd = fmul <2 x double> %i.bo, %i.fc
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.ew, <2 x double> %i.fd) ; 2 uses
  %i.ff = fadd <2 x double> %i.fb, %i.fe          ; 2 uses
  %i.fg = fsub <2 x double> %i.ej, %i.ff          ; 2 uses
  %i.fh = fadd <2 x double> %i.ej, %i.ff
  %i.fi = shufflevector <2 x double> %i.fh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fj = fadd <2 x double> %i.ef, %i.ei          ; 2 uses
  %i.fk = fadd <2 x double> %i.eq, %i.et          ; 3 uses
  %i.fl = fsub <2 x double> %i.fb, %i.fe          ; 2 uses
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fn = load double, ptr %i.p, align 8, !tbaa !14 ; 2 uses
  %i.fo = load double, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  %i.fp = fsub double %i.fn, %i.fo                ; 2 uses
  %i.fq = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.fr = load double, ptr %i.s, align 8, !tbaa !14 ; 2 uses
  %i.fs = fadd double %i.fq, %i.fr                ; 2 uses
  %i.ft = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fu = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fv = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fw = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.fx = fadd <2 x double> %i.fu, %i.fw
  %i.fy = fsub <2 x double> %i.ft, %i.fv
  %i.fz = shufflevector <2 x double> %i.fx, <2 x double> %i.fy, <2 x i32> <i32 2, i32 0>
  %i.ga = fmul <2 x double> %i.as, %i.fz          ; 2 uses
  %i.gb = fsub <2 x double> %i.aq, %i.ga          ; 3 uses
  %i.gc = shufflevector <2 x double> %i.ap, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gd = fadd double %i.fn, %i.fo                ; 2 uses
  %i.ge = fsub double %i.fq, %i.fr                ; 2 uses
  %i.gf = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gg = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gh = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gi = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gj = fsub <2 x double> %i.gg, %i.gi
  %i.gk = fadd <2 x double> %i.gf, %i.gh
  %i.gl = shufflevector <2 x double> %i.gj, <2 x double> %i.gk, <2 x i32> <i32 0, i32 2>
  %i.gm = fmul <2 x double> %i.as, %i.gl          ; 2 uses
  %i.gn = fsub <2 x double> %i.gc, %i.gm          ; 2 uses
  %i.go = fadd <2 x double> %i.gc, %i.gm          ; 2 uses
  %i.gp = shufflevector <2 x double> %i.gn, <2 x double> %i.go, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.gq = shufflevector <2 x double> %i.gn, <2 x double> %i.go, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.gr = fadd <2 x double> %i.bg, %i.bu
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gt = fadd <2 x double> %i.cj, %i.ct
  %i.gu = shufflevector <2 x double> %i.gt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gv = fadd <2 x double> %i.dl, %i.do          ; 2 uses
  %i.gw = fadd <2 x double> %i.gs, %i.gv
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.gy = fadd <2 x double> %i.aq, %i.ga          ; 2 uses
  %i.gz = fadd <2 x double> %i.gy, %i.gu
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.hb = fadd <4 x double> %i.ha, %i.gx
  %i.hc = fsub <4 x double> %i.ha, %i.gx
  %i.hd = shufflevector <4 x double> %i.hb, <4 x double> %i.hc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x double> %i.hd, ptr %0, align 8, !tbaa !14
  %i.he = fsub <2 x double> %i.gs, %i.gv
  %i.hf = shufflevector <2 x double> %i.he, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 2 uses
  %i.hg = fsub <2 x double> %i.gy, %i.gu
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.hi = fsub <4 x double> %i.hh, %i.hf
  %i.hj = fadd <4 x double> %i.hh, %i.hf
  %i.hk = shufflevector <4 x double> %i.hi, <4 x double> %i.hj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x double> %i.hk, ptr %i.z, align 8, !tbaa !14
  %foldExtExtBinop430 = fsub <2 x double> %i.gb, %i.cu
  %i.hl = extractelement <2 x double> %foldExtExtBinop430, i64 0 ; 2 uses
  %i.hm = fadd double %i.hl, %i.du
  store double %i.hm, ptr %i.p, align 8, !tbaa !14
  %i.hn = fadd <2 x double> %i.gb, %i.cu          ; 3 uses
  %foldExtExtBinop432 = fadd <2 x double> %i.hn, %i.dw
  %i.ho = extractelement <2 x double> %foldExtExtBinop432, i64 1
  store double %i.ho, ptr %i.r, align 8, !tbaa !14
  %i.hp = fsub double %i.hl, %i.du
  store double %i.hp, ptr %i.v, align 8, !tbaa !14
  %foldExtExtBinop434 = fsub <2 x double> %i.gb, %i.cu
  %i.hq = extractelement <2 x double> %foldExtExtBinop434, i64 1 ; 2 uses
  %i.hr = fsub <2 x double> %i.hn, %i.dw
  %i.hs = shufflevector <2 x double> %i.hr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.hs, ptr %i.x, align 8, !tbaa !14
  %i.ht = fadd double %i.hq, %i.dy
  store double %i.ht, ptr %i.ad, align 8, !tbaa !14
  %foldExtExtBinop436 = fadd <2 x double> %i.hn, %i.dw
  %i.hu = extractelement <2 x double> %foldExtExtBinop436, i64 0
  store double %i.hu, ptr %i.ah, align 8, !tbaa !14
  %i.hv = fsub double %i.hq, %i.dy
  store double %i.hv, ptr %i.aj, align 8, !tbaa !14
  %i.hw = fadd <2 x double> %i.gp, %i.eu          ; 2 uses
  %i.hx = fadd <2 x double> %i.hw, %i.fg
  store <2 x double> %i.hx, ptr %i.o, align 8, !tbaa !14
  %i.hy = fsub <2 x double> %i.hw, %i.fg
  store <2 x double> %i.hy, ptr %i.u, align 8, !tbaa !14
  %i.hz = fsub <2 x double> %i.gp, %i.eu          ; 2 uses
  %i.ia = fsub <2 x double> %i.hz, %i.fi          ; 2 uses
  %i.ib = fadd <2 x double> %i.hz, %i.fi          ; 2 uses
  %i.ic = shufflevector <2 x double> %i.ia, <2 x double> %i.ib, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ic, ptr %i.aa, align 8, !tbaa !14
  %i.id = shufflevector <2 x double> %i.ib, <2 x double> %i.ia, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.id, ptr %i.ag, align 8, !tbaa !14
  %foldExtExtBinop438 = fsub <2 x double> %i.gq, %i.fk
  %i.ie = extractelement <2 x double> %foldExtExtBinop438, i64 1 ; 2 uses
  %i.if = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ig = fsub <2 x double> %i.if, %i.fl          ; 3 uses
  %i.ih = fadd <2 x double> %i.fj, %i.fm          ; 3 uses
  %foldExtExtBinop440 = fsub <2 x double> %i.ih, %i.ig
  %i.ii = extractelement <2 x double> %foldExtExtBinop440, i64 0
  %i.ij = fmul double %i.b, %i.ii                 ; 2 uses
  %i.ik = fadd double %i.ie, %i.ij
  store double %i.ik, ptr %i.s, align 8, !tbaa !14
  %i.il = fadd <2 x double> %i.gq, %i.fk          ; 3 uses
  %i.im = fadd <2 x double> %i.ih, %i.ig
  %i.in = fmul <2 x double> %i.as, %i.im          ; 3 uses
  %foldExtExtBinop442 = fadd <2 x double> %i.il, %i.in
  %i.io = extractelement <2 x double> %foldExtExtBinop442, i64 0
  store double %i.io, ptr %i.q, align 8, !tbaa !14
  %i.ip = fsub double %i.ie, %i.ij
  store double %i.ip, ptr %i.y, align 8, !tbaa !14
  %foldExtExtBinop444 = fsub <2 x double> %i.gq, %i.fk ; 2 uses
  %i.iq = extractelement <2 x double> %foldExtExtBinop444, i64 0
  %foldExtExtBinop446 = fsub <2 x double> %i.ig, %i.ih
  %i.ir = extractelement <2 x double> %foldExtExtBinop446, i64 1
  %i.is = fmul double %i.b, %i.ir                 ; 2 uses
  %i.it = fsub <2 x double> %i.il, %i.in
  store <2 x double> %i.it, ptr %i.w, align 8, !tbaa !14
  %i.iu = shufflevector <2 x double> %foldExtExtBinop444, <2 x double> %i.il, <2 x i32> <i32 0, i32 3>
  %i.iv = insertelement <2 x double> %i.in, double %i.is, i64 0
  %i.iw = fadd <2 x double> %i.iu, %i.iv
  store <2 x double> %i.iw, ptr %i.ac, align 8, !tbaa !14
  %i.ix = fsub double %i.iq, %i.is
  store double %i.ix, ptr %i.ai, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @cftf082(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 !guid !163 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !14 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.s = load <2 x double>, ptr %i.c, align 8, !tbaa !14 ; 5 uses
  %i.t = load <2 x double>, ptr %0, align 8, !tbaa !14
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.v = load <2 x double>, ptr %i.f, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.u, %i.v
  %i.w = extractelement <2 x double> %foldExtExtBinop, i64 1 ; 2 uses
  %i.x = fadd <2 x double> %i.u, %i.v             ; 3 uses
  %foldExtExtBinop160 = fsub <2 x double> %i.u, %i.v
  %i.y = extractelement <2 x double> %foldExtExtBinop160, i64 0 ; 2 uses
  %i.z = load <2 x double>, ptr %i.g, align 8, !tbaa !14 ; 2 uses
  %i.aa = load <2 x double>, ptr %i.j, align 8, !tbaa !14 ; 2 uses
  %i.ab = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ac = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ad = fadd <2 x double> %i.ac, %i.aa          ; 3 uses
  %i.ae = fsub <2 x double> %i.z, %i.ab           ; 3 uses
  %foldExtExtBinop162 = fsub <2 x double> %i.ae, %i.ad
  %i.af = extractelement <2 x double> %foldExtExtBinop162, i64 0
  %i.ag = fmul double %i.b, %i.af                 ; 2 uses
  %foldExtExtBinop164 = fsub <2 x double> %i.ad, %i.ae
  %i.ah = extractelement <2 x double> %foldExtExtBinop164, i64 1
  %i.ai = fmul double %i.b, %i.ah                 ; 2 uses
  %i.aj = fadd <2 x double> %i.ae, %i.ad
  %i.ak = insertelement <2 x double> poison, double %i.b, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x double> %i.al, %i.aj          ; 3 uses
  %i.an = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 4 uses
  %i.ao = load <2 x double>, ptr %i.k, align 8, !tbaa !14 ; 2 uses
  %i.ap = load double, ptr %i.m, align 8, !tbaa !14
  %i.aq = load <2 x double>, ptr %i.n, align 8, !tbaa !14 ; 2 uses
  %i.ar = load double, ptr %i.l, align 8, !tbaa !14
  %i.as = load <2 x double>, ptr %i.o, align 8, !tbaa !14 ; 2 uses
  %i.at = load double, ptr %i.q, align 8, !tbaa !14
  %i.au = load <2 x double>, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.av = load double, ptr %i.p, align 8, !tbaa !14
  %i.aw = shufflevector <2 x double> %i.ao, <2 x double> %i.as, <2 x i32> <i32 1, i32 3>
  %i.ax = shufflevector <2 x double> %i.aq, <2 x double> %i.au, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ay = fsub <2 x double> %i.aw, %i.ax          ; 3 uses
  %i.az = shufflevector <2 x double> %i.ao, <2 x double> %i.as, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ba = shufflevector <2 x double> %i.aq, <2 x double> %i.au, <2 x i32> <i32 1, i32 3>
  %i.bb = fadd <2 x double> %i.az, %i.ba          ; 3 uses
  %i.bc = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.at, i64 1
  %i.be = fadd <2 x double> %i.bd, %i.ax          ; 3 uses
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bg = fneg <2 x double> %i.bf
  %i.bh = fmul <2 x double> %i.an, %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.av, i64 1
  %i.bk = fsub <2 x double> %i.az, %i.bj          ; 3 uses
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> %i.bb, <2 x i32> <i32 0, i32 2>
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.bl, <2 x double> %i.bh) ; 3 uses
  %i.bn = fmul <2 x double> %i.an, %i.bk
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.be, <2 x double> %i.bn) ; 2 uses
  %i.bp = shufflevector <2 x double> %i.be, <2 x double> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bq = fneg <2 x double> %i.bp
  %i.br = fmul <2 x double> %i.s, %i.bq
  %i.bs = shufflevector <2 x double> %i.bk, <2 x double> %i.bb, <2 x i32> <i32 1, i32 3>
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.bs, <2 x double> %i.br) ; 3 uses
  %i.bu = fmul <2 x double> %i.s, %i.bb
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.ay, <2 x double> %i.bu) ; 2 uses
  %i.bw = fadd double %i.w, %i.ag                 ; 2 uses
  %foldExtExtBinop166 = fadd <2 x double> %i.x, %i.am
  %i.bx = extractelement <2 x double> %foldExtExtBinop166, i64 0 ; 2 uses
  %foldExtExtBinop168 = fadd <2 x double> %i.bm, %i.bt
  %i.by = extractelement <2 x double> %foldExtExtBinop168, i64 0 ; 2 uses
  %i.bz = extractelement <2 x double> %i.bo, i64 0 ; 2 uses
  %i.ca = extractelement <2 x double> %i.bo, i64 1 ; 2 uses
  %i.cb = fadd double %i.bz, %i.ca                ; 2 uses
  %i.cc = fadd double %i.bw, %i.by
  store double %i.cc, ptr %0, align 8, !tbaa !14
  %i.cd = fadd double %i.bx, %i.cb
  store double %i.cd, ptr %i.e, align 8, !tbaa !14
  %i.ce = fsub double %i.bw, %i.by
  store double %i.ce, ptr %i.k, align 8, !tbaa !14
  %i.cf = fsub double %i.bx, %i.cb
  store double %i.cf, ptr %i.m, align 8, !tbaa !14
  %i.cg = fsub double %i.w, %i.ag                 ; 2 uses
  %i.ch = fsub double %i.bz, %i.ca                ; 2 uses
  %i.ci = fsub double %i.cg, %i.ch
  store double %i.ci, ptr %i.g, align 8, !tbaa !14
  %i.cj = fsub <2 x double> %i.x, %i.am           ; 4 uses
  %i.ck = fsub <2 x double> %i.bm, %i.bt          ; 4 uses
  %foldExtExtBinop170 = fadd <2 x double> %i.cj, %i.ck
  %i.cl = extractelement <2 x double> %foldExtExtBinop170, i64 0
  store double %i.cl, ptr %i.i, align 8, !tbaa !14
  %i.cm = fadd double %i.cg, %i.ch
  store double %i.cm, ptr %i.o, align 8, !tbaa !14
  %i.cn = fadd double %i.y, %i.ai                 ; 2 uses
  %i.co = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %i.cp = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %i.cq = fsub double %i.co, %i.cp                ; 2 uses
  %i.cr = fsub <2 x double> %i.cj, %i.ck
  %i.cs = fadd <2 x double> %i.cj, %i.ck
  %i.ct = shufflevector <2 x double> %i.cr, <2 x double> %i.cs, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ct, ptr %i.q, align 8, !tbaa !14
  %i.cu = fadd double %i.cn, %i.cq
  store double %i.cu, ptr %i.d, align 8, !tbaa !14
  %i.cv = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cw = insertelement <2 x double> %i.cv, double %i.cn, i64 1
  %i.cx = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cy = insertelement <2 x double> %i.cx, double %i.cq, i64 1
  %i.cz = fsub <2 x double> %i.cw, %i.cy
  store <2 x double> %i.cz, ptr %i.n, align 8, !tbaa !14
  %foldExtExtBinop172 = fadd <2 x double> %i.x, %i.am
  %i.da = extractelement <2 x double> %foldExtExtBinop172, i64 1 ; 2 uses
  %i.db = fsub double %i.y, %i.ai                 ; 2 uses
  %foldExtExtBinop174 = fadd <2 x double> %i.bm, %i.bt
  %i.dc = extractelement <2 x double> %foldExtExtBinop174, i64 1 ; 2 uses
  %i.dd = fadd double %i.co, %i.cp                ; 2 uses
  %i.de = fsub double %i.da, %i.dd
  store double %i.de, ptr %i.j, align 8, !tbaa !14
  %i.df = fadd double %i.db, %i.dc
  store double %i.df, ptr %i.h, align 8, !tbaa !14
  %i.dg = fadd double %i.da, %i.dd
  store double %i.dg, ptr %i.r, align 8, !tbaa !14
  %i.dh = fsub double %i.db, %i.dc
  store double %i.dh, ptr %i.p, align 8, !tbaa !14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #7

attributes #0 = { nofree nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = distinct !{!4, !15}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"double", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{i64 1030158993445549078}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{i64 -4049779006969730806}
!23 = !{i64 8108675493725379836}
!24 = !{i64 6654625344814040666}
!25 = !{i64 8227218761528426833}
!26 = !{i64 2045398175917375186}
!27 = !{i64 4997036421724826375}
!28 = !{i64 -2064348587952832670}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15, !16, !17}
!31 = distinct !{!31, !15, !17, !16}
!32 = !{i64 2159371038715219399}
!33 = !{i64 -4365344664351341994}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15, !16, !17}
!36 = distinct !{!36, !15, !17, !16}
!37 = !{i64 -6541072406150425082}
!38 = !{i64 8769268697683817186}
!39 = distinct !{!39, i1 false, !"LVerDomain"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !39}
!46 = distinct !{!46, !15, !16, !17}
!47 = distinct !{!47, !15, !16}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !15, !16, !17}
!56 = distinct !{!56, !15, !16}
!57 = distinct !{!57, !15}
!58 = !{i64 -2961519543723500123}
!59 = !{!40}
!60 = !{!45, !44, !43, !42, !41}
!61 = !{!42}
!62 = !{!45}
!63 = !{!44, !43, !42, !41}
!64 = !{!41}
!65 = !{!44}
!66 = !{!43, !42, !41}
!67 = !{!43}
!68 = !{!42, !41}
!69 = !{!51}
!70 = !{!52}
!71 = !{!53}
!72 = !{!54, !51, !52}
!73 = !{!54}
!74 = !{!51, !52}
!75 = distinct !{!75, i1 false, !"LVerDomain"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !75}
!79 = distinct !{!79, !75}
!80 = distinct !{!80, !75}
!81 = distinct !{!81, !75}
!82 = distinct !{!82, !15, !16, !17}
!83 = distinct !{!83, !15, !16}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !86}
!90 = distinct !{!90, !86}
!91 = distinct !{!91, !15, !16, !17}
!92 = distinct !{!92, !15, !16}
!93 = distinct !{!93, !15}
!94 = !{i64 4547365282850181205}
!95 = !{!76}
!96 = !{!81, !80, !79, !78, !77}
!97 = !{!78}
!98 = !{!81}
!99 = !{!80, !79, !78, !77}
!100 = !{!77}
!101 = !{!80}
!102 = !{!79, !78, !77}
!103 = !{!79}
!104 = !{!78, !77}
!105 = !{!87}
!106 = !{!88}
!107 = !{!89}
!108 = !{!90, !87, !88}
!109 = !{!90}
!110 = !{!87, !88}
!111 = distinct !{!111, !15}
!112 = !{i64 -222883952268193443}
!113 = !{i64 -7291948556219423124}
!114 = !{i64 -8849978327230544814}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !15}
!120 = !{i64 -2552516468679356765}
!121 = !{i64 4786290147676734024}
!122 = distinct !{!122, !15, !16, !17}
!123 = distinct !{!123, !15, !17, !16}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = !{i64 -128065674960460604}
!130 = !{i64 8269495930301071873}
!131 = !{i64 -4249737902060508428}
!132 = !{i64 236701111919197229}
!133 = !{i64 -893462554659225106}
!134 = !{i64 3649502912904951810}
!135 = !{i64 -6334533556096705997}
!136 = distinct !{!136, !15}
!137 = !{i64 1370731979051644883}
!138 = distinct !{!138, !15, !16, !17}
!139 = distinct !{!139, !15, !17, !16}
!140 = distinct !{!140, !15}
!141 = distinct !{!141, !15}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15}
!144 = distinct !{!144, !15}
!145 = !{i64 -8604624135279729688}
!146 = !{i64 6673207419828379747}
!147 = !{i64 -4565538604905467127}
!148 = !{i64 -3492118933922375023}
!149 = distinct !{!149, !15}
!150 = !{i64 2634283233805567999}
!151 = distinct !{!151, !15}
!152 = !{i64 -4641117561216527436}
!153 = distinct !{!153, !15}
!154 = distinct !{!154, !15}
!155 = distinct !{!155, !15}
!156 = distinct !{!156, !15}
!157 = distinct !{!157, !15}
!158 = distinct !{!158, !15}
!159 = distinct !{!159, !15}
!160 = !{i64 6616402791472211693}
!161 = !{i64 7582361286817776182}
!162 = !{i64 -5853471080470027673}
!163 = !{i64 -6095243400003050057}
end_hunk_4
