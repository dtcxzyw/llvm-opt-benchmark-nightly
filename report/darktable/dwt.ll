Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/dwt?download=true
inline.NumInlined: 18
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dwt_denoise:bb.a
  br i1 %min.iters.check106, label %.lr.ph.i.preheader, label %vector.body111

vector.body111:                                   ; preds = %.lr.ph.preheader.i, %vector.body111
  %index112 = phi i64 [ %index.next119, %vector.body111 ], [ 0, %.lr.ph.preheader.i ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %index112
  %wide.load113 = load <8 x float>, ptr %i.ir, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %wide.load113, splat (float 2.000000e+00)
  %i.it = sub nuw nsw i64 %i.ic, %index112
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.it
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -28
  %wide.load114.a = load <8 x float>, ptr %i.iv, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %reverse115 = shufflevector <8 x float> %wide.load114.a, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.iw = fadd reassoc nsz arcp contract afn <8 x float> %i.is, %reverse115
  %i.ix = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index112
  %wide.load116.a = load <8 x float>, ptr %i.ix, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.iy = fadd reassoc nsz arcp contract afn <8 x float> %i.iw, %wide.load116.a
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.iy, splat (float 6.250000e-02) ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index112 ; 2 uses
  %wide.load117 = load <8 x float>, ptr %i.ja, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.jb = fsub reassoc nsz arcp contract afn <8 x float> %wide.load117, %i.iz ; 2 uses
  store <8 x float> %i.iz, ptr %i.ja, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.jc = fsub reassoc nsz arcp contract afn <8 x float> %i.jb, %broadcast.splat110 ; 2 uses
  %i.jd = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jc, zeroinitializer
  %i.je = select reassoc nsz arcp contract afn <8 x i1> %i.jd, <8 x float> %i.jc, <8 x float> zeroinitializer
  %i.jf = fadd reassoc nsz arcp contract afn <8 x float> %i.jb, %broadcast.splat110 ; 2 uses
  %i.jg = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jf, zeroinitializer
  %i.jh = select reassoc nsz arcp contract afn <8 x i1> %i.jg, <8 x float> %i.jf, <8 x float> zeroinitializer
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index112 ; 2 uses
  %wide.load118 = load <8 x float>, ptr %i.ji, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.jj = fadd reassoc nsz arcp contract afn <8 x float> %i.jh, %wide.load118
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.jj, %i.je
  store <8 x float> %i.jk, ptr %i.ji, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %index.next119 = add nuw i64 %index112, 8       ; 2 uses
  %i.jl = icmp eq i64 %index.next119, %n.vec108
  br i1 %i.jl, label %middle.block120, label %vector.body111, !llvm.loop !99

middle.block120:                                  ; preds = %vector.body111
  br i1 %cmp.n121, label %.preheader121.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block120
  %indvars.iv.i32.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec108, %middle.block120 ]
  br label %.lr.ph.i

.preheader121.i:                                  ; preds = %.lr.ph.i, %middle.block120, %bb.f
  br i1 %i.if, label %.lr.ph124.preheader.i, label %._crit_edge.i31

.lr.ph124.preheader.i:                            ; preds = %.preheader121.i
  %invariant.gep157.i = getelementptr [4 x i8], ptr %i.ip, i64 %i.ic ; 2 uses
  br i1 %min.iters.check89, label %.lr.ph124.i.preheader, label %vector.body94

vector.body94:                                    ; preds = %.lr.ph124.preheader.i, %vector.body94
  %index95 = phi i64 [ %index.next101, %vector.body94 ], [ 0, %.lr.ph124.preheader.i ] ; 3 uses
  %i.jm = add nuw i64 %i.ic, %index95             ; 4 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.jm
  %wide.load96.a = load <8 x float>, ptr %i.jn, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.jo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load96.a, splat (float 2.000000e+00)
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %index95
  %wide.load97.a = load <8 x float>, ptr %i.jp, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.jq = fadd reassoc nsz arcp contract afn <8 x float> %i.jo, %wide.load97.a
  %i.jr = getelementptr [4 x i8], ptr %invariant.gep157.i, i64 %i.jm
  %wide.load98.a = load <8 x float>, ptr %i.jr, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.js = fadd reassoc nsz arcp contract afn <8 x float> %i.jq, %wide.load98.a
  %i.jt = fmul reassoc nsz arcp contract afn <8 x float> %i.js, splat (float 6.250000e-02) ; 2 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.jm ; 2 uses
  %wide.load99 = load <8 x float>, ptr %i.ju, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.jv = fsub reassoc nsz arcp contract afn <8 x float> %wide.load99, %i.jt ; 2 uses
  store <8 x float> %i.jt, ptr %i.ju, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.jw = fsub reassoc nsz arcp contract afn <8 x float> %i.jv, %broadcast.splat93 ; 2 uses
  %i.jx = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.jw, zeroinitializer
  %i.jy = select reassoc nsz arcp contract afn <8 x i1> %i.jx, <8 x float> %i.jw, <8 x float> zeroinitializer
  %i.jz = fadd reassoc nsz arcp contract afn <8 x float> %i.jv, %broadcast.splat93 ; 2 uses
  %i.ka = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.jz, zeroinitializer
  %i.kb = select reassoc nsz arcp contract afn <8 x i1> %i.ka, <8 x float> %i.jz, <8 x float> zeroinitializer
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.jm ; 2 uses
  %wide.load100 = load <8 x float>, ptr %i.kc, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.kd = fadd reassoc nsz arcp contract afn <8 x float> %i.kb, %wide.load100
  %i.ke = fadd reassoc nsz arcp contract afn <8 x float> %i.kd, %i.jy
  store <8 x float> %i.ke, ptr %i.kc, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %index.next101 = add nuw i64 %index95, 8        ; 2 uses
  %i.kf = icmp eq i64 %index.next101, %n.vec91
  br i1 %i.kf, label %middle.block102, label %vector.body94, !llvm.loop !100

middle.block102:                                  ; preds = %vector.body94
  br i1 %cmp.n103, label %._crit_edge.i31, label %.lr.ph124.i.preheader

.lr.ph124.i.preheader:                            ; preds = %.lr.ph124.preheader.i, %middle.block102
  %indvars.iv139.i.ph = phi i64 [ %i.ic, %.lr.ph124.preheader.i ], [ %i.ik, %middle.block102 ]
  br label %.lr.ph124.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %.lr.ph.i ], [ %indvars.iv.i32.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv.i32
  %i.kh = load float, ptr %i.kg, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.ki = fmul reassoc nsz arcp contract afn float %i.kh, 2.000000e+00
  %i.kj = sub nuw nsw i64 %i.ic, %indvars.iv.i32
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.kj
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.km = fadd reassoc nsz arcp contract afn float %i.ki, %i.kl
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i32
  %i.kn = load float, ptr %gep.i, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.ko = fadd reassoc nsz arcp contract afn float %i.km, %i.kn
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, 6.250000e-02 ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv.i32 ; 2 uses
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.ks = fsub reassoc nsz arcp contract afn float %i.kr, %i.kp ; 2 uses
  store float %i.kp, ptr %i.kq, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.kt = fsub reassoc nsz arcp contract afn float %i.ks, %i.ib ; 2 uses
  %i.ku = fcmp reassoc nsz arcp contract afn ogt float %i.kt, 0.000000e+00
  %i.kv = select reassoc nsz arcp contract afn i1 %i.ku, float %i.kt, float 0.000000e+00
  %i.kw = fadd reassoc nsz arcp contract afn float %i.ks, %i.ib ; 2 uses
  %i.kx = fcmp reassoc nsz arcp contract afn olt float %i.kw, 0.000000e+00
  %i.ky = select reassoc nsz arcp contract afn i1 %i.kx, float %i.kw, float 0.000000e+00
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i32 ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.lb = fadd reassoc nsz arcp contract afn float %i.ky, %i.la
  %i.lc = fadd reassoc nsz arcp contract afn float %i.lb, %i.kv
  store float %i.lc, ptr %i.kz, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i
  br i1 %exitcond.not.i34, label %.preheader121.i, label %.lr.ph.i, !llvm.loop !101

._crit_edge.i31:                                  ; preds = %.lr.ph124.i, %middle.block102, %.preheader121.i
  br i1 %i.ih, label %.lr.ph127.i.preheader, label %._crit_edge128.i

.lr.ph127.i.preheader:                            ; preds = %._crit_edge.i31
  br i1 %min.iters.check74, label %.lr.ph127.i.preheader240, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph127.i.preheader, %vector.body77
  %index78 = phi i64 [ %index.next84, %vector.body77 ], [ 0, %.lr.ph127.i.preheader ] ; 2 uses
  %i.ld = add nuw i64 %i.ig, %index78             ; 5 uses
  %i.le = add i64 %i.ic, %i.ld
  %i.lf = sub i64 %.neg35, %i.le
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.lf
  %i.lh = getelementptr inbounds i8, ptr %i.lg, i64 -28
  %wide.load79.a = load <8 x float>, ptr %i.lh, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %reverse = shufflevector <8 x float> %wide.load79.a, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.li = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ld
  %wide.load80.a = load <8 x float>, ptr %i.li, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.lj = fmul reassoc nsz arcp contract afn <8 x float> %wide.load80.a, splat (float 2.000000e+00)
  %i.lk = sub nsw i64 %i.ld, %i.ic
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.lk
  %wide.load81.a = load <8 x float>, ptr %i.ll, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.lm = fadd reassoc nsz arcp contract afn <8 x float> %i.lj, %wide.load81.a
  %i.ln = fadd reassoc nsz arcp contract afn <8 x float> %i.lm, %reverse
  %i.lo = fmul reassoc nsz arcp contract afn <8 x float> %i.ln, splat (float 6.250000e-02) ; 2 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.ld ; 2 uses
  %wide.load82 = load <8 x float>, ptr %i.lp, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.lq = fsub reassoc nsz arcp contract afn <8 x float> %wide.load82, %i.lo ; 2 uses
  store <8 x float> %i.lo, ptr %i.lp, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.lr = fsub reassoc nsz arcp contract afn <8 x float> %i.lq, %broadcast.splat ; 2 uses
  %i.ls = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.lr, zeroinitializer
  %i.lt = select reassoc nsz arcp contract afn <8 x i1> %i.ls, <8 x float> %i.lr, <8 x float> zeroinitializer
  %i.lu = fadd reassoc nsz arcp contract afn <8 x float> %i.lq, %broadcast.splat ; 2 uses
  %i.lv = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.lu, zeroinitializer
  %i.lw = select reassoc nsz arcp contract afn <8 x i1> %i.lv, <8 x float> %i.lu, <8 x float> zeroinitializer
  %i.lx = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.ld ; 2 uses
  %wide.load83 = load <8 x float>, ptr %i.lx, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.ly = fadd reassoc nsz arcp contract afn <8 x float> %i.lw, %wide.load83
  %i.lz = fadd reassoc nsz arcp contract afn <8 x float> %i.ly, %i.lt
  store <8 x float> %i.lz, ptr %i.lx, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %index.next84 = add nuw i64 %index78, 8         ; 2 uses
  %i.ma = icmp eq i64 %index.next84, %n.vec76
  br i1 %i.ma, label %middle.block85, label %vector.body77, !llvm.loop !102

middle.block85:                                   ; preds = %vector.body77
  br i1 %cmp.n86, label %._crit_edge128.i, label %.lr.ph127.i.preheader240

.lr.ph127.i.preheader240:                         ; preds = %.lr.ph127.i.preheader, %middle.block85
  %indvars.iv142.i.ph = phi i64 [ %i.ig, %.lr.ph127.i.preheader ], [ %i.im, %middle.block85 ]
  br label %.lr.ph127.i

.lr.ph124.i:                                      ; preds = %.lr.ph124.i.preheader, %.lr.ph124.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %.lr.ph124.i ], [ %indvars.iv139.i.ph, %.lr.ph124.i.preheader ] ; 6 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %indvars.iv139.i
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, 2.000000e+00
  %i.me = sub nuw nsw i64 %indvars.iv139.i, %i.ic
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.me
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.mh = fadd reassoc nsz arcp contract afn float %i.md, %i.mg
  %gep158.i = getelementptr [4 x i8], ptr %invariant.gep157.i, i64 %indvars.iv139.i
  %i.mi = load float, ptr %gep158.i, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mh, %i.mi
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mj, 6.250000e-02 ; 2 uses
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.io, i64 %indvars.iv139.i ; 2 uses
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.mn = fsub reassoc nsz arcp contract afn float %i.mm, %i.mk ; 2 uses
  store float %i.mk, ptr %i.ml, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.mo = fsub reassoc nsz arcp contract afn float %i.mn, %i.ib ; 2 uses
  %i.mp = fcmp reassoc nsz arcp contract afn ogt float %i.mo, 0.000000e+00
  %i.mq = select reassoc nsz arcp contract afn i1 %i.mp, float %i.mo, float 0.000000e+00
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mn, %i.ib ; 2 uses
  %i.ms = fcmp reassoc nsz arcp contract afn olt float %i.mr, 0.000000e+00
  %i.mt = select reassoc nsz arcp contract afn i1 %i.ms, float %i.mr, float 0.000000e+00
  %i.mu = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %indvars.iv139.i ; 2 uses
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.mw = fadd reassoc nsz arcp contract afn float %i.mt, %i.mv
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, %i.mq
  store float %i.mx, ptr %i.mu, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1 ; 2 uses
  %5 = icmp ugt i64 %i.ie, %indvars.iv.next140.i
  br i1 %5, label %.lr.ph124.i, label %._crit_edge.i31, !llvm.loop !103

._crit_edge128.i:                                 ; preds = %.lr.ph127.i, %middle.block85, %._crit_edge.i31
  br i1 %brmerge.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %._crit_edge128.i
  br i1 %min.iters.check, label %.lr.ph130.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 96
  %wide.load = load <8 x float>, ptr %i.my, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %wide.load61.a = load <8 x float>, ptr %i.mz, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %wide.load62.a = load <8 x float>, ptr %i.na, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %wide.load63.a = load <8 x float>, ptr %i.nb, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index ; 5 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 32 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 64 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 96 ; 2 uses
  %wide.load64.a = load <8 x float>, ptr %i.nc, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %wide.load65.a = load <8 x float>, ptr %i.nd, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %wide.load66 = load <8 x float>, ptr %i.ne, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %wide.load67 = load <8 x float>, ptr %i.nf, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.ng = fadd reassoc nsz arcp contract afn <8 x float> %wide.load64.a, %wide.load
  %i.nh = fadd reassoc nsz arcp contract afn <8 x float> %wide.load65.a, %wide.load61.a
  %i.ni = fadd reassoc nsz arcp contract afn <8 x float> %wide.load66, %wide.load62.a
  %i.nj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load67, %wide.load63.a
  store <8 x float> %i.ng, ptr %i.nc, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  store <8 x float> %i.nh, ptr %i.nd, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  store <8 x float> %i.ni, ptr %i.ne, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  store <8 x float> %i.nj, ptr %i.nf, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.nk = icmp eq i64 %index.next, %n.vec
  br i1 %i.nk, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph130.i.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index69 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index69
  %wide.load70 = load <4 x float>, ptr %i.nl, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %index69 ; 2 uses
  %wide.load71 = load <4 x float>, ptr %i.nm, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.nn = fadd reassoc nsz arcp contract afn <4 x float> %wide.load71, %wide.load70
  store <4 x float> %i.nn, ptr %i.nm, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %index.next72 = add nuw i64 %index69, 4         ; 2 uses
  %i.no = icmp eq i64 %index.next72, %n.vec68
  br i1 %i.no, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n73, label %.loopexit.i, label %.lr.ph130.i.preheader

.lr.ph130.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv145.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ]
  br label %.lr.ph130.i

.lr.ph127.i:                                      ; preds = %.lr.ph127.i.preheader240, %.lr.ph127.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i, %.lr.ph127.i ], [ %indvars.iv142.i.ph, %.lr.ph127.i.preheader240 ] ; 6 uses
  %i.np = add i64 %i.ic, %indvars.iv142.i
  %i.nq = sub i64 %.neg35, %i.np
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.nq
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %indvars.iv142.i
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nu, 2.000000e+00
  %i.nw = sub nsw i64 %indvars.iv142.i, %i.ic
  %i.nx = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.nw
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !49, !alias.scope !89, !noalias !92
  %i.nz = fadd reassoc nsz arcp contract afn float %i.nv, %i.ny
  %i.oa = fadd reassoc nsz arcp contract afn float %i.nz, %i.ns
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, 6.250000e-02 ; 2 uses
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.io, i64 %indvars.iv142.i ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.oe = fsub reassoc nsz arcp contract afn float %i.od, %i.ob ; 2 uses
  store float %i.ob, ptr %i.oc, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.of = fsub reassoc nsz arcp contract afn float %i.oe, %i.ib ; 2 uses
  %i.og = fcmp reassoc nsz arcp contract afn ogt float %i.of, 0.000000e+00
  %i.oh = select reassoc nsz arcp contract afn i1 %i.og, float %i.of, float 0.000000e+00
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oe, %i.ib ; 2 uses
  %i.oj = fcmp reassoc nsz arcp contract afn olt float %i.oi, 0.000000e+00
  %i.ok = select reassoc nsz arcp contract afn i1 %i.oj, float %i.oi, float 0.000000e+00
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %indvars.iv142.i ; 2 uses
  %i.om = load float, ptr %i.ol, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.on = fadd reassoc nsz arcp contract afn float %i.ok, %i.om
  %i.oo = fadd reassoc nsz arcp contract afn float %i.on, %i.oh
  store float %i.oo, ptr %i.ol, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %6 = icmp ult i64 %indvars.iv.next143.i, %i.a
  br i1 %6, label %.lr.ph127.i, label %._crit_edge128.i, !llvm.loop !106

.lr.ph130.i:                                      ; preds = %.lr.ph130.i.preheader, %.lr.ph130.i
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %.lr.ph130.i ], [ %indvars.iv145.i.ph, %.lr.ph130.i.preheader ] ; 3 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv145.i
  %i.oq = load float, ptr %i.op, align 4, !tbaa !49, !alias.scope !97, !noalias !98
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %indvars.iv145.i ; 2 uses
  %i.os = load float, ptr %i.or, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %i.ot = fadd reassoc nsz arcp contract afn float %i.os, %i.oq
  store float %i.ot, ptr %i.or, align 4, !tbaa !49, !alias.scope !95, !noalias !96
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i, 1 ; 2 uses
  %exitcond148.not.i = icmp eq i64 %indvars.iv.next146.i, %i.a
  br i1 %exitcond148.not.i, label %.loopexit.i, label %.lr.ph130.i, !llvm.loop !107

.loopexit.i:                                      ; preds = %.lr.ph130.i, %middle.block, %vec.epilog.middle.block, %._crit_edge128.i
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next150.i, %i.c
  br i1 %exitcond152.not.i, label %dwt_denoise_horiz_1ch.exit.loopexit, label %bb.f

dwt_denoise_horiz_1ch.exit.loopexit:              ; preds = %.loopexit.i
  br i1 %i.r, label %.lr.ph48.i, label %._crit_edge

bb.g:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #7

declare void @dt_iop_image_fill(ptr noundef, float noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare void @dt_iop_image_add_image(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr>, <4 x i1>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"dwt_params_t", !13, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !14, i64 32, !15, i64 40}
!13 = !{!"p1 float", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"float", !9, i64 0}
!16 = !{!12, !8, i64 8}
!17 = !{!12, !8, i64 12}
!18 = !{!12, !8, i64 16}
!19 = !{!12, !8, i64 20}
!20 = !{!12, !8, i64 24}
!21 = !{!12, !8, i64 28}
!22 = !{!12, !14, i64 32}
!23 = !{!12, !15, i64 40}
!24 = !{!8, !8, i64 0}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !27, !26}
!29 = distinct !{!29, !26, !27}
!30 = distinct !{!30, !27, !26}
!31 = distinct !{!31, !26, !27}
!32 = distinct !{!32, !27, !26}
!33 = !{!13, !13, i64 0}
!34 = distinct !{null}
!35 = !{!36, !8, i64 0}
!36 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !15, i64 16}
!37 = !{!36, !8, i64 4}
!38 = !{!36, !15, i64 16}
!39 = !{!40}
!40 = distinct !{!40, !41, !"dwt_decompose_layer: argument 0"}
!41 = distinct !{!41, !"dwt_decompose_layer"}
!42 = !{!43}
!43 = distinct !{!43, !41, !"dwt_decompose_layer: argument 1"}
!44 = !{!45}
!45 = distinct !{!45, !46, !"dwt_decompose_vert: argument 0"}
!46 = distinct !{!46, !"dwt_decompose_vert"}
!47 = !{!48}
!48 = distinct !{!48, !46, !"dwt_decompose_vert: argument 1"}
!49 = !{!15, !15, i64 0}
!50 = !{!48, !43}
!51 = !{!45, !40}
!52 = distinct !{!52, !26, !27}
!53 = distinct !{!53, !27, !26}
!54 = distinct !{!54, !26, !27}
!55 = distinct !{!55, !27, !26}
!56 = !{!57}
!57 = distinct !{!57, !58, !"dwt_decompose_horiz: argument 0"}
!58 = distinct !{!58, !"dwt_decompose_horiz"}
!59 = !{!60}
!60 = distinct !{!60, !58, !"dwt_decompose_horiz: argument 1"}
!61 = !{!57, !40}
!62 = !{!60, !43}
!63 = !{!57, !60, !40, !43}
!64 = distinct !{!64, !26, !27}
!65 = distinct !{!65, !27, !26}
!66 = distinct !{!66, !26, !27}
!67 = distinct !{!67, !27, !26}
!68 = distinct !{!68, !26, !27}
!69 = distinct !{!69, !27, !26}
!70 = distinct !{!70, !26, !27}
!71 = distinct !{!71, !27, !26}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = !{!75}
!75 = distinct !{!75, !76, !"dwt_denoise_vert_1ch: argument 0"}
!76 = distinct !{!76, !"dwt_denoise_vert_1ch"}
!77 = !{!78}
!78 = distinct !{!78, !76, !"dwt_denoise_vert_1ch: argument 1"}
!79 = distinct !{!79, !26, !27}
!80 = !{!"branch_weights", i32 4, i32 28}
!81 = distinct !{!81, !26, !27}
!82 = distinct !{!82, !27, !26}
!83 = distinct !{!83, !26, !27}
!84 = distinct !{!84, !26, !27}
!85 = distinct !{!85, !27, !26}
!86 = distinct !{!86, !26, !27}
!87 = distinct !{!87, !26, !27}
!88 = distinct !{!88, !27, !26}
!89 = !{!90}
!90 = distinct !{!90, !91, !"dwt_denoise_horiz_1ch: argument 0"}
!91 = distinct !{!91, !"dwt_denoise_horiz_1ch"}
!92 = !{!93, !94}
!93 = distinct !{!93, !91, !"dwt_denoise_horiz_1ch: argument 1"}
!94 = distinct !{!94, !91, !"dwt_denoise_horiz_1ch: argument 2"}
!95 = !{!93}
!96 = !{!90, !94}
!97 = !{!94}
!98 = !{!90, !93}
!99 = distinct !{!99, !26, !27}
!100 = distinct !{!100, !26, !27}
!101 = distinct !{!101, !27, !26}
!102 = distinct !{!102, !26, !27}
!103 = distinct !{!103, !27, !26}
!104 = distinct !{!104, !26, !27}
!105 = distinct !{!105, !26, !27}
!106 = distinct !{!106, !27, !26}
!107 = distinct !{!107, !27, !26}
end_hunk_0
