Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlasyf?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dlasyf_:bb.a
  %i.fr = sub i32 %i.fp, %i.fq
  %.not600 = icmp eq i32 %.0538, %i.fn
  br i1 %.not600, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fs = mul i32 %i.fn, %i.ad
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ft
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !28
  %i.fw = mul nsw i32 %.0538, %i.l                ; 2 uses
  %i.fx = add nsw i32 %i.fw, %.0538
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fy
  store double %i.fv, ptr %i.fz, align 8, !tbaa !28
  %i.ga = sub i32 %i.fm, %.0538
  store i32 %i.ga, ptr %i.a, align 4, !tbaa !26
  %i.gb = add nsw i32 %.0538, 1                   ; 2 uses
  %i.gc = mul nsw i32 %i.fn, %i.l
  %i.gd = add nsw i32 %i.gc, %i.gb
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ge
  %i.gg = mul nsw i32 %i.gb, %i.l
  %i.gh = add nsw i32 %i.gg, %.0538
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.gi
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.gf, ptr noundef nonnull @c__1, ptr noundef %i.gj, ptr noundef nonnull %5) #5
  %i.gk = icmp sgt i32 %.0538, 1
  br i1 %i.gk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gl = add nsw i32 %.0538, -1
  store i32 %i.gl, ptr %i.a, align 4, !tbaa !26
  %i.gm = load i32, ptr %i.k, align 4, !tbaa !26
  %i.gn = mul nsw i32 %i.gm, %i.l
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr [8 x i8], ptr %i.n, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 8
  %i.gr = sext i32 %i.fw to i64
  %i.gs = getelementptr [8 x i8], ptr %i.n, i64 %i.gr
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.gq, ptr noundef nonnull @c__1, ptr noundef %i.gt, ptr noundef nonnull @c__1) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gu = load i32, ptr %i.h, align 4, !tbaa !26  ; 3 uses
  %i.gv = load i32, ptr %1, align 4, !tbaa !26    ; 3 uses
  %i.gw = icmp slt i32 %i.gu, %i.gv
  br i1 %i.gw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gx = sub nsw i32 %i.gv, %i.gu
  store i32 %i.gx, ptr %i.a, align 4, !tbaa !26
  %i.gy = load i32, ptr %i.k, align 4, !tbaa !26
  %i.gz = add nsw i32 %i.gu, 1
  %i.ha = mul nsw i32 %i.gz, %i.l                 ; 2 uses
  %i.hb = add nsw i32 %i.gy, %i.ha
  %i.hc = sext i32 %i.hb to i64
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.hc
  %i.he = add nsw i32 %i.ha, %.0538
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.hf
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.hd, ptr noundef nonnull %5, ptr noundef %i.hg, ptr noundef nonnull %5) #5
  %.pre682 = load i32, ptr %1, align 4, !tbaa !26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hh = phi i32 [ %.pre682, %bb.aa ], [ %i.gv, %bb.z ]
  %i.hi = load i32, ptr %i.k, align 4, !tbaa !26  ; 2 uses
  %i.hj = add i32 %i.hh, 1
  %i.hk = sub i32 %i.hj, %i.hi
  store i32 %i.hk, ptr %i.a, align 4, !tbaa !26
  %i.hl = mul nsw i32 %i.fr, %i.p                 ; 2 uses
  %i.hm = add nsw i32 %i.hi, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.hn
  %i.hp = add nsw i32 %i.hl, %.0538
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.hq
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.ho, ptr noundef nonnull %8, ptr noundef %i.hr, ptr noundef nonnull %8) #5
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.w
  %i.hs = load i32, ptr %i.h, align 4, !tbaa !26  ; 12 uses
  br i1 %i.fk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ht = mul nsw i32 %i.hs, %i.l
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr [8 x i8], ptr %i.n, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 8
  call void @dcopy_(ptr noundef nonnull %i.h, ptr noundef %i.aw, ptr noundef nonnull @c__1, ptr noundef %i.hw, ptr noundef nonnull @c__1) #5
  %i.hx = load i32, ptr %i.h, align 4, !tbaa !26  ; 3 uses
  %i.hy = mul i32 %i.hx, %i.ad
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !28
  %i.ic = fdiv double 1.000000e+00, %i.ib
  store double %i.ic, ptr %i.i, align 8, !tbaa !28
  %i.id = add nsw i32 %i.hx, -1
  store i32 %i.id, ptr %i.a, align 4, !tbaa !26
  %i.ie = mul nsw i32 %i.hx, %i.l
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr [8 x i8], ptr %i.n, i64 %i.if
  %i.ih = getelementptr i8, ptr %i.ig, i64 8
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef %i.ih, ptr noundef nonnull @c__1) #5
  %.pre684 = load i32, ptr %i.h, align 4, !tbaa !26
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.ii = icmp sgt i32 %i.hs, 2
  %i.ij = add nsw i32 %i.hs, -1                   ; 8 uses
  br i1 %i.ii, label %.lr.ph, label %._crit_edge694

._crit_edge694:                                   ; preds = %bb.ae
  %.pre709 = add nsw i32 %i.al, -1
  %.pre711 = mul nsw i32 %.pre709, %i.p
  %.pre713 = add nsw i32 %i.ij, %.pre711
  %.pre715 = sext i32 %.pre713 to i64
  %.pre717 = add nsw i32 %i.ij, %i.at
  %.pre719 = sext i32 %.pre717 to i64
  %.pre721 = add nsw i32 %i.hs, %i.at
  %.pre723 = sext i32 %.pre721 to i64
  br label %.loopexit636

.lr.ph:                                           ; preds = %bb.ae
  %i.ik = add nsw i32 %i.ij, %i.at
  %i.il = sext i32 %i.ik to i64                   ; 4 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !28 ; 3 uses
  %i.io = add nsw i32 %i.hs, %i.at
  %i.ip = sext i32 %i.io to i64                   ; 4 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ip
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !28
  %i.is = fdiv double %i.ir, %i.in                ; 5 uses
  %i.it = add nsw i32 %i.al, -1
  %i.iu = mul nsw i32 %i.it, %i.p                 ; 2 uses
  %i.iv = add nsw i32 %i.ij, %i.iu
  %i.iw = sext i32 %i.iv to i64                   ; 4 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.iw
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !28
  %i.iz = fdiv double %i.iy, %i.in                ; 5 uses
  %i.ja = call double @llvm.fmuladd.f64(double %i.is, double %i.iz, double -1.000000e+00)
  %i.jb = fdiv double 1.000000e+00, %i.ja
  %i.jc = fdiv double %i.jb, %i.in                ; 7 uses
  %i.jd = add nsw i32 %i.hs, -2
  store i32 %i.jd, ptr %i.a, align 4, !tbaa !26
  %i.je = mul nsw i32 %i.ij, %i.l
  %i.jf = mul nsw i32 %i.hs, %i.l
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = sext i32 %i.je to i64                   ; 2 uses
  %i.ji = sext i32 %i.iu to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ij to i64   ; 4 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.r, i64 %i.ji ; 4 uses
  %invariant.gep781 = getelementptr [8 x i8], ptr %i.r, i64 %i.au ; 4 uses
  %invariant.gep783 = getelementptr [8 x i8], ptr %i.n, i64 %i.jh ; 4 uses
  %invariant.gep785 = getelementptr [8 x i8], ptr %i.n, i64 %i.jg ; 4 uses
  %i.jj = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.jj, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jk = shl nsw i64 %i.jh, 3                    ; 2 uses
  %scevgep820 = getelementptr i8, ptr %scevgep, i64 %i.jk ; 3 uses
  %i.jl = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %i.jm = getelementptr i8, ptr %scevgep821, i64 %i.jk
  %scevgep822 = getelementptr i8, ptr %i.jm, i64 %i.jl ; 3 uses
  %i.jn = shl nsw i64 %i.jg, 3                    ; 2 uses
  %scevgep824 = getelementptr i8, ptr %scevgep823, i64 %i.jn ; 3 uses
  %i.jo = getelementptr i8, ptr %scevgep825, i64 %i.jn
  %scevgep826 = getelementptr i8, ptr %i.jo, i64 %i.jl ; 3 uses
  %i.jp = shl nsw i64 %i.au, 3                    ; 2 uses
  %scevgep828 = getelementptr i8, ptr %scevgep827, i64 %i.jp ; 2 uses
  %i.jq = getelementptr i8, ptr %scevgep829, i64 %i.jp
  %scevgep830 = getelementptr i8, ptr %i.jq, i64 %i.jl ; 2 uses
  %i.jr = shl nsw i64 %i.ji, 3                    ; 2 uses
  %scevgep832 = getelementptr i8, ptr %scevgep831, i64 %i.jr ; 2 uses
  %i.js = getelementptr i8, ptr %scevgep833, i64 %i.jr
  %scevgep834 = getelementptr i8, ptr %i.js, i64 %i.jl ; 2 uses
  %bound0 = icmp ult ptr %scevgep820, %scevgep826
  %bound1 = icmp ult ptr %scevgep824, %scevgep822
  %found.conflict = and i1 %bound0, %bound1
  %bound0835 = icmp ult ptr %scevgep820, %scevgep830
  %bound1836 = icmp ult ptr %scevgep828, %scevgep822
  %found.conflict837 = and i1 %bound0835, %bound1836
  %conflict.rdx = or i1 %found.conflict, %found.conflict837
  %bound0838 = icmp ult ptr %scevgep820, %scevgep834
  %bound1839 = icmp ult ptr %scevgep832, %scevgep822
  %found.conflict840 = and i1 %bound0838, %bound1839
  %conflict.rdx841 = or i1 %conflict.rdx, %found.conflict840
  %bound0842 = icmp ult ptr %scevgep824, %scevgep830
  %bound1843 = icmp ult ptr %scevgep828, %scevgep826
  %found.conflict844 = and i1 %bound0842, %bound1843
  %conflict.rdx845 = or i1 %conflict.rdx841, %found.conflict844
  %bound0846 = icmp ult ptr %scevgep824, %scevgep834
  %bound1847 = icmp ult ptr %scevgep832, %scevgep826
  %found.conflict848 = and i1 %bound0846, %bound1847
  %conflict.rdx849 = or i1 %conflict.rdx845, %found.conflict848
  br i1 %conflict.rdx849, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jj, -4                      ; 3 uses
  %i.jt = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.is, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert850 = insertelement <4 x double> poison, double %i.iz, i64 0
  %broadcast.splat851 = shufflevector <4 x double> %broadcast.splatinsert850, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert852 = insertelement <4 x double> poison, double %i.jc, i64 0
  %broadcast.splat853 = shufflevector <4 x double> %broadcast.splatinsert852, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ju = or disjoint i64 %index, 1               ; 4 uses
  %i.jv = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ju ; 2 uses
  %wide.load.a = load <4 x double>, ptr %i.jv, align 8, !tbaa !28, !alias.scope !29
  %i.jw = getelementptr [8 x i8], ptr %invariant.gep781, i64 %i.ju
  %wide.load854 = load <4 x double>, ptr %i.jw, align 8, !tbaa !28, !alias.scope !30 ; 2 uses
  %i.jx = fneg <4 x double> %wide.load854
  %i.jy = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat, <4 x double> %wide.load.a, <4 x double> %i.jx)
  %i.jz = fmul <4 x double> %broadcast.splat853, %i.jy
  %i.ka = getelementptr [8 x i8], ptr %invariant.gep783, i64 %i.ju
  store <4 x double> %i.jz, ptr %i.ka, align 8, !tbaa !28, !alias.scope !31, !noalias !32
  %wide.load856 = load <4 x double>, ptr %i.jv, align 8, !tbaa !28, !alias.scope !29
  %i.kb = fneg <4 x double> %wide.load856
  %i.kc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat851, <4 x double> %wide.load854, <4 x double> %i.kb)
  %i.kd = fmul <4 x double> %broadcast.splat853, %i.kc
  %i.ke = getelementptr [8 x i8], ptr %invariant.gep785, i64 %i.ju
  store <4 x double> %i.kd, ptr %i.ke, align 8, !tbaa !28, !alias.scope !33, !noalias !34
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kf = icmp eq i64 %index.next, %n.vec
  br i1 %i.kf, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jj, %n.vec
  br i1 %cmp.n, label %.loopexit636, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.jt, %middle.block ] ; 7 uses
  %i.kg = and i32 %i.hs, 1
  %lcmp.mod.not = icmp eq i32 %i.kg, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.ph ; 2 uses
  %i.kh = load double, ptr %gep.prol, align 8, !tbaa !28
  %gep782.prol = getelementptr [8 x i8], ptr %invariant.gep781, i64 %indvars.iv.ph ; 2 uses
  %i.ki = load double, ptr %gep782.prol, align 8, !tbaa !28
  %i.kj = fneg double %i.ki
  %i.kk = call double @llvm.fmuladd.f64(double %i.is, double %i.kh, double %i.kj)
  %i.kl = fmul double %i.jc, %i.kk
  %gep784.prol = getelementptr [8 x i8], ptr %invariant.gep783, i64 %indvars.iv.ph
  store double %i.kl, ptr %gep784.prol, align 8, !tbaa !28
  %i.km = load double, ptr %gep782.prol, align 8, !tbaa !28
  %i.kn = load double, ptr %gep.prol, align 8, !tbaa !28
  %i.ko = fneg double %i.kn
  %i.kp = call double @llvm.fmuladd.f64(double %i.iz, double %i.km, double %i.ko)
  %i.kq = fmul double %i.jc, %i.kp
  %gep786.prol = getelementptr [8 x i8], ptr %invariant.gep785, i64 %indvars.iv.ph
  store double %i.kq, ptr %gep786.prol, align 8, !tbaa !28
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.kr = add nsw i64 %wide.trip.count, -1
  %i.ks = icmp eq i64 %indvars.iv.ph, %i.kr
  br i1 %i.ks, label %.loopexit636, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.kt = load double, ptr %gep, align 8, !tbaa !28
  %gep782 = getelementptr [8 x i8], ptr %invariant.gep781, i64 %indvars.iv ; 2 uses
  %i.ku = load double, ptr %gep782, align 8, !tbaa !28
  %i.kv = fneg double %i.ku
  %i.kw = call double @llvm.fmuladd.f64(double %i.is, double %i.kt, double %i.kv)
  %i.kx = fmul double %i.jc, %i.kw
  %gep784 = getelementptr [8 x i8], ptr %invariant.gep783, i64 %indvars.iv
  store double %i.kx, ptr %gep784, align 8, !tbaa !28
  %i.ky = load double, ptr %gep782, align 8, !tbaa !28
  %i.kz = load double, ptr %gep, align 8, !tbaa !28
  %i.la = fneg double %i.kz
  %i.lb = call double @llvm.fmuladd.f64(double %i.iz, double %i.ky, double %i.la)
  %i.lc = fmul double %i.jc, %i.lb
  %gep786 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %indvars.iv
  store double %i.lc, ptr %gep786, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.ld = load double, ptr %gep.1, align 8, !tbaa !28
  %gep782.1 = getelementptr [8 x i8], ptr %invariant.gep781, i64 %indvars.iv.next ; 2 uses
  %i.le = load double, ptr %gep782.1, align 8, !tbaa !28
  %i.lf = fneg double %i.le
  %i.lg = call double @llvm.fmuladd.f64(double %i.is, double %i.ld, double %i.lf)
  %i.lh = fmul double %i.jc, %i.lg
  %gep784.1 = getelementptr [8 x i8], ptr %invariant.gep783, i64 %indvars.iv.next
  store double %i.lh, ptr %gep784.1, align 8, !tbaa !28
  %i.li = load double, ptr %gep782.1, align 8, !tbaa !28
  %i.lj = load double, ptr %gep.1, align 8, !tbaa !28
  %i.lk = fneg double %i.lj
  %i.ll = call double @llvm.fmuladd.f64(double %i.iz, double %i.li, double %i.lk)
  %i.lm = fmul double %i.jc, %i.ll
  %gep786.1 = getelementptr [8 x i8], ptr %invariant.gep785, i64 %indvars.iv.next
  store double %i.lm, ptr %gep786.1, align 8, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit636, label %scalar.ph, !llvm.loop !14

bb.af:                                            ; preds = %bb.k, %bb.l, %bb.ad
  %i.ln = phi i32 [ %.pre684, %bb.ad ], [ %.pre683, %bb.l ], [ %.pre683, %bb.k ] ; 2 uses
  %.1539.ph = phi i32 [ %.0538, %bb.ad ], [ %.pre683, %bb.l ], [ %.pre683, %bb.k ]
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.lo
  store i32 %.1539.ph, ptr %i.lp, align 4, !tbaa !26
  br label %bb.ag

.loopexit636:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge694
  %.pre-phi724 = phi i64 [ %.pre723, %._crit_edge694 ], [ %i.ip, %middle.block ], [ %i.ip, %scalar.ph ], [ %i.ip, %scalar.ph.prol.loopexit ]
  %.pre-phi720 = phi i64 [ %.pre719, %._crit_edge694 ], [ %i.il, %middle.block ], [ %i.il, %scalar.ph ], [ %i.il, %scalar.ph.prol.loopexit ]
  %.pre-phi716 = phi i64 [ %.pre715, %._crit_edge694 ], [ %i.iw, %middle.block ], [ %i.iw, %scalar.ph ], [ %i.iw, %scalar.ph.prol.loopexit ]
  %i.lq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.pre-phi716
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !28
  %i.ls = mul i32 %i.ij, %i.ad
  %i.lt = sext i32 %i.ls to i64
  %i.lu = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.lt
  store double %i.lr, ptr %i.lu, align 8, !tbaa !28
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.pre-phi720
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !28
  %i.lx = mul nsw i32 %i.hs, %i.l
  %i.ly = add nsw i32 %i.ij, %i.lx
  %i.lz = sext i32 %i.ly to i64
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.lz
  store double %i.lw, ptr %i.ma, align 8, !tbaa !28
  %i.mb = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.pre-phi724
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !28
  %i.md = mul i32 %i.hs, %i.ad
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.me
  store double %i.mc, ptr %i.mf, align 8, !tbaa !28
  %i.mg = sub nsw i32 0, %.0538                   ; 2 uses
  %i.mh = sext i32 %i.hs to i64
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.mh ; 2 uses
  store i32 %i.mg, ptr %i.mi, align 4, !tbaa !26
  %i.mj = getelementptr i8, ptr %i.mi, i64 -4
  store i32 %i.mg, ptr %i.mj, align 4, !tbaa !26
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit636, %bb.af
  %i.mk = phi i32 [ %i.hs, %.loopexit636 ], [ %i.ln, %bb.af ]
  %.1545.neg612 = phi i32 [ -2, %.loopexit636 ], [ -1, %bb.af ]
  %i.ml = add i32 %i.mk, %.1545.neg612
  %.pre = load i32, ptr %1, align 4, !tbaa !26
  br label %bb.c

bb.ah:                                            ; preds = %bb.d, %bb.e
  %i.mm = sub i32 0, %i.aj                        ; 2 uses
  store i32 %i.mm, ptr %i.a, align 4, !tbaa !26
  %i.mn = add i32 %.fr603, -1
  %i.mo = srem i32 %i.mn, %i.aj
  %i.mp = sub i32 %.fr603, %i.mo                  ; 3 uses
  %i.mq = icmp slt i32 %i.mm, 0
  %i.mr = icmp sgt i32 %i.mp, 0
  %i.ms = icmp slt i32 %i.mp, 2
  %.in605646 = select i1 %i.mq, i1 %i.mr, i1 %i.ms
  br i1 %.in605646, label %.lr.ph649, label %._crit_edge650

.lr.ph649:                                        ; preds = %bb.ah
  %i.mt = add nsw i32 %i.al, 1
  %i.mu = mul nsw i32 %i.mt, %i.p                 ; 2 uses
  %i.mv = sext i32 %i.mu to i64
  %i.mw = sext i32 %i.l to i64
  %invariant.gep788 = getelementptr [8 x i8], ptr %i.r, i64 %i.mv
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph649, %._crit_edge
  %i.mx = phi i32 [ %i.mp, %.lr.ph649 ], [ %i.oi, %._crit_edge ] ; 9 uses
  %i.my = load i32, ptr %2, align 4, !tbaa !26
  %i.mz = load i32, ptr %i.h, align 4, !tbaa !26  ; 2 uses
  %i.na = sub nsw i32 %i.mz, %i.mx
  %i.nb = add nsw i32 %i.na, 1
  %i.nc = call i32 @llvm.smin.i32(i32 %i.my, i32 %i.nb) ; 2 uses
  store i32 %i.nc, ptr %i.j, align 4, !tbaa !26
  %i.nd = add i32 %i.mx, -1                       ; 2 uses
  %i.ne = add i32 %i.nd, %i.nc                    ; 2 uses
  store i32 %i.ne, ptr %i.b, align 4, !tbaa !26
  %.not609643 = icmp sgt i32 %i.mx, %i.ne
  br i1 %.not609643, label %._crit_edge, label %.lr.ph645.preheader

.lr.ph645.preheader:                              ; preds = %bb.ai
  %i.nf = sext i32 %i.mx to i64                   ; 2 uses
  %invariant.gep790 = getelementptr [8 x i8], ptr %i.n, i64 %i.nf
  %invariant.op = sub i32 1, %i.mx
  br label %.lr.ph645

.lr.ph645:                                        ; preds = %.lr.ph645.preheader, %.lr.ph645
  %indvars.iv671 = phi i64 [ %i.nf, %.lr.ph645.preheader ], [ %indvars.iv.next672, %.lr.ph645 ] ; 5 uses
  %i.ng = trunc nsw i64 %indvars.iv671 to i32
  %.reass.reass = add i32 %i.ng, %invariant.op
  store i32 %.reass.reass, ptr %i.c, align 4, !tbaa !26
  %i.nh = load i32, ptr %1, align 4, !tbaa !26
  %i.ni = load i32, ptr %i.h, align 4, !tbaa !26  ; 2 uses
  %i.nj = sub nsw i32 %i.nh, %i.ni
  store i32 %i.nj, ptr %i.d, align 4, !tbaa !26
  %i.nk = add nsw i32 %i.ni, 1
  %i.nl = mul nsw i32 %i.nk, %i.l
  %i.nm = add nsw i32 %i.nl, %i.mx
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.nn
  %gep789 = getelementptr [8 x i8], ptr %invariant.gep788, i64 %indvars.iv671
  %i.np = mul nsw i64 %indvars.iv671, %i.mw
  %gep791 = getelementptr [8 x i8], ptr %invariant.gep790, i64 %i.np
  call void @dgemv_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @c_b8, ptr noundef %i.no, ptr noundef nonnull %5, ptr noundef %gep789, ptr noundef nonnull %8, ptr noundef nonnull @c_b9, ptr noundef %gep791, ptr noundef nonnull @c__1) #5
  %indvars.iv.next672 = add nsw i64 %indvars.iv671, 1
  %i.nq = load i32, ptr %i.b, align 4, !tbaa !26
  %i.nr = sext i32 %i.nq to i64
  %.not609.not = icmp slt i64 %indvars.iv671, %i.nr
  br i1 %.not609.not, label %.lr.ph645, label %._crit_edge.loopexit, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %.lr.ph645
  %.pre685 = load i32, ptr %i.h, align 4, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ai
  %i.ns = phi i32 [ %.pre685, %._crit_edge.loopexit ], [ %i.mz, %bb.ai ] ; 2 uses
  store i32 %i.nd, ptr %i.b, align 4, !tbaa !26
  %i.nt = load i32, ptr %1, align 4, !tbaa !26
  %i.nu = sub nsw i32 %i.nt, %i.ns
  store i32 %i.nu, ptr %i.c, align 4, !tbaa !26
  %i.nv = add nsw i32 %i.ns, 1
  %i.nw = mul nsw i32 %i.nv, %i.l
end_hunk_0
begin_hunk_1_@dlasyf_:bb.a
  %i.wa = add nsw i32 %i.vz, %i.vo
  %i.wb = sext i32 %i.wa to i64
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.wb
  %i.wd = mul nsw i32 %i.vo, %i.l
  %i.we = add nsw i32 %i.wd, %.2
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.wf
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.wc, ptr noundef nonnull @c__1, ptr noundef %i.wg, ptr noundef nonnull %5) #5
  %i.wh = load i32, ptr %1, align 4, !tbaa !26    ; 2 uses
  %i.wi = icmp slt i32 %.2, %i.wh
  br i1 %i.wi, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.wj = sub nsw i32 %i.wh, %.2
  store i32 %i.wj, ptr %i.a, align 4, !tbaa !26
  %i.wk = add nsw i32 %.2, 1                      ; 2 uses
  %i.wl = load i32, ptr %i.k, align 4, !tbaa !26
  %i.wm = mul nsw i32 %i.wl, %i.l
  %i.wn = add nsw i32 %i.wm, %i.wk
  %i.wo = sext i32 %i.wn to i64
  %i.wp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.wo
  %i.wq = add nsw i32 %i.wk, %i.vu
  %i.wr = sext i32 %i.wq to i64
  %i.ws = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.wr
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.wp, ptr noundef nonnull @c__1, ptr noundef %i.ws, ptr noundef nonnull @c__1) #5
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.wt = load i32, ptr %i.h, align 4, !tbaa !26  ; 2 uses
  %i.wu = icmp sgt i32 %i.wt, 1
  br i1 %i.wu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.wv = add nsw i32 %i.wt, -1
  store i32 %i.wv, ptr %i.a, align 4, !tbaa !26
  %i.ww = load i32, ptr %i.k, align 4, !tbaa !26
  %i.wx = add nsw i32 %i.ww, %i.l
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.wy
  %i.xa = add nsw i32 %.2, %i.l
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.xb
  call void @dswap_(ptr noundef nonnull %i.a, ptr noundef %i.wz, ptr noundef nonnull %5, ptr noundef %i.xc, ptr noundef nonnull %5) #5
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.xd = load i32, ptr %i.k, align 4, !tbaa !26
  %i.xe = add nsw i32 %i.xd, %i.p
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.xf
  %i.xh = add nsw i32 %.2, %i.p
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.xi
  call void @dswap_(ptr noundef nonnull %i.k, ptr noundef %i.xg, ptr noundef nonnull %8, ptr noundef %i.xj, ptr noundef nonnull %8) #5
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.ay
  br i1 %i.vn, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.xk = load i32, ptr %1, align 4, !tbaa !26
  %i.xl = load i32, ptr %i.h, align 4, !tbaa !26  ; 3 uses
  %i.xm = add i32 %i.xk, 1
  %i.xn = sub i32 %i.xm, %i.xl
  store i32 %i.xn, ptr %i.a, align 4, !tbaa !26
  %i.xo = mul i32 %i.xl, %i.u
  %i.xp = sext i32 %i.xo to i64
  %i.xq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.xp
  %i.xr = mul i32 %i.xl, %i.t
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.xs
  call void @dcopy_(ptr noundef nonnull %i.a, ptr noundef %i.xq, ptr noundef nonnull @c__1, ptr noundef %i.xt, ptr noundef nonnull @c__1) #5
  %i.xu = load i32, ptr %i.h, align 4, !tbaa !26  ; 6 uses
  %i.xv = load i32, ptr %1, align 4, !tbaa !26    ; 2 uses
  %i.xw = icmp slt i32 %i.xu, %i.xv
  br i1 %i.xw, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.xx = mul i32 %i.xu, %i.t
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.xy
  %i.ya = load double, ptr %i.xz, align 8, !tbaa !28
  %i.yb = fdiv double 1.000000e+00, %i.ya
  store double %i.yb, ptr %i.i, align 8, !tbaa !28
  %i.yc = sub nsw i32 %i.xv, %i.xu
  store i32 %i.yc, ptr %i.a, align 4, !tbaa !26
  %i.yd = add nsw i32 %i.xu, 1
  %i.ye = mul nsw i32 %i.xu, %i.l
  %i.yf = add nsw i32 %i.yd, %i.ye
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.yg
  call void @dscal_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef %i.yh, ptr noundef nonnull @c__1) #5
  %.pre691 = load i32, ptr %i.h, align 4, !tbaa !26
  br label %bb.bj

bb.bh:                                            ; preds = %bb.be
  %i.yi = load i32, ptr %i.h, align 4, !tbaa !26  ; 13 uses
  %i.yj = load i32, ptr %1, align 4, !tbaa !26    ; 8 uses
  %i.yk = add nsw i32 %i.yj, -1
  %i.yl = icmp slt i32 %i.yi, %i.yk
  %i.ym = add i32 %i.yi, 1                        ; 7 uses
  %i.yn = mul nsw i32 %i.yi, %i.p                 ; 3 uses
  %i.yo = add nsw i32 %i.ym, %i.yn
  %i.yp = sext i32 %i.yo to i64                   ; 2 uses
  br i1 %i.yl, label %bb.bi, label %._crit_edge695

._crit_edge695:                                   ; preds = %bb.bh
  %.pre703 = mul i32 %i.ym, %i.u
  %.pre705 = sext i32 %.pre703 to i64
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  %i.yq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.yp
  %i.yr = load double, ptr %i.yq, align 8, !tbaa !28 ; 3 uses
  %i.ys = mul i32 %i.ym, %i.u
  %i.yt = sext i32 %i.ys to i64                   ; 2 uses
  %i.yu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.yt
  %i.yv = load double, ptr %i.yu, align 8, !tbaa !28
  %i.yw = fdiv double %i.yv, %i.yr                ; 5 uses
  %i.yx = add nsw i32 %i.yn, %i.yi
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.yy
  %i.za = load double, ptr %i.yz, align 8, !tbaa !28
  %i.zb = fdiv double %i.za, %i.yr                ; 5 uses
  %i.zc = call double @llvm.fmuladd.f64(double %i.yw, double %i.zb, double -1.000000e+00)
  %i.zd = fdiv double 1.000000e+00, %i.zc
  %i.ze = fdiv double %i.zd, %i.yr                ; 7 uses
  store i32 %i.yj, ptr %i.a, align 4, !tbaa !26
  %i.zf = add nsw i32 %i.yi, 2                    ; 3 uses
  %.not592651 = icmp sgt i32 %i.zf, %i.yj
  br i1 %.not592651, label %.loopexit, label %.lr.ph654

.lr.ph654:                                        ; preds = %bb.bi
  %i.zg = mul nsw i32 %i.ym, %i.p
  %i.zh = mul nsw i32 %i.yi, %i.l
  %i.zi = mul i32 %i.ym, %i.l
  %i.zj = sext i32 %i.zf to i64                   ; 8 uses
  %i.zk = sext i32 %i.zi to i64                   ; 2 uses
  %i.zl = sext i32 %i.zh to i64                   ; 2 uses
  %i.zm = sext i32 %i.zg to i64                   ; 2 uses
  %i.zn = sext i32 %i.yn to i64                   ; 2 uses
  %i.zo = add i32 %i.yj, 1                        ; 4 uses
  %invariant.gep792 = getelementptr [8 x i8], ptr %i.r, i64 %i.zn ; 4 uses
  %invariant.gep794 = getelementptr [8 x i8], ptr %i.r, i64 %i.zm ; 4 uses
  %invariant.gep796 = getelementptr [8 x i8], ptr %i.n, i64 %i.zl ; 4 uses
  %invariant.gep798 = getelementptr [8 x i8], ptr %i.n, i64 %i.zk ; 4 uses
  %i.zp = add i32 %i.yj, -2
  %i.zq = sub i32 %i.zp, %i.yi                    ; 2 uses
  %i.zr = zext i32 %i.zq to i64
  %i.zs = add nuw nsw i64 %i.zr, 1                ; 2 uses
  %min.iters.check894 = icmp ult i32 %i.zq, 15
  br i1 %min.iters.check894, label %scalar.ph893.preheader, label %vector.memcheck857

vector.memcheck857:                               ; preds = %.lr.ph654
  %i.zt = add nsw i64 %i.zl, %i.zj
  %i.zu = shl nsw i64 %i.zt, 3                    ; 2 uses
  %scevgep859 = getelementptr i8, ptr %scevgep858, i64 %i.zu ; 3 uses
  %i.zv = add i32 %i.yj, -2
  %i.zw = sub i32 %i.zv, %i.yi
  %i.zx = zext i32 %i.zw to i64
  %i.zy = shl nuw nsw i64 %i.zx, 3                ; 4 uses
  %i.zz = getelementptr i8, ptr %scevgep860, i64 %i.zu
  %scevgep861 = getelementptr i8, ptr %i.zz, i64 %i.zy ; 3 uses
  %i.aaa = add nsw i64 %i.zk, %i.zj
  %i.aab = shl nsw i64 %i.aaa, 3                  ; 2 uses
  %scevgep863 = getelementptr i8, ptr %scevgep862, i64 %i.aab ; 3 uses
  %i.aac = getelementptr i8, ptr %scevgep864, i64 %i.aab
  %scevgep865 = getelementptr i8, ptr %i.aac, i64 %i.zy ; 3 uses
  %i.aad = add nsw i64 %i.zm, %i.zj
  %i.aae = shl nsw i64 %i.aad, 3                  ; 2 uses
  %scevgep867 = getelementptr i8, ptr %scevgep866, i64 %i.aae ; 2 uses
  %i.aaf = getelementptr i8, ptr %scevgep868, i64 %i.aae
  %scevgep869 = getelementptr i8, ptr %i.aaf, i64 %i.zy ; 2 uses
  %i.aag = add nsw i64 %i.zn, %i.zj
  %i.aah = shl nsw i64 %i.aag, 3                  ; 2 uses
  %scevgep871 = getelementptr i8, ptr %scevgep870, i64 %i.aah ; 2 uses
  %i.aai = getelementptr i8, ptr %scevgep872, i64 %i.aah
  %scevgep873 = getelementptr i8, ptr %i.aai, i64 %i.zy ; 2 uses
  %bound0874 = icmp ult ptr %scevgep859, %scevgep865
  %bound1875 = icmp ult ptr %scevgep863, %scevgep861
  %found.conflict876 = and i1 %bound0874, %bound1875
  %bound0877 = icmp ult ptr %scevgep859, %scevgep869
  %bound1878 = icmp ult ptr %scevgep867, %scevgep861
  %found.conflict879 = and i1 %bound0877, %bound1878
  %conflict.rdx880 = or i1 %found.conflict876, %found.conflict879
  %bound0881 = icmp ult ptr %scevgep859, %scevgep873
  %bound1882 = icmp ult ptr %scevgep871, %scevgep861
  %found.conflict883 = and i1 %bound0881, %bound1882
  %conflict.rdx884 = or i1 %conflict.rdx880, %found.conflict883
  %bound0885 = icmp ult ptr %scevgep863, %scevgep869
  %bound1886 = icmp ult ptr %scevgep867, %scevgep865
  %found.conflict887 = and i1 %bound0885, %bound1886
  %conflict.rdx888 = or i1 %conflict.rdx884, %found.conflict887
  %bound0889 = icmp ult ptr %scevgep863, %scevgep873
  %bound1890 = icmp ult ptr %scevgep871, %scevgep865
  %found.conflict891 = and i1 %bound0889, %bound1890
  %conflict.rdx892 = or i1 %conflict.rdx888, %found.conflict891
  br i1 %conflict.rdx892, label %scalar.ph893.preheader, label %vector.ph895

vector.ph895:                                     ; preds = %vector.memcheck857
  %n.vec896 = and i64 %i.zs, 8589934588           ; 3 uses
  %i.aaj = add nsw i64 %n.vec896, %i.zj
  %broadcast.splatinsert897 = insertelement <4 x double> poison, double %i.yw, i64 0
  %broadcast.splat898 = shufflevector <4 x double> %broadcast.splatinsert897, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert899 = insertelement <4 x double> poison, double %i.ze, i64 0
  %broadcast.splat900 = shufflevector <4 x double> %broadcast.splatinsert899, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert901 = insertelement <4 x double> poison, double %i.zb, i64 0
  %broadcast.splat902 = shufflevector <4 x double> %broadcast.splatinsert901, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body903

vector.body903:                                   ; preds = %vector.body903, %vector.ph895
  %index904 = phi i64 [ 0, %vector.ph895 ], [ %index.next909, %vector.body903 ] ; 2 uses
  %i.aak = add i64 %index904, %i.zj               ; 4 uses
  %i.aal = getelementptr [8 x i8], ptr %invariant.gep792, i64 %i.aak ; 2 uses
  %wide.load905 = load <4 x double>, ptr %i.aal, align 8, !tbaa !28, !alias.scope !38
  %i.aam = getelementptr [8 x i8], ptr %invariant.gep794, i64 %i.aak
  %wide.load906 = load <4 x double>, ptr %i.aam, align 8, !tbaa !28, !alias.scope !39 ; 2 uses
  %i.aan = fneg <4 x double> %wide.load906
  %i.aao = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat898, <4 x double> %wide.load905, <4 x double> %i.aan)
  %i.aap = fmul <4 x double> %broadcast.splat900, %i.aao
  %i.aaq = getelementptr [8 x i8], ptr %invariant.gep796, i64 %i.aak
  store <4 x double> %i.aap, ptr %i.aaq, align 8, !tbaa !28, !alias.scope !40, !noalias !41
  %wide.load908 = load <4 x double>, ptr %i.aal, align 8, !tbaa !28, !alias.scope !38
  %i.aar = fneg <4 x double> %wide.load908
  %i.aas = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat902, <4 x double> %wide.load906, <4 x double> %i.aar)
  %i.aat = fmul <4 x double> %broadcast.splat900, %i.aas
  %i.aau = getelementptr [8 x i8], ptr %invariant.gep798, i64 %i.aak
  store <4 x double> %i.aat, ptr %i.aau, align 8, !tbaa !28, !alias.scope !42, !noalias !43
  %index.next909 = add nuw i64 %index904, 4       ; 2 uses
  %i.aav = icmp eq i64 %index.next909, %n.vec896
  br i1 %i.aav, label %middle.block910, label %vector.body903, !llvm.loop !22

middle.block910:                                  ; preds = %vector.body903
  %cmp.n911 = icmp eq i64 %i.zs, %n.vec896
  br i1 %cmp.n911, label %.loopexit, label %scalar.ph893.preheader

scalar.ph893.preheader:                           ; preds = %vector.memcheck857, %.lr.ph654, %middle.block910
  %indvars.iv674.ph = phi i64 [ %i.zj, %vector.memcheck857 ], [ %i.zj, %.lr.ph654 ], [ %i.aaj, %middle.block910 ] ; 7 uses
  %i.aaw = trunc i64 %indvars.iv674.ph to i32     ; 2 uses
  %i.aax = add i32 %i.yj, %i.aaw
  %i.aay = and i32 %i.aax, 1
  %lcmp.mod920.not.not = icmp eq i32 %i.aay, 0
  br i1 %lcmp.mod920.not.not, label %scalar.ph893.prol, label %scalar.ph893.prol.loopexit

scalar.ph893.prol:                                ; preds = %scalar.ph893.preheader
  %gep793.prol = getelementptr [8 x i8], ptr %invariant.gep792, i64 %indvars.iv674.ph ; 2 uses
  %i.aaz = load double, ptr %gep793.prol, align 8, !tbaa !28
  %gep795.prol = getelementptr [8 x i8], ptr %invariant.gep794, i64 %indvars.iv674.ph ; 2 uses
  %i.aba = load double, ptr %gep795.prol, align 8, !tbaa !28
  %i.abb = fneg double %i.aba
  %i.abc = call double @llvm.fmuladd.f64(double %i.yw, double %i.aaz, double %i.abb)
  %i.abd = fmul double %i.ze, %i.abc
  %gep797.prol = getelementptr [8 x i8], ptr %invariant.gep796, i64 %indvars.iv674.ph
  store double %i.abd, ptr %gep797.prol, align 8, !tbaa !28
  %i.abe = load double, ptr %gep795.prol, align 8, !tbaa !28
  %i.abf = load double, ptr %gep793.prol, align 8, !tbaa !28
  %i.abg = fneg double %i.abf
  %i.abh = call double @llvm.fmuladd.f64(double %i.zb, double %i.abe, double %i.abg)
  %i.abi = fmul double %i.ze, %i.abh
  %gep799.prol = getelementptr [8 x i8], ptr %invariant.gep798, i64 %indvars.iv674.ph
  store double %i.abi, ptr %gep799.prol, align 8, !tbaa !28
  %indvars.iv.next675.prol = add nsw i64 %indvars.iv674.ph, 1
  br label %scalar.ph893.prol.loopexit

scalar.ph893.prol.loopexit:                       ; preds = %scalar.ph893.prol, %scalar.ph893.preheader
  %indvars.iv674.unr = phi i64 [ %indvars.iv674.ph, %scalar.ph893.preheader ], [ %indvars.iv.next675.prol, %scalar.ph893.prol ]
  %i.abj = icmp eq i32 %i.yj, %i.aaw
  br i1 %i.abj, label %.loopexit, label %scalar.ph893

scalar.ph893:                                     ; preds = %scalar.ph893.prol.loopexit, %scalar.ph893
  %indvars.iv674 = phi i64 [ %indvars.iv.next675.1, %scalar.ph893 ], [ %indvars.iv674.unr, %scalar.ph893.prol.loopexit ] ; 6 uses
  %gep793 = getelementptr [8 x i8], ptr %invariant.gep792, i64 %indvars.iv674 ; 2 uses
  %i.abk = load double, ptr %gep793, align 8, !tbaa !28
  %gep795 = getelementptr [8 x i8], ptr %invariant.gep794, i64 %indvars.iv674 ; 2 uses
  %i.abl = load double, ptr %gep795, align 8, !tbaa !28
  %i.abm = fneg double %i.abl
  %i.abn = call double @llvm.fmuladd.f64(double %i.yw, double %i.abk, double %i.abm)
  %i.abo = fmul double %i.ze, %i.abn
  %gep797 = getelementptr [8 x i8], ptr %invariant.gep796, i64 %indvars.iv674
  store double %i.abo, ptr %gep797, align 8, !tbaa !28
  %i.abp = load double, ptr %gep795, align 8, !tbaa !28
  %i.abq = load double, ptr %gep793, align 8, !tbaa !28
  %i.abr = fneg double %i.abq
  %i.abs = call double @llvm.fmuladd.f64(double %i.zb, double %i.abp, double %i.abr)
  %i.abt = fmul double %i.ze, %i.abs
  %gep799 = getelementptr [8 x i8], ptr %invariant.gep798, i64 %indvars.iv674
  store double %i.abt, ptr %gep799, align 8, !tbaa !28
  %indvars.iv.next675 = add nsw i64 %indvars.iv674, 1 ; 4 uses
  %gep793.1 = getelementptr [8 x i8], ptr %invariant.gep792, i64 %indvars.iv.next675 ; 2 uses
  %i.abu = load double, ptr %gep793.1, align 8, !tbaa !28
  %gep795.1 = getelementptr [8 x i8], ptr %invariant.gep794, i64 %indvars.iv.next675 ; 2 uses
  %i.abv = load double, ptr %gep795.1, align 8, !tbaa !28
  %i.abw = fneg double %i.abv
  %i.abx = call double @llvm.fmuladd.f64(double %i.yw, double %i.abu, double %i.abw)
  %i.aby = fmul double %i.ze, %i.abx
  %gep797.1 = getelementptr [8 x i8], ptr %invariant.gep796, i64 %indvars.iv.next675
  store double %i.aby, ptr %gep797.1, align 8, !tbaa !28
  %i.abz = load double, ptr %gep795.1, align 8, !tbaa !28
  %i.aca = load double, ptr %gep793.1, align 8, !tbaa !28
  %i.acb = fneg double %i.aca
  %i.acc = call double @llvm.fmuladd.f64(double %i.zb, double %i.abz, double %i.acb)
  %i.acd = fmul double %i.ze, %i.acc
  %gep799.1 = getelementptr [8 x i8], ptr %invariant.gep798, i64 %indvars.iv.next675
  store double %i.acd, ptr %gep799.1, align 8, !tbaa !28
  %indvars.iv.next675.1 = add nsw i64 %indvars.iv674, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next675.1 to i32
  %exitcond677.not.1 = icmp eq i32 %i.zo, %lftr.wideiv.1
  br i1 %exitcond677.not.1, label %.loopexit, label %scalar.ph893, !llvm.loop !23

bb.bj:                                            ; preds = %bb.aq, %bb.ar, %bb.bg, %bb.bf
  %i.ace = phi i32 [ %i.xu, %bb.bf ], [ %.pre691, %bb.bg ], [ %i.rc, %bb.ar ], [ %i.rc, %bb.aq ] ; 2 uses
  %.3.ph = phi i32 [ %.2, %bb.bf ], [ %.2, %bb.bg ], [ %i.rc, %bb.ar ], [ %i.rc, %bb.aq ]
  %i.acf = sext i32 %i.ace to i64
  %i.acg = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.acf
  store i32 %.3.ph, ptr %i.acg, align 4, !tbaa !26
  br label %bb.bl

.loopexit:                                        ; preds = %scalar.ph893.prol.loopexit, %scalar.ph893, %middle.block910, %bb.bi
  %storemerge591.lcssa = phi i32 [ %i.zf, %bb.bi ], [ %i.zo, %middle.block910 ], [ %i.zo, %scalar.ph893 ], [ %i.zo, %scalar.ph893.prol.loopexit ]
  store i32 %storemerge591.lcssa, ptr %i.g, align 4, !tbaa !26
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge695, %.loopexit
  %.pre-phi706 = phi i64 [ %.pre705, %._crit_edge695 ], [ %i.yt, %.loopexit ]
  %i.ach = mul i32 %i.yi, %i.u
  %i.aci = sext i32 %i.ach to i64
  %i.acj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.aci
  %i.ack = load double, ptr %i.acj, align 8, !tbaa !28
  %i.acl = mul i32 %i.yi, %i.t
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.acm
  store double %i.ack, ptr %i.acn, align 8, !tbaa !28
  %i.aco = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.yp
  %i.acp = load double, ptr %i.aco, align 8, !tbaa !28
  %i.acq = mul nsw i32 %i.yi, %i.l
  %i.acr = add nsw i32 %i.ym, %i.acq
  %i.acs = sext i32 %i.acr to i64
  %i.act = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.acs
  store double %i.acp, ptr %i.act, align 8, !tbaa !28
  %i.acu = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.pre-phi706
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !28
  %i.acw = mul i32 %i.ym, %i.t
  %i.acx = sext i32 %i.acw to i64
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.acx
  store double %i.acv, ptr %i.acy, align 8, !tbaa !28
  %i.acz = sub nsw i32 0, %.2                     ; 2 uses
  %i.ada = sext i32 %i.yi to i64
  %i.adb = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ada ; 2 uses
  store i32 %i.acz, ptr %i.adb, align 4, !tbaa !26
  %i.adc = getelementptr i8, ptr %i.adb, i64 4
  store i32 %i.acz, ptr %i.adc, align 4, !tbaa !26
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.add = phi i32 [ %i.yi, %bb.bk ], [ %i.ace, %bb.bj ]
  %.3547619 = phi i32 [ 2, %bb.bk ], [ 1, %bb.bj ]
  %i.ade = add nsw i32 %i.add, %.3547619          ; 5 uses
  store i32 %i.ade, ptr %i.h, align 4, !tbaa !26
  %i.adf = load i32, ptr %2, align 4, !tbaa !26   ; 3 uses
  %.not589 = icmp sge i32 %i.ade, %i.adf
  %.pre689 = load i32, ptr %1, align 4, !tbaa !26 ; 4 uses
  %i.adg = icmp slt i32 %i.adf, %.pre689
  %or.cond775 = select i1 %.not589, i1 %i.adg, i1 false
  %i.adh = icmp sgt i32 %i.ade, %.pre689
  %or.cond776 = select i1 %or.cond775, i1 true, i1 %i.adh
  br i1 %or.cond776, label %._crit_edge817, label %bb.an

._crit_edge817:                                   ; preds = %bb.bl, %.preheader
  %storemerge.lcssa = phi i32 [ 1, %.preheader ], [ %i.ade, %bb.bl ]
  %.lcssa = phi i32 [ %i.v, %.preheader ], [ %i.adf, %bb.bl ] ; 2 uses
  %.pre689.lcssa = phi i32 [ %.pre689811, %.preheader ], [ %.pre689, %bb.bl ]
  store i32 %.pre689.lcssa, ptr %i.a, align 4, !tbaa !26
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !26
  %i.adi = sext i32 %i.l to i64
  %i.adj = sext i32 %i.p to i64
  %invariant.gep800 = getelementptr [8 x i8], ptr %i.n, i64 %i.adi
  %invariant.gep802 = getelementptr [8 x i8], ptr %i.r, i64 %i.adj
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bq, %._crit_edge817
  %i.adk = phi i32 [ %i.aex, %bb.bq ], [ %.lcssa, %._crit_edge817 ]
  %i.adl = phi i32 [ %i.aey, %bb.bq ], [ %storemerge.lcssa, %._crit_edge817 ] ; 11 uses
  %i.adm = icmp slt i32 %i.adk, 0
  %i.adn = load i32, ptr %i.a, align 4, !tbaa !26 ; 2 uses
  br i1 %i.adm, label %.split, label %bb.bn

.split:                                           ; preds = %bb.bm
  %.not624 = icmp slt i32 %i.adl, %i.adn
  br i1 %.not624, label %bb.br, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %.not623 = icmp sgt i32 %i.adl, %i.adn
  br i1 %.not623, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %.split, %bb.bn
  %i.ado = load i32, ptr %2, align 4, !tbaa !26
  %i.adp = load i32, ptr %1, align 4, !tbaa !26   ; 2 uses
  %i.adq = sub nsw i32 %i.adp, %i.adl
  %i.adr = add nsw i32 %i.adq, 1                  ; 2 uses
  store i32 %i.adr, ptr %i.d, align 4, !tbaa !26
  %i.ads = call i32 @llvm.smin.i32(i32 %i.ado, i32 %i.adr) ; 3 uses
  store i32 %i.ads, ptr %i.j, align 4, !tbaa !26
  %i.adt = add i32 %i.adl, -1
  %i.adu = add i32 %i.adt, %i.ads                 ; 2 uses
  store i32 %i.adu, ptr %i.c, align 4, !tbaa !26
  %.not596656 = icmp sgt i32 %i.adl, %i.adu
  br i1 %.not596656, label %._crit_edge660, label %.lr.ph659.preheader

.lr.ph659.preheader:                              ; preds = %bb.bo
  %i.adv = sext i32 %i.adl to i64
  br label %.lr.ph659

.lr.ph659:                                        ; preds = %.lr.ph659.preheader, %.lr.ph659
  %indvars.iv678 = phi i64 [ %i.adv, %.lr.ph659.preheader ], [ %indvars.iv.next679, %.lr.ph659 ] ; 5 uses
  %i.adw = load i32, ptr %i.j, align 4, !tbaa !26
  %i.adx = trunc nsw i64 %indvars.iv678 to i32    ; 2 uses
  %i.ady = sub i32 %i.adl, %i.adx
  %i.adz = add i32 %i.ady, %i.adw
  store i32 %i.adz, ptr %i.d, align 4, !tbaa !26
  %i.aea = load i32, ptr %i.h, align 4, !tbaa !26
  %i.aeb = add nsw i32 %i.aea, -1
  store i32 %i.aeb, ptr %i.e, align 4, !tbaa !26
  %gep801 = getelementptr [8 x i8], ptr %invariant.gep800, i64 %indvars.iv678
  %gep803 = getelementptr [8 x i8], ptr %invariant.gep802, i64 %indvars.iv678
  %i.aec = mul i32 %i.t, %i.adx
  %i.aed = sext i32 %i.aec to i64
  %i.aee = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.aed
  call void @dgemv_(ptr noundef nonnull @.str.1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull @c_b8, ptr noundef %gep801, ptr noundef nonnull %5, ptr noundef %gep803, ptr noundef nonnull %8, ptr noundef nonnull @c_b9, ptr noundef %i.aee, ptr noundef nonnull @c__1) #5
  %indvars.iv.next679 = add nsw i64 %indvars.iv678, 1
end_hunk_1
