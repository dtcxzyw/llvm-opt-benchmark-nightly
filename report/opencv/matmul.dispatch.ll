Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/matmul.dispatch?download=true
inline.NumInlined: 1374
inline.NumDeleted: 190
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 224
loop-unroll.NumUnrolled: 233
begin_hunk_0_@_ZN2cv12cpu_baselineL13transform_32fEPKfPfS2_iii:bb.a

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.preheader189.us.i
  %indvars.iv225.i = phi i64 [ %indvars.iv.next226.i, %._crit_edge.us.us.i ], [ 0, %.preheader189.us.i ] ; 2 uses
  %.0176194.us.us.i = phi ptr [ %i.kf, %._crit_edge.us.us.i ], [ %2, %.preheader189.us.i ] ; 6 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %i.iy ; 2 uses
  %i.je = load float, ptr %i.jd, align 4, !tbaa !22 ; 2 uses
  br i1 %i.jc, label %.epil.preheader193, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv220.i = phi i64 [ %indvars.iv.next221.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.0193.us.us.i = phi float [ %i.jy, %.lr.ph.us.us.i.new ], [ %i.je, %.lr.ph.us.us.i ]
  %niter200 = phi i64 [ %niter200.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv220.i
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !22
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv220.i
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !22
  %i.jj = tail call float @llvm.fmuladd.f32(float %i.jg, float %i.ji, float %.0193.us.us.i)
  %indvars.iv.next221.i = or disjoint i64 %indvars.iv220.i, 1 ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !22
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !22
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.jn, float %i.jj)
  %indvars.iv.next221.i.1 = or disjoint i64 %indvars.iv220.i, 2 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i.1
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !22
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i.1
  %i.js = load float, ptr %i.jr, align 4, !tbaa !22
  %i.jt = tail call float @llvm.fmuladd.f32(float %i.jq, float %i.js, float %i.jo)
  %indvars.iv.next221.i.2 = or disjoint i64 %indvars.iv220.i, 3 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i.2
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !22
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i.2
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !22
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jx, float %i.jt) ; 3 uses
  %indvars.iv.next221.i.3 = add nuw nsw i64 %indvars.iv220.i, 4 ; 2 uses
  %niter200.next.3 = add i64 %niter200, 4         ; 2 uses
  %niter200.ncmp.3 = icmp eq i64 %niter200.next.3, %unroll_iter199
  br i1 %niter200.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !148

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod196.not, label %._crit_edge.us.us.i, label %.epil.preheader193

.epil.preheader193:                               ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv220.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next221.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.0193.us.us.i.epil.init = phi float [ %i.je, %.lr.ph.us.us.i ], [ %i.jy, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod198)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader193
  %indvars.iv220.i.epil = phi i64 [ %indvars.iv.next221.i.epil, %bb.e ], [ %indvars.iv220.i.epil.init, %.epil.preheader193 ] ; 3 uses
  %.0193.us.us.i.epil = phi float [ %i.kd, %bb.e ], [ %.0193.us.us.i.epil.init, %.epil.preheader193 ]
  %epil.iter195 = phi i64 [ %epil.iter195.next, %bb.e ], [ 0, %.epil.preheader193 ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv220.i.epil
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !22
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %indvars.iv220.i.epil
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !22
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.ka, float %i.kc, float %.0193.us.us.i.epil) ; 2 uses
  %indvars.iv.next221.i.epil = add nuw nsw i64 %indvars.iv220.i.epil, 1
  %epil.iter195.next = add i64 %epil.iter195, 1   ; 2 uses
  %epil.iter195.cmp.not = icmp eq i64 %epil.iter195.next, %xtraiter194
  br i1 %epil.iter195.cmp.not, label %._crit_edge.us.us.i, label %bb.e, !llvm.loop !149

._crit_edge.us.us.i:                              ; preds = %bb.e, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi float [ %i.jy, %._crit_edge.us.us.i.unr-lcssa ], [ %i.kd, %bb.e ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %.0178199.us.i, i64 %indvars.iv225.i
  store float %.lcssa, ptr %i.ke, align 4, !tbaa !22
  %indvars.iv.next226.i = add nuw nsw i64 %indvars.iv225.i, 1 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jd, i64 4
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next226.i, %wide.trip.count228.i
  br i1 %exitcond229.not.i, label %._crit_edge197.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !150

._crit_edge197.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %i.kg = add nuw nsw i32 %.4198.us.i, 1          ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.1201.us.i, i64 %i.iy
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.0178199.us.i, i64 %i.iz
  %exitcond230.not.i = icmp eq i32 %i.kg, %3
  br i1 %exitcond230.not.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.us.i, !llvm.loop !151

.preheader187.i:                                  ; preds = %bb.d
  br i1 %i.iw, label %.lr.ph.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit

.lr.ph.i:                                         ; preds = %.preheader187.i
  %i.kj = shl i32 %3, 2
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.kq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.kr = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.kt = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.kv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.kw = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.kx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ky = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.kz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.la = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.lb = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ld = zext i32 %i.kj to i64                   ; 3 uses
  %i.le = tail call i64 @llvm.usub.sat.i64(i64 %i.ld, i64 4) ; 2 uses
  %i.lf = lshr exact i64 %i.le, 2
  %i.lg = add nuw nsw i64 %i.lf, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.le, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.lh = tail call i64 @llvm.usub.sat.i64(i64 %i.ld, i64 4)
  %i.li = shl nuw nsw i64 %i.lh, 2
  %i.lj = add nuw nsw i64 %i.li, 16               ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.lj  ; 2 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.lj
  %scevgep30 = getelementptr i8, ptr %2, i64 80
  %bound0 = icmp ult ptr %1, %scevgep29
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %1, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lg, 2147483644              ; 3 uses
  %i.lk = shl nuw nsw i64 %n.vec, 2
  %i.ll = load float, ptr %2, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert34 = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.lm = load float, ptr %i.kk, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.lm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ln = load float, ptr %i.kl, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert36 = insertelement <4 x float> poison, float %i.ln, i64 0
  %i.lo = load float, ptr %i.km, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert38 = insertelement <4 x float> poison, float %i.lo, i64 0
  %i.lp = load float, ptr %i.kn, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert40 = insertelement <4 x float> poison, float %i.lp, i64 0
  %i.lq = load float, ptr %i.ko, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert44 = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.lr = load float, ptr %i.kp, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert42 = insertelement <4 x float> poison, float %i.lr, i64 0
  %broadcast.splat43 = shufflevector <4 x float> %broadcast.splatinsert42, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ls = load float, ptr %i.kq, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert46 = insertelement <4 x float> poison, float %i.ls, i64 0
  %i.lt = load float, ptr %i.kr, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert48 = insertelement <4 x float> poison, float %i.lt, i64 0
  %i.lu = load float, ptr %i.ks, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert50 = insertelement <4 x float> poison, float %i.lu, i64 0
  %i.lv = load float, ptr %i.kt, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.lv, i64 0
  %i.lw = load float, ptr %i.ku, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert52 = insertelement <4 x float> poison, float %i.lw, i64 0
  %broadcast.splat53 = shufflevector <4 x float> %broadcast.splatinsert52, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lx = load float, ptr %i.kv, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.ly = load float, ptr %i.kw, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert58 = insertelement <4 x float> poison, float %i.ly, i64 0
  %i.lz = load float, ptr %i.kx, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert60 = insertelement <4 x float> poison, float %i.lz, i64 0
  %i.ma = load float, ptr %i.ky, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert64 = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.mb = load float, ptr %i.kz, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %i.mb, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mc = load float, ptr %i.la, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert66 = insertelement <4 x float> poison, float %i.mc, i64 0
  %i.md = load float, ptr %i.lb, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert68 = insertelement <4 x float> poison, float %i.md, i64 0
  %i.me = load float, ptr %i.lc, align 4, !tbaa !22, !alias.scope !171
  %broadcast.splatinsert70 = insertelement <4 x float> poison, float %i.me, i64 0
  %i.mf = shufflevector <4 x float> %broadcast.splatinsert40, <4 x float> %broadcast.splatinsert50, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mg = shufflevector <4 x float> %broadcast.splatinsert38, <4 x float> %broadcast.splatinsert48, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mh = shufflevector <4 x float> %broadcast.splatinsert36, <4 x float> %broadcast.splatinsert46, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mi = shufflevector <4 x float> %broadcast.splatinsert34, <4 x float> %broadcast.splatinsert44, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mj = shufflevector <4 x float> %broadcast.splatinsert60, <4 x float> %broadcast.splatinsert70, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mk = shufflevector <4 x float> %broadcast.splatinsert58, <4 x float> %broadcast.splatinsert68, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.ml = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> %broadcast.splatinsert66, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  %i.mm = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> %broadcast.splatinsert64, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 4, i32 4, i32 4, i32 4>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mn = shl nuw i64 %index, 2                   ; 17 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 48
  %i.mv = load float, ptr %i.mo, align 4, !tbaa !22, !alias.scope !172
  %i.mw = load float, ptr %i.mq, align 4, !tbaa !22, !alias.scope !172
  %i.mx = load float, ptr %i.ms, align 4, !tbaa !22, !alias.scope !172
  %i.my = load float, ptr %i.mu, align 4, !tbaa !22, !alias.scope !172
  %i.mz = insertelement <4 x float> poison, float %i.mv, i64 0
  %i.na = insertelement <4 x float> %i.mz, float %i.mw, i64 1
  %i.nb = insertelement <4 x float> %i.na, float %i.mx, i64 2
  %i.nc = insertelement <4 x float> %i.nb, float %i.my, i64 3 ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 20
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 36
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 52
  %i.nl = load float, ptr %i.ne, align 4, !tbaa !22, !alias.scope !172
  %i.nm = load float, ptr %i.ng, align 4, !tbaa !22, !alias.scope !172
  %i.nn = load float, ptr %i.ni, align 4, !tbaa !22, !alias.scope !172
  %i.no = load float, ptr %i.nk, align 4, !tbaa !22, !alias.scope !172
  %i.np = insertelement <4 x float> poison, float %i.nl, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.nm, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.nn, i64 2
  %i.ns = insertelement <4 x float> %i.nr, float %i.no, i64 3 ; 4 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 24
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 56
  %i.ob = load float, ptr %i.nu, align 4, !tbaa !22, !alias.scope !172
  %i.oc = load float, ptr %i.nw, align 4, !tbaa !22, !alias.scope !172
  %i.od = load float, ptr %i.ny, align 4, !tbaa !22, !alias.scope !172
  %i.oe = load float, ptr %i.oa, align 4, !tbaa !22, !alias.scope !172
  %i.of = insertelement <4 x float> poison, float %i.ob, i64 0
  %i.og = insertelement <4 x float> %i.of, float %i.oc, i64 1
  %i.oh = insertelement <4 x float> %i.og, float %i.od, i64 2
  %i.oi = insertelement <4 x float> %i.oh, float %i.oe, i64 3 ; 2 uses
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 12
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 28
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 44
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.mn
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 60
  %i.or = load float, ptr %i.ok, align 4, !tbaa !22, !alias.scope !172
  %i.os = load float, ptr %i.om, align 4, !tbaa !22, !alias.scope !172
  %i.ot = load float, ptr %i.oo, align 4, !tbaa !22, !alias.scope !172
  %i.ou = load float, ptr %i.oq, align 4, !tbaa !22, !alias.scope !172
  %i.ov = insertelement <4 x float> poison, float %i.or, i64 0
  %i.ow = insertelement <4 x float> %i.ov, float %i.os, i64 1
  %i.ox = insertelement <4 x float> %i.ow, float %i.ot, i64 2
  %i.oy = insertelement <4 x float> %i.ox, float %i.ou, i64 3 ; 2 uses
  %i.oz = fmul <4 x float> %i.ns, %broadcast.splat
  %i.pa = fmul <4 x float> %i.ns, %broadcast.splat43
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.mn
  %i.pc = fmul <4 x float> %i.ns, %broadcast.splat53
  %i.pd = fmul <4 x float> %i.ns, %broadcast.splat63
  %i.pe = shufflevector <4 x float> %i.oy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pf = shufflevector <4 x float> %i.oi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pg = shufflevector <4 x float> %i.nc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ph = shufflevector <4 x float> %i.oz, <4 x float> %i.pa, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pi = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mi, <8 x float> %i.pg, <8 x float> %i.ph)
  %i.pj = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mh, <8 x float> %i.pf, <8 x float> %i.pi)
  %i.pk = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mg, <8 x float> %i.pe, <8 x float> %i.pj)
  %i.pl = fadd <8 x float> %i.mf, %i.pk
  %6 = shufflevector <4 x float> %i.oy, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %7 = shufflevector <4 x float> %i.oi, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %8 = shufflevector <4 x float> %i.nc, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.pm = shufflevector <4 x float> %i.pc, <4 x float> %i.pd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pn = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mm, <8 x float> %8, <8 x float> %i.pm)
  %i.po = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ml, <8 x float> %7, <8 x float> %i.pn)
  %i.pp = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.mk, <8 x float> %6, <8 x float> %i.po)
  %i.pq = fadd <8 x float> %i.mj, %i.pp
  %interleaved.vec = shufflevector <8 x float> %i.pl, <8 x float> %i.pq, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.pb, align 4, !tbaa !22, !alias.scope !173, !noalias !174
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pr = icmp eq i64 %index.next, %n.vec
  br i1 %i.pr, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lg, %n.vec
  br i1 %cmp.n, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv231.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.lk, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv231.i = phi i64 [ %indvars.iv.next232.i, %scalar.ph ], [ %indvars.iv231.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv231.i
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv231.i
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 4
  %i.pv = or disjoint i64 %indvars.iv231.i, 2     ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pv
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv231.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 12
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv231.i
  %i.qa = load <8 x float>, ptr %2, align 4, !tbaa !22 ; 5 uses
  %i.qb = shufflevector <8 x float> %i.qa, <8 x float> poison, <2 x i32> <i32 1, i32 6>
  %i.qc = shufflevector <8 x float> %i.qa, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.qd = shufflevector <8 x float> %i.qa, <8 x float> poison, <2 x i32> <i32 2, i32 7>
  %i.qe = load <2 x float>, ptr %i.kr, align 4, !tbaa !22 ; 2 uses
  %i.qf = shufflevector <8 x float> %i.qa, <8 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.qg = shufflevector <2 x float> %i.qf, <2 x float> %i.qe, <2 x i32> <i32 0, i32 2>
  %i.qh = shufflevector <2 x float> %i.qe, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qi = shufflevector <8 x float> %i.qa, <8 x float> %i.qh, <2 x i32> <i32 4, i32 9>
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.pv
  %i.qk = load float, ptr %i.pu, align 4, !tbaa !22
  %i.ql = load float, ptr %i.ps, align 4, !tbaa !22
  %i.qm = load float, ptr %i.pw, align 4, !tbaa !22
  %i.qn = load float, ptr %i.py, align 4, !tbaa !22
  %i.qo = insertelement <2 x float> poison, float %i.qk, i64 0
  %i.qp = shufflevector <2 x float> %i.qo, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qq = fmul <2 x float> %i.qp, %i.qb
  %i.qr = insertelement <2 x float> poison, float %i.ql, i64 0
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qc, <2 x float> %i.qs, <2 x float> %i.qq)
  %i.qu = insertelement <2 x float> poison, float %i.qm, i64 0
  %i.qv = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qd, <2 x float> %i.qv, <2 x float> %i.qt)
  %i.qx = insertelement <2 x float> poison, float %i.qn, i64 0
  %i.qy = shufflevector <2 x float> %i.qx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qg, <2 x float> %i.qy, <2 x float> %i.qw)
  %i.ra = fadd <2 x float> %i.qi, %i.qz
  store <2 x float> %i.ra, ptr %i.pz, align 4, !tbaa !22
  %i.rb = load <8 x float>, ptr %i.kt, align 4, !tbaa !22 ; 5 uses
  %i.rc = shufflevector <8 x float> %i.rb, <8 x float> poison, <2 x i32> <i32 1, i32 6>
  %i.rd = fmul <2 x float> %i.qp, %i.rc
  %i.re = shufflevector <8 x float> %i.rb, <8 x float> poison, <2 x i32> <i32 0, i32 5>
  %i.rf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.re, <2 x float> %i.qs, <2 x float> %i.rd)
  %i.rg = shufflevector <8 x float> %i.rb, <8 x float> poison, <2 x i32> <i32 2, i32 7>
  %i.rh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rg, <2 x float> %i.qv, <2 x float> %i.rf)
  %i.ri = load <2 x float>, ptr %i.lb, align 4, !tbaa !22 ; 2 uses
  %i.rj = shufflevector <8 x float> %i.rb, <8 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> %i.ri, <2 x i32> <i32 0, i32 2>
  %i.rl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rk, <2 x float> %i.qy, <2 x float> %i.rh)
  %i.rm = shufflevector <2 x float> %i.ri, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.rn = shufflevector <8 x float> %i.rb, <8 x float> %i.rm, <2 x i32> <i32 4, i32 9>
  %i.ro = fadd <2 x float> %i.rn, %i.rl
  store <2 x float> %i.ro, ptr %i.qj, align 4, !tbaa !22
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 4 ; 2 uses
  %i.rp = icmp samesign ult i64 %indvars.iv.next232.i, %i.ld
  br i1 %i.rp, label %scalar.ph, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !157

.preheader189.i:                                  ; preds = %.preheader189.i.preheader, %._crit_edge197.split.i
  %.0178199.i = phi ptr [ %i.so, %._crit_edge197.split.i ], [ %1, %.preheader189.i.preheader ] ; 6 uses
  %.4198.i = phi i32 [ %i.sn, %._crit_edge197.split.i ], [ 0, %.preheader189.i.preheader ]
  br i1 %i.jb, label %.epil.preheader, label %.preheader189.i.new

.preheader189.i.new:                              ; preds = %.preheader189.i, %.preheader189.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader189.i.new ], [ 0, %.preheader189.i ] ; 5 uses
  %.0176194.i = phi ptr [ %i.si, %.preheader189.i.new ], [ %2, %.preheader189.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader189.i.new ], [ 0, %.preheader189.i ]
  %i.rq = getelementptr inbounds [4 x i8], ptr %.0176194.i, i64 %i.iy ; 2 uses
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !22
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  store float %i.rr, ptr %i.rs, align 4, !tbaa !22
  %i.rt = getelementptr i8, ptr %i.rq, i64 4
  %i.ru = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %i.iy ; 2 uses
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !22
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 4
  store float %i.rv, ptr %i.rx, align 4, !tbaa !22
  %i.ry = getelementptr i8, ptr %i.ru, i64 4
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.iy ; 2 uses
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !22
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  store float %i.sa, ptr %i.sc, align 4, !tbaa !22
  %i.sd = getelementptr i8, ptr %i.rz, i64 4
  %i.se = getelementptr inbounds [4 x i8], ptr %i.sd, i64 %i.iy ; 2 uses
  %i.sf = load float, ptr %i.se, align 4, !tbaa !22
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 12
  store float %i.sf, ptr %i.sh, align 4, !tbaa !22
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.si = getelementptr i8, ptr %i.se, i64 4      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge197.split.i.unr-lcssa, label %.preheader189.i.new, !llvm.loop !150

._crit_edge197.split.i.unr-lcssa:                 ; preds = %.preheader189.i.new
  br i1 %lcmp.mod.not, label %._crit_edge197.split.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge197.split.i.unr-lcssa, %.preheader189.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader189.i ], [ %indvars.iv.next.i.3, %._crit_edge197.split.i.unr-lcssa ]
  %.0176194.i.epil.init = phi ptr [ %2, %.preheader189.i ], [ %i.si, %._crit_edge197.split.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod192)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.0176194.i.epil = phi ptr [ %.0176194.i.epil.init, %.epil.preheader ], [ %i.sm, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.sj = getelementptr inbounds [4 x i8], ptr %.0176194.i.epil, i64 %i.iy ; 2 uses
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !22
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %indvars.iv.i.epil
  store float %i.sk, ptr %i.sl, align 4, !tbaa !22
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.sm = getelementptr i8, ptr %i.sj, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge197.split.i, label %bb.f, !llvm.loop !158

._crit_edge197.split.i:                           ; preds = %bb.f, %._crit_edge197.split.i.unr-lcssa
  %i.sn = add nuw nsw i32 %.4198.i, 1             ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.0178199.i, i64 %i.iz
  %exitcond219.not.i = icmp eq i32 %i.sn, %3
  br i1 %exitcond219.not.i, label %_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.i, !llvm.loop !151

_ZN2cv12cpu_baselineL10transform_IffEEvPKT_PS2_PKT0_iii.exit: ; preds = %._crit_edge197.split.i, %._crit_edge197.split.us.us.i, %scalar.ph, %scalar.ph83, %scalar.ph117, %scalar.ph163, %middle.block, %middle.block101, %middle.block149, %middle.block184, %.preheader.i, %.preheader183.i, %.preheader185.i, %.preheader190.i, %.preheader189.lr.ph.i, %.preheader187.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL13transform_64fEPKdPdS2_iii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #7 {
bb.a:
  %i.a = icmp eq i32 %4, 2
  %i.b = icmp eq i32 %5, 2
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph212.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph212.i:                                      ; preds = %.preheader.i
  %i.d = shl nuw nsw i32 %3, 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = zext nneg i32 %i.d to i64                ; 3 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr exact i64 %i.k, 1
  %i.m = add nuw i64 %i.l, 1                      ; 2 uses
  %min.iters.check162 = icmp ult i64 %i.k, 6
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.memcheck150

vector.memcheck150:                               ; preds = %.lr.ph212.i
  %i.n = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  %scevgep151 = getelementptr i8, ptr %1, i64 %i.n ; 2 uses
  %scevgep152 = getelementptr i8, ptr %0, i64 %i.n
  %scevgep153 = getelementptr i8, ptr %2, i64 48
  %bound0154 = icmp ult ptr %1, %scevgep152
  %bound1155 = icmp ult ptr %0, %scevgep151
  %found.conflict156 = and i1 %bound0154, %bound1155
  %bound0157 = icmp ult ptr %1, %scevgep153
  %bound1158 = icmp ult ptr %2, %scevgep151
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %found.conflict156, %found.conflict159
  br i1 %conflict.rdx160, label %scalar.ph161.preheader, label %vector.ph163

vector.ph163:                                     ; preds = %vector.memcheck150
  %n.vec164 = and i64 %i.m, -2                    ; 3 uses
  %i.o = shl i64 %n.vec164, 1
  %i.p = load double, ptr %2, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert170 = insertelement <2 x double> poison, double %i.p, i64 0
  %broadcast.splat171 = shufflevector <2 x double> %broadcast.splatinsert170, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = load double, ptr %i.e, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert168 = insertelement <2 x double> poison, double %i.q, i64 0
  %broadcast.splat169 = shufflevector <2 x double> %broadcast.splatinsert168, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = load double, ptr %i.f, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert172 = insertelement <2 x double> poison, double %i.r, i64 0
  %i.s = load double, ptr %i.g, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert176 = insertelement <2 x double> poison, double %i.s, i64 0
  %broadcast.splat177 = shufflevector <2 x double> %broadcast.splatinsert176, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = load double, ptr %i.h, align 8, !tbaa !29, !alias.scope !204
  %broadcast.splatinsert174 = insertelement <2 x double> poison, double %i.t, i64 0
  %broadcast.splat175 = shufflevector <2 x double> %broadcast.splatinsert174, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = load double, ptr %i.i, align 8, !tbaa !29, !alias.scope !204
end_hunk_0
begin_hunk_1_@_ZN2cv12cpu_baselineL13transform_64fEPKdPdS2_iii:bb.a
  %xtraiter192 = and i64 %wide.trip.count223.i, 3 ; 3 uses
  %i.hq = icmp ult i32 %4, 4
  %unroll_iter197 = and i64 %wide.trip.count223.i, 2147483644
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  br label %.preheader189.us.i

.preheader189.us.i:                               ; preds = %._crit_edge197.split.us.us.i, %.preheader189.us.preheader.i
  %.1201.us.i = phi ptr [ %i.iv, %._crit_edge197.split.us.us.i ], [ %0, %.preheader189.us.preheader.i ] ; 6 uses
  %.0178199.us.i = phi ptr [ %i.iw, %._crit_edge197.split.us.us.i ], [ %1, %.preheader189.us.preheader.i ] ; 2 uses
  %.4198.us.i = phi i32 [ %i.iu, %._crit_edge197.split.us.us.i ], [ 0, %.preheader189.us.preheader.i ]
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.us.us.i, %.preheader189.us.i
  %indvars.iv225.i = phi i64 [ %indvars.iv.next226.i, %._crit_edge.us.us.i ], [ 0, %.preheader189.us.i ] ; 2 uses
  %.0176194.us.us.i = phi ptr [ %i.it, %._crit_edge.us.us.i ], [ %2, %.preheader189.us.i ] ; 6 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %i.hm ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !29 ; 2 uses
  br i1 %i.hq, label %.epil.preheader191, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %indvars.iv220.i = phi i64 [ %indvars.iv.next221.i.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 6 uses
  %.0193.us.us.i = phi double [ %i.im, %.lr.ph.us.us.i.new ], [ %i.hs, %.lr.ph.us.us.i ]
  %niter198 = phi i64 [ %niter198.next.3, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv220.i
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !29
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv220.i
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !29
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.hw, double %.0193.us.us.i)
  %indvars.iv.next221.i = or disjoint i64 %indvars.iv220.i, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !29
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !29
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.hz, double %i.ib, double %i.hx)
  %indvars.iv.next221.i.1 = or disjoint i64 %indvars.iv220.i, 2 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i.1
  %i.ie = load double, ptr %i.id, align 8, !tbaa !29
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i.1
  %i.ig = load double, ptr %i.if, align 8, !tbaa !29
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ig, double %i.ic)
  %indvars.iv.next221.i.2 = or disjoint i64 %indvars.iv220.i, 3 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv.next221.i.2
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !29
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv.next221.i.2
  %i.il = load double, ptr %i.ik, align 8, !tbaa !29
  %i.im = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.il, double %i.ih) ; 3 uses
  %indvars.iv.next221.i.3 = add nuw nsw i64 %indvars.iv220.i, 4 ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !193

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod194.not, label %._crit_edge.us.us.i, label %.epil.preheader191

.epil.preheader191:                               ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %indvars.iv220.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %indvars.iv.next221.i.3, %._crit_edge.us.us.i.unr-lcssa ]
  %.0193.us.us.i.epil.init = phi double [ %i.hs, %.lr.ph.us.us.i ], [ %i.im, %._crit_edge.us.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod196)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader191
  %indvars.iv220.i.epil = phi i64 [ %indvars.iv.next221.i.epil, %bb.e ], [ %indvars.iv220.i.epil.init, %.epil.preheader191 ] ; 3 uses
  %.0193.us.us.i.epil = phi double [ %i.ir, %bb.e ], [ %.0193.us.us.i.epil.init, %.epil.preheader191 ]
  %epil.iter193 = phi i64 [ %epil.iter193.next, %bb.e ], [ 0, %.epil.preheader191 ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.0176194.us.us.i, i64 %indvars.iv220.i.epil
  %i.io = load double, ptr %i.in, align 8, !tbaa !29
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %indvars.iv220.i.epil
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !29
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.io, double %i.iq, double %.0193.us.us.i.epil) ; 2 uses
  %indvars.iv.next221.i.epil = add nuw nsw i64 %indvars.iv220.i.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %._crit_edge.us.us.i, label %bb.e, !llvm.loop !194

._crit_edge.us.us.i:                              ; preds = %bb.e, %._crit_edge.us.us.i.unr-lcssa
  %.lcssa = phi double [ %i.im, %._crit_edge.us.us.i.unr-lcssa ], [ %i.ir, %bb.e ]
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.0178199.us.i, i64 %indvars.iv225.i
  store double %.lcssa, ptr %i.is, align 8, !tbaa !29
  %indvars.iv.next226.i = add nuw nsw i64 %indvars.iv225.i, 1 ; 2 uses
  %i.it = getelementptr i8, ptr %i.hr, i64 8
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next226.i, %wide.trip.count228.i
  br i1 %exitcond229.not.i, label %._crit_edge197.split.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !195

._crit_edge197.split.us.us.i:                     ; preds = %._crit_edge.us.us.i
  %i.iu = add nuw nsw i32 %.4198.us.i, 1          ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.1201.us.i, i64 %i.hm
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.0178199.us.i, i64 %i.hn
  %exitcond230.not.i = icmp eq i32 %i.iu, %3
  br i1 %exitcond230.not.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.us.i, !llvm.loop !196

.preheader187.i:                                  ; preds = %bb.d
  br i1 %i.hk, label %.lr.ph.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit

.lr.ph.i:                                         ; preds = %.preheader187.i
  %i.ix = shl i32 %3, 2                           ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.iz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.jj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.jk = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.jp = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.jr = zext i32 %i.ix to i64                   ; 3 uses
  %i.js = tail call i64 @llvm.usub.sat.i64(i64 %i.jr, i64 4)
  %i.jt = lshr exact i64 %i.js, 2
  %i.ju = add nuw nsw i64 %i.jt, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ix, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.jv = shl nuw nsw i64 %i.jr, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 %i.jv  ; 2 uses
  %scevgep29 = getelementptr i8, ptr %0, i64 %i.jv
  %scevgep30 = getelementptr i8, ptr %2, i64 160
  %bound0 = icmp ult ptr %1, %scevgep29
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound031 = icmp ult ptr %1, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %found.conflict, %found.conflict33
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ju, 2147483646              ; 3 uses
  %i.jw = shl nuw nsw i64 %n.vec, 2
  %i.jx = load double, ptr %2, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert34 = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.jy = load double, ptr %i.iy, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.jz = load double, ptr %i.iz, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert36 = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.ka = load double, ptr %i.ja, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert38 = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.kb = load double, ptr %i.jb, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert40 = insertelement <2 x double> poison, double %i.kb, i64 0
  %i.kc = load double, ptr %i.jc, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.kd = load double, ptr %i.jd, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.ke = load double, ptr %i.je, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.kf = load double, ptr %i.jf, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kg = load double, ptr %i.jg, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert50 = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.kh = load double, ptr %i.jh, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert54 = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.ki = load double, ptr %i.ji, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert52 = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kj = load double, ptr %i.jj, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert56 = insertelement <2 x double> poison, double %i.kj, i64 0
  %i.kk = load double, ptr %i.jk, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert58 = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.kl = load double, ptr %i.jl, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert60 = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.km = load double, ptr %i.jm, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert64 = insertelement <2 x double> poison, double %i.km, i64 0
  %i.kn = load double, ptr %i.jn, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.ko = load double, ptr %i.jo, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kp = load double, ptr %i.jp, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert68 = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kq = load double, ptr %i.jq, align 8, !tbaa !29, !alias.scope !216
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.kr = shufflevector <2 x double> %broadcast.splatinsert40, <2 x double> %broadcast.splatinsert50, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ks = shufflevector <2 x double> %broadcast.splatinsert38, <2 x double> %broadcast.splatinsert48, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.kt = shufflevector <2 x double> %broadcast.splatinsert36, <2 x double> %broadcast.splatinsert46, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ku = shufflevector <2 x double> %broadcast.splatinsert34, <2 x double> %broadcast.splatinsert44, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.kv = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> %broadcast.splatinsert42, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.kw = shufflevector <2 x double> %broadcast.splatinsert60, <2 x double> %broadcast.splatinsert70, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.kx = shufflevector <2 x double> %broadcast.splatinsert58, <2 x double> %broadcast.splatinsert68, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.ky = shufflevector <2 x double> %broadcast.splatinsert56, <2 x double> %broadcast.splatinsert66, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.kz = shufflevector <2 x double> %broadcast.splatinsert54, <2 x double> %broadcast.splatinsert64, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.la = shufflevector <2 x double> %broadcast.splatinsert52, <2 x double> %broadcast.splatinsert62, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.lb = shl nuw i64 %index, 2                   ; 9 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lb
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lb
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = load double, ptr %i.lc, align 8, !tbaa !29, !alias.scope !217
  %i.lg = load double, ptr %i.le, align 8, !tbaa !29, !alias.scope !217
  %i.lh = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.li = insertelement <2 x double> %i.lh, double %i.lg, i64 1 ; 2 uses
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lb
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lb
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.ln = load double, ptr %i.lk, align 8, !tbaa !29, !alias.scope !217
  %i.lo = load double, ptr %i.lm, align 8, !tbaa !29, !alias.scope !217
  %i.lp = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %i.lo, i64 1 ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lb
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lb
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 48
  %i.lv = load double, ptr %i.ls, align 8, !tbaa !29, !alias.scope !217
  %i.lw = load double, ptr %i.lu, align 8, !tbaa !29, !alias.scope !217
  %i.lx = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.ly = insertelement <2 x double> %i.lx, double %i.lw, i64 1 ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lb
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lb
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 56
  %i.md = load double, ptr %i.ma, align 8, !tbaa !29, !alias.scope !217
  %i.me = load double, ptr %i.mc, align 8, !tbaa !29, !alias.scope !217
  %i.mf = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.me, i64 1 ; 2 uses
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.lb
  %i.mi = shufflevector <2 x double> %i.mg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mj = shufflevector <2 x double> %i.ly, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mk = shufflevector <2 x double> %i.li, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ml = shufflevector <2 x double> %i.lq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mm = fmul <4 x double> %i.ml, %i.kv
  %i.mn = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ku, <4 x double> %i.mk, <4 x double> %i.mm)
  %i.mo = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kt, <4 x double> %i.mj, <4 x double> %i.mn)
  %i.mp = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ks, <4 x double> %i.mi, <4 x double> %i.mo)
  %i.mq = fadd <4 x double> %i.kr, %i.mp
  %6 = shufflevector <2 x double> %i.mg, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %7 = shufflevector <2 x double> %i.ly, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %8 = shufflevector <2 x double> %i.li, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mr = shufflevector <2 x double> %i.lq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ms = fmul <4 x double> %i.mr, %i.la
  %i.mt = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kz, <4 x double> %8, <4 x double> %i.ms)
  %i.mu = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ky, <4 x double> %7, <4 x double> %i.mt)
  %i.mv = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.kx, <4 x double> %6, <4 x double> %i.mu)
  %i.mw = fadd <4 x double> %i.kw, %i.mv
  %interleaved.vec = shufflevector <4 x double> %i.mq, <4 x double> %i.mw, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.mh, align 8, !tbaa !29, !alias.scope !218, !noalias !219
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !201

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ju, %n.vec
  br i1 %cmp.n, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv231.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %i.jw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv231.i = phi i64 [ %indvars.iv.next232.i, %scalar.ph ], [ %indvars.iv231.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv231.i
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv231.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = or disjoint i64 %indvars.iv231.i, 2     ; 2 uses
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nb
  %i.nd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv231.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv231.i
  %i.ng = load <8 x double>, ptr %2, align 8, !tbaa !29 ; 5 uses
  %i.nh = shufflevector <8 x double> %i.ng, <8 x double> poison, <2 x i32> <i32 1, i32 6>
  %i.ni = shufflevector <8 x double> %i.ng, <8 x double> poison, <2 x i32> <i32 0, i32 5>
  %i.nj = shufflevector <8 x double> %i.ng, <8 x double> poison, <2 x i32> <i32 2, i32 7>
  %i.nk = load <2 x double>, ptr %i.jf, align 8, !tbaa !29
  %i.nl = shufflevector <2 x double> %i.nk, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.nm = shufflevector <8 x double> %i.ng, <8 x double> %i.nl, <2 x i32> <i32 3, i32 8>
  %i.nn = shufflevector <8 x double> %i.ng, <8 x double> %i.nl, <2 x i32> <i32 4, i32 9>
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.nb
  %i.np = load double, ptr %i.na, align 8, !tbaa !29
  %i.nq = load double, ptr %i.my, align 8, !tbaa !29
  %i.nr = load double, ptr %i.nc, align 8, !tbaa !29
  %i.ns = load double, ptr %i.ne, align 8, !tbaa !29
  %i.nt = insertelement <2 x double> poison, double %i.np, i64 0
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nv = fmul <2 x double> %i.nu, %i.nh
  %i.nw = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.nx = shufflevector <2 x double> %i.nw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ny = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.nx, <2 x double> %i.nv)
  %i.nz = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ob = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.oa, <2 x double> %i.ny)
  %i.oc = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.oe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.od, <2 x double> %i.ob)
  %i.of = fadd <2 x double> %i.nn, %i.oe
  store <2 x double> %i.of, ptr %i.nf, align 8, !tbaa !29
  %i.og = load <8 x double>, ptr %i.jh, align 8, !tbaa !29 ; 5 uses
  %i.oh = shufflevector <8 x double> %i.og, <8 x double> poison, <2 x i32> <i32 1, i32 6>
  %i.oi = fmul <2 x double> %i.nu, %i.oh
  %i.oj = shufflevector <8 x double> %i.og, <8 x double> poison, <2 x i32> <i32 0, i32 5>
  %i.ok = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oj, <2 x double> %i.nx, <2 x double> %i.oi)
  %i.ol = shufflevector <8 x double> %i.og, <8 x double> poison, <2 x i32> <i32 2, i32 7>
  %i.om = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ol, <2 x double> %i.oa, <2 x double> %i.ok)
  %i.on = load <2 x double>, ptr %i.jp, align 8, !tbaa !29
  %i.oo = shufflevector <2 x double> %i.on, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.op = shufflevector <8 x double> %i.og, <8 x double> %i.oo, <2 x i32> <i32 3, i32 8>
  %i.oq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> %i.od, <2 x double> %i.om)
  %i.or = shufflevector <8 x double> %i.og, <8 x double> %i.oo, <2 x i32> <i32 4, i32 9>
  %i.os = fadd <2 x double> %i.or, %i.oq
  store <2 x double> %i.os, ptr %i.no, align 8, !tbaa !29
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 4 ; 2 uses
  %i.ot = icmp samesign ult i64 %indvars.iv.next232.i, %i.jr
  br i1 %i.ot, label %scalar.ph, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, !llvm.loop !202

.preheader189.i:                                  ; preds = %.preheader189.i.preheader, %._crit_edge197.split.i
  %.0178199.i = phi ptr [ %i.ps, %._crit_edge197.split.i ], [ %1, %.preheader189.i.preheader ] ; 6 uses
  %.4198.i = phi i32 [ %i.pr, %._crit_edge197.split.i ], [ 0, %.preheader189.i.preheader ]
  br i1 %i.hp, label %.epil.preheader, label %.preheader189.i.new

.preheader189.i.new:                              ; preds = %.preheader189.i, %.preheader189.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader189.i.new ], [ 0, %.preheader189.i ] ; 5 uses
  %.0176194.i = phi ptr [ %i.pm, %.preheader189.i.new ], [ %2, %.preheader189.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader189.i.new ], [ 0, %.preheader189.i ]
  %i.ou = getelementptr inbounds [8 x i8], ptr %.0176194.i, i64 %i.hm ; 2 uses
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !29
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  store double %i.ov, ptr %i.ow, align 8, !tbaa !29
  %i.ox = getelementptr i8, ptr %i.ou, i64 8
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.hm ; 2 uses
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !29
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store double %i.oz, ptr %i.pb, align 8, !tbaa !29
  %i.pc = getelementptr i8, ptr %i.oy, i64 8
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.pc, i64 %i.hm ; 2 uses
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !29
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store double %i.pe, ptr %i.pg, align 8, !tbaa !29
  %i.ph = getelementptr i8, ptr %i.pd, i64 8
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.ph, i64 %i.hm ; 2 uses
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !29
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  store double %i.pj, ptr %i.pl, align 8, !tbaa !29
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pi, i64 8      ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge197.split.i.unr-lcssa, label %.preheader189.i.new, !llvm.loop !195

._crit_edge197.split.i.unr-lcssa:                 ; preds = %.preheader189.i.new
  br i1 %lcmp.mod.not, label %._crit_edge197.split.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge197.split.i.unr-lcssa, %.preheader189.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader189.i ], [ %indvars.iv.next.i.3, %._crit_edge197.split.i.unr-lcssa ]
  %.0176194.i.epil.init = phi ptr [ %2, %.preheader189.i ], [ %i.pm, %._crit_edge197.split.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod190)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 2 uses
  %.0176194.i.epil = phi ptr [ %.0176194.i.epil.init, %.epil.preheader ], [ %i.pq, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.pn = getelementptr inbounds [8 x i8], ptr %.0176194.i.epil, i64 %i.hm ; 2 uses
  %i.po = load double, ptr %i.pn, align 8, !tbaa !29
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %indvars.iv.i.epil
  store double %i.po, ptr %i.pp, align 8, !tbaa !29
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %i.pq = getelementptr i8, ptr %i.pn, i64 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge197.split.i, label %bb.f, !llvm.loop !203

._crit_edge197.split.i:                           ; preds = %bb.f, %._crit_edge197.split.i.unr-lcssa
  %i.pr = add nuw nsw i32 %.4198.i, 1             ; 2 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.0178199.i, i64 %i.hn
  %exitcond219.not.i = icmp eq i32 %i.pr, %3
  br i1 %exitcond219.not.i, label %_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit, label %.preheader189.i, !llvm.loop !196

_ZN2cv12cpu_baselineL10transform_IddEEvPKT_PS2_PKT0_iii.exit: ; preds = %._crit_edge197.split.i, %._crit_edge197.split.us.us.i, %scalar.ph, %scalar.ph83, %scalar.ph115, %scalar.ph161, %middle.block, %middle.block99, %middle.block147, %middle.block182, %.preheader.i, %.preheader183.i, %.preheader185.i, %.preheader190.i, %.preheader189.lr.ph.i, %.preheader187.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @_ZN2cv12cpu_baseline20getDiagTransformFuncEi(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr inbounds [8 x i8], ptr @_ZZN2cv12cpu_baseline20getDiagTransformFuncEiE16diagTransformTab, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZN2cv12cpu_baselineL16diagtransform_8uEPKhPhPKfiii(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 %5) #6 {
bb.a:
  %i.a = icmp sgt i32 %3, 0                       ; 4 uses
  switch i32 %4, label %.preheader100.i [
    i32 2, label %.preheader101.i
    i32 3, label %.preheader103.i
    i32 4, label %.preheader105.i
  ]

.preheader105.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.lr.ph.i:                                         ; preds = %.preheader105.i
  %i.b = shl nuw nsw i32 %3, 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.j = zext nneg i32 %i.b to i64
  br label %bb.d

.preheader103.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph109.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.lr.ph109.i:                                      ; preds = %.preheader103.i
  %i.k = mul nuw nsw i32 %3, 3
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = zext nneg i32 %i.k to i64
  br label %bb.c

.preheader101.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.lr.ph111.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.lr.ph111.i:                                      ; preds = %.preheader101.i
  %i.q = shl nuw nsw i32 %3, 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = zext nneg i32 %i.q to i64
  br label %bb.b

.preheader100.i:                                  ; preds = %bb.a
  br i1 %i.a, label %.preheader.lr.ph.i, label %_ZN2cv12cpu_baselineL14diagtransform_IhfEEvPKT_PS2_PKT0_iii.exit

.preheader.lr.ph.i:                               ; preds = %.preheader100.i
end_hunk_1
