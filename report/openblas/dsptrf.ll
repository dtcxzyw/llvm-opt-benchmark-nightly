Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dsptrf?download=true
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@dsptrf_:bb.a
  %i.gl = zext i32 %i.fv to i64                   ; 5 uses
  %i.gm = zext nneg i32 %i.fq to i64              ; 3 uses
  %i.gn = zext nneg i32 %i.fx to i64              ; 3 uses
  %invariant.gep759 = getelementptr [8 x i8], ptr %i.e, i64 %i.gn
  %invariant.gep761 = getelementptr [8 x i8], ptr %i.e, i64 %i.gm
  %invariant.gep755 = getelementptr [8 x i8], ptr %i.e, i64 %i.gm ; 2 uses
  %invariant.gep757 = getelementptr [8 x i8], ptr %i.e, i64 %i.gn ; 2 uses
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
  %i.hh = sub i64 %indvar, %i.gl
  %reass.sub843 = shl i64 %i.hh, 1
  %i.hi = add i64 %reass.sub843, -4294967294
  %gep760 = getelementptr [8 x i8], ptr %invariant.gep759, i64 %indvars.iv707 ; 2 uses
  %i.hj = load double, ptr %gep760, align 8, !tbaa !31 ; 2 uses
  %gep762 = getelementptr [8 x i8], ptr %invariant.gep761, i64 %indvars.iv707 ; 2 uses
  %i.hk = load double, ptr %gep762, align 8, !tbaa !31 ; 2 uses
  %i.hl = fneg double %i.hk
  %i.hm = call double @llvm.fmuladd.f64(double %i.gh, double %i.hj, double %i.hl)
  %i.hn = fmul double %i.gk, %i.hm                ; 3 uses
  %i.ho = fneg double %i.hj
  %i.hp = call double @llvm.fmuladd.f64(double %i.gc, double %i.hk, double %i.ho)
  %i.hq = fmul double %i.gk, %i.hp                ; 3 uses
  %indvars.iv.next708 = add nsw i64 %indvars.iv707, -1
  %i.hr = add nuw i64 %indvars.iv707, 4294967295
  %i.hs = mul i64 %i.hr, %indvars.iv707
  %i.ht = lshr i64 %i.hs, 1
  %i.hu = and i64 %i.ht, 2147483647
  %invariant.gep = getelementptr [8 x i8], ptr %i.e, i64 %i.hu ; 2 uses
  %i.hv = call i32 @llvm.smin.i32(i32 %i.hg, i32 1)
  %i.hw = sub i32 %i.hg, %i.hv                    ; 2 uses
  %i.hx = zext i32 %i.hw to i64
  %i.hy = add nuw nsw i64 %i.hx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.hw, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph662
  %i.hz = mul nsw i64 %indvar, -8                 ; 6 uses
  %scevgep785 = getelementptr i8, ptr %i.gu, i64 %i.hz
  %scevgep783 = getelementptr i8, ptr %i.gx, i64 %i.hz
  %i.ia = trunc i64 %indvars.iv707 to i32         ; 2 uses
  %smin = call i32 @llvm.smin.i32(i32 %i.ia, i32 1)
  %i.ib = sub i32 %i.ia, %smin
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = mul nsw i64 %i.ic, -8                   ; 2 uses
  %scevgep784 = getelementptr i8, ptr %scevgep783, i64 %i.id
  %scevgep782 = getelementptr i8, ptr %i.gz, i64 %i.hz
  %scevgep780 = getelementptr i8, ptr %i.hc, i64 %i.hz
  %scevgep781 = getelementptr i8, ptr %scevgep780, i64 %i.id
  %scevgep778 = getelementptr i8, ptr %i.hd, i64 %i.hz
  %i.ie = shl i64 %scev.check.iv, 2
  %i.if = and i64 %i.ie, 17179869176              ; 2 uses
  %scevgep779 = getelementptr i8, ptr %scevgep778, i64 %i.if ; 2 uses
  %scevgep = getelementptr i8, ptr %i.hf, i64 %i.hz
  %i.ig = shl nuw nsw i64 %i.ic, 3
  %i.ih = sub nsw i64 %i.if, %i.ig
  %scevgep777 = getelementptr i8, ptr %scevgep, i64 %i.ih ; 2 uses
  %bound0 = icmp ult ptr %scevgep777, %scevgep782
  %bound1 = icmp ult ptr %scevgep781, %scevgep779
  %found.conflict = and i1 %bound0, %bound1
  %bound0786 = icmp ult ptr %scevgep777, %scevgep785
  %bound1787 = icmp ult ptr %scevgep784, %scevgep779
  %found.conflict788 = and i1 %bound0786, %bound1787
  %conflict.rdx = or i1 %found.conflict, %found.conflict788
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hy, 8589934584              ; 3 uses
  %i.ii = sub i64 %indvars.iv707, %n.vec
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.hn, i64 0 ; 2 uses
  %broadcast.splatinsert789 = insertelement <4 x double> poison, double %i.hq, i64 0 ; 2 uses
  %i.ij = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ik = shufflevector <4 x double> %broadcast.splatinsert789, <4 x double> poison, <4 x i32> zeroinitializer
  %i.il = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %i.im = shufflevector <4 x double> %broadcast.splatinsert789, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.in = sub i64 %indvars.iv707, %index          ; 3 uses
  %i.io = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.in ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 -24    ; 2 uses
  %i.iq = getelementptr i8, ptr %i.io, i64 -56    ; 2 uses
  %wide.load = load <4 x double>, ptr %i.ip, align 8, !tbaa !31, !alias.scope !34, !noalias !35
  %wide.load791 = load <4 x double>, ptr %i.iq, align 8, !tbaa !31, !alias.scope !34, !noalias !35
  %i.ir = getelementptr [8 x i8], ptr %invariant.gep755, i64 %i.in ; 2 uses
  %i.is = getelementptr i8, ptr %i.ir, i64 -24
  %i.it = getelementptr i8, ptr %i.ir, i64 -56
  %wide.load793 = load <4 x double>, ptr %i.is, align 8, !tbaa !31, !alias.scope !36
  %wide.load794 = load <4 x double>, ptr %i.it, align 8, !tbaa !31, !alias.scope !36
  %i.iu = fneg <4 x double> %wide.load793
  %i.iv = fneg <4 x double> %wide.load794
  %i.iw = getelementptr [8 x i8], ptr %invariant.gep757, i64 %i.in ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 -24
  %i.iy = getelementptr i8, ptr %i.iw, i64 -56
  %wide.load797 = load <4 x double>, ptr %i.ix, align 8, !tbaa !31, !alias.scope !37
  %wide.load798 = load <4 x double>, ptr %i.iy, align 8, !tbaa !31, !alias.scope !37
  %i.iz = fneg <4 x double> %wide.load797
  %i.ja = fneg <4 x double> %wide.load798
  %i.jb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iu, <4 x double> %i.ik, <4 x double> %wide.load)
  %reverse801 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iz, <4 x double> %i.ij, <4 x double> %i.jb)
  %i.jc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.iv, <4 x double> %i.im, <4 x double> %wide.load791)
  %reverse802 = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ja, <4 x double> %i.il, <4 x double> %i.jc)
  store <4 x double> %reverse801, ptr %i.ip, align 8, !tbaa !31, !alias.scope !34, !noalias !35
  store <4 x double> %reverse802, ptr %i.iq, align 8, !tbaa !31, !alias.scope !34, !noalias !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jd = icmp eq i64 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hy, %n.vec
  br i1 %cmp.n, label %.loopexit842, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph662, %middle.block
  %indvars.iv709.ph = phi i64 [ %indvars.iv707, %vector.memcheck ], [ %indvars.iv707, %.lr.ph662 ], [ %i.ii, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv709 = phi i64 [ %indvars.iv.next710, %scalar.ph ], [ %indvars.iv709.ph, %scalar.ph.preheader ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv709 ; 2 uses
  %i.je = load double, ptr %gep, align 8, !tbaa !31
  %gep756 = getelementptr [8 x i8], ptr %invariant.gep755, i64 %indvars.iv709
  %i.jf = load double, ptr %gep756, align 8, !tbaa !31
  %i.jg = fneg double %i.jf
  %i.jh = call double @llvm.fmuladd.f64(double %i.jg, double %i.hq, double %i.je)
  %gep758 = getelementptr [8 x i8], ptr %invariant.gep757, i64 %indvars.iv709
  %i.ji = load double, ptr %gep758, align 8, !tbaa !31
  %i.jj = fneg double %i.ji
  %i.jk = call double @llvm.fmuladd.f64(double %i.jj, double %i.hn, double %i.jh)
  store double %i.jk, ptr %gep, align 8, !tbaa !31
  %indvars.iv.next710 = add nsw i64 %indvars.iv709, -1
  %i.jl = trunc nuw i64 %indvars.iv709 to i32
  %i.jm = icmp sgt i32 %i.jl, 1
  br i1 %i.jm, label %scalar.ph, label %.loopexit842, !llvm.loop !16

.loopexit842:                                     ; preds = %scalar.ph, %middle.block
  store double %i.hq, ptr %gep762, align 8, !tbaa !31
  store double %i.hn, ptr %gep760, align 8, !tbaa !31
  %i.jn = icmp samesign ugt i64 %indvars.iv707, 1
  %indvar.next = add i64 %indvar, 1
  %scev.check.iv.next = add i64 %scev.check.iv, %i.hi
  br i1 %i.jn, label %.lr.ph662, label %.loopexit647, !llvm.loop !17

bb.t:                                             ; preds = %.thread584, %bb.j, %bb.i
  %.1521.ph = phi i32 [ %.0530664, %bb.i ], [ %.0530664, %bb.j ], [ %.0520576583587, %.thread584 ]
  %i.jo = zext nneg i32 %.0530664 to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jo
  store i32 %.1521.ph, ptr %i.jp, align 4, !tbaa !29
  br label %bb.u

.loopexit647:                                     ; preds = %.loopexit842, %bb.s
  %i.jq = sub nsw i32 0, %.1541                   ; 2 uses
  %i.jr = zext nneg i32 %.0530664 to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.jr ; 2 uses
  store i32 %i.jq, ptr %i.js, align 4, !tbaa !29
  %i.jt = getelementptr i8, ptr %i.js, i64 -4
  store i32 %i.jq, ptr %i.jt, align 4, !tbaa !29
  br label %bb.u

bb.u:                                             ; preds = %.loopexit647, %bb.t
  %.1505601 = phi i32 [ %spec.select, %.loopexit647 ], [ %.0524667, %bb.t ]
  %.1527.neg598 = phi i32 [ -2, %.loopexit647 ], [ -1, %bb.t ]
  %i.ju = add nsw i32 %.1527.neg598, %.0530664    ; 3 uses
  %i.jv = sub nsw i32 %.1505601, %i.ju
  %i.jw = icmp slt i32 %i.ju, 1
  br i1 %i.jw, label %.loopexit646, label %.lr.ph669

bb.v:                                             ; preds = %bb.e
  %i.jx = add nuw nsw i32 %i.h, 1
  %i.jy = mul nuw nsw i32 %i.jx, %i.h
  %i.jz = lshr i32 %i.jy, 1
  %i.ka = icmp eq i32 %i.h, 0
  br i1 %i.ka, label %.loopexit646, label %.lr.ph698

.lr.ph698:                                        ; preds = %bb.v, %bb.ap
  %i.kb = phi i32 [ %i.wb, %bb.ap ], [ %i.h, %bb.v ] ; 2 uses
  %.1531.neg696 = phi i32 [ %.1531.neg, %bb.ap ], [ -1, %bb.v ] ; 5 uses
  %.1525694 = phi i32 [ %i.we, %bb.ap ], [ 1, %bb.v ] ; 12 uses
  %.1531691 = phi i32 [ %i.wa, %bb.ap ], [ 1, %bb.v ] ; 28 uses
  %.2542690 = phi i32 [ %.3543, %bb.ap ], [ undef, %bb.v ]
  %i.kc = sext i32 %.1525694 to i64
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.kc ; 5 uses
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !31 ; 4 uses
  store double %i.ke, ptr %i.b, align 8, !tbaa !31
  %i.kf = fcmp oge double %i.ke, 0.000000e+00
  %i.kg = fneg double %i.ke
  %i.kh = select i1 %i.kf, double %i.ke, double %i.kg ; 4 uses
  %i.ki = icmp slt i32 %.1531691, %i.kb
  br i1 %i.ki, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph698
  %i.kj = sub nuw nsw i32 %i.kb, %.1531691
  store i32 %i.kj, ptr %i.a, align 4, !tbaa !29
  %i.kk = getelementptr i8, ptr %i.kd, i64 8
  %i.kl = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.kk, ptr noundef nonnull @c__1) #4
  %i.km = add nsw i32 %i.kl, %.1531691            ; 2 uses
  %i.kn = add i32 %.1525694, %.1531.neg696
  %i.ko = add i32 %i.kn, %i.km
  %i.kp = sext i32 %i.ko to i64
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.kp
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !31 ; 4 uses
  store double %i.kr, ptr %i.b, align 8, !tbaa !31
  %i.ks = fcmp oge double %i.kr, 0.000000e+00
  %i.kt = fneg double %i.kr
  %i.ku = select i1 %i.ks, double %i.kr, double %i.kt
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph698, %bb.w
  %.3543 = phi i32 [ %i.km, %bb.w ], [ %.2542690, %.lr.ph698 ] ; 19 uses
  %.1515 = phi double [ %i.ku, %bb.w ], [ 0.000000e+00, %.lr.ph698 ] ; 4 uses
  %i.kv = sub i32 0, %.3543                       ; 2 uses
  %i.kw = fcmp oge double %i.kh, %.1515
  %i.kx = select i1 %i.kw, double %i.kh, double %.1515
  %i.ky = fcmp oeq double %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.kz = load i32, ptr %4, align 4, !tbaa !29
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.z, label %bb.ao

bb.z:                                             ; preds = %bb.y
  store i32 %.1531691, ptr %4, align 4, !tbaa !29
  br label %bb.ao

bb.aa:                                            ; preds = %bb.x
  %i.lb = fmul double %.1515, f0x3FE47E0F66AFED07 ; 2 uses
  %i.lc = fcmp ult double %i.kh, %i.lb
  br i1 %i.lc, label %bb.ab, label %.thread620

bb.ab:                                            ; preds = %bb.aa
  %i.ld = add nsw i32 %.3543, -1                  ; 2 uses
  store i32 %i.ld, ptr %i.a, align 4, !tbaa !29
  %.not555.not670 = icmp slt i32 %.1531691, %.3543
  %.pre = load i32, ptr %1, align 4, !tbaa !29    ; 7 uses
  br i1 %.not555.not670, label %.lr.ph675, label %bb.ac

.lr.ph675:                                        ; preds = %bb.ab
  %i.le = add i32 %.1525694, %.1531.neg696
  %i.lf = add i32 %i.le, %.3543                   ; 2 uses
  %i.lg = zext nneg i32 %.1531691 to i64          ; 4 uses
  %wide.trip.count716 = zext i32 %.3543 to i64    ; 3 uses
  %i.lh = sub nsw i64 %wide.trip.count716, %i.lg
  %xtraiter847 = and i64 %i.lh, 3                 ; 2 uses
  %lcmp.mod848.not = icmp eq i64 %xtraiter847, 0
  br i1 %lcmp.mod848.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph675, %.prol.preheader
  %indvars.iv713.prol = phi i64 [ %indvars.iv.next714.prol, %.prol.preheader ], [ %i.lg, %.lr.ph675 ] ; 2 uses
  %.3511673.prol = phi double [ %.4512.prol, %.prol.preheader ], [ 0.000000e+00, %.lr.ph675 ] ; 2 uses
  %.2518672.prol = phi i32 [ %i.ls, %.prol.preheader ], [ %i.lf, %.lr.ph675 ] ; 2 uses
  %prol.iter849 = phi i64 [ %prol.iter849.next, %.prol.preheader ], [ 0, %.lr.ph675 ]
  %i.li = sext i32 %.2518672.prol to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.li
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !31 ; 5 uses
  %i.ll = call double @llvm.fabs.f64(double %i.lk)
  %i.lm = fcmp ogt double %i.ll, %.3511673.prol
  %i.ln = fcmp oge double %i.lk, 0.000000e+00
  %i.lo = fneg double %i.lk
  %i.lp = select i1 %i.ln, double %i.lk, double %i.lo
  %.4512.prol = select i1 %i.lm, double %i.lp, double %.3511673.prol ; 3 uses
  %i.lq = trunc nuw nsw i64 %indvars.iv713.prol to i32
  %i.lr = sub i32 %.2518672.prol, %i.lq
  %i.ls = add i32 %i.lr, %.pre                    ; 2 uses
  %indvars.iv.next714.prol = add nuw nsw i64 %indvars.iv713.prol, 1 ; 2 uses
  %prol.iter849.next = add i64 %prol.iter849, 1   ; 2 uses
  %prol.iter849.cmp.not = icmp eq i64 %prol.iter849.next, %xtraiter847
  br i1 %prol.iter849.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !18

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph675
  %.lcssa.unr = phi double [ poison, %.lr.ph675 ], [ %i.lk, %.prol.preheader ]
  %.4512.lcssa.unr = phi double [ poison, %.lr.ph675 ], [ %.4512.prol, %.prol.preheader ]
  %indvars.iv713.unr = phi i64 [ %i.lg, %.lr.ph675 ], [ %indvars.iv.next714.prol, %.prol.preheader ]
  %.3511673.unr = phi double [ 0.000000e+00, %.lr.ph675 ], [ %.4512.prol, %.prol.preheader ]
  %.2518672.unr = phi i32 [ %i.lf, %.lr.ph675 ], [ %i.ls, %.prol.preheader ]
  %i.lt = sub nsw i64 %i.lg, %wide.trip.count716
  %i.lu = icmp ugt i64 %i.lt, -4
  br i1 %i.lu, label %._crit_edge676, label %.lr.ph675.new

.lr.ph675.new:                                    ; preds = %.prol.loopexit, %.lr.ph675.new
  %indvars.iv713 = phi i64 [ %indvars.iv.next714.3, %.lr.ph675.new ], [ %indvars.iv713.unr, %.prol.loopexit ] ; 5 uses
  %.3511673 = phi double [ %.4512.3, %.lr.ph675.new ], [ %.3511673.unr, %.prol.loopexit ] ; 2 uses
  %.2518672 = phi i32 [ %i.no, %.lr.ph675.new ], [ %.2518672.unr, %.prol.loopexit ] ; 2 uses
  %i.lv = sext i32 %.2518672 to i64
  %i.lw = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.lv
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !31 ; 4 uses
  %i.ly = call double @llvm.fabs.f64(double %i.lx)
  %i.lz = fcmp ogt double %i.ly, %.3511673
  %i.ma = fcmp oge double %i.lx, 0.000000e+00
  %i.mb = fneg double %i.lx
  %i.mc = select i1 %i.ma, double %i.lx, double %i.mb
  %.4512 = select i1 %i.lz, double %i.mc, double %.3511673 ; 2 uses
  %i.md = trunc nuw nsw i64 %indvars.iv713 to i32
  %i.me = sub i32 %.2518672, %i.md
  %i.mf = add i32 %i.me, %.pre                    ; 2 uses
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.mg
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !31 ; 4 uses
  %i.mj = call double @llvm.fabs.f64(double %i.mi)
  %i.mk = fcmp ogt double %i.mj, %.4512
  %i.ml = fcmp oge double %i.mi, 0.000000e+00
  %i.mm = fneg double %i.mi
  %i.mn = select i1 %i.ml, double %i.mi, double %i.mm
  %.4512.1 = select i1 %i.mk, double %i.mn, double %.4512 ; 2 uses
  %i.mo = trunc i64 %indvars.iv713 to i32
  %.neg855 = xor i32 %i.mo, -1
  %i.mp = add i32 %i.mf, %.neg855
  %i.mq = add i32 %i.mp, %.pre                    ; 2 uses
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.mr
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !31 ; 4 uses
  %i.mu = call double @llvm.fabs.f64(double %i.mt)
  %i.mv = fcmp ogt double %i.mu, %.4512.1
  %i.mw = fcmp oge double %i.mt, 0.000000e+00
  %i.mx = fneg double %i.mt
  %i.my = select i1 %i.mw, double %i.mt, double %i.mx
  %.4512.2 = select i1 %i.mv, double %i.my, double %.4512.1 ; 2 uses
  %i.mz = trunc i64 %indvars.iv713 to i32
  %i.na = add i32 %i.mz, 2
  %i.nb = sub i32 %i.mq, %i.na
  %i.nc = add i32 %i.nb, %.pre                    ; 2 uses
  %i.nd = sext i32 %i.nc to i64
  %i.ne = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.nd
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !31 ; 5 uses
  %i.ng = call double @llvm.fabs.f64(double %i.nf)
  %i.nh = fcmp ogt double %i.ng, %.4512.2
  %i.ni = fcmp oge double %i.nf, 0.000000e+00
  %i.nj = fneg double %i.nf
  %i.nk = select i1 %i.ni, double %i.nf, double %i.nj
  %.4512.3 = select i1 %i.nh, double %i.nk, double %.4512.2 ; 2 uses
  %i.nl = trunc i64 %indvars.iv713 to i32
  %i.nm = add i32 %i.nl, 3
  %i.nn = sub i32 %i.nc, %i.nm
  %i.no = add i32 %i.nn, %.pre
  %indvars.iv.next714.3 = add nuw nsw i64 %indvars.iv713, 4 ; 2 uses
  %exitcond717.not.3 = icmp eq i64 %indvars.iv.next714.3, %wide.trip.count716
  br i1 %exitcond717.not.3, label %._crit_edge676, label %.lr.ph675.new, !llvm.loop !19

._crit_edge676:                                   ; preds = %.lr.ph675.new, %.prol.loopexit
  %.lcssa = phi double [ %.lcssa.unr, %.prol.loopexit ], [ %i.nf, %.lr.ph675.new ]
  %.4512.lcssa = phi double [ %.4512.lcssa.unr, %.prol.loopexit ], [ %.4512.3, %.lr.ph675.new ]
  store double %.lcssa, ptr %i.b, align 8, !tbaa !31
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge676, %bb.ab
  %.3511.lcssa = phi double [ %.4512.lcssa, %._crit_edge676 ], [ 0.000000e+00, %bb.ab ] ; 3 uses
  %i.np = sub nsw i32 %.pre, %.3543               ; 3 uses
  %i.nq = add nsw i32 %i.np, 1
  %i.nr = add nsw i32 %i.np, 2
  %i.ns = mul nsw i32 %i.nq, %i.nr
  %.neg = sdiv i32 %i.ns, -2
  %i.nt = add nsw i32 %.neg, %i.jz                ; 2 uses
  %i.nu = add nsw i32 %i.nt, 1                    ; 2 uses
  %i.nv = icmp slt i32 %.3543, %.pre
  br i1 %i.nv, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.np, ptr %i.a, align 4, !tbaa !29
  %i.nw = sext i32 %i.nt to i64
  %i.nx = getelementptr [8 x i8], ptr %i.e, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 16
  %i.nz = call i32 @idamax_(ptr noundef nonnull %i.a, ptr noundef %i.ny, ptr noundef nonnull @c__1) #4
  %i.oa = add i32 %i.nz, %i.nu
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ob
  %i.od = load double, ptr %i.oc, align 8, !tbaa !31 ; 4 uses
  store double %i.od, ptr %i.b, align 8, !tbaa !31
  %i.oe = fcmp oge double %i.od, 0.000000e+00
  %i.of = fneg double %i.od
  %i.og = select i1 %i.oe, double %i.od, double %i.of ; 2 uses
  %i.oh = fcmp oge double %.3511.lcssa, %i.og
  %i.oi = select i1 %i.oh, double %.3511.lcssa, double %i.og
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.5513 = phi double [ %i.oi, %bb.ad ], [ %.3511.lcssa, %bb.ac ] ; 2 uses
  %i.oj = fdiv double %.1515, %.5513
  %i.ok = fmul double %i.lb, %i.oj
  %i.ol = fcmp ult double %i.kh, %i.ok
end_hunk_0
begin_hunk_1_@dsptrf_:bb.a
  %i.oq = fmul double %.5513, f0x3FE47E0F66AFED07
  %i.or = fcmp ult double %i.op, %i.oq            ; 3 uses
  %.568 = select i1 %i.or, i32 2, i32 1
  %i.os = add nuw i32 %.568, %.1531691            ; 4 uses
  %i.ot = add nsw i32 %i.os, -1                   ; 2 uses
  %.neg644 = sub i32 1, %i.os                     ; 3 uses
  br i1 %i.or, label %bb.ag, label %.thread745

bb.ag:                                            ; preds = %bb.af
  %i.ou = load i32, ptr %1, align 4, !tbaa !29
  %i.ov = add i32 %.1531.neg696, 1
  %i.ow = add i32 %i.ov, %.1525694
  %i.ox = add i32 %i.ow, %i.ou                    ; 2 uses
  %.not556 = icmp eq i32 %.3543, %i.ot
  br i1 %.not556, label %bb.al, label %bb.ah

.thread745:                                       ; preds = %bb.af
  %.not556747 = icmp eq i32 %.3543, %i.ot
  br i1 %.not556747, label %.thread620, label %bb.ah

bb.ah:                                            ; preds = %.thread745, %bb.ag
  %.2506748 = phi i32 [ %.1525694, %.thread745 ], [ %i.ox, %bb.ag ] ; 6 uses
  %i.oy = load i32, ptr %1, align 4, !tbaa !29    ; 2 uses
  %i.oz = icmp slt i32 %.3543, %i.oy
  br i1 %i.oz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.pa = sub nsw i32 %i.oy, %.3543
  store i32 %i.pa, ptr %i.a, align 4, !tbaa !29
  %i.pb = add i32 %.neg644, %.3543
  %i.pc = add i32 %i.pb, %.2506748
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr [8 x i8], ptr %i.e, i64 %i.pd
  %i.pf = getelementptr i8, ptr %i.pe, i64 8
  %i.pg = getelementptr i8, ptr %i.on, i64 8
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.pf, ptr noundef nonnull @c__1, ptr noundef %i.pg, ptr noundef nonnull @c__1) #4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  store i32 %i.ld, ptr %i.a, align 4, !tbaa !29
  %.not557.not679 = icmp slt i32 %i.os, %.3543
  br i1 %.not557.not679, label %.lr.ph683, label %._crit_edge684

.lr.ph683:                                        ; preds = %bb.aj
  %i.ph = add i32 %.neg644, %.3543
  %i.pi = add i32 %i.ph, %.2506748                ; 2 uses
  %i.pj = load i32, ptr %1, align 4, !tbaa !29
  %i.pk = add i32 %.2506748, %.neg644             ; 5 uses
  %i.pl = sext i32 %i.os to i64                   ; 4 uses
  %wide.trip.count721 = sext i32 %.3543 to i64    ; 3 uses
  %invariant.op = add i32 %i.pj, 1                ; 5 uses
  %i.pm = sub nsw i64 %wide.trip.count721, %i.pl
  %xtraiter852 = and i64 %i.pm, 3                 ; 2 uses
  %lcmp.mod853.not = icmp eq i64 %xtraiter852, 0
  br i1 %lcmp.mod853.not, label %.prol.loopexit851, label %.prol.preheader850

.prol.preheader850:                               ; preds = %.lr.ph683, %.prol.preheader850
  %indvars.iv718.prol = phi i64 [ %indvars.iv.next719.prol, %.prol.preheader850 ], [ %i.pl, %.lr.ph683 ] ; 2 uses
  %.3519681.prol = phi i32 [ %.reass.prol, %.prol.preheader850 ], [ %i.pi, %.lr.ph683 ]
  %prol.iter854 = phi i64 [ %prol.iter854.next, %.prol.preheader850 ], [ 0, %.lr.ph683 ]
  %i.pn = trunc nsw i64 %indvars.iv718.prol to i32 ; 2 uses
  %reass.sub699.prol = sub i32 %.3519681.prol, %i.pn
  %.reass.prol = add i32 %reass.sub699.prol, %invariant.op ; 3 uses
  %i.po = add i32 %i.pk, %i.pn
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pp ; 2 uses
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !31
  %i.ps = sext i32 %.reass.prol to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ps ; 2 uses
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !31
  store double %i.pu, ptr %i.pq, align 8, !tbaa !31
  store double %i.pr, ptr %i.pt, align 8, !tbaa !31
  %indvars.iv.next719.prol = add nuw nsw i64 %indvars.iv718.prol, 1 ; 2 uses
  %prol.iter854.next = add i64 %prol.iter854, 1   ; 2 uses
  %prol.iter854.cmp.not = icmp eq i64 %prol.iter854.next, %xtraiter852
  br i1 %prol.iter854.cmp.not, label %.prol.loopexit851, label %.prol.preheader850, !llvm.loop !20

.prol.loopexit851:                                ; preds = %.prol.preheader850, %.lr.ph683
  %indvars.iv718.unr = phi i64 [ %i.pl, %.lr.ph683 ], [ %indvars.iv.next719.prol, %.prol.preheader850 ]
  %.3519681.unr = phi i32 [ %i.pi, %.lr.ph683 ], [ %.reass.prol, %.prol.preheader850 ]
  %i.pv = sub nsw i64 %i.pl, %wide.trip.count721
  %i.pw = icmp ugt i64 %i.pv, -4
  br i1 %i.pw, label %._crit_edge684, label %.lr.ph683.new

.lr.ph683.new:                                    ; preds = %.prol.loopexit851, %.lr.ph683.new
  %indvars.iv718 = phi i64 [ %indvars.iv.next719.3, %.lr.ph683.new ], [ %indvars.iv718.unr, %.prol.loopexit851 ] ; 5 uses
  %.3519681 = phi i32 [ %.reass.3, %.lr.ph683.new ], [ %.3519681.unr, %.prol.loopexit851 ]
  %i.px = trunc nsw i64 %indvars.iv718 to i32     ; 2 uses
  %reass.sub699 = sub i32 %.3519681, %i.px
  %.reass = add i32 %reass.sub699, %invariant.op  ; 2 uses
  %i.py = add i32 %i.pk, %i.px
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.pz ; 2 uses
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !31
  %i.qc = sext i32 %.reass to i64
  %i.qd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qc ; 2 uses
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !31
  store double %i.qe, ptr %i.qa, align 8, !tbaa !31
  store double %i.qb, ptr %i.qd, align 8, !tbaa !31
  %i.qf = trunc i64 %indvars.iv718 to i32
  %i.qg = add i32 %i.qf, 1                        ; 2 uses
  %reass.sub699.1 = sub i32 %.reass, %i.qg
  %.reass.1 = add i32 %reass.sub699.1, %invariant.op ; 2 uses
  %i.qh = add i32 %i.pk, %i.qg
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qi ; 2 uses
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !31
  %i.ql = sext i32 %.reass.1 to i64
  %i.qm = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ql ; 2 uses
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !31
  store double %i.qn, ptr %i.qj, align 8, !tbaa !31
  store double %i.qk, ptr %i.qm, align 8, !tbaa !31
  %i.qo = trunc i64 %indvars.iv718 to i32
  %i.qp = add i32 %i.qo, 2                        ; 2 uses
  %reass.sub699.2 = sub i32 %.reass.1, %i.qp
  %.reass.2 = add i32 %reass.sub699.2, %invariant.op ; 2 uses
  %i.qq = add i32 %i.pk, %i.qp
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qr ; 2 uses
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !31
  %i.qu = sext i32 %.reass.2 to i64
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.qu ; 2 uses
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !31
  store double %i.qw, ptr %i.qs, align 8, !tbaa !31
  store double %i.qt, ptr %i.qv, align 8, !tbaa !31
  %i.qx = trunc i64 %indvars.iv718 to i32
  %i.qy = add i32 %i.qx, 3                        ; 2 uses
  %reass.sub699.3 = sub i32 %.reass.2, %i.qy
  %.reass.3 = add i32 %reass.sub699.3, %invariant.op ; 2 uses
  %i.qz = add i32 %i.pk, %i.qy
  %i.ra = sext i32 %i.qz to i64
  %i.rb = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ra ; 2 uses
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !31
  %i.rd = sext i32 %.reass.3 to i64
  %i.re = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rd ; 2 uses
  %i.rf = load double, ptr %i.re, align 8, !tbaa !31
  store double %i.rf, ptr %i.rb, align 8, !tbaa !31
  store double %i.rc, ptr %i.re, align 8, !tbaa !31
  %indvars.iv.next719.3 = add nuw nsw i64 %indvars.iv718, 4 ; 2 uses
  %exitcond722.not.3 = icmp eq i64 %indvars.iv.next719.3, %wide.trip.count721
  br i1 %exitcond722.not.3, label %._crit_edge684, label %.lr.ph683.new, !llvm.loop !21

._crit_edge684:                                   ; preds = %.prol.loopexit851, %.lr.ph683.new, %bb.aj
  %i.rg = sext i32 %.2506748 to i64
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.rg ; 2 uses
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !31
  %i.rj = load double, ptr %i.on, align 8, !tbaa !31
  store double %i.rj, ptr %i.rh, align 8, !tbaa !31
  store double %i.ri, ptr %i.on, align 8, !tbaa !31
  br i1 %i.or, label %.split627, label %.thread620

.split627:                                        ; preds = %._crit_edge684
  %i.rk = getelementptr i8, ptr %i.kd, i64 8      ; 2 uses
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !31
  %i.rm = add i32 %.1525694, %.1531.neg696
  %i.rn = add i32 %i.rm, %.3543
  %i.ro = sext i32 %i.rn to i64
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ro ; 2 uses
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !31
  store double %i.rq, ptr %i.rk, align 8, !tbaa !31
  store double %i.rl, ptr %i.rp, align 8, !tbaa !31
  br label %bb.al

.thread620:                                       ; preds = %.thread745, %._crit_edge684, %bb.aa, %bb.ae
  %.2522610618625 = phi i32 [ %.1531691, %bb.aa ], [ %.3543, %.thread745 ], [ %.1531691, %bb.ae ], [ %.3543, %._crit_edge684 ] ; 2 uses
  %.2506619624 = phi i32 [ %.1525694, %bb.aa ], [ %.1525694, %.thread745 ], [ %.1525694, %bb.ae ], [ %.2506748, %._crit_edge684 ] ; 2 uses
  %i.rr = load i32, ptr %1, align 4, !tbaa !29    ; 3 uses
  %i.rs = icmp slt i32 %.1531691, %i.rr
  br i1 %i.rs, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %.thread620
  %i.rt = load double, ptr %i.kd, align 8, !tbaa !31
  %i.ru = fdiv double 1.000000e+00, %i.rt         ; 2 uses
  store double %i.ru, ptr %i.c, align 8, !tbaa !31
  %i.rv = sub nuw nsw i32 %i.rr, %.1531691
  store i32 %i.rv, ptr %i.a, align 4, !tbaa !29
  %i.rw = fneg double %i.ru
  store double %i.rw, ptr %i.b, align 8, !tbaa !31
  %i.rx = getelementptr i8, ptr %i.kd, i64 8      ; 2 uses
  %i.ry = add i32 %.1525694, %.1531.neg696
  %i.rz = add i32 %i.ry, %i.rr
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr [8 x i8], ptr %i.e, i64 %i.sa
  %i.sc = getelementptr i8, ptr %i.sb, i64 8
  call void @dspr_(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.rx, ptr noundef nonnull @c__1, ptr noundef %i.sc) #4
  %i.sd = load i32, ptr %1, align 4, !tbaa !29
  %i.se = sub nsw i32 %i.sd, %.1531691
  store i32 %i.se, ptr %i.a, align 4, !tbaa !29
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %i.rx, ptr noundef nonnull @c__1) #4
  br label %bb.ao

bb.al:                                            ; preds = %bb.ag, %.split627
  %.2506750 = phi i32 [ %.2506748, %.split627 ], [ %i.ox, %bb.ag ]
  %i.sf = load i32, ptr %1, align 4, !tbaa !29    ; 6 uses
  %i.sg = add nsw i32 %i.sf, -1
  %i.sh = icmp slt i32 %.1531691, %i.sg
  br i1 %i.sh, label %bb.am, label %.loopexit

bb.am:                                            ; preds = %bb.al
  %i.si = add nuw nsw i32 %.1531691, 1            ; 2 uses
  %5 = add nsw i32 %.1531691, -1
  %i.sj = shl i32 %i.sf, 1                        ; 3 uses
  %i.sk = sub nsw i32 %i.sj, %.1531691            ; 2 uses
  %6 = mul nsw i32 %i.sk, %5
  %7 = sdiv i32 %6, 2                             ; 3 uses
  %8 = add nsw i32 %7, %i.si
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x i8], ptr %i.e, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !31  ; 3 uses
  %i.sl = add nsw i32 %i.sk, -1
  %12 = mul nsw i32 %i.sl, %.1531691
  %13 = sdiv i32 %12, 2                           ; 2 uses
  %i.sm = add nsw i32 %13, %i.si
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.sn
  %i.sp = load double, ptr %i.so, align 8, !tbaa !31
  %i.sq = fdiv double %i.sp, %11                  ; 2 uses
  %i.sr = add nsw i32 %7, %.1531691
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ss
  %i.su = load double, ptr %i.st, align 8, !tbaa !31
  %i.sv = fdiv double %i.su, %11                  ; 2 uses
  %i.sw = call double @llvm.fmuladd.f64(double %i.sq, double %i.sv, double -1.000000e+00)
  %i.sx = fdiv double 1.000000e+00, %i.sw
  %i.sy = fdiv double %i.sx, %11                  ; 2 uses
  store i32 %i.sf, ptr %i.a, align 4, !tbaa !29
  %i.sz = add nuw nsw i32 %.1531691, 2            ; 2 uses
  %.not558686 = icmp sgt i32 %i.sz, %i.sf
  br i1 %.not558686, label %.loopexit, label %.lr.ph689

.lr.ph689:                                        ; preds = %bb.am
  %i.ta = xor i32 %.1531691, -1
  %i.tb = add i32 %i.sj, %i.ta
  %i.tc = mul nsw i32 %i.tb, %.1531691
  %i.td = sdiv i32 %i.tc, 2
  %i.te = zext nneg i32 %i.sz to i64
  %i.tf = sext i32 %7 to i64                      ; 3 uses
  %i.tg = sext i32 %13 to i64                     ; 3 uses
  %i.th = sext i32 %i.sf to i64                   ; 3 uses
  %i.ti = sext i32 %i.td to i64
  %i.tj = add i32 %i.sf, 1
  %invariant.gep769 = getelementptr [8 x i8], ptr %i.e, i64 %i.tf
  %invariant.gep771 = getelementptr [8 x i8], ptr %i.e, i64 %i.tg
  %invariant.gep765 = getelementptr [8 x i8], ptr %i.e, i64 %i.tf ; 2 uses
  %invariant.gep767 = getelementptr [8 x i8], ptr %i.e, i64 %i.tg ; 2 uses
  %invariant.gep773 = getelementptr [8 x i8], ptr %i.e, i64 %i.ti
  %i.tk = zext nneg i32 %.1531691 to i64          ; 2 uses
  %i.tl = shl nuw nsw i64 %i.tk, 3                ; 4 uses
  %i.tm = shl nsw i64 %i.tf, 3
  %i.tn = shl nsw i64 %i.tg, 3
  %i.to = xor i32 %.1531691, -1
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr i8, ptr %2, i64 %i.tn
  %i.tr = getelementptr i8, ptr %i.tq, i64 16
  %i.ts = getelementptr i8, ptr %i.tr, i64 %i.tl
  %i.tt = getelementptr i8, ptr %2, i64 %i.tm
  %i.tu = getelementptr i8, ptr %i.tt, i64 16
  %i.tv = getelementptr i8, ptr %i.tu, i64 %i.tl
  %i.tw = getelementptr i8, ptr %2, i64 %i.tl
  %i.tx = getelementptr i8, ptr %i.tw, i64 16
  %i.ty = getelementptr i8, ptr %2, i64 %i.tl
  %i.tz = getelementptr i8, ptr %i.ty, i64 8
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph689, %.loopexit841
  %indvar804 = phi i64 [ 0, %.lr.ph689 ], [ %indvar.next805, %.loopexit841 ] ; 4 uses
  %indvars.iv723 = phi i64 [ %i.te, %.lr.ph689 ], [ %indvars.iv.next724, %.loopexit841 ] ; 12 uses
  %i.ua = sub i64 %i.tp, %indvar804
  %indvars728 = trunc i64 %indvars.iv723 to i32
  %gep770 = getelementptr [8 x i8], ptr %invariant.gep769, i64 %indvars.iv723 ; 3 uses
  %i.ub = load double, ptr %gep770, align 8, !tbaa !31 ; 2 uses
  %gep772 = getelementptr [8 x i8], ptr %invariant.gep771, i64 %indvars.iv723 ; 2 uses
  %i.uc = load double, ptr %gep772, align 8, !tbaa !31 ; 2 uses
  %i.ud = fneg double %i.uc
  %i.ue = call double @llvm.fmuladd.f64(double %i.sq, double %i.ub, double %i.ud)
  %i.uf = fmul double %i.sy, %i.ue                ; 3 uses
  %i.ug = fneg double %i.ub
  %i.uh = call double @llvm.fmuladd.f64(double %i.sv, double %i.uc, double %i.ug)
  %i.ui = fmul double %i.sy, %i.uh                ; 3 uses
  %i.uj = sub nsw i32 %i.sj, %indvars728
  %i.uk = trunc i64 %indvars.iv723 to i32
  %i.ul = add i32 %i.uk, -1
  %i.um = mul nsw i32 %i.ul, %i.uj
  %i.un = sdiv i32 %i.um, 2
  %i.uo = sext i32 %i.un to i64                   ; 2 uses
  %invariant.gep763 = getelementptr [8 x i8], ptr %i.e, i64 %i.uo ; 2 uses
  %i.up = call i64 @llvm.smax.i64(i64 %indvars.iv723, i64 %i.th)
  %i.uq = add i64 %i.up, %i.ua                    ; 3 uses
  %min.iters.check822 = icmp ult i64 %i.uq, 8
  br i1 %min.iters.check822, label %scalar.ph821.preheader, label %vector.memcheck803

vector.memcheck803:                               ; preds = %bb.an
  %i.ur = shl nuw nsw i64 %indvar804, 3           ; 4 uses
  %scevgep812 = getelementptr i8, ptr %i.ts, i64 %i.ur
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv723, i64 %i.th)
  %i.us = add i64 %indvar804, %i.tk
  %reass.sub844 = sub i64 %smax, %i.us
  %i.ut = shl i64 %reass.sub844, 3
  %i.uu = add i64 %i.ut, -16                      ; 3 uses
  %scevgep813 = getelementptr i8, ptr %scevgep812, i64 %i.uu
  %scevgep810 = getelementptr i8, ptr %i.tv, i64 %i.ur
  %scevgep811 = getelementptr i8, ptr %scevgep810, i64 %i.uu
  %scevgep808 = getelementptr i8, ptr %i.tx, i64 %i.ur
  %scevgep806 = getelementptr i8, ptr %i.tz, i64 %i.ur
  %i.uv = shl nsw i64 %i.uo, 3                    ; 2 uses
  %scevgep807 = getelementptr i8, ptr %scevgep806, i64 %i.uv ; 2 uses
  %i.uw = getelementptr i8, ptr %scevgep808, i64 %i.uu
  %scevgep809 = getelementptr i8, ptr %i.uw, i64 %i.uv ; 2 uses
  %bound0814 = icmp ult ptr %scevgep807, %scevgep811
  %bound1815 = icmp ult ptr %gep770, %scevgep809
  %found.conflict816 = and i1 %bound0814, %bound1815
  %bound0817 = icmp ult ptr %scevgep807, %scevgep813
  %bound1818 = icmp ult ptr %gep772, %scevgep809
  %found.conflict819 = and i1 %bound0817, %bound1818
  %conflict.rdx820 = or i1 %found.conflict816, %found.conflict819
  br i1 %conflict.rdx820, label %scalar.ph821.preheader, label %vector.ph823

vector.ph823:                                     ; preds = %vector.memcheck803
  %n.vec824 = and i64 %i.uq, -8                   ; 3 uses
  %i.ux = add i64 %indvars.iv723, %n.vec824
  %broadcast.splatinsert825 = insertelement <4 x double> poison, double %i.uf, i64 0
  %broadcast.splat826 = shufflevector <4 x double> %broadcast.splatinsert825, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert827 = insertelement <4 x double> poison, double %i.ui, i64 0
  %broadcast.splat828 = shufflevector <4 x double> %broadcast.splatinsert827, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body829

vector.body829:                                   ; preds = %vector.body829, %vector.ph823
  %index830 = phi i64 [ 0, %vector.ph823 ], [ %index.next837, %vector.body829 ] ; 2 uses
  %i.uy = add nuw i64 %indvars.iv723, %index830   ; 3 uses
  %i.uz = getelementptr [8 x i8], ptr %invariant.gep763, i64 %i.uy ; 3 uses
  %i.va = getelementptr i8, ptr %i.uz, i64 32     ; 2 uses
  %wide.load831 = load <4 x double>, ptr %i.uz, align 8, !tbaa !31, !alias.scope !40, !noalias !41
  %wide.load832 = load <4 x double>, ptr %i.va, align 8, !tbaa !31, !alias.scope !40, !noalias !41
  %i.vb = getelementptr [8 x i8], ptr %invariant.gep765, i64 %i.uy ; 2 uses
  %i.vc = getelementptr i8, ptr %i.vb, i64 32
  %wide.load833 = load <4 x double>, ptr %i.vb, align 8, !tbaa !31, !alias.scope !42
  %wide.load834 = load <4 x double>, ptr %i.vc, align 8, !tbaa !31, !alias.scope !42
  %i.vd = fneg <4 x double> %wide.load833
  %i.ve = fneg <4 x double> %wide.load834
  %i.vf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vd, <4 x double> %broadcast.splat826, <4 x double> %wide.load831)
  %i.vg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ve, <4 x double> %broadcast.splat826, <4 x double> %wide.load832)
  %i.vh = getelementptr [8 x i8], ptr %invariant.gep767, i64 %i.uy ; 2 uses
  %i.vi = getelementptr i8, ptr %i.vh, i64 32
  %wide.load835 = load <4 x double>, ptr %i.vh, align 8, !tbaa !31, !alias.scope !43
  %wide.load836 = load <4 x double>, ptr %i.vi, align 8, !tbaa !31, !alias.scope !43
  %i.vj = fneg <4 x double> %wide.load835
  %i.vk = fneg <4 x double> %wide.load836
  %i.vl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vj, <4 x double> %broadcast.splat828, <4 x double> %i.vf)
  %i.vm = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.vk, <4 x double> %broadcast.splat828, <4 x double> %i.vg)
  store <4 x double> %i.vl, ptr %i.uz, align 8, !tbaa !31, !alias.scope !40, !noalias !41
  store <4 x double> %i.vm, ptr %i.va, align 8, !tbaa !31, !alias.scope !40, !noalias !41
  %index.next837 = add nuw i64 %index830, 8       ; 2 uses
  %i.vn = icmp eq i64 %index.next837, %n.vec824
  br i1 %i.vn, label %middle.block838, label %vector.body829, !llvm.loop !26

middle.block838:                                  ; preds = %vector.body829
  %cmp.n839 = icmp eq i64 %i.uq, %n.vec824
  br i1 %cmp.n839, label %.loopexit841, label %scalar.ph821.preheader

scalar.ph821.preheader:                           ; preds = %vector.memcheck803, %bb.an, %middle.block838
  %indvars.iv725.ph = phi i64 [ %indvars.iv723, %vector.memcheck803 ], [ %indvars.iv723, %bb.an ], [ %i.ux, %middle.block838 ]
  br label %scalar.ph821

scalar.ph821:                                     ; preds = %scalar.ph821.preheader, %scalar.ph821
  %indvars.iv725 = phi i64 [ %indvars.iv.next726, %scalar.ph821 ], [ %indvars.iv725.ph, %scalar.ph821.preheader ] ; 5 uses
  %gep764 = getelementptr [8 x i8], ptr %invariant.gep763, i64 %indvars.iv725 ; 2 uses
  %i.vo = load double, ptr %gep764, align 8, !tbaa !31
  %gep766 = getelementptr [8 x i8], ptr %invariant.gep765, i64 %indvars.iv725
  %i.vp = load double, ptr %gep766, align 8, !tbaa !31
  %i.vq = fneg double %i.vp
  %i.vr = call double @llvm.fmuladd.f64(double %i.vq, double %i.uf, double %i.vo)
  %gep768 = getelementptr [8 x i8], ptr %invariant.gep767, i64 %indvars.iv725
  %i.vs = load double, ptr %gep768, align 8, !tbaa !31
  %i.vt = fneg double %i.vs
  %i.vu = call double @llvm.fmuladd.f64(double %i.vt, double %i.ui, double %i.vr)
  store double %i.vu, ptr %gep764, align 8, !tbaa !31
  %indvars.iv.next726 = add nuw nsw i64 %indvars.iv725, 1
  %.not559.not = icmp slt i64 %indvars.iv725, %i.th
  br i1 %.not559.not, label %scalar.ph821, label %.loopexit841, !llvm.loop !27

.loopexit841:                                     ; preds = %scalar.ph821, %middle.block838
  store double %i.uf, ptr %gep770, align 8, !tbaa !31
  %gep774 = getelementptr [8 x i8], ptr %invariant.gep773, i64 %indvars.iv723
  store double %i.ui, ptr %gep774, align 8, !tbaa !31
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %lftr.wideiv729 = trunc i64 %indvars.iv.next724 to i32
  %exitcond730.not = icmp eq i32 %i.tj, %lftr.wideiv729
  %indvar.next805 = add i64 %indvar804, 1
  br i1 %exitcond730.not, label %.loopexit, label %bb.an, !llvm.loop !28

bb.ao:                                            ; preds = %bb.ak, %.thread620, %bb.z, %bb.y
  %.3523.ph = phi i32 [ %.1531691, %bb.y ], [ %.1531691, %bb.z ], [ %.2522610618625, %.thread620 ], [ %.2522610618625, %bb.ak ]
  %.3507.ph = phi i32 [ %.1525694, %bb.y ], [ %.1525694, %bb.z ], [ %.2506619624, %.thread620 ], [ %.2506619624, %bb.ak ]
  %i.vv = zext nneg i32 %.1531691 to i64
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.vv
  store i32 %.3523.ph, ptr %i.vw, align 4, !tbaa !29
  br label %bb.ap

.loopexit:                                        ; preds = %.loopexit841, %bb.am, %bb.al
  %i.vx = zext nneg i32 %.1531691 to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.vx ; 2 uses
  store i32 %i.kv, ptr %i.vy, align 4, !tbaa !29
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  store i32 %i.kv, ptr %i.vz, align 4, !tbaa !29
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit, %bb.ao
  %.3507640 = phi i32 [ %.2506750, %.loopexit ], [ %.3507.ph, %bb.ao ]
  %.3529637 = phi i32 [ 2, %.loopexit ], [ 1, %bb.ao ]
  %i.wa = add nuw nsw i32 %.3529637, %.1531691    ; 4 uses
  %i.wb = load i32, ptr %1, align 4, !tbaa !29    ; 3 uses
  %i.wc = add i32 %.3507640, 2
  %i.wd = add i32 %i.wc, %i.wb
  %i.we = sub i32 %i.wd, %i.wa
  %.1531.neg = sub nsw i32 0, %i.wa
  %i.wf = icmp sgt i32 %i.wa, %i.wb
  br i1 %i.wf, label %.loopexit646, label %.lr.ph698

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

end_hunk_1
