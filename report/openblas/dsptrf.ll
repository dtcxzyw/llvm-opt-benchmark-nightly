Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsptrf?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dsptrf_:bb.a
  %i.gl = zext i32 %i.fv to i64                   ; 5 uses
  %i.gm = zext nneg i32 %i.fq to i64              ; 3 uses
  %i.gn = zext nneg i32 %i.fx to i64              ; 3 uses
  %invariant.gep757 = getelementptr [8 x i8], ptr %i.e, i64 %i.gn
  %invariant.gep759 = getelementptr [8 x i8], ptr %i.e, i64 %i.gm
  %invariant.gep753 = getelementptr [8 x i8], ptr %i.e, i64 %i.gm ; 2 uses
  %invariant.gep755 = getelementptr [8 x i8], ptr %i.e, i64 %i.gn ; 2 uses
  %i.go = shl nuw nsw i64 %i.gl, 3                ; 6 uses
  %i.gp = add nuw nsw i64 %i.gl, 4294967295
  %i.gq = mul i64 %i.gp, %i.gl
  %i.gr = shl nuw nsw i64 %i.gm, 3                ; 2 uses
  %i.gs = shl nuw nsw i64 %i.gn, 3                ; 2 uses
  %i.gt = getelementptr i8, ptr %2, i64 %i.gs
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.go
  %i.gv = getelementptr i8, ptr %2, i64 %i.gs
  %i.gw = getelementptr i8, ptr %i.gv, i64 -8
  %i.gx = getelementptr i8, ptr %i.gw, i64 %i.go
  %i.gy = getelementptr i8, ptr %2, i64 %i.gr
  %i.gz = getelementptr i8, ptr %i.gy, i64 %i.go
  %i.ha = getelementptr i8, ptr %2, i64 %i.gr
  %i.hb = getelementptr i8, ptr %i.ha, i64 -8
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.go
  %i.hd = getelementptr i8, ptr %2, i64 %i.go
  %i.he = getelementptr i8, ptr %2, i64 %i.go
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  br label %.lr.ph662

.lr.ph662:                                        ; preds = %.lr.ph662.preheader, %.loopexit842
  %scev.check.iv = phi i64 [ %i.gq, %.lr.ph662.preheader ], [ %scev.check.iv.next, %.loopexit842 ] ; 2 uses
  %indvar = phi i64 [ 0, %.lr.ph662.preheader ], [ %indvar.next, %.loopexit842 ] ; 3 uses
  %indvars.iv707 = phi i64 [ %i.gl, %.lr.ph662.preheader ], [ %indvars.iv.next708, %.loopexit842 ] ; 12 uses
  %i.hg = trunc i64 %indvars.iv707 to i32         ; 2 uses
  %smin787 = call i32 @llvm.smin.i32(i32 %i.hg, i32 1)
  %i.hh = sub i32 %i.hg, %smin787                 ; 2 uses
  %i.hi = zext i32 %i.hh to i64
  %i.hj = add nuw nsw i64 %i.hi, 1                ; 2 uses
  %i.hk = sub i64 %indvar, %i.gl
  %reass.sub843 = shl i64 %i.hk, 1
  %i.hl = add i64 %reass.sub843, -4294967294
  %gep758 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %indvars.iv707 ; 2 uses
  %i.hm = load double, ptr %gep758, align 8, !tbaa !9 ; 2 uses
  %gep760 = getelementptr [8 x i8], ptr %invariant.gep759, i64 %indvars.iv707 ; 2 uses
  %i.hn = load double, ptr %gep760, align 8, !tbaa !9 ; 2 uses
  %i.ho = fneg double %i.hn
  %i.hp = call double @llvm.fmuladd.f64(double %i.gh, double %i.hm, double %i.ho)
  %i.hq = fmul double %i.gk, %i.hp                ; 3 uses
  %i.hr = fneg double %i.hm
  %i.hs = call double @llvm.fmuladd.f64(double %i.gc, double %i.hn, double %i.hr)
  %i.ht = fmul double %i.gk, %i.hs                ; 3 uses
  %indvars.iv.next708 = add nsw i64 %indvars.iv707, -1
  %i.hu = add nuw i64 %indvars.iv707, 4294967295
  %i.hv = mul i64 %i.hu, %indvars.iv707
  %i.hw = lshr i64 %i.hv, 1
  %i.hx = and i64 %i.hw, 2147483647
  %invariant.gep = getelementptr [8 x i8], ptr %i.e, i64 %i.hx ; 2 uses
  %min.iters.check = icmp ult i32 %i.hh, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph662
  %i.hy = mul nsw i64 %indvar, -8                 ; 6 uses
  %scevgep783 = getelementptr i8, ptr %i.gu, i64 %i.hy
  %scevgep781 = getelementptr i8, ptr %i.gx, i64 %i.hy
  %i.hz = trunc i64 %indvars.iv707 to i32         ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.hz, i32 1)
  %i.ia = sub i32 %i.hz, %smin
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = mul nsw i64 %i.ib, -8                   ; 2 uses
  %scevgep782 = getelementptr i8, ptr %scevgep781, i64 %i.ic
  %scevgep780 = getelementptr i8, ptr %i.gz, i64 %i.hy
  %scevgep778 = getelementptr i8, ptr %i.hc, i64 %i.hy
  %scevgep779 = getelementptr i8, ptr %scevgep778, i64 %i.ic
  %scevgep776 = getelementptr i8, ptr %i.hd, i64 %i.hy
  %i.id = shl i64 %scev.check.iv, 2
  %i.ie = and i64 %i.id, 17179869176              ; 2 uses
  %scevgep777 = getelementptr i8, ptr %scevgep776, i64 %i.ie ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.hy
  %i.if = shl nuw nsw i64 %i.ib, 3
  %i.ig = sub nsw i64 %i.ie, %i.if
  %scevgep775 = getelementptr i8, ptr %scevgep, i64 %i.ig ; 2 uses
  %bound0 = icmp ult ptr %scevgep775, %scevgep780
  %bound1 = icmp ult ptr %scevgep779, %scevgep777
  %found.conflict = and i1 %bound0, %bound1
  %bound0784 = icmp ult ptr %scevgep775, %scevgep783
  %bound1785 = icmp ult ptr %scevgep782, %scevgep777
  %found.conflict786 = and i1 %bound0784, %bound1785
  %conflict.rdx = or i1 %found.conflict, %found.conflict786
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hj, 8589934584              ; 3 uses
  %i.ih = sub i64 %indvars.iv707, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.hq, i64 0 ; 2 uses
  %broadcast.splatinsert788 = insertelement <4 x double> poison, double %i.ht, i64 0 ; 2 uses
  %i.ii = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ij = shufflevector <4 x double> %broadcast.splatinsert788, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ik = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.il = shufflevector <4 x double> %broadcast.splatinsert788, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.im = sub i64 %indvars.iv707, %index          ; 3 uses
  %i.in = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.im ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 -24    ; 2 uses
  %i.ip = getelementptr i8, ptr %i.in, i64 -56    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.io, align 8, !tbaa !9, !alias.scope !16, !noalias !19
  %wide.load790 = load <4 x double>, ptr %i.ip, align 8, !tbaa !9, !alias.scope !16, !noalias !19
  %i.iq = getelementptr [8 x i8], ptr %invariant.gep753, i64 %i.im ; 2 uses
  %i.ir = getelementptr i8, ptr %i.iq, i64 -24
  %i.is = getelementptr i8, ptr %i.iq, i64 -56
  %wide.load792 = load <4 x double>, ptr %i.ir, align 8, !tbaa !9, !alias.scope !22
  %wide.load793 = load <4 x double>, ptr %i.is, align 8, !tbaa !9, !alias.scope !22
  %i.it = fneg <4 x double> %wide.load792
  %i.iu = fneg <4 x double> %wide.load793
  %i.iv = getelementptr [8 x i8], ptr %invariant.gep755, i64 %i.im ; 2 uses
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = getelementptr i8, ptr %i.iv, i64 -56
  %wide.load796 = load <4 x double>, ptr %i.iw, align 8, !tbaa !9, !alias.scope !23
  %wide.load797 = load <4 x double>, ptr %i.ix, align 8, !tbaa !9, !alias.scope !23
  %i.iy = fneg <4 x double> %wide.load796
  %i.iz = fneg <4 x double> %wide.load797
  %i.ja = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.it, <4 x double> %i.ij, <4 x double> %wide.load)
  %reverse800 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iy, <4 x double> %i.ii, <4 x double> %i.ja)
  %i.jb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iu, <4 x double> %i.il, <4 x double> %wide.load790)
  %reverse801 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iz, <4 x double> %i.ik, <4 x double> %i.jb)
  store <4 x double> %reverse800, ptr %i.io, align 8, !tbaa !9, !alias.scope !16, !noalias !19
  store <4 x double> %reverse801, ptr %i.ip, align 8, !tbaa !9, !alias.scope !16, !noalias !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jc = icmp eq i64 %index.next, %n.vec
  br i1 %i.jc, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hj, %n.vec
  br i1 %cmp.n, label %.loopexit842, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph662, %middle.block
  %indvars.iv709.ph = phi i64 [ %indvars.iv707, %vector.memcheck ], [ %indvars.iv707, %.lr.ph662 ], [ %i.ih, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %scalar.ph ], [ %indvars.iv709.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv709 ; 2 uses
  %i.jd = load double, ptr %gep, align 8, !tbaa !9
  %gep754 = getelementptr [8 x i8], ptr %invariant.gep753, i64 %indvars.iv709
  %i.je = load double, ptr %gep754, align 8, !tbaa !9
  %i.jf = fneg double %i.je
  %i.jg = call double @llvm.fmuladd.f64(double %i.jf, double %i.ht, double %i.jd)
  %gep756 = getelementptr [8 x i8], ptr %invariant.gep755, i64 %indvars.iv709
  %i.jh = load double, ptr %gep756, align 8, !tbaa !9
  %i.ji = fneg double %i.jh
  %i.jj = call double @llvm.fmuladd.f64(double %i.ji, double %i.hq, double %i.jg)
  store double %i.jj, ptr %gep, align 8, !tbaa !9
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, -1
  %i.jk = trunc nuw i64 %indvars.iv709 to i32
  %i.jl = icmp sgt i32 %i.jk, 1
  br i1 %i.jl, label %scalar.ph, label %.loopexit842, !llvm.loop !27

.loopexit842:                                     ; preds = %scalar.ph, %middle.block
  store double %i.ht, ptr %gep760, align 8, !tbaa !9
  store double %i.hq, ptr %gep758, align 8, !tbaa !9
  %i.jm = icmp samesign ugt i64 %indvars.iv707, 1
  %indvar.next = add i64 %indvar, 1
  %scev.check.iv.next = add i64 %scev.check.iv, %i.hl
  br i1 %i.jm, label %.lr.ph662, label %.loopexit647, !llvm.loop !28

bb.t:                                             ; preds = %.thread584, %bb.j, %bb.i
  %.1521.ph = phi i32 [ %.0530664, %bb.i ], [ %.0530664, %bb.j ], [ %.0520576583587, %.thread584 ]
  %i.jn = zext nneg i32 %.0530664 to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jn
  store i32 %.1521.ph, ptr %i.jo, align 4, !tbaa !8
  br label %bb.u

.loopexit647:                                     ; preds = %.loopexit842, %bb.s
  %i.jp = sub nsw i32 0, %.1541                   ; 2 uses
  %i.jq = zext nneg i32 %.0530664 to i64
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jq ; 2 uses
  store i32 %i.jp, ptr %i.jr, align 4, !tbaa !8
  %i.js = getelementptr i8, ptr %i.jr, i64 -4
  store i32 %i.jp, ptr %i.js, align 4, !tbaa !8
  br label %bb.u

bb.u:                                             ; preds = %.loopexit647, %bb.t
  %.1505601 = phi i32 [ %spec.select, %.loopexit647 ], [ %.0524667, %bb.t ]
  %.1527.neg598 = phi i32 [ -2, %.loopexit647 ], [ -1, %bb.t ]
  %i.jt = add nsw i32 %.1527.neg598, %.0530664    ; 3 uses
  %i.ju = sub nsw i32 %.1505601, %i.jt
  %i.jv = icmp slt i32 %i.jt, 1
  br i1 %i.jv, label %.loopexit646, label %.lr.ph669

bb.v:                                             ; preds = %bb.e
  %i.jw = add nuw nsw i32 %i.h, 1
  %i.jx = mul nuw nsw i32 %i.jw, %i.h
  %i.jy = lshr i32 %i.jx, 1
  %i.jz = icmp eq i32 %i.h, 0
  br i1 %i.jz, label %.loopexit646, label %.lr.ph698

.lr.ph698:                                        ; preds = %bb.v, %bb.ap
  %i.ka = phi i32 [ %i.wj, %bb.ap ], [ %i.h, %bb.v ] ; 2 uses
  %.1531.neg696 = phi i32 [ %.1531.neg, %bb.ap ], [ -1, %bb.v ] ; 5 uses
  %.1525694 = phi i32 [ %i.wm, %bb.ap ], [ 1, %bb.v ] ; 12 uses
  %.1531691 = phi i32 [ %i.wi, %bb.ap ], [ 1, %bb.v ] ; 31 uses
  %.2542690 = phi i32 [ %.3543, %bb.ap ], [ undef, %bb.v ]
  %i.kb = sext i32 %.1525694 to i64
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.kb ; 5 uses
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !9 ; 4 uses
  store double %i.kd, ptr %i.b, align 8, !tbaa !9
  %i.ke = fcmp oge double %i.kd, 0.000000e+00
  %i.kf = fneg double %i.kd
  %i.kg = select i1 %i.ke, double %i.kd, double %i.kf ; 4 uses
  %i.kh = icmp slt i32 %.1531691, %i.ka
  br i1 %i.kh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph698
  %i.ki = sub nsw i32 %i.ka, %.1531691
  store i32 %i.ki, ptr %i.a, align 4, !tbaa !8
  %i.kj = getelementptr i8, ptr %i.kc, i64 8
  %i.kk = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.kj, ptr noundef nonnull @c__1) #4
  %i.kl = add nsw i32 %i.kk, %.1531691            ; 2 uses
  %i.km = add i32 %.1525694, %.1531.neg696
  %i.kn = add i32 %i.km, %i.kl
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ko
  %i.kq = load double, ptr %i.kp, align 8, !tbaa !9 ; 4 uses
  store double %i.kq, ptr %i.b, align 8, !tbaa !9
  %i.kr = fcmp oge double %i.kq, 0.000000e+00
  %i.ks = fneg double %i.kq
  %i.kt = select i1 %i.kr, double %i.kq, double %i.ks
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph698, %bb.w
  %.3543 = phi i32 [ %i.kl, %bb.w ], [ %.2542690, %.lr.ph698 ] ; 19 uses
  %.1515 = phi double [ %i.kt, %bb.w ], [ 0.000000e+00, %.lr.ph698 ] ; 4 uses
  %i.ku = sub i32 0, %.3543                       ; 2 uses
  %i.kv = fcmp oge double %i.kg, %.1515
  %i.kw = select i1 %i.kv, double %i.kg, double %.1515
  %i.kx = fcmp oeq double %i.kw, 0.000000e+00
  br i1 %i.kx, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ky = load i32, ptr %4, align 4, !tbaa !8
  %i.kz = icmp eq i32 %i.ky, 0
  br i1 %i.kz, label %bb.z, label %bb.ao

bb.z:                                             ; preds = %bb.y
  store i32 %.1531691, ptr %4, align 4, !tbaa !8
  br label %bb.ao

bb.aa:                                            ; preds = %bb.x
  %i.la = fmul double %.1515, f0x3FE47E0F66AFED07 ; 2 uses
  %i.lb = fcmp ult double %i.kg, %i.la
  br i1 %i.lb, label %bb.ab, label %.thread620

bb.ab:                                            ; preds = %bb.aa
  %i.lc = add nsw i32 %.3543, -1                  ; 2 uses
  store i32 %i.lc, ptr %i.a, align 4, !tbaa !8
  %.not555.not670 = icmp slt i32 %.1531691, %.3543
  %.pre = load i32, ptr %1, align 4, !tbaa !8     ; 7 uses
  br i1 %.not555.not670, label %.lr.ph675, label %bb.ac

.lr.ph675:                                        ; preds = %bb.ab
  %i.ld = add i32 %.1525694, %.1531.neg696
  %i.le = add i32 %i.ld, %.3543                   ; 2 uses
  %i.lf = zext nneg i32 %.1531691 to i64          ; 4 uses
  %wide.trip.count716 = zext i32 %.3543 to i64    ; 3 uses
  %i.lg = sub nsw i64 %wide.trip.count716, %i.lf
  %xtraiter847 = and i64 %i.lg, 3                 ; 2 uses
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph675, %.prol.preheader
  %indvars.iv713.prol = phi i64 [ %indvars.iv.next714.prol, %.prol.preheader ], [ %i.lf, %.lr.ph675 ] ; 2 uses
  %.3511673.prol = phi double [ %.4512.prol, %.prol.preheader ], [ 0.000000e+00, %.lr.ph675 ] ; 2 uses
  %.2518672.prol = phi i32 [ %i.lr, %.prol.preheader ], [ %i.le, %.lr.ph675 ] ; 2 uses
  %prol.iter849 = phi i64 [ %prol.iter849.next, %.prol.preheader ], [ 0, %.lr.ph675 ]
  %i.lh = sext i32 %.2518672.prol to i64
  %i.li = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.lh
  %i.lj = load double, ptr %i.li, align 8, !tbaa !9 ; 5 uses
  %i.lk = call double @llvm.fabs.f64(double %i.lj)
  %i.ll = fcmp ogt double %i.lk, %.3511673.prol
  %i.lm = fcmp oge double %i.lj, 0.000000e+00
  %i.ln = fneg double %i.lj
  %i.lo = select i1 %i.lm, double %i.lj, double %i.ln
  %.4512.prol = select i1 %i.ll, double %i.lo, double %.3511673.prol ; 3 uses
  %i.lp = trunc nuw nsw i64 %indvars.iv713.prol to i32
  %i.lq = sub i32 %.2518672.prol, %i.lp
  %i.lr = add i32 %i.lq, %.pre                    ; 2 uses
  %indvars.iv.next714.prol = add nuw nsw i64 %indvars.iv713.prol, 1 ; 2 uses
  %prol.iter849.next = add i64 %prol.iter849, 1   ; 2 uses
  %prol.iter849.cmp.not = icmp eq i64 %prol.iter849.next, %xtraiter847
  br i1 %prol.iter849.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !29

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph675
  %.lcssa.unr = phi double [ poison, %.lr.ph675 ], [ %i.lj, %.prol.preheader ]
  %.4512.lcssa.unr = phi double [ poison, %.lr.ph675 ], [ %.4512.prol, %.prol.preheader ]
  %indvars.iv713.unr = phi i64 [ %i.lf, %.lr.ph675 ], [ %indvars.iv.next714.prol, %.prol.preheader ]
  %.3511673.unr = phi double [ 0.000000e+00, %.lr.ph675 ], [ %.4512.prol, %.prol.preheader ]
  %.2518672.unr = phi i32 [ %i.le, %.lr.ph675 ], [ %i.lr, %.prol.preheader ]
  %i.ls = sub nsw i64 %i.lf, %wide.trip.count716
  %i.lt = icmp ugt i64 %i.ls, -4
  br i1 %i.lt, label %._crit_edge676, label %.lr.ph675.new

.lr.ph675.new:                                    ; preds = %.prol.loopexit, %.lr.ph675.new
  %indvars.iv713 = phi i64 [ %indvars.iv.next714.3, %.lr.ph675.new ], [ %indvars.iv713.unr, %.prol.loopexit ] ; 5 uses
  %.3511673 = phi double [ %.4512.3, %.lr.ph675.new ], [ %.3511673.unr, %.prol.loopexit ] ; 2 uses
  %.2518672 = phi i32 [ %i.nn, %.lr.ph675.new ], [ %.2518672.unr, %.prol.loopexit ] ; 2 uses
  %i.lu = sext i32 %.2518672 to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.lu
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !9 ; 4 uses
  %i.lx = call double @llvm.fabs.f64(double %i.lw)
  %i.ly = fcmp ogt double %i.lx, %.3511673
  %i.lz = fcmp oge double %i.lw, 0.000000e+00
  %i.ma = fneg double %i.lw
  %i.mb = select i1 %i.lz, double %i.lw, double %i.ma
  %.4512 = select i1 %i.ly, double %i.mb, double %.3511673 ; 2 uses
  %i.mc = trunc nuw nsw i64 %indvars.iv713 to i32
  %i.md = sub i32 %.2518672, %i.mc
  %i.me = add i32 %i.md, %.pre                    ; 2 uses
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.mf
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !9 ; 4 uses
  %i.mi = call double @llvm.fabs.f64(double %i.mh)
  %i.mj = fcmp ogt double %i.mi, %.4512
  %i.mk = fcmp oge double %i.mh, 0.000000e+00
  %i.ml = fneg double %i.mh
  %i.mm = select i1 %i.mk, double %i.mh, double %i.ml
  %.4512.1 = select i1 %i.mj, double %i.mm, double %.4512 ; 2 uses
  %i.mn = trunc i64 %indvars.iv713 to i32
  %.neg855 = xor i32 %i.mn, -1
  %i.mo = add i32 %i.me, %.neg855
  %i.mp = add i32 %i.mo, %.pre                    ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.mq
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !9 ; 4 uses
  %i.mt = call double @llvm.fabs.f64(double %i.ms)
  %i.mu = fcmp ogt double %i.mt, %.4512.1
  %i.mv = fcmp oge double %i.ms, 0.000000e+00
  %i.mw = fneg double %i.ms
  %i.mx = select i1 %i.mv, double %i.ms, double %i.mw
  %.4512.2 = select i1 %i.mu, double %i.mx, double %.4512.1 ; 2 uses
  %i.my = trunc i64 %indvars.iv713 to i32
  %i.mz = add i32 %i.my, 2
  %i.na = sub i32 %i.mp, %i.mz
  %i.nb = add i32 %i.na, %.pre                    ; 2 uses
  %i.nc = sext i32 %i.nb to i64
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.nc
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !9 ; 5 uses
  %i.nf = call double @llvm.fabs.f64(double %i.ne)
  %i.ng = fcmp ogt double %i.nf, %.4512.2
  %i.nh = fcmp oge double %i.ne, 0.000000e+00
  %i.ni = fneg double %i.ne
  %i.nj = select i1 %i.nh, double %i.ne, double %i.ni
  %.4512.3 = select i1 %i.ng, double %i.nj, double %.4512.2 ; 2 uses
  %i.nk = trunc i64 %indvars.iv713 to i32
  %i.nl = add i32 %i.nk, 3
  %i.nm = sub i32 %i.nb, %i.nl
  %i.nn = add i32 %i.nm, %.pre
  %indvars.iv.next714.3 = add nuw nsw i64 %indvars.iv713, 4 ; 2 uses
  %exitcond717.not.3 = icmp eq i64 %indvars.iv.next714.3, %wide.trip.count716
  br i1 %exitcond717.not.3, label %._crit_edge676, label %.lr.ph675.new, !llvm.loop !30

._crit_edge676:                                   ; preds = %.lr.ph675.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.ne, %.lr.ph675.new ]
  %.4512.lcssa = phi double [ %.4512.lcssa.unr, %.prol.loopexit ], [ %.4512.3, %.lr.ph675.new ]
  store double %.lcssa, ptr %i.b, align 8, !tbaa !9
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge676, %bb.ab
  %.3511.lcssa = phi double [ %.4512.lcssa, %._crit_edge676 ], [ 0.000000e+00, %bb.ab ] ; 3 uses
  %i.no = sub nsw i32 %.pre, %.3543               ; 3 uses
  %i.np = add nsw i32 %i.no, 1
  %i.nq = add nsw i32 %i.no, 2
  %i.nr = mul nsw i32 %i.np, %i.nq
  %.neg = sdiv i32 %i.nr, -2
  %i.ns = add nsw i32 %.neg, %i.jy                ; 2 uses
  %i.nt = add nsw i32 %i.ns, 1                    ; 2 uses
  %i.nu = icmp slt i32 %.3543, %.pre
  br i1 %i.nu, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.no, ptr %i.a, align 4, !tbaa !8
  %i.nv = sext i32 %i.ns to i64
  %i.nw = getelementptr [8 x i8], ptr %i.e, i64 %i.nv
  %i.nx = getelementptr i8, ptr %i.nw, i64 16
  %i.ny = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.nx, ptr noundef nonnull @c__1) #4
  %i.nz = add i32 %i.ny, %i.nt
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.oa
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !9 ; 4 uses
  store double %i.oc, ptr %i.b, align 8, !tbaa !9
  %i.od = fcmp oge double %i.oc, 0.000000e+00
  %i.oe = fneg double %i.oc
  %i.of = select i1 %i.od, double %i.oc, double %i.oe ; 2 uses
  %i.og = fcmp oge double %.3511.lcssa, %i.of
  %i.oh = select i1 %i.og, double %.3511.lcssa, double %i.of
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.5513 = phi double [ %i.oh, %bb.ad ], [ %.3511.lcssa, %bb.ac ] ; 2 uses
  %i.oi = fdiv double %.1515, %.5513
  %i.oj = fmul double %i.la, %i.oi
  %i.ok = fcmp ult double %i.kg, %i.oj
end_hunk_0
begin_hunk_1_@dsptrf_:bb.a
  %i.oq = fcmp ult double %i.oo, %i.op            ; 3 uses
  %.568 = select i1 %i.oq, i32 2, i32 1
  %i.or = add nuw i32 %.568, %.1531691            ; 4 uses
  %i.os = add nsw i32 %i.or, -1                   ; 2 uses
  %.neg644 = sub i32 1, %i.or                     ; 3 uses
  br i1 %i.oq, label %bb.ag, label %.thread743

bb.ag:                                            ; preds = %bb.af
  %i.ot = load i32, ptr %1, align 4, !tbaa !8
  %i.ou = add i32 %.1531.neg696, 1
  %i.ov = add i32 %i.ou, %.1525694
  %i.ow = add i32 %i.ov, %i.ot                    ; 2 uses
  %.not556 = icmp eq i32 %.3543, %i.os
  br i1 %.not556, label %bb.al, label %bb.ah

.thread743:                                       ; preds = %bb.af
  %.not556745 = icmp eq i32 %.3543, %i.os
  br i1 %.not556745, label %.thread620, label %bb.ah

bb.ah:                                            ; preds = %.thread743, %bb.ag
  %.2506746 = phi i32 [ %.1525694, %.thread743 ], [ %i.ow, %bb.ag ] ; 6 uses
  %i.ox = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.oy = icmp slt i32 %.3543, %i.ox
  br i1 %i.oy, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.oz = sub nsw i32 %i.ox, %.3543
  store i32 %i.oz, ptr %i.a, align 4, !tbaa !8
  %i.pa = add i32 %.neg644, %.3543
  %i.pb = add i32 %i.pa, %.2506746
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr [8 x i8], ptr %i.e, i64 %i.pc
  %i.pe = getelementptr i8, ptr %i.pd, i64 8
  %i.pf = getelementptr i8, ptr %i.om, i64 8
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.pe, ptr noundef nonnull @c__1, ptr noundef %i.pf, ptr noundef nonnull @c__1) #4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 %i.lc, ptr %i.a, align 4, !tbaa !8
  %.not557.not679 = icmp slt i32 %i.or, %.3543
  br i1 %.not557.not679, label %.lr.ph683, label %._crit_edge684

.lr.ph683:                                        ; preds = %bb.aj
  %i.pg = add i32 %.neg644, %.3543
  %i.ph = add i32 %i.pg, %.2506746                ; 2 uses
  %i.pi = load i32, ptr %1, align 4, !tbaa !8
  %i.pj = add i32 %.2506746, %.neg644             ; 5 uses
  %i.pk = sext i32 %i.or to i64                   ; 4 uses
  %i.pl = sext i32 %.3543 to i64                  ; 3 uses
  %invariant.op = add i32 %i.pi, 1                ; 5 uses
  %i.pm = sub nsw i64 %i.pl, %i.pk
  %xtraiter852 = and i64 %i.pm, 3                 ; 2 uses
  %lcmp.mod853.not = icmp eq i64 %xtraiter852, 0
  br i1 %lcmp.mod853.not, label %.prol.loopexit851, label %.prol.preheader850

.prol.preheader850:                               ; preds = %.lr.ph683, %.prol.preheader850
  %indvars.iv718.prol = phi i64 [ %indvars.iv.next719.prol, %.prol.preheader850 ], [ %i.pk, %.lr.ph683 ] ; 2 uses
  %.3519681.prol = phi i32 [ %.reass.prol, %.prol.preheader850 ], [ %i.ph, %.lr.ph683 ]
  %prol.iter854 = phi i64 [ %prol.iter854.next, %.prol.preheader850 ], [ 0, %.lr.ph683 ]
  %i.pn = trunc nsw i64 %indvars.iv718.prol to i32 ; 2 uses
  %reass.sub699.prol = sub i32 %.3519681.prol, %i.pn
  %.reass.prol = add i32 %reass.sub699.prol, %invariant.op ; 3 uses
  %i.po = add i32 %i.pj, %i.pn
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pp ; 2 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !9
  %i.ps = sext i32 %.reass.prol to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ps ; 2 uses
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !9
  store double %i.pu, ptr %i.pq, align 8, !tbaa !9
  store double %i.pr, ptr %i.pt, align 8, !tbaa !9
  %indvars.iv.next719.prol = add nuw nsw i64 %indvars.iv718.prol, 1 ; 2 uses
  %prol.iter854.next = add i64 %prol.iter854, 1   ; 2 uses
  %prol.iter854.cmp.not = icmp eq i64 %prol.iter854.next, %xtraiter852
  br i1 %prol.iter854.cmp.not, label %.prol.loopexit851, label %.prol.preheader850, !llvm.loop !31

.prol.loopexit851:                                ; preds = %.prol.preheader850, %.lr.ph683
  %indvars.iv718.unr = phi i64 [ %i.pk, %.lr.ph683 ], [ %indvars.iv.next719.prol, %.prol.preheader850 ]
  %.3519681.unr = phi i32 [ %i.ph, %.lr.ph683 ], [ %.reass.prol, %.prol.preheader850 ]
  %i.pv = sub nsw i64 %i.pk, %i.pl
  %i.pw = icmp ugt i64 %i.pv, -4
  br i1 %i.pw, label %._crit_edge684, label %.lr.ph683.new

.lr.ph683.new:                                    ; preds = %.prol.loopexit851, %.lr.ph683.new
  %indvars.iv718 = phi i64 [ %indvars.iv.next719.3, %.lr.ph683.new ], [ %indvars.iv718.unr, %.prol.loopexit851 ] ; 5 uses
  %.3519681 = phi i32 [ %.reass.3, %.lr.ph683.new ], [ %.3519681.unr, %.prol.loopexit851 ]
  %i.px = trunc nsw i64 %indvars.iv718 to i32     ; 2 uses
  %reass.sub699 = sub i32 %.3519681, %i.px
  %.reass = add i32 %reass.sub699, %invariant.op  ; 2 uses
  %i.py = add i32 %i.pj, %i.px
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pz ; 2 uses
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !9
  %i.qc = sext i32 %.reass to i64
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qc ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !9
  store double %i.qe, ptr %i.qa, align 8, !tbaa !9
  store double %i.qb, ptr %i.qd, align 8, !tbaa !9
  %i.qf = trunc i64 %indvars.iv718 to i32
  %i.qg = add i32 %i.qf, 1                        ; 2 uses
  %reass.sub699.1 = sub i32 %.reass, %i.qg
  %.reass.1 = add i32 %reass.sub699.1, %invariant.op ; 2 uses
  %i.qh = add i32 %i.pj, %i.qg
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qi ; 2 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !9
  %i.ql = sext i32 %.reass.1 to i64
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ql ; 2 uses
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !9
  store double %i.qn, ptr %i.qj, align 8, !tbaa !9
  store double %i.qk, ptr %i.qm, align 8, !tbaa !9
  %i.qo = trunc i64 %indvars.iv718 to i32
  %i.qp = add i32 %i.qo, 2                        ; 2 uses
  %reass.sub699.2 = sub i32 %.reass.1, %i.qp
  %.reass.2 = add i32 %reass.sub699.2, %invariant.op ; 2 uses
  %i.qq = add i32 %i.pj, %i.qp
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qr ; 2 uses
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !9
  %i.qu = sext i32 %.reass.2 to i64
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qu ; 2 uses
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !9
  store double %i.qw, ptr %i.qs, align 8, !tbaa !9
  store double %i.qt, ptr %i.qv, align 8, !tbaa !9
  %i.qx = trunc i64 %indvars.iv718 to i32
  %i.qy = add i32 %i.qx, 3                        ; 2 uses
  %reass.sub699.3 = sub i32 %.reass.2, %i.qy
  %.reass.3 = add i32 %reass.sub699.3, %invariant.op ; 2 uses
  %i.qz = add i32 %i.pj, %i.qy
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ra ; 2 uses
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !9
  %i.rd = sext i32 %.reass.3 to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rd ; 2 uses
  %i.rf = load double, ptr %i.re, align 8, !tbaa !9
  store double %i.rf, ptr %i.rb, align 8, !tbaa !9
  store double %i.rc, ptr %i.re, align 8, !tbaa !9
  %indvars.iv.next719.3 = add nuw nsw i64 %indvars.iv718, 4 ; 2 uses
  %.not557.not.3 = icmp slt i64 %indvars.iv.next719.3, %i.pl
  br i1 %.not557.not.3, label %.lr.ph683.new, label %._crit_edge684, !llvm.loop !32

._crit_edge684:                                   ; preds = %.prol.loopexit851, %.lr.ph683.new, %bb.aj
  %i.rg = sext i32 %.2506746 to i64
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rg ; 2 uses
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !9
  %i.rj = load double, ptr %i.om, align 8, !tbaa !9
  store double %i.rj, ptr %i.rh, align 8, !tbaa !9
  store double %i.ri, ptr %i.om, align 8, !tbaa !9
  br i1 %i.oq, label %.split627, label %.thread620

.split627:                                        ; preds = %._crit_edge684
  %i.rk = getelementptr i8, ptr %i.kc, i64 8      ; 2 uses
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !9
  %i.rm = add i32 %.1525694, %.1531.neg696
  %i.rn = add i32 %i.rm, %.3543
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ro ; 2 uses
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !9
  store double %i.rq, ptr %i.rk, align 8, !tbaa !9
  store double %i.rl, ptr %i.rp, align 8, !tbaa !9
  br label %bb.al

.thread620:                                       ; preds = %.thread743, %._crit_edge684, %bb.aa, %bb.ae
  %.2522610618625 = phi i32 [ %.1531691, %bb.aa ], [ %.3543, %.thread743 ], [ %.1531691, %bb.ae ], [ %.3543, %._crit_edge684 ] ; 2 uses
  %.2506619624 = phi i32 [ %.1525694, %bb.aa ], [ %.1525694, %.thread743 ], [ %.1525694, %bb.ae ], [ %.2506746, %._crit_edge684 ] ; 2 uses
  %i.rr = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.rs = icmp slt i32 %.1531691, %i.rr
  br i1 %i.rs, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %.thread620
  %i.rt = load double, ptr %i.kc, align 8, !tbaa !9
  %i.ru = fdiv double 1.000000e+00, %i.rt         ; 2 uses
  store double %i.ru, ptr %i.c, align 8, !tbaa !9
  %i.rv = sub nsw i32 %i.rr, %.1531691
  store i32 %i.rv, ptr %i.a, align 4, !tbaa !8
  %i.rw = fneg double %i.ru
  store double %i.rw, ptr %i.b, align 8, !tbaa !9
  %i.rx = getelementptr i8, ptr %i.kc, i64 8      ; 2 uses
  %i.ry = add i32 %.1525694, %.1531.neg696
  %i.rz = add i32 %i.ry, %i.rr
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr [8 x i8], ptr %i.e, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 8
  call void @dspr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.rx, ptr noundef nonnull @c__1, ptr noundef %i.sc) #4
  %i.sd = load i32, ptr %1, align 4, !tbaa !8
  %i.se = sub nsw i32 %i.sd, %.1531691
  store i32 %i.se, ptr %i.a, align 4, !tbaa !8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.rx, ptr noundef nonnull @c__1) #4
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag, %.split627
  %.2506748 = phi i32 [ %.2506746, %.split627 ], [ %i.ow, %bb.ag ]
  %i.sf = load i32, ptr %1, align 4, !tbaa !8     ; 6 uses
  %i.sg = add nsw i32 %i.sf, -1
  %i.sh = icmp slt i32 %.1531691, %i.sg
  br i1 %i.sh, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.si = add nuw nsw i32 %.1531691, 1            ; 2 uses
  %i.sj = add nsw i32 %.1531691, -1
  %i.sk = shl i32 %i.sf, 1                        ; 5 uses
  %i.sl = sub nsw i32 %i.sk, %.1531691            ; 2 uses
  %i.sm = mul nsw i32 %i.sl, %i.sj
  %i.sn = sdiv i32 %i.sm, 2                       ; 3 uses
  %i.so = add nsw i32 %i.sn, %i.si
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.sp
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !9 ; 3 uses
  %i.ss = add nsw i32 %i.sl, -1
  %i.st = mul nsw i32 %i.ss, %.1531691
  %i.su = sdiv i32 %i.st, 2                       ; 2 uses
  %i.sv = add nsw i32 %i.su, %i.si
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.sw
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !9
  %i.sz = fdiv double %i.sy, %i.sr                ; 2 uses
  %i.ta = add nsw i32 %i.sn, %.1531691
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.tb
  %i.td = load double, ptr %i.tc, align 8, !tbaa !9
  %i.te = fdiv double %i.td, %i.sr                ; 2 uses
  %i.tf = call double @llvm.fmuladd.f64(double %i.sz, double %i.te, double -1.000000e+00)
  %i.tg = fdiv double 1.000000e+00, %i.tf
  %i.th = fdiv double %i.tg, %i.sr                ; 2 uses
  store i32 %i.sf, ptr %i.a, align 4, !tbaa !8
  %i.ti = add nuw nsw i32 %.1531691, 2            ; 2 uses
  %.not558686 = icmp sgt i32 %i.ti, %i.sf
  br i1 %.not558686, label %.loopexit, label %.lr.ph689

.lr.ph689:                                        ; preds = %bb.am
  %i.tj = xor i32 %.1531691, -1
  %i.tk = add i32 %i.sk, %i.tj
  %i.tl = mul nsw i32 %i.tk, %.1531691
  %i.tm = sdiv i32 %i.tl, 2
  %i.tn = zext nneg i32 %i.ti to i64
  %i.to = sext i32 %i.sn to i64                   ; 3 uses
  %i.tp = sext i32 %i.su to i64                   ; 3 uses
  %i.tq = sext i32 %i.sf to i64                   ; 3 uses
  %i.tr = sext i32 %i.tm to i64
  %i.ts = add i32 %i.sf, 1
  %invariant.gep767 = getelementptr [8 x i8], ptr %i.e, i64 %i.to
  %invariant.gep769 = getelementptr [8 x i8], ptr %i.e, i64 %i.tp
  %invariant.gep763 = getelementptr [8 x i8], ptr %i.e, i64 %i.to ; 2 uses
  %invariant.gep765 = getelementptr [8 x i8], ptr %i.e, i64 %i.tp ; 2 uses
  %invariant.gep771 = getelementptr [8 x i8], ptr %i.e, i64 %i.tr
  %i.tt = zext nneg i32 %.1531691 to i64          ; 2 uses
  %i.tu = shl nuw nsw i64 %i.tt, 3                ; 4 uses
  %5 = add i32 %i.sk, -2
  %6 = sub i32 %5, %.1531691
  %7 = add nuw i32 %.1531691, 1
  %8 = mul i32 %6, %7
  %9 = add i32 %i.sk, -4
  %i.tv = shl nsw i64 %i.to, 3
  %i.tw = shl nsw i64 %i.tp, 3
  %i.tx = xor i32 %.1531691, -1
  %i.ty = sext i32 %i.tx to i64
  %i.tz = getelementptr i8, ptr %2, i64 %i.tw
  %i.ua = getelementptr i8, ptr %i.tz, i64 16
  %i.ub = getelementptr i8, ptr %i.ua, i64 %i.tu
  %i.uc = getelementptr i8, ptr %2, i64 %i.tv
  %i.ud = getelementptr i8, ptr %i.uc, i64 16
  %i.ue = getelementptr i8, ptr %i.ud, i64 %i.tu
  %i.uf = getelementptr i8, ptr %2, i64 %i.tu
  %i.ug = getelementptr i8, ptr %i.uf, i64 16
  %i.uh = getelementptr i8, ptr %2, i64 %i.tu
  %i.ui = getelementptr i8, ptr %i.uh, i64 8
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph689, %.loopexit841
  %scev.check.iv806 = phi i32 [ %8, %.lr.ph689 ], [ %scev.check.iv.next807, %.loopexit841 ] ; 2 uses
  %indvar803 = phi i64 [ 0, %.lr.ph689 ], [ %indvar.next804, %.loopexit841 ] ; 5 uses
  %indvars.iv721 = phi i64 [ %i.tn, %.lr.ph689 ], [ %indvars.iv.next722, %.loopexit841 ] ; 12 uses
  %smax820 = call i64 @llvm.smax.i64(i64 %indvars.iv721, i64 %i.tq)
  %i.uj = sub i64 %i.ty, %indvar803
  %i.uk = add i64 %smax820, %i.uj                 ; 3 uses
  %indvar803.tr = trunc i64 %indvar803 to i32
  %10 = add i32 %.1531691, %indvar803.tr
  %11 = shl i32 %10, 1
  %12 = sub i32 %9, %11
  %indvars726 = trunc i64 %indvars.iv721 to i32
  %gep768 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %indvars.iv721 ; 3 uses
  %i.ul = load double, ptr %gep768, align 8, !tbaa !9 ; 2 uses
  %gep770 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %indvars.iv721 ; 2 uses
  %i.um = load double, ptr %gep770, align 8, !tbaa !9 ; 2 uses
  %i.un = fneg double %i.um
  %i.uo = call double @llvm.fmuladd.f64(double %i.sz, double %i.ul, double %i.un)
  %i.up = fmul double %i.th, %i.uo                ; 3 uses
  %i.uq = fneg double %i.ul
  %i.ur = call double @llvm.fmuladd.f64(double %i.te, double %i.um, double %i.uq)
  %i.us = fmul double %i.th, %i.ur                ; 3 uses
  %i.ut = sub nsw i32 %i.sk, %indvars726
  %i.uu = trunc i64 %indvars.iv721 to i32
  %i.uv = add i32 %i.uu, -1
  %i.uw = mul nsw i32 %i.uv, %i.ut
  %i.ux = sdiv i32 %i.uw, 2
  %i.uy = sext i32 %i.ux to i64
  %invariant.gep761 = getelementptr [8 x i8], ptr %i.e, i64 %i.uy ; 2 uses
  %min.iters.check822 = icmp ult i64 %i.uk, 8
  br i1 %min.iters.check822, label %scalar.ph821.preheader, label %vector.memcheck802

vector.memcheck802:                               ; preds = %bb.an
  %i.uz = shl nuw nsw i64 %indvar803, 3           ; 4 uses
  %scevgep811.a = getelementptr i8, ptr %i.ub, i64 %i.uz
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv721, i64 %i.tq)
  %i.va = add i64 %indvar803, %i.tt
  %reass.sub844 = sub i64 %smax, %i.va
  %i.vb = shl i64 %reass.sub844, 3
  %i.vc = add i64 %i.vb, -16                      ; 3 uses
  %scevgep812.a = getelementptr i8, ptr %scevgep811.a, i64 %i.vc
  %scevgep809.a = getelementptr i8, ptr %i.ue, i64 %i.uz
  %scevgep810.a = getelementptr i8, ptr %scevgep809.a, i64 %i.vc
  %scevgep807 = getelementptr i8, ptr %i.ug, i64 %i.uz
  %13 = sdiv i32 %scev.check.iv806, 2
  %14 = sext i32 %13 to i64
  %i.vd = shl nsw i64 %14, 3                      ; 2 uses
  %15 = getelementptr i8, ptr %scevgep807, i64 %i.vc
  %scevgep806 = getelementptr i8, ptr %15, i64 %i.vd ; 2 uses
  %i.ve = getelementptr i8, ptr %i.ui, i64 %i.uz
  %scevgep808 = getelementptr i8, ptr %i.ve, i64 %i.vd ; 2 uses
  %bound0813 = icmp ult ptr %scevgep808, %scevgep810.a
  %bound1814 = icmp ult ptr %gep768, %scevgep806
  %found.conflict815 = and i1 %bound0813, %bound1814
  %bound0816 = icmp ult ptr %scevgep808, %scevgep812.a
  %bound1817 = icmp ult ptr %gep770, %scevgep806
  %found.conflict818 = and i1 %bound0816, %bound1817
  %conflict.rdx819 = or i1 %found.conflict815, %found.conflict818
  br i1 %conflict.rdx819, label %scalar.ph821.preheader, label %vector.ph823

vector.ph823:                                     ; preds = %vector.memcheck802
  %n.vec824 = and i64 %i.uk, -8                   ; 3 uses
  %i.vf = add i64 %indvars.iv721, %n.vec824
  %broadcast.splatinsert825 = insertelement <4 x double> poison, double %i.up, i64 0
  %broadcast.splat826 = shufflevector <4 x double> %broadcast.splatinsert825, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert827 = insertelement <4 x double> poison, double %i.us, i64 0
  %broadcast.splat828 = shufflevector <4 x double> %broadcast.splatinsert827, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph823
  %index830 = phi i64 [ 0, %vector.ph823 ], [ %index.next837, %vector.body829 ] ; 2 uses
  %i.vg = add nuw i64 %indvars.iv721, %index830   ; 3 uses
  %i.vh = getelementptr [8 x i8], ptr %invariant.gep761, i64 %i.vg ; 3 uses
  %i.vi = getelementptr i8, ptr %i.vh, i64 32     ; 2 uses
  %wide.load831 = load <4 x double>, ptr %i.vh, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %wide.load832 = load <4 x double>, ptr %i.vi, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %i.vj = getelementptr [8 x i8], ptr %invariant.gep763, i64 %i.vg ; 2 uses
  %i.vk = getelementptr i8, ptr %i.vj, i64 32
  %wide.load833 = load <4 x double>, ptr %i.vj, align 8, !tbaa !9, !alias.scope !39
  %wide.load834 = load <4 x double>, ptr %i.vk, align 8, !tbaa !9, !alias.scope !39
  %i.vl = fneg <4 x double> %wide.load833
  %i.vm = fneg <4 x double> %wide.load834
  %i.vn = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vl, <4 x double> %broadcast.splat826, <4 x double> %wide.load831)
  %i.vo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vm, <4 x double> %broadcast.splat826, <4 x double> %wide.load832)
  %i.vp = getelementptr [8 x i8], ptr %invariant.gep765, i64 %i.vg ; 2 uses
  %i.vq = getelementptr i8, ptr %i.vp, i64 32
  %wide.load835 = load <4 x double>, ptr %i.vp, align 8, !tbaa !9, !alias.scope !40
  %wide.load836 = load <4 x double>, ptr %i.vq, align 8, !tbaa !9, !alias.scope !40
  %i.vr = fneg <4 x double> %wide.load835
  %i.vs = fneg <4 x double> %wide.load836
  %i.vt = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vr, <4 x double> %broadcast.splat828, <4 x double> %i.vn)
  %i.vu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vs, <4 x double> %broadcast.splat828, <4 x double> %i.vo)
  store <4 x double> %i.vt, ptr %i.vh, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  store <4 x double> %i.vu, ptr %i.vi, align 8, !tbaa !9, !alias.scope !33, !noalias !36
  %index.next837 = add nuw i64 %index830, 8       ; 2 uses
  %i.vv = icmp eq i64 %index.next837, %n.vec824
  br i1 %i.vv, label %middle.block838, label %vector.body829, !llvm.loop !41

middle.block838:                                  ; preds = %vector.body829
  %cmp.n839 = icmp eq i64 %i.uk, %n.vec824
  br i1 %cmp.n839, label %.loopexit841, label %scalar.ph821.preheader

scalar.ph821.preheader:                           ; preds = %vector.memcheck802, %bb.an, %middle.block838
  %indvars.iv723.ph = phi i64 [ %indvars.iv721, %vector.memcheck802 ], [ %indvars.iv721, %bb.an ], [ %i.vf, %middle.block838 ]
  br label %scalar.ph821

scalar.ph821:                                     ; preds = %scalar.ph821.preheader, %scalar.ph821
  %indvars.iv723 = phi i64 [ %indvars.iv.next724, %scalar.ph821 ], [ %indvars.iv723.ph, %scalar.ph821.preheader ] ; 5 uses
  %gep762 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %indvars.iv723 ; 2 uses
  %i.vw = load double, ptr %gep762, align 8, !tbaa !9
  %gep764 = getelementptr [8 x i8], ptr %invariant.gep763, i64 %indvars.iv723
  %i.vx = load double, ptr %gep764, align 8, !tbaa !9
  %i.vy = fneg double %i.vx
  %i.vz = call double @llvm.fmuladd.f64(double %i.vy, double %i.up, double %i.vw)
  %gep766 = getelementptr [8 x i8], ptr %invariant.gep765, i64 %indvars.iv723
  %i.wa = load double, ptr %gep766, align 8, !tbaa !9
  %i.wb = fneg double %i.wa
  %i.wc = call double @llvm.fmuladd.f64(double %i.wb, double %i.us, double %i.vz)
  store double %i.wc, ptr %gep762, align 8, !tbaa !9
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1
  %.not559.not = icmp slt i64 %indvars.iv723, %i.tq
  br i1 %.not559.not, label %scalar.ph821, label %.loopexit841, !llvm.loop !42

.loopexit841:                                     ; preds = %scalar.ph821, %middle.block838
  store double %i.up, ptr %gep768, align 8, !tbaa !9
  %gep772 = getelementptr [8 x i8], ptr %invariant.gep771, i64 %indvars.iv721
  store double %i.us, ptr %gep772, align 8, !tbaa !9
  %indvars.iv.next722 = add nuw nsw i64 %indvars.iv721, 1 ; 2 uses
  %lftr.wideiv727 = trunc i64 %indvars.iv.next722 to i32
  %exitcond728.not = icmp eq i32 %i.ts, %lftr.wideiv727
  %indvar.next804 = add i64 %indvar803, 1
  %scev.check.iv.next807 = add i32 %scev.check.iv806, %12
  br i1 %exitcond728.not, label %.loopexit, label %bb.an, !llvm.loop !43

bb.ao:                                            ; preds = %bb.ak, %.thread620, %bb.z, %bb.y
  %.3523.ph = phi i32 [ %.1531691, %bb.y ], [ %.1531691, %bb.z ], [ %.2522610618625, %.thread620 ], [ %.2522610618625, %bb.ak ]
  %.3507.ph = phi i32 [ %.1525694, %bb.y ], [ %.1525694, %bb.z ], [ %.2506619624, %.thread620 ], [ %.2506619624, %bb.ak ]
  %i.wd = zext nneg i32 %.1531691 to i64
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.wd
  store i32 %.3523.ph, ptr %i.we, align 4, !tbaa !8
  br label %bb.ap

.loopexit:                                        ; preds = %.loopexit841, %bb.am, %bb.al
  %i.wf = zext nneg i32 %.1531691 to i64
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.wf ; 2 uses
  store i32 %i.ku, ptr %i.wg, align 4, !tbaa !8
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 4
  store i32 %i.ku, ptr %i.wh, align 4, !tbaa !8
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %bb.ao
  %.3507640 = phi i32 [ %.2506748, %.loopexit ], [ %.3507.ph, %bb.ao ]
  %.3529637 = phi i32 [ 2, %.loopexit ], [ 1, %bb.ao ]
  %i.wi = add nuw nsw i32 %.3529637, %.1531691    ; 4 uses
  %i.wj = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.wk = add i32 %.3507640, 2
  %i.wl = add i32 %i.wk, %i.wj
  %i.wm = sub i32 %i.wl, %i.wi
  %.1531.neg = sub nsw i32 0, %i.wi
  %i.wn = icmp sgt i32 %i.wi, %i.wj
  br i1 %i.wn, label %.loopexit646, label %.lr.ph698

.loopexit646:                                     ; preds = %bb.u, %bb.ap, %bb.f, %bb.v, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @idamax_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dswap_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dspr_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dscal_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = !{!20}
!23 = !{!21}
!24 = distinct !{!24, !14, !25, !26}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !14, !25}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !14}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37, !38}
!37 = distinct !{!37, !35}
!38 = distinct !{!38, !35}
!39 = !{!37}
!40 = !{!38}
!41 = distinct !{!41, !14, !25, !26}
!42 = distinct !{!42, !14, !25}
!43 = distinct !{!43, !14}
end_hunk_1
