Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/f_ebur128?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@activate:bb.a
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  %.sroa.2.0.insert.ext.i = zext i32 %i.gi to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, 1
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = call i64 @av_rescale_q(i64 noundef %indvars.iv596.i, i64 %.sroa.0.0.insert.insert.i, i64 %i.gu) #15
  %i.gw = add nsw i64 %i.gv, %i.go                ; 3 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !154
  %i.gx = load i32, ptr %i.dh, align 8, !tbaa !151
  %.not412.i = icmp eq i32 %i.gx, 0
  br i1 %.not412.i, label %bb.aa, label %.preheader444.i

.preheader444.i:                                  ; preds = %bb.y
  br i1 %i.dr, label %.lr.ph459.i, label %._crit_edge460.i

.lr.ph459.i:                                      ; preds = %.preheader444.i
  %i.gy = load ptr, ptr %i.ds, align 8, !tbaa !76 ; 5 uses
  %i.gz = load ptr, ptr %i.dl, align 8, !tbaa !73 ; 5 uses
  br i1 %i.fi, label %.epil.preheader172, label %.lr.ph459.i.new

._crit_edge460.i.loopexit.unr-lcssa:              ; preds = %.lr.ph459.i.new
  br i1 %lcmp.mod174.not, label %._crit_edge460.i, label %.epil.preheader172

.epil.preheader172:                               ; preds = %._crit_edge460.i.loopexit.unr-lcssa, %.lr.ph459.i
  %indvars.iv539.i.epil.init = phi i64 [ 0, %.lr.ph459.i ], [ %indvars.iv.next540.i.3, %._crit_edge460.i.loopexit.unr-lcssa ]
  %.0387457.i.epil.init = phi double [ f0x3D719799812DEA11, %.lr.ph459.i ], [ %i.ic, %._crit_edge460.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader172
  %indvars.iv539.i.epil = phi i64 [ %indvars.iv539.i.epil.init, %.epil.preheader172 ], [ %indvars.iv.next540.i.epil, %bb.z ] ; 3 uses
  %.0387457.i.epil = phi double [ %.0387457.i.epil.init, %.epil.preheader172 ], [ %i.he, %bb.z ]
  %epil.iter = phi i64 [ 0, %.epil.preheader172 ], [ %epil.iter.next, %bb.z ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv539.i.epil
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !10
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv539.i.epil
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !10
  %i.he = call nsz double @llvm.fmuladd.f64(double %i.hb, double %i.hd, double %.0387457.i.epil) ; 2 uses
  %indvars.iv.next540.i.epil = add nuw nsw i64 %indvars.iv539.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter173
  br i1 %epil.iter.cmp.not, label %._crit_edge460.i, label %bb.z, !llvm.loop !118

._crit_edge460.i:                                 ; preds = %._crit_edge460.i.loopexit.unr-lcssa, %bb.z, %.preheader444.i
  %.0387.lcssa.i = phi double [ f0x3D719799812DEA11, %.preheader444.i ], [ %i.ic, %._crit_edge460.i.loopexit.unr-lcssa ], [ %i.he, %bb.z ]
  %i.hf = shl nsw i32 %i.gi, 1
  %i.hg = sdiv i32 %i.hf, 5
  %i.hh = sitofp nsz i32 %i.hg to double
  %i.hi = fdiv nsz double %.0387.lcssa.i, %i.hh
  br label %bb.aa

.lr.ph459.i.new:                                  ; preds = %.lr.ph459.i, %.lr.ph459.i.new
  %indvars.iv539.i = phi i64 [ %indvars.iv.next540.i.3, %.lr.ph459.i.new ], [ 0, %.lr.ph459.i ] ; 6 uses
  %.0387457.i = phi double [ %i.ic, %.lr.ph459.i.new ], [ f0x3D719799812DEA11, %.lr.ph459.i ]
  %niter178 = phi i64 [ %niter178.next.3, %.lr.ph459.i.new ], [ 0, %.lr.ph459.i ]
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv539.i
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv539.i
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !10
  %i.hn = call nsz double @llvm.fmuladd.f64(double %i.hk, double %i.hm, double %.0387457.i)
  %indvars.iv.next540.i = or disjoint i64 %indvars.iv539.i, 1 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next540.i
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next540.i
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !10
  %i.hs = call nsz double @llvm.fmuladd.f64(double %i.hp, double %i.hr, double %i.hn)
  %indvars.iv.next540.i.1 = or disjoint i64 %indvars.iv539.i, 2 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next540.i.1
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !10
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next540.i.1
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !10
  %i.hx = call nsz double @llvm.fmuladd.f64(double %i.hu, double %i.hw, double %i.hs)
  %indvars.iv.next540.i.2 = or disjoint i64 %indvars.iv539.i, 3 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next540.i.2
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !10
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next540.i.2
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !10
  %i.ic = call nsz double @llvm.fmuladd.f64(double %i.hz, double %i.ib, double %i.hx) ; 3 uses
  %indvars.iv.next540.i.3 = add nuw nsw i64 %indvars.iv539.i, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3 = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3, label %._crit_edge460.i.loopexit.unr-lcssa, label %.lr.ph459.i.new, !llvm.loop !119

bb.aa:                                            ; preds = %._crit_edge460.i, %bb.y
  %.1388.i = phi nsz double [ %i.hi, %._crit_edge460.i ], [ f0x3D719799812DEA11, %bb.y ] ; 2 uses
  %i.id = call nsz double @llvm.log10.f64(double %.1388.i)
  %i.ie = call nsz double @llvm.fmuladd.f64(double %i.id, double 1.000000e+01, double -6.910000e-01) ; 5 uses
  %i.if = load i32, ptr %i.dj, align 8, !tbaa !152
  %.not413.i = icmp eq i32 %i.if, 0
  br i1 %.not413.i, label %bb.ac, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  br i1 %i.dr, label %.lr.ph464.i, label %._crit_edge465.i

.lr.ph464.i:                                      ; preds = %.preheader.i
  %i.ig = load ptr, ptr %i.ds, align 8, !tbaa !76 ; 5 uses
  %i.ih = load ptr, ptr %i.dm, align 8, !tbaa !74 ; 5 uses
  br i1 %i.fj, label %.epil.preheader179, label %.lr.ph464.i.new

._crit_edge465.i.loopexit.unr-lcssa:              ; preds = %.lr.ph464.i.new
  br i1 %lcmp.mod182.not, label %._crit_edge465.i, label %.epil.preheader179

.epil.preheader179:                               ; preds = %._crit_edge465.i.loopexit.unr-lcssa, %.lr.ph464.i
  %indvars.iv544.i.epil.init = phi i64 [ 0, %.lr.ph464.i ], [ %indvars.iv.next545.i.3, %._crit_edge465.i.loopexit.unr-lcssa ]
  %.0385462.i.epil.init = phi double [ f0x3D719799812DEA11, %.lr.ph464.i ], [ %i.jj, %._crit_edge465.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.epil.preheader179
  %indvars.iv544.i.epil = phi i64 [ %indvars.iv544.i.epil.init, %.epil.preheader179 ], [ %indvars.iv.next545.i.epil, %bb.ab ] ; 3 uses
  %.0385462.i.epil = phi double [ %.0385462.i.epil.init, %.epil.preheader179 ], [ %i.im, %bb.ab ]
  %epil.iter181 = phi i64 [ 0, %.epil.preheader179 ], [ %epil.iter181.next, %bb.ab ]
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv544.i.epil
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv544.i.epil
  %i.il = load double, ptr %i.ik, align 8, !tbaa !10
  %i.im = call nsz double @llvm.fmuladd.f64(double %i.ij, double %i.il, double %.0385462.i.epil) ; 2 uses
  %indvars.iv.next545.i.epil = add nuw nsw i64 %indvars.iv544.i.epil, 1
  %epil.iter181.next = add i64 %epil.iter181, 1   ; 2 uses
  %epil.iter181.cmp.not = icmp eq i64 %epil.iter181.next, %xtraiter180
  br i1 %epil.iter181.cmp.not, label %._crit_edge465.i, label %bb.ab, !llvm.loop !120

._crit_edge465.i:                                 ; preds = %._crit_edge465.i.loopexit.unr-lcssa, %bb.ab, %.preheader.i
  %.0385.lcssa.i = phi double [ f0x3D719799812DEA11, %.preheader.i ], [ %i.jj, %._crit_edge465.i.loopexit.unr-lcssa ], [ %i.im, %bb.ab ]
  %i.in = mul nsw i32 %i.gi, 3
  %i.io = sitofp nsz i32 %i.in to double
  %i.ip = fdiv nsz double %.0385.lcssa.i, %i.io
  br label %bb.ac

.lr.ph464.i.new:                                  ; preds = %.lr.ph464.i, %.lr.ph464.i.new
  %indvars.iv544.i = phi i64 [ %indvars.iv.next545.i.3, %.lr.ph464.i.new ], [ 0, %.lr.ph464.i ] ; 6 uses
  %.0385462.i = phi double [ %i.jj, %.lr.ph464.i.new ], [ f0x3D719799812DEA11, %.lr.ph464.i ]
  %niter186 = phi i64 [ %niter186.next.3, %.lr.ph464.i.new ], [ 0, %.lr.ph464.i ]
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv544.i
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !10
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv544.i
  %i.it = load double, ptr %i.is, align 8, !tbaa !10
  %i.iu = call nsz double @llvm.fmuladd.f64(double %i.ir, double %i.it, double %.0385462.i)
  %indvars.iv.next545.i = or disjoint i64 %indvars.iv544.i, 1 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next545.i
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !10
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next545.i
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !10
  %i.iz = call nsz double @llvm.fmuladd.f64(double %i.iw, double %i.iy, double %i.iu)
  %indvars.iv.next545.i.1 = or disjoint i64 %indvars.iv544.i, 2 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next545.i.1
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !10
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next545.i.1
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !10
  %i.je = call nsz double @llvm.fmuladd.f64(double %i.jb, double %i.jd, double %i.iz)
  %indvars.iv.next545.i.2 = or disjoint i64 %indvars.iv544.i, 3 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next545.i.2
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !10
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.next545.i.2
  %i.ji = load double, ptr %i.jh, align 8, !tbaa !10
  %i.jj = call nsz double @llvm.fmuladd.f64(double %i.jg, double %i.ji, double %i.je) ; 3 uses
  %indvars.iv.next545.i.3 = add nuw nsw i64 %indvars.iv544.i, 4 ; 2 uses
  %niter186.next.3 = add i64 %niter186, 4         ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %._crit_edge465.i.loopexit.unr-lcssa, label %.lr.ph464.i.new, !llvm.loop !121

bb.ac:                                            ; preds = %._crit_edge465.i, %bb.aa
  %.1386.i = phi nsz double [ %i.ip, %._crit_edge465.i ], [ f0x3D719799812DEA11, %bb.aa ] ; 2 uses
  %i.jk = call nsz double @llvm.log10.f64(double %.1386.i)
  %i.jl = call nsz double @llvm.fmuladd.f64(double %i.jk, double 1.000000e+01, double -6.910000e-01) ; 5 uses
  %i.jm = fcmp nsz ult double %i.ie, -7.000000e+01
  br i1 %i.jm, label %bb.aj, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.jn = load ptr, ptr %i.dt, align 8, !tbaa !156 ; 4 uses
  %i.jo = load double, ptr %i.du, align 8, !tbaa !157
  %i.jp = fadd nsz double %.1388.i, %i.jo         ; 2 uses
  store double %i.jp, ptr %i.du, align 8, !tbaa !157
  %i.jq = load i32, ptr %i.dv, align 8, !tbaa !158
  %i.jr = add nsw i32 %i.jq, 1                    ; 2 uses
  store i32 %i.jr, ptr %i.dv, align 8, !tbaa !158
  %i.js = sitofp nsz i32 %i.jr to double
  %i.jt = fdiv nsz double %i.jp, %i.js            ; 2 uses
  %i.ju = fcmp nsz une double %i.jt, 0.000000e+00
  %i.jv = call nsz double @llvm.log10.f64(double %i.jt)
  %i.jw = call nsz double @llvm.fmuladd.f64(double %i.jv, double 1.000000e+01, double -6.910000e-01)
  %i.jx = fadd nsz double %i.jw, -1.000000e+01
  %i.jy = select i1 %i.ju, double %i.jx, double -1.306910e+02 ; 2 uses
  store double %i.jy, ptr %i.dw, align 8, !tbaa !159
  %i.jz = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ka = insertelement <2 x double> %i.jz, double %i.jy, i64 1
  %i.kb = fadd nsz <2 x double> %i.ka, splat (double 7.000000e+01)
  %i.kc = fmul nsz <2 x double> %i.kb, splat (double 1.000000e+02)
  %i.kd = fptosi <2 x double> %i.kc to <2 x i32>
  %i.ke = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.kd, <2 x i32> zeroinitializer) ; 2 uses
  %i.kf = extractelement <2 x i32> %i.ke, i64 0
  %i.kg = call i32 @llvm.umin.i32(i32 %i.kf, i32 8000)
  %i.kh = zext nneg i32 %i.kg to i64
  %i.ki = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %i.kh ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !160
  %i.kk = add i32 %i.kj, 1
  store i32 %i.kk, ptr %i.ki, align 8, !tbaa !160
  %i.kl = extractelement <2 x i32> %i.ke, i64 1   ; 2 uses
  %i.km = call i32 @llvm.umin.i32(i32 %i.kl, i32 8000)
  %umin.i = zext nneg i32 %i.km to i64            ; 3 uses
  %i.kn = sub nsw i64 8001, %umin.i               ; 3 uses
  %xtraiter188 = and i64 %i.kn, 1
  %i.ko = icmp samesign ugt i32 %i.kl, 7999
  br i1 %i.ko, label %.epil.preheader187, label %.new

.new:                                             ; preds = %bb.ad
  %unroll_iter194 = and i64 %i.kn, -2
  br label %bb.af

.unr-lcssa:                                       ; preds = %bb.af
  %lcmp.mod190.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod190.not, label %bb.ae, label %.epil.preheader187

.epil.preheader187:                               ; preds = %.unr-lcssa, %bb.ad
  %indvars.iv549.i.epil.init = phi i64 [ %umin.i, %bb.ad ], [ %indvars.iv.next550.i.1, %.unr-lcssa ]
  %.0381468.i.epil.init = phi i64 [ 0, %bb.ad ], [ %i.lj, %.unr-lcssa ]
  %.0382467.i.epil.init = phi double [ 0.000000e+00, %bb.ad ], [ %i.ln, %.unr-lcssa ]
  %lcmp.mod193 = trunc i64 %i.kn to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %indvars.iv549.i.epil.init ; 2 uses
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !160 ; 2 uses
  %i.kr = zext i32 %i.kq to i64
  %i.ks = add i64 %.0381468.i.epil.init, %i.kr
  %i.kt = uitofp nsz i32 %i.kq to double
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !78
  %i.kw = call nsz double @llvm.fmuladd.f64(double %i.kt, double %i.kv, double %.0382467.i.epil.init)
  br label %bb.ae

bb.ae:                                            ; preds = %.unr-lcssa, %.epil.preheader187
  %.lcssa158 = phi i64 [ %i.lj, %.unr-lcssa ], [ %i.ks, %.epil.preheader187 ] ; 2 uses
  %.lcssa157 = phi double [ %i.ln, %.unr-lcssa ], [ %i.kw, %.epil.preheader187 ]
  %.not414.i = icmp eq i64 %.lcssa158, 0
  br i1 %.not414.i, label %bb.aj, label %bb.ag

bb.af:                                            ; preds = %bb.af, %.new
  %indvars.iv549.i = phi i64 [ %umin.i, %.new ], [ %indvars.iv.next550.i.1, %bb.af ] ; 3 uses
  %.0381468.i = phi i64 [ 0, %.new ], [ %i.lj, %bb.af ]
  %.0382467.i = phi double [ 0.000000e+00, %.new ], [ %i.ln, %bb.af ]
  %niter195 = phi i64 [ 0, %.new ], [ %niter195.next.1, %bb.af ]
  %i.kx = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %indvars.iv549.i ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !160 ; 2 uses
  %i.kz = zext i32 %i.ky to i64
  %i.la = add i64 %.0381468.i, %i.kz
  %i.lb = uitofp nsz i32 %i.ky to double
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !78
  %i.le = call nsz double @llvm.fmuladd.f64(double %i.lb, double %i.ld, double %.0382467.i)
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.jn, i64 %indvars.iv549.i ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = load i32, ptr %i.lg, align 8, !tbaa !160 ; 2 uses
  %i.li = zext i32 %i.lh to i64
  %i.lj = add i64 %i.la, %i.li                    ; 3 uses
  %i.lk = uitofp nsz i32 %i.lh to double
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !78
  %i.ln = call nsz double @llvm.fmuladd.f64(double %i.lk, double %i.lm, double %i.le) ; 3 uses
  %indvars.iv.next550.i.1 = add nuw nsw i64 %indvars.iv549.i, 2 ; 2 uses
  %niter195.next.1 = add i64 %niter195, 2         ; 2 uses
  %niter195.ncmp.1 = icmp eq i64 %niter195.next.1, %unroll_iter194
  br i1 %niter195.ncmp.1, label %.unr-lcssa, label %bb.af, !llvm.loop !122

bb.ag:                                            ; preds = %bb.ae
  %i.lo = uitofp nsz i64 %.lcssa158 to double
  %i.lp = fdiv nsz double %.lcssa157, %i.lo
  %i.lq = call nsz double @llvm.log10.f64(double %i.lp)
  %i.lr = call nsz double @llvm.fmuladd.f64(double %i.lq, double 1.000000e+01, double -6.910000e-01) ; 2 uses
  store double %i.lr, ptr %i.dx, align 8, !tbaa !46
  br i1 %i.dy, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.ls = load i32, ptr %i.dz, align 8, !tbaa !44
  %.not415.i = icmp eq i32 %i.ls, 0
  br i1 %.not415.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.lt = load double, ptr %i.ea, align 8, !tbaa !45
  %i.lu = fsub nsz double %i.lr, %i.lt
  store double %i.lu, ptr %i.dx, align 8, !tbaa !46
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ae, %bb.ac
  %i.lv = fcmp nsz ult double %i.jl, -7.000000e+01
  br i1 %i.lv, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lw = load ptr, ptr %i.eb, align 8, !tbaa !156 ; 9 uses
  %i.lx = load double, ptr %i.ec, align 8, !tbaa !157
  %i.ly = fadd nsz double %.1386.i, %i.lx         ; 2 uses
  store double %i.ly, ptr %i.ec, align 8, !tbaa !157
  %i.lz = load i32, ptr %i.ed, align 8, !tbaa !158
  %i.ma = add nsw i32 %i.lz, 1                    ; 2 uses
  store i32 %i.ma, ptr %i.ed, align 8, !tbaa !158
  %i.mb = sitofp nsz i32 %i.ma to double
  %i.mc = fdiv nsz double %i.ly, %i.mb            ; 2 uses
  %i.md = fcmp nsz une double %i.mc, 0.000000e+00
  %i.me = call nsz double @llvm.log10.f64(double %i.mc)
  %i.mf = call nsz double @llvm.fmuladd.f64(double %i.me, double 1.000000e+01, double -6.910000e-01)
  %i.mg = fadd nsz double %i.mf, -2.000000e+01
  %i.mh = select i1 %i.md, double %i.mg, double -1.406910e+02 ; 2 uses
  store double %i.mh, ptr %i.ee, align 8, !tbaa !159
  %i.mi = insertelement <2 x double> poison, double %i.jl, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.mh, i64 1
  %i.mk = fadd nsz <2 x double> %i.mj, splat (double 7.000000e+01)
  %i.ml = fmul nsz <2 x double> %i.mk, splat (double 1.000000e+02)
  %i.mm = fptosi <2 x double> %i.ml to <2 x i32>
  %i.mn = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.mm, <2 x i32> zeroinitializer) ; 2 uses
  %i.mo = extractelement <2 x i32> %i.mn, i64 0
  %i.mp = call i32 @llvm.umin.i32(i32 %i.mo, i32 8000)
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %i.mq ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !160
  %i.mt = add i32 %i.ms, 1
  store i32 %i.mt, ptr %i.mr, align 8, !tbaa !160
  %i.mu = extractelement <2 x i32> %i.mn, i64 1
  %i.mv = call i32 @llvm.umin.i32(i32 %i.mu, i32 8000) ; 2 uses
  %umin553.i = zext nneg i32 %i.mv to i64         ; 4 uses
  %i.mw = sub nsw i64 8001, %umin553.i            ; 2 uses
  %xtraiter199 = and i64 %i.mw, 3                 ; 3 uses
  %1 = add nsw i32 %i.mv, -7998
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %.epil.preheader198, label %.new196

.new196:                                          ; preds = %bb.ak
  %unroll_iter205 = and i64 %i.mw, -4
  br label %bb.am

.unr-lcssa197:                                    ; preds = %bb.am
  %lcmp.mod201.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %.epilog-lcssa202, label %.epil.preheader198

.epil.preheader198:                               ; preds = %.unr-lcssa197, %bb.ak
  %indvars.iv554.i.epil.init = phi i64 [ %umin553.i, %bb.ak ], [ %indvars.iv.next555.i.3, %.unr-lcssa197 ]
  %.0379470.i.epil.init = phi i64 [ 0, %bb.ak ], [ %i.nt, %.unr-lcssa197 ]
  %lcmp.mod204 = icmp ne i64 %xtraiter199, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.epil.preheader198
  %indvars.iv554.i.epil = phi i64 [ %indvars.iv554.i.epil.init, %.epil.preheader198 ], [ %indvars.iv.next555.i.epil, %bb.al ] ; 2 uses
  %.0379470.i.epil = phi i64 [ %.0379470.i.epil.init, %.epil.preheader198 ], [ %i.na, %bb.al ]
  %epil.iter200 = phi i64 [ 0, %.epil.preheader198 ], [ %epil.iter200.next, %bb.al ]
  %i.mx = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i.epil
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !160
  %i.mz = zext i32 %i.my to i64
  %i.na = add i64 %.0379470.i.epil, %i.mz         ; 2 uses
  %indvars.iv.next555.i.epil = add nuw nsw i64 %indvars.iv554.i.epil, 1
  %epil.iter200.next = add i64 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i64 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %.epilog-lcssa202, label %bb.al, !llvm.loop !123

.epilog-lcssa202:                                 ; preds = %bb.al, %.unr-lcssa197
  %.lcssa159 = phi i64 [ %i.nt, %.unr-lcssa197 ], [ %i.na, %bb.al ] ; 4 uses
  %.not416.i = icmp eq i64 %.lcssa159, 0
  br i1 %.not416.i, label %bb.av, label %bb.an

bb.am:                                            ; preds = %bb.am, %.new196
  %indvars.iv554.i = phi i64 [ %umin553.i, %.new196 ], [ %indvars.iv.next555.i.3, %bb.am ] ; 5 uses
  %.0379470.i = phi i64 [ 0, %.new196 ], [ %i.nt, %bb.am ]
  %niter206 = phi i64 [ 0, %.new196 ], [ %niter206.next.3, %bb.am ]
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !160
  %i.nd = zext i32 %i.nc to i64
  %i.ne = add i64 %.0379470.i, %i.nd
  %i.nf = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !160
  %i.ni = zext i32 %i.nh to i64
  %i.nj = add i64 %i.ne, %i.ni
  %i.nk = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !160
  %i.nn = zext i32 %i.nm to i64
  %i.no = add i64 %i.nj, %i.nn
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv554.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 72
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !160
  %i.ns = zext i32 %i.nr to i64
  %i.nt = add i64 %i.no, %i.ns                    ; 3 uses
  %indvars.iv.next555.i.3 = add nuw nsw i64 %indvars.iv554.i, 4 ; 2 uses
  %niter206.next.3 = add i64 %niter206, 4         ; 2 uses
  %niter206.ncmp.3 = icmp eq i64 %niter206.next.3, %unroll_iter205
  br i1 %niter206.ncmp.3, label %.unr-lcssa197, label %bb.am, !llvm.loop !124

bb.an:                                            ; preds = %.epilog-lcssa202
  %i.nu = mul i64 %.lcssa159, 10
  %i.nv = uitofp nsz i64 %i.nu to double
  %i.nw = call nsz double @llvm.fmuladd.f64(double %i.nv, double 1.000000e-02, double 5.000000e-01)
  %i.nx = fptoui double %i.nw to i64
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ap
  %indvars.iv.next559.i = add nuw nsw i64 %indvars.iv558.i, 1 ; 2 uses
  %exitcond561.not.i = icmp eq i64 %indvars.iv.next559.i, 8001
  br i1 %exitcond561.not.i, label %.loopexit443.i, label %bb.ap, !llvm.loop !125

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv558.i = phi i64 [ %umin553.i, %bb.an ], [ %indvars.iv.next559.i, %bb.ao ] ; 2 uses
  %.0376472.i = phi i64 [ 0, %bb.an ], [ %i.ob, %bb.ao ]
  %i.ny = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %indvars.iv558.i ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !160
  %i.oa = zext i32 %i.nz to i64
  %i.ob = add i64 %.0376472.i, %i.oa              ; 2 uses
  %.not417.i = icmp ult i64 %i.ob, %i.nx
  br i1 %.not417.i, label %bb.ao, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.od = load double, ptr %i.oc, align 8, !tbaa !79
  store double %i.od, ptr %i.ef, align 8, !tbaa !48
  br label %.loopexit443.i

.loopexit443.i:                                   ; preds = %bb.ao, %bb.aq
  %i.oe = mul i64 %.lcssa159, 95
  %i.of = uitofp nsz i64 %i.oe to double
  %i.og = call nsz double @llvm.fmuladd.f64(double %i.of, double 1.000000e-02, double 5.000000e-01)
  %i.oh = fptoui double %i.og to i64              ; 2 uses
  br label %bb.au

bb.ar:                                            ; preds = %bb.au
  %.not628.i = icmp eq i32 %.0374475.i, 0
  br i1 %.not628.i, label %.loopexit.loopexit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.oi = sext i32 %.0374475.i to i64
  %i.oj = getelementptr [24 x i8], ptr %i.lw, i64 %i.oi ; 2 uses
  %i.ok = getelementptr i8, ptr %i.oj, i64 -24
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !160
  %i.om = zext i32 %i.ol to i64
  %i.on = call i64 @llvm.usub.sat.i64(i64 %i.ou, i64 %i.om) ; 2 uses
  %i.oo = icmp ult i64 %i.on, %i.oh
  br i1 %i.oo, label %.split.loop.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.op = add nsw i32 %.0374475.i, -2
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit443.i
  %.0374475.i = phi i32 [ 8000, %.loopexit443.i ], [ %i.op, %bb.at ] ; 4 uses
  %.1377474.i = phi i64 [ %.lcssa159, %.loopexit443.i ], [ %i.on, %bb.at ]
  %i.oq = zext nneg i32 %.0374475.i to i64
  %i.or = getelementptr inbounds nuw [24 x i8], ptr %i.lw, i64 %i.oq ; 2 uses
  %i.os = load i32, ptr %i.or, align 8, !tbaa !160
  %i.ot = zext i32 %i.os to i64
  %i.ou = call i64 @llvm.usub.sat.i64(i64 %.1377474.i, i64 %i.ot) ; 2 uses
  %i.ov = icmp ult i64 %i.ou, %i.oh
  br i1 %i.ov, label %.split.loop.exit223, label %bb.ar

.split.loop.exit:                                 ; preds = %bb.as
  %i.ow = getelementptr i8, ptr %i.oj, i64 -24
  br label %.split.loop.exit223

.split.loop.exit223:                              ; preds = %bb.au, %.split.loop.exit
  %.lcssa162 = phi ptr [ %i.ow, %.split.loop.exit ], [ %i.or, %bb.au ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.lcssa162, i64 16
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !79 ; 2 uses
  store double %i.oy, ptr %i.eg, align 8, !tbaa !49
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.ar
  %.pre600.i = load double, ptr %i.eg, align 8, !tbaa !49
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.split.loop.exit223
  %i.oz = phi double [ %.pre600.i, %.loopexit.loopexit.i ], [ %i.oy, %.split.loop.exit223 ]
  %i.pa = load double, ptr %i.ef, align 8, !tbaa !48
  %i.pb = fsub nsz double %i.oz, %i.pa
  store double %i.pb, ptr %i.eh, align 8, !tbaa !47
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.i, %.epilog-lcssa202, %bb.aj
  br i1 %i.dy, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.pc = load i32, ptr %i.dz, align 8, !tbaa !44
  %.not418.i = icmp eq i32 %i.pc, 0
  br i1 %.not418.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.pd = load double, ptr %i.ea, align 8, !tbaa !45 ; 2 uses
  %i.pe = fsub nsz double %i.ie, %i.pd
  %i.pf = fsub nsz double %i.jl, %i.pd
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.0390.i = phi nsz double [ %i.pe, %bb.ax ], [ %i.ie, %bb.aw ], [ %i.ie, %bb.av ] ; 6 uses
  %.0389.i = phi nsz double [ %i.pf, %bb.ax ], [ %i.jl, %bb.aw ], [ %i.jl, %bb.av ] ; 6 uses
  %.not419.i = icmp eq i32 %i.gp, 0
  br i1 %.not419.i, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pg = load i32, ptr %i.ei, align 4, !tbaa !161
  %i.ph = icmp eq i32 %i.pg, 0
  %i.pi = load i32, ptr %i.ej, align 8, !tbaa !162
  %i.pj = sitofp nsz i32 %i.pi to double          ; 2 uses
  %i.pk = fsub nsz double %.0389.i, %i.pj         ; 2 uses
  %i.pl = fsub nsz double %.0390.i, %i.pj
  %.0368.i = select nsz i1 %i.ph, double %i.pl, double %i.pk
  %i.pm = load i32, ptr %i.ek, align 8, !tbaa !39
  %i.pn = shl nsw i32 %i.pm, 1
  %i.po = sitofp nsz i32 %i.pn to double
  %i.pp = load i32, ptr %i.el, align 4, !tbaa !40 ; 2 uses
  %i.pq = sitofp nsz i32 %i.pp to float
  %i.pr = load i32, ptr %i.em, align 4, !tbaa !80
  %i.ps = sitofp nsz i32 %i.pp to double
  %i.pt = sitofp nsz i32 %i.pr to double
  %i.pu = insertelement <2 x double> poison, double %i.pk, i64 0
  %i.pv = insertelement <2 x double> %i.pu, double %.0368.i, i64 1
  %i.pw = insertelement <2 x double> poison, double %i.po, i64 0
  %i.px = shufflevector <2 x double> %i.pw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.py = fadd nsz <2 x double> %i.pv, %i.px      ; 2 uses
  %i.pz = fptrunc <2 x double> %i.py to <2 x float>
  %i.qa = fcmp nsz ogt <2 x double> %i.py, splat (double f0x3690000000000000)
  %i.qb = select <2 x i1> %i.qa, <2 x float> %i.pz, <2 x float> zeroinitializer ; 2 uses
  %i.qc = insertelement <2 x float> poison, float %i.pq, i64 0
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qe = fcmp nsz ogt <2 x float> %i.qb, %i.qd
  %i.qf = select <2 x i1> %i.qe, <2 x float> %i.qd, <2 x float> %i.qb
  %i.qg = fpext <2 x float> %i.qf to <2 x double>
  %i.qh = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qj = fsub nsz <2 x double> %i.qi, %i.qg
  %i.qk = insertelement <2 x double> poison, double %i.pt, i64 0
  %i.ql = shufflevector <2 x double> %i.qk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qm = fmul nsz <2 x double> %i.qj, %i.ql
end_hunk_0
