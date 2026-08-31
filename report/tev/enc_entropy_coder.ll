Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_entropy_coder?download=true
inline.NumInlined: 339
inline.NumDeleted: 145
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3jxl6N_SSE420TokenizeCoefficientsEPKjRKNS_5RectTImEEPrPKiRKNS_15AcStrategyImageERKNS_22YCbCrChromaSubsamplingEPNS_6Image3IiEEPNSt3__16vectorINS_5TokenENSK_9allocatorISM_EEEERKNS_5PlaneIhEERKNSR_IiEERKNS_11BlockCtxMapE:bb.a
  %i.ij = icmp eq <4 x i32> %i.ii, zeroinitializer
  %i.ik = sext <4 x i1> %i.ij to <4 x i32>
  %i.il = add nsw <4 x i32> %i.ig, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.hg, i64 96
  %i.in = load <4 x i32>, ptr %i.im, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.io = icmp eq <4 x i32> %i.in, zeroinitializer
  %i.ip = sext <4 x i1> %i.io to <4 x i32>
  %i.iq = add nsw <4 x i32> %i.il, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hg, i64 112
  %i.is = load <4 x i32>, ptr %i.ir, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.it = icmp eq <4 x i32> %i.is, zeroinitializer
  %i.iu = sext <4 x i1> %i.it to <4 x i32>
  %i.iv = add nsw <4 x i32> %i.iq, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.ix = load <4 x i32>, ptr %i.iw, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.iy = icmp eq <4 x i32> %i.ix, zeroinitializer
  %i.iz = sext <4 x i1> %i.iy to <4 x i32>
  %i.ja = add nsw <4 x i32> %i.iv, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hg, i64 144
  %i.jc = load <4 x i32>, ptr %i.jb, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.jd = icmp eq <4 x i32> %i.jc, zeroinitializer
  %i.je = sext <4 x i1> %i.jd to <4 x i32>
  %i.jf = add nsw <4 x i32> %i.ja, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hg, i64 160
  %i.jh = load <4 x i32>, ptr %i.jg, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.ji = icmp eq <4 x i32> %i.jh, zeroinitializer
  %i.jj = sext <4 x i1> %i.ji to <4 x i32>
  %i.jk = add nsw <4 x i32> %i.jf, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hg, i64 176
  %i.jm = load <4 x i32>, ptr %i.jl, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.jn = icmp eq <4 x i32> %i.jm, zeroinitializer
  %i.jo = sext <4 x i1> %i.jn to <4 x i32>
  %i.jp = add nsw <4 x i32> %i.jk, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hg, i64 192
  %i.jr = load <4 x i32>, ptr %i.jq, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.js = icmp eq <4 x i32> %i.jr, zeroinitializer
  %i.jt = sext <4 x i1> %i.js to <4 x i32>
  %i.ju = add nsw <4 x i32> %i.jp, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hg, i64 208
  %i.jw = load <4 x i32>, ptr %i.jv, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.jx = icmp eq <4 x i32> %i.jw, zeroinitializer
  %i.jy = sext <4 x i1> %i.jx to <4 x i32>
  %i.jz = add nsw <4 x i32> %i.ju, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hg, i64 224
  %i.kb = load <4 x i32>, ptr %i.ka, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.kc = icmp eq <4 x i32> %i.kb, zeroinitializer
  %i.kd = sext <4 x i1> %i.kc to <4 x i32>
  %i.ke = add nsw <4 x i32> %i.jz, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hg, i64 240
  %i.kg = load <4 x i32>, ptr %i.kf, align 16, !tbaa !9, !alias.scope !59, !noalias !62
  %i.kh = icmp eq <4 x i32> %i.kg, zeroinitializer
  %i.ki = sext <4 x i1> %i.kh to <4 x i32>
  %i.kj = add nsw <4 x i32> %i.ke, %i.ki          ; 2 uses
  %i.kk = shufflevector <4 x i32> %i.kj, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kl = add <4 x i32> %i.kk, %i.kj              ; 2 uses
  %i.km = shufflevector <4 x i32> %i.kl, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kn = add <4 x i32> %i.km, %i.kl
  %i.ko = extractelement <4 x i32> %i.kn, i64 0
  %i.kp = add nsw i32 %i.ko, 64                   ; 2 uses
  store i32 %i.kp, ptr %i.hj, align 4, !tbaa !17, !alias.scope !62, !noalias !59
  br label %_ZN3jxl6N_SSE419NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  switch i64 %i.fl, label %.preheader76.us.i [
    i64 0, label %.preheader75.i
    i64 1, label %.preheader76.us.i.epil.preheader
  ]

.preheader76.us.i:                                ; preds = %bb.q, %._crit_edge.us.i.1
  %i.kq = phi <4 x i32> [ %i.lr, %._crit_edge.us.i.1 ], [ zeroinitializer, %bb.q ]
  %.06382.us.i = phi i64 [ %i.lu, %._crit_edge.us.i.1 ], [ 0, %bb.q ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %._crit_edge.us.i.1 ], [ 0, %bb.q ]
  %factor.op.mul.reass.us.i = mul nuw nsw i64 %.06382.us.i, %factor.op.mul81.i
  %i.kr = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us.i
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader76.us.i
  %i.ks = phi <4 x i32> [ %i.kq, %.preheader76.us.i ], [ %i.lc, %bb.r ]
  %.06480.us.i = phi i64 [ 0, %.preheader76.us.i ], [ %i.ld, %bb.r ] ; 3 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.06480.us.i
  %i.ku = load <2 x i64>, ptr %i.kt, align 4, !tbaa !9, !noalias !69
  %i.kv = getelementptr [4 x i8], ptr %i.kr, i64 %.06480.us.i
  %i.kw = load <2 x i64>, ptr %i.kv, align 16, !tbaa !9, !alias.scope !64, !noalias !67
  %i.kx = xor <2 x i64> %i.ku, splat (i64 -1)
  %i.ky = and <2 x i64> %i.kw, %i.kx
  %i.kz = bitcast <2 x i64> %i.ky to <4 x i32>
  %i.la = icmp eq <4 x i32> %i.kz, zeroinitializer
  %i.lb = sext <4 x i1> %i.la to <4 x i32>
  %i.lc = add <4 x i32> %i.ks, %i.lb              ; 2 uses
  %i.ld = add nuw nsw i64 %.06480.us.i, 4         ; 2 uses
  %i.le = icmp samesign ult i64 %i.ld, %i.fq
  br i1 %i.le, label %bb.r, label %._crit_edge.us.i, !llvm.loop !10

._crit_edge.us.i:                                 ; preds = %bb.r
  %i.lf = or disjoint i64 %.06382.us.i, 1
  %factor.op.mul.reass.us.i.1 = mul nuw nsw i64 %i.lf, %factor.op.mul81.i
  %i.lg = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us.i.1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %._crit_edge.us.i
  %i.lh = phi <4 x i32> [ %i.lc, %._crit_edge.us.i ], [ %i.lr, %bb.s ]
  %.06480.us.i.1 = phi i64 [ 0, %._crit_edge.us.i ], [ %i.ls, %bb.s ] ; 3 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.06480.us.i.1
  %i.lj = load <2 x i64>, ptr %i.li, align 4, !tbaa !9, !noalias !69
  %i.lk = getelementptr [4 x i8], ptr %i.lg, i64 %.06480.us.i.1
  %i.ll = load <2 x i64>, ptr %i.lk, align 16, !tbaa !9, !alias.scope !64, !noalias !67
  %i.lm = xor <2 x i64> %i.lj, splat (i64 -1)
  %i.ln = and <2 x i64> %i.ll, %i.lm
  %i.lo = bitcast <2 x i64> %i.ln to <4 x i32>
  %i.lp = icmp eq <4 x i32> %i.lo, zeroinitializer
  %i.lq = sext <4 x i1> %i.lp to <4 x i32>
  %i.lr = add <4 x i32> %i.lh, %i.lq              ; 4 uses
  %i.ls = add nuw nsw i64 %.06480.us.i.1, 4       ; 2 uses
  %i.lt = icmp samesign ult i64 %i.ls, %i.fq
  br i1 %i.lt, label %bb.s, label %._crit_edge.us.i.1, !llvm.loop !10

._crit_edge.us.i.1:                               ; preds = %bb.s
  %i.lu = add nuw nsw i64 %.06382.us.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader75.i.loopexit.unr-lcssa, label %.preheader76.us.i, !llvm.loop !12

.preheader75.i.loopexit.unr-lcssa:                ; preds = %._crit_edge.us.i.1
  br i1 %lcmp.mod.not, label %.preheader75.i, label %.preheader76.us.i.epil.preheader

.preheader76.us.i.epil.preheader:                 ; preds = %bb.q, %.preheader75.i.loopexit.unr-lcssa
  %.epil.init = phi <4 x i32> [ zeroinitializer, %bb.q ], [ %i.lr, %.preheader75.i.loopexit.unr-lcssa ]
  %.06382.us.i.epil.init = phi i64 [ 0, %bb.q ], [ %i.lu, %.preheader75.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %factor.op.mul.reass.us.i.epil = mul nuw nsw i64 %.06382.us.i.epil.init, %factor.op.mul81.i
  %i.lv = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us.i.epil
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader76.us.i.epil.preheader
  %i.lw = phi <4 x i32> [ %.epil.init, %.preheader76.us.i.epil.preheader ], [ %i.mg, %bb.t ]
  %.06480.us.i.epil = phi i64 [ 0, %.preheader76.us.i.epil.preheader ], [ %i.mh, %bb.t ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.06480.us.i.epil
  %i.ly = load <2 x i64>, ptr %i.lx, align 4, !tbaa !9, !noalias !69
  %i.lz = getelementptr [4 x i8], ptr %i.lv, i64 %.06480.us.i.epil
  %i.ma = load <2 x i64>, ptr %i.lz, align 16, !tbaa !9, !alias.scope !64, !noalias !67
  %i.mb = xor <2 x i64> %i.ly, splat (i64 -1)
  %i.mc = and <2 x i64> %i.ma, %i.mb
  %i.md = bitcast <2 x i64> %i.mc to <4 x i32>
  %i.me = icmp eq <4 x i32> %i.md, zeroinitializer
  %i.mf = sext <4 x i1> %i.me to <4 x i32>
  %i.mg = add <4 x i32> %i.lw, %i.mf              ; 2 uses
  %i.mh = add nuw nsw i64 %.06480.us.i.epil, 4    ; 2 uses
  %i.mi = icmp samesign ult i64 %i.mh, %i.fq
  br i1 %i.mi, label %bb.t, label %.preheader75.i, !llvm.loop !10

.preheader75.i:                                   ; preds = %.preheader75.i.loopexit.unr-lcssa, %bb.t, %bb.q
  %.lcssa79.i = phi <4 x i32> [ zeroinitializer, %bb.q ], [ %i.lr, %.preheader75.i.loopexit.unr-lcssa ], [ %i.mg, %bb.t ] ; 3 uses
  br i1 %i.fs, label %.preheader74.us.i.preheader, label %.preheader.preheader.i

.preheader74.us.i.preheader:                      ; preds = %.preheader75.i
  br i1 %lcmp.mod318.not, label %.preheader74.us.i.preheader.new, label %.preheader74.us.i.prol

.preheader74.us.i.prol:                           ; preds = %.preheader74.us.i.preheader
  %i.mj = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us89.i.prol
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader74.us.i.prol
  %i.mk = phi <4 x i32> [ %.lcssa79.i, %.preheader74.us.i.prol ], [ %i.mp, %bb.u ]
  %.06684.us.i.prol = phi i64 [ 0, %.preheader74.us.i.prol ], [ %i.mq, %bb.u ] ; 2 uses
  %i.ml = getelementptr [4 x i8], ptr %i.mj, i64 %.06684.us.i.prol
  %i.mm = load <4 x i32>, ptr %i.ml, align 16, !tbaa !9, !alias.scope !64, !noalias !67
  %i.mn = icmp eq <4 x i32> %i.mm, zeroinitializer
  %i.mo = sext <4 x i1> %i.mn to <4 x i32>
  %i.mp = add <4 x i32> %i.mk, %i.mo              ; 2 uses
  %i.mq = add nuw nsw i64 %.06684.us.i.prol, 4    ; 2 uses
  %i.mr = icmp samesign ult i64 %i.mq, %i.fq
  br i1 %i.mr, label %bb.u, label %.preheader74.us.i.preheader.new, !llvm.loop !13

.preheader74.us.i.preheader.new:                  ; preds = %.preheader74.us.i.preheader, %bb.u
  %.unr319 = phi <4 x i32> [ %.lcssa79.i, %.preheader74.us.i.preheader ], [ %i.mp, %bb.u ]
  %.06586.us.i.unr = phi i64 [ %i.fl, %.preheader74.us.i.preheader ], [ %i.gc, %bb.u ]
  br label %.preheader74.us.i

.preheader74.us.i:                                ; preds = %._crit_edge.us90.i.1, %.preheader74.us.i.preheader.new
  %i.ms = phi <4 x i32> [ %.unr319, %.preheader74.us.i.preheader.new ], [ %i.nj, %._crit_edge.us90.i.1 ]
  %.06586.us.i = phi i64 [ %.06586.us.i.unr, %.preheader74.us.i.preheader.new ], [ %i.nm, %._crit_edge.us90.i.1 ] ; 3 uses
  %factor.op.mul.reass.us89.i = mul i64 %.06586.us.i, %factor.op.mul81.i
  %i.mt = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us89.i
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.preheader74.us.i
  %i.mu = phi <4 x i32> [ %i.ms, %.preheader74.us.i ], [ %i.mz, %bb.v ]
  %.06684.us.i = phi i64 [ 0, %.preheader74.us.i ], [ %i.na, %bb.v ] ; 2 uses
  %i.mv = getelementptr [4 x i8], ptr %i.mt, i64 %.06684.us.i
  %i.mw = load <4 x i32>, ptr %i.mv, align 16, !tbaa !9, !alias.scope !64, !noalias !67
  %i.mx = icmp eq <4 x i32> %i.mw, zeroinitializer
  %i.my = sext <4 x i1> %i.mx to <4 x i32>
  %i.mz = add <4 x i32> %i.mu, %i.my              ; 2 uses
  %i.na = add nuw nsw i64 %.06684.us.i, 4         ; 2 uses
  %i.nb = icmp samesign ult i64 %i.na, %i.fq
  br i1 %i.nb, label %bb.v, label %._crit_edge.us90.i, !llvm.loop !13

._crit_edge.us90.i:                               ; preds = %bb.v
  %i.nc = add nuw nsw i64 %.06586.us.i, 1
  %factor.op.mul.reass.us89.i.1 = mul i64 %i.nc, %factor.op.mul81.i
  %i.nd = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us89.i.1
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %._crit_edge.us90.i
  %i.ne = phi <4 x i32> [ %i.mz, %._crit_edge.us90.i ], [ %i.nj, %bb.w ]
  %.06684.us.i.1 = phi i64 [ 0, %._crit_edge.us90.i ], [ %i.nk, %bb.w ] ; 2 uses
  %i.nf = getelementptr [4 x i8], ptr %i.nd, i64 %.06684.us.i.1
  %i.ng = load <4 x i32>, ptr %i.nf, align 16, !tbaa !9, !alias.scope !64, !noalias !67
  %i.nh = icmp eq <4 x i32> %i.ng, zeroinitializer
  %i.ni = sext <4 x i1> %i.nh to <4 x i32>
  %i.nj = add <4 x i32> %i.ne, %i.ni              ; 3 uses
  %i.nk = add nuw nsw i64 %.06684.us.i.1, 4       ; 2 uses
  %i.nl = icmp samesign ult i64 %i.nk, %i.fq
  br i1 %i.nl, label %bb.w, label %._crit_edge.us90.i.1, !llvm.loop !13

._crit_edge.us90.i.1:                             ; preds = %bb.w
  %i.nm = add nuw nsw i64 %.06586.us.i, 2         ; 2 uses
  %exitcond103.not.i.1 = icmp eq i64 %i.nm, %i.fr
  br i1 %exitcond103.not.i.1, label %.preheader.preheader.i, label %.preheader74.us.i, !llvm.loop !16

.preheader.preheader.i:                           ; preds = %._crit_edge.us90.i.1, %.preheader75.i
  %.lcssa77.i = phi <4 x i32> [ %.lcssa79.i, %.preheader75.i ], [ %i.nj, %._crit_edge.us90.i.1 ]
  %i.nn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa77.i)
  %i.no = add nsw i32 %i.nn, %i.ft                ; 2 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = add nsw i64 %i.fu, %i.np
  %i.nr = lshr i64 %i.nq, %i.fj
  %i.ns = trunc i64 %i.nr to i32                  ; 2 uses
  %broadcast.splatinsert299 = insertelement <4 x i32> poison, i32 %i.ns, i64 0
  %broadcast.splat300 = shufflevector <4 x i32> %broadcast.splatinsert299, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.06294.i = phi i64 [ %i.nx, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.nt = mul i64 %.06294.i, %i.al
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.hj, i64 %i.nt ; 2 uses
  br i1 %min.iters.check296.not, label %vector.body301, label %scalar.ph295.preheader

vector.body301:                                   ; preds = %.preheader.i, %vector.body301
  %index302 = phi i64 [ %index.next303, %vector.body301 ], [ 0, %.preheader.i ] ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index302 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 16
  store <4 x i32> %broadcast.splat300, ptr %i.nu, align 4, !tbaa !17, !alias.scope !67, !noalias !64
  store <4 x i32> %broadcast.splat300, ptr %i.nv, align 4, !tbaa !17, !alias.scope !67, !noalias !64
  %index.next303 = add nuw i64 %index302, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next303, %n.vec298
  br i1 %i.nw, label %middle.block304, label %vector.body301, !llvm.loop !70

middle.block304:                                  ; preds = %vector.body301
  br i1 %cmp.n305, label %._crit_edge.i, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %.preheader.i, %middle.block304
  %.093.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec298, %middle.block304 ]
  br label %scalar.ph295

._crit_edge.i:                                    ; preds = %scalar.ph295, %middle.block304
  %i.nx = add nuw nsw i64 %.06294.i, 1            ; 2 uses
  %exitcond106.not.i = icmp eq i64 %i.nx, %umax105.i
  br i1 %exitcond106.not.i, label %_ZN3jxl6N_SSE419NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit, label %.preheader.i, !llvm.loop !21

scalar.ph295:                                     ; preds = %scalar.ph295.preheader, %scalar.ph295
  %.093.i = phi i64 [ %i.ny, %scalar.ph295 ], [ %.093.i.ph, %scalar.ph295.preheader ] ; 2 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.093.i
  store i32 %i.ns, ptr %gep.i, align 4, !tbaa !17, !alias.scope !67, !noalias !64
  %i.ny = add nuw nsw i64 %.093.i, 1              ; 2 uses
  %exitcond104.not.i = icmp eq i64 %i.ny, %umax.i
  br i1 %exitcond104.not.i, label %._crit_edge.i, label %scalar.ph295, !llvm.loop !71

_ZN3jxl6N_SSE419NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit: ; preds = %._crit_edge.i, %bb.p
  %i.nz = phi i32 [ %i.kp, %bb.p ], [ %i.no, %._crit_edge.i ] ; 6 uses
  %i.oa = load i8, ptr %i.fv, align 1, !tbaa !9   ; 2 uses
  %i.ob = zext i8 %i.oa to i32
  %i.oc = mul nuw nsw i32 %i.ob, 3
  %i.od = add nsw i32 %i.oc, %i.gf
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %i.oe
  %i.og = load i64, ptr %i.of, align 8, !tbaa !53
  %.idx = shl i64 %i.og, 8
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gg
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !54 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.ok = icmp eq i64 %i.gi, 0
  %i.ol = icmp eq ptr %i.oj, null                 ; 2 uses
  br i1 %i.ok, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZN3jxl6N_SSE419NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit
  br i1 %i.ol, label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.om = load i32, ptr %i.oj, align 4, !tbaa !17, !alias.scope !72, !noalias !75
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.z:                                             ; preds = %_ZN3jxl6N_SSE419NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit
  br i1 %i.ol, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.on = getelementptr [4 x i8], ptr %i.hi, i64 %i.gi
  %i.oo = getelementptr i8, ptr %i.on, i64 -4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !17, !alias.scope !75, !noalias !72
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.ab:                                            ; preds = %bb.z
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.gi
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !17, !alias.scope !72, !noalias !75
  %i.os = getelementptr [4 x i8], ptr %i.hi, i64 %i.gi
  %i.ot = getelementptr i8, ptr %i.os, i64 -4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !17, !alias.scope !75, !noalias !72
  %i.ov = add i32 %i.or, 1
  %i.ow = add i32 %i.ov, %i.ou
  %i.ox = sdiv i32 %i.ow, 2
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit:    ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab
  %.0.i = phi i32 [ %i.ox, %bb.ab ], [ %i.op, %bb.aa ], [ %i.om, %bb.y ], [ 32, %bb.x ] ; 2 uses
  %i.oy = load i8, ptr %i.fw, align 1, !tbaa !9
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.gi
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !17 ; 2 uses
  %i.pb = zext i8 %i.oa to i64
  %i.pc = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 6 uses
  %i.pd = load ptr, ptr %i.bn, align 8, !tbaa !81 ; 4 uses
  %.not17.i = icmp eq ptr %i.pc, %i.pd
  br i1 %.not17.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %i.pe = ptrtoaddr ptr %i.pd to i64
  %i.pf = ptrtoaddr ptr %i.pc to i64
  %i.pg = add i64 %i.pe, -4
  %i.ph = sub i64 %i.pg, %i.pf                    ; 2 uses
  %i.pi = lshr i64 %i.ph, 2
  %i.pj = add nuw nsw i64 %i.pi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ph, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader307, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.pj, 9223372036854775804     ; 3 uses
  %i.pk = shl i64 %n.vec, 2
  %i.pl = getelementptr i8, ptr %i.pc, i64 %i.pk
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.pa, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ps, %vector.body ]
  %vec.phi293 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.pt, %vector.body ]
  %i.pm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.pc, i64 %i.pm ; 2 uses
  %i.pn = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !17
  %wide.load294 = load <2 x i32>, ptr %i.pn, align 4, !tbaa !17
  %i.po = icmp ugt <2 x i32> %broadcast.splat, %wide.load
  %i.pp = icmp ugt <2 x i32> %broadcast.splat, %wide.load294
  %i.pq = zext <2 x i1> %i.po to <2 x i64>
  %i.pr = zext <2 x i1> %i.pp to <2 x i64>
  %i.ps = add <2 x i64> %vec.phi, %i.pq           ; 2 uses
  %i.pt = add <2 x i64> %vec.phi293, %i.pr        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pu = icmp eq i64 %index.next, %n.vec
  br i1 %i.pu, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.pt, %i.ps
  %i.pv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.pj, %n.vec
  br i1 %cmp.n, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader307

.lr.ph.i.preheader307:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.pv, %middle.block ]
  %.sroa.014.018.i.ph = phi ptr [ %i.pc, %.lr.ph.i.preheader ], [ %i.pl, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader307, %.lr.ph.i
  %.019.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader307 ]
  %.sroa.014.018.i = phi ptr [ %i.pz, %.lr.ph.i ], [ %.sroa.014.018.i.ph, %.lr.ph.i.preheader307 ] ; 2 uses
  %i.pw = load i32, ptr %.sroa.014.018.i, align 4, !tbaa !17
  %i.px = icmp ugt i32 %i.pa, %i.pw
  %i.py = zext i1 %i.px to i64
  %spec.select.i = add i64 %.019.i, %i.py         ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 4 ; 2 uses
  %.not.i136 = icmp eq ptr %i.pz, %i.pd
  br i1 %.not.i136, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i, !llvm.loop !83

_ZNK3jxl11BlockCtxMap7ContextEijmm.exit:          ; preds = %.lr.ph.i, %middle.block, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit ], [ %i.pv, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.qa = icmp ult i32 %i.gf, 2
  %i.qb = xor i64 %i.gg, 1
  %i.qc = mul nsw i64 %i.qb, 13
  %i.qd = select i1 %i.qa, i64 %i.qc, i64 26
  %i.qe = add nsw i64 %i.qd, %i.pb
  %i.qf = ptrtoint ptr %i.pd to i64
  %i.qg = ptrtoint ptr %i.pc to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = ashr exact i64 %i.qh, 2
  %i.qj = add nsw i64 %i.qi, 1
  %i.qk = mul i64 %i.qj, %i.qe
  %i.ql = add i64 %.0.lcssa.i, %i.qk
  %i.qm = load i64, ptr %i.bo, align 8, !tbaa !84
  %i.qn = mul i64 %i.qm, %i.ql
  %i.qo = zext i8 %i.oy to i64
  %i.qp = load ptr, ptr %i.bp, align 8, !tbaa !90
  %i.qq = getelementptr i8, ptr %i.qp, i64 %i.qn
  %i.qr = getelementptr i8, ptr %i.qq, i64 %i.qo
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !9
  %i.qt = zext i8 %i.qs to i32                    ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 64) ; 2 uses
  %i.qu = icmp ult i32 %.0.i, 8
  %i.qv = lshr i32 %spec.store.select.i, 1
  %i.qw = add nuw nsw i32 %i.qv, 4
  %.0.i138 = select i1 %i.qu, i32 %spec.store.select.i, i32 %i.qw
  %i.qx = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.qy = trunc i64 %i.qx to i32
  %i.qz = mul i32 %.0.i138, %i.qy
  %i.ra = add i32 %i.qz, %i.qt                    ; 2 uses
  %i.rb = load ptr, ptr %i.j, align 8, !tbaa !33  ; 5 uses
  %i.rc = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3jxl6N_AVX220TokenizeCoefficientsEPKjRKNS_5RectTImEEPrPKiRKNS_15AcStrategyImageERKNS_22YCbCrChromaSubsamplingEPNS_6Image3IiEEPNSt3__16vectorINS_5TokenENSK_9allocatorISM_EEEERKNS_5PlaneIhEERKNSR_IiEERKNS_11BlockCtxMapE:bb.a
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !54
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hl ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !53 ; 2 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ik ; 15 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hl
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !54 ; 3 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.hn ; 2 uses
  br i1 %i.gq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.ip = load <8 x i32>, ptr %i.il, align 32, !tbaa !9, !alias.scope !140, !noalias !143
  %i.iq = icmp ule <8 x i32> %i.ip, <i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
  %i.ir = sext <8 x i1> %i.iq to <8 x i32>
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.it = load <8 x i32>, ptr %i.is, align 32, !tbaa !9, !alias.scope !140, !noalias !143
  %i.iu = icmp eq <8 x i32> %i.it, zeroinitializer
  %i.iv = sext <8 x i1> %i.iu to <8 x i32>
  %i.iw = add nsw <8 x i32> %i.iv, %i.ir
  %i.ix = getelementptr inbounds nuw i8, ptr %i.il, i64 64
  %i.iy = load <8 x i32>, ptr %i.ix, align 32, !tbaa !9, !alias.scope !140, !noalias !143
  %i.iz = icmp eq <8 x i32> %i.iy, zeroinitializer
  %i.ja = sext <8 x i1> %i.iz to <8 x i32>
  %i.jb = add nsw <8 x i32> %i.iw, %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.il, i64 96
  %i.jd = load <8 x i32>, ptr %i.jc, align 32, !tbaa !9, !alias.scope !140, !noalias !143
  %i.je = icmp eq <8 x i32> %i.jd, zeroinitializer
  %i.jf = sext <8 x i1> %i.je to <8 x i32>
  %i.jg = add nsw <8 x i32> %i.jb, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.il, i64 128
  %i.ji = load <8 x i32>, ptr %i.jh, align 32, !tbaa !9, !alias.scope !140, !noalias !143
  %i.jj = icmp eq <8 x i32> %i.ji, zeroinitializer
  %i.jk = sext <8 x i1> %i.jj to <8 x i32>
  %i.jl = add nsw <8 x i32> %i.jg, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.il, i64 160
  %i.jn = load <8 x i32>, ptr %i.jm, align 32, !tbaa !9, !alias.scope !140, !noalias !143
  %i.jo = icmp eq <8 x i32> %i.jn, zeroinitializer
  %i.jp = sext <8 x i1> %i.jo to <8 x i32>
  %i.jq = add nsw <8 x i32> %i.jl, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.il, i64 192
  %i.js = load <8 x i32>, ptr %i.jr, align 32, !tbaa !9, !alias.scope !140, !noalias !143
  %i.jt = icmp eq <8 x i32> %i.js, zeroinitializer
  %i.ju = sext <8 x i1> %i.jt to <8 x i32>
  %i.jv = add nsw <8 x i32> %i.jq, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.il, i64 224
  %i.jx = load <8 x i32>, ptr %i.jw, align 32, !tbaa !9, !alias.scope !140, !noalias !143
  %i.jy = icmp eq <8 x i32> %i.jx, zeroinitializer
  %i.jz = sext <8 x i1> %i.jy to <8 x i32>
  %i.ka = add nsw <8 x i32> %i.jv, %i.jz          ; 2 uses
  %i.kb = shufflevector <8 x i32> %i.ka, <8 x i32> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.kc = add <8 x i32> %i.ka, %i.kb              ; 2 uses
  %i.kd = shufflevector <8 x i32> %i.kc, <8 x i32> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.ke = add <8 x i32> %i.kd, %i.kc              ; 2 uses
  %i.kf = shufflevector <8 x i32> %i.ke, <8 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kg = shufflevector <8 x i32> %i.ke, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.kh = add <4 x i32> %i.kf, %i.kg
  %i.ki = extractelement <4 x i32> %i.kh, i64 0
  %i.kj = add nsw i32 %i.ki, 64                   ; 2 uses
  store i32 %i.kj, ptr %i.io, align 4, !tbaa !17, !alias.scope !143, !noalias !140
  br label %_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  switch i64 %i.go, label %.preheader79.us.i [
    i64 0, label %.preheader78.i
    i64 1, label %.preheader79.us.i.epil.preheader
  ]

.preheader79.us.i:                                ; preds = %bb.q, %._crit_edge.us.i.1
  %i.kk = phi <8 x i32> [ %i.lj, %._crit_edge.us.i.1 ], [ zeroinitializer, %bb.q ]
  %.06383.us.i = phi i64 [ %i.lm, %._crit_edge.us.i.1 ], [ 0, %bb.q ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %._crit_edge.us.i.1 ], [ 0, %bb.q ]
  %factor.op.mul.reass.us.i = mul nuw nsw i64 %.06383.us.i, %factor.op.mul82.i
  %i.kl = getelementptr i8, ptr %i.il, i64 %factor.op.mul.reass.us.i
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader79.us.i
  %.sroa.040.181.us.i = phi <8 x i32> [ %i.kk, %.preheader79.us.i ], [ %i.kv, %bb.r ]
  %.06480.us.i = phi i64 [ 0, %.preheader79.us.i ], [ %i.kw, %bb.r ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.06480.us.i
  %i.kn = load <4 x i64>, ptr %i.km, align 4, !tbaa !9, !noalias !150
  %i.ko = getelementptr [4 x i8], ptr %i.kl, i64 %.06480.us.i
  %i.kp = load <4 x i64>, ptr %i.ko, align 32, !tbaa !9, !alias.scope !145, !noalias !148
  %i.kq = xor <4 x i64> %i.kn, splat (i64 -1)
  %i.kr = and <4 x i64> %i.kp, %i.kq
  %i.ks = bitcast <4 x i64> %i.kr to <8 x i32>
  %i.kt = icmp eq <8 x i32> %i.ks, zeroinitializer
  %i.ku = sext <8 x i1> %i.kt to <8 x i32>
  %i.kv = add <8 x i32> %.sroa.040.181.us.i, %i.ku ; 2 uses
  %i.kw = add nuw nsw i64 %.06480.us.i, 8         ; 2 uses
  %i.kx = icmp samesign ult i64 %i.kw, %i.gt
  br i1 %i.kx, label %bb.r, label %._crit_edge.us.i, !llvm.loop !117

._crit_edge.us.i:                                 ; preds = %bb.r
  %i.ky = or disjoint i64 %.06383.us.i, 1
  %factor.op.mul.reass.us.i.1 = mul nuw nsw i64 %i.ky, %factor.op.mul82.i
  %i.kz = getelementptr i8, ptr %i.il, i64 %factor.op.mul.reass.us.i.1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %._crit_edge.us.i
  %.sroa.040.181.us.i.1 = phi <8 x i32> [ %i.kv, %._crit_edge.us.i ], [ %i.lj, %bb.s ]
  %.06480.us.i.1 = phi i64 [ 0, %._crit_edge.us.i ], [ %i.lk, %bb.s ] ; 3 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.06480.us.i.1
  %i.lb = load <4 x i64>, ptr %i.la, align 4, !tbaa !9, !noalias !150
  %i.lc = getelementptr [4 x i8], ptr %i.kz, i64 %.06480.us.i.1
  %i.ld = load <4 x i64>, ptr %i.lc, align 32, !tbaa !9, !alias.scope !145, !noalias !148
  %i.le = xor <4 x i64> %i.lb, splat (i64 -1)
  %i.lf = and <4 x i64> %i.ld, %i.le
  %i.lg = bitcast <4 x i64> %i.lf to <8 x i32>
  %i.lh = icmp eq <8 x i32> %i.lg, zeroinitializer
  %i.li = sext <8 x i1> %i.lh to <8 x i32>
  %i.lj = add <8 x i32> %.sroa.040.181.us.i.1, %i.li ; 4 uses
  %i.lk = add nuw nsw i64 %.06480.us.i.1, 8       ; 2 uses
  %i.ll = icmp samesign ult i64 %i.lk, %i.gt
  br i1 %i.ll, label %bb.s, label %._crit_edge.us.i.1, !llvm.loop !117

._crit_edge.us.i.1:                               ; preds = %bb.s
  %i.lm = add nuw nsw i64 %.06383.us.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader78.loopexit105.i.unr-lcssa, label %.preheader79.us.i, !llvm.loop !118

.preheader78.loopexit105.i.unr-lcssa:             ; preds = %._crit_edge.us.i.1
  br i1 %lcmp.mod.not, label %.preheader78.i, label %.preheader79.us.i.epil.preheader

.preheader79.us.i.epil.preheader:                 ; preds = %bb.q, %.preheader78.loopexit105.i.unr-lcssa
  %.epil.init = phi <8 x i32> [ zeroinitializer, %bb.q ], [ %i.lj, %.preheader78.loopexit105.i.unr-lcssa ]
  %.06383.us.i.epil.init = phi i64 [ 0, %bb.q ], [ %i.lm, %.preheader78.loopexit105.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod458)
  %factor.op.mul.reass.us.i.epil = mul nuw nsw i64 %.06383.us.i.epil.init, %factor.op.mul82.i
  %i.ln = getelementptr i8, ptr %i.il, i64 %factor.op.mul.reass.us.i.epil
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader79.us.i.epil.preheader
  %.sroa.040.181.us.i.epil = phi <8 x i32> [ %.epil.init, %.preheader79.us.i.epil.preheader ], [ %i.lx, %bb.t ]
  %.06480.us.i.epil = phi i64 [ 0, %.preheader79.us.i.epil.preheader ], [ %i.ly, %bb.t ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.06480.us.i.epil
  %i.lp = load <4 x i64>, ptr %i.lo, align 4, !tbaa !9, !noalias !150
  %i.lq = getelementptr [4 x i8], ptr %i.ln, i64 %.06480.us.i.epil
  %i.lr = load <4 x i64>, ptr %i.lq, align 32, !tbaa !9, !alias.scope !145, !noalias !148
  %i.ls = xor <4 x i64> %i.lp, splat (i64 -1)
  %i.lt = and <4 x i64> %i.lr, %i.ls
  %i.lu = bitcast <4 x i64> %i.lt to <8 x i32>
  %i.lv = icmp eq <8 x i32> %i.lu, zeroinitializer
  %i.lw = sext <8 x i1> %i.lv to <8 x i32>
  %i.lx = add <8 x i32> %.sroa.040.181.us.i.epil, %i.lw ; 2 uses
  %i.ly = add nuw nsw i64 %.06480.us.i.epil, 8    ; 2 uses
  %i.lz = icmp samesign ult i64 %i.ly, %i.gt
  br i1 %i.lz, label %bb.t, label %.preheader78.i, !llvm.loop !117

.preheader78.i:                                   ; preds = %.preheader78.loopexit105.i.unr-lcssa, %bb.t, %bb.q
  %i.ma = phi <8 x i32> [ zeroinitializer, %bb.q ], [ %i.lj, %.preheader78.loopexit105.i.unr-lcssa ], [ %i.lx, %bb.t ] ; 3 uses
  br i1 %i.gv, label %.preheader77.lr.ph.i, label %.preheader.preheader.i

.preheader77.lr.ph.i:                             ; preds = %.preheader78.i
  br i1 %lcmp.mod460.not, label %.preheader77.lr.ph.i.new, label %.preheader77.us.i.prol

.preheader77.us.i.prol:                           ; preds = %.preheader77.lr.ph.i
  %i.mb = getelementptr i8, ptr %i.il, i64 %factor.op.mul.reass.us93.i.prol
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader77.us.i.prol
  %.sroa.040.387.us.i.prol = phi <8 x i32> [ %i.ma, %.preheader77.us.i.prol ], [ %i.mg, %bb.u ]
  %.06686.us.i.prol = phi i64 [ 0, %.preheader77.us.i.prol ], [ %i.mh, %bb.u ] ; 2 uses
  %i.mc = getelementptr [4 x i8], ptr %i.mb, i64 %.06686.us.i.prol
  %i.md = load <8 x i32>, ptr %i.mc, align 32, !tbaa !9, !alias.scope !145, !noalias !148
  %i.me = icmp eq <8 x i32> %i.md, zeroinitializer
  %i.mf = sext <8 x i1> %i.me to <8 x i32>
  %i.mg = add <8 x i32> %.sroa.040.387.us.i.prol, %i.mf ; 2 uses
  %i.mh = add nuw nsw i64 %.06686.us.i.prol, 8    ; 2 uses
  %i.mi = icmp samesign ult i64 %i.mh, %i.gt
  br i1 %i.mi, label %bb.u, label %.preheader77.lr.ph.i.new, !llvm.loop !119

.preheader77.lr.ph.i.new:                         ; preds = %.preheader77.lr.ph.i, %bb.u
  %.sroa.040.290.us.i.unr = phi <8 x i32> [ %i.ma, %.preheader77.lr.ph.i ], [ %i.mg, %bb.u ]
  %.06589.us.i.unr = phi i64 [ %i.go, %.preheader77.lr.ph.i ], [ %i.hf, %bb.u ]
  br label %.preheader77.us.i

.preheader77.us.i:                                ; preds = %._crit_edge.us94.i.1, %.preheader77.lr.ph.i.new
  %.sroa.040.290.us.i = phi <8 x i32> [ %.sroa.040.290.us.i.unr, %.preheader77.lr.ph.i.new ], [ %i.mx, %._crit_edge.us94.i.1 ]
  %.06589.us.i = phi i64 [ %.06589.us.i.unr, %.preheader77.lr.ph.i.new ], [ %i.na, %._crit_edge.us94.i.1 ] ; 3 uses
  %factor.op.mul.reass.us93.i = mul i64 %.06589.us.i, %factor.op.mul82.i
  %i.mj = getelementptr i8, ptr %i.il, i64 %factor.op.mul.reass.us93.i
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.preheader77.us.i
  %.sroa.040.387.us.i = phi <8 x i32> [ %.sroa.040.290.us.i, %.preheader77.us.i ], [ %i.mo, %bb.v ]
  %.06686.us.i = phi i64 [ 0, %.preheader77.us.i ], [ %i.mp, %bb.v ] ; 2 uses
  %i.mk = getelementptr [4 x i8], ptr %i.mj, i64 %.06686.us.i
  %i.ml = load <8 x i32>, ptr %i.mk, align 32, !tbaa !9, !alias.scope !145, !noalias !148
  %i.mm = icmp eq <8 x i32> %i.ml, zeroinitializer
  %i.mn = sext <8 x i1> %i.mm to <8 x i32>
  %i.mo = add <8 x i32> %.sroa.040.387.us.i, %i.mn ; 2 uses
  %i.mp = add nuw nsw i64 %.06686.us.i, 8         ; 2 uses
  %i.mq = icmp samesign ult i64 %i.mp, %i.gt
  br i1 %i.mq, label %bb.v, label %._crit_edge.us94.i, !llvm.loop !119

._crit_edge.us94.i:                               ; preds = %bb.v
  %i.mr = add nuw nsw i64 %.06589.us.i, 1
  %factor.op.mul.reass.us93.i.1 = mul i64 %i.mr, %factor.op.mul82.i
  %i.ms = getelementptr i8, ptr %i.il, i64 %factor.op.mul.reass.us93.i.1
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %._crit_edge.us94.i
  %.sroa.040.387.us.i.1 = phi <8 x i32> [ %i.mo, %._crit_edge.us94.i ], [ %i.mx, %bb.w ]
  %.06686.us.i.1 = phi i64 [ 0, %._crit_edge.us94.i ], [ %i.my, %bb.w ] ; 2 uses
  %i.mt = getelementptr [4 x i8], ptr %i.ms, i64 %.06686.us.i.1
  %i.mu = load <8 x i32>, ptr %i.mt, align 32, !tbaa !9, !alias.scope !145, !noalias !148
  %i.mv = icmp eq <8 x i32> %i.mu, zeroinitializer
  %i.mw = sext <8 x i1> %i.mv to <8 x i32>
  %i.mx = add <8 x i32> %.sroa.040.387.us.i.1, %i.mw ; 3 uses
  %i.my = add nuw nsw i64 %.06686.us.i.1, 8       ; 2 uses
  %i.mz = icmp samesign ult i64 %i.my, %i.gt
  br i1 %i.mz, label %bb.w, label %._crit_edge.us94.i.1, !llvm.loop !119

._crit_edge.us94.i.1:                             ; preds = %bb.w
  %i.na = add nuw nsw i64 %.06589.us.i, 2         ; 2 uses
  %exitcond109.not.i.1 = icmp eq i64 %i.na, %i.gu
  br i1 %exitcond109.not.i.1, label %.preheader.preheader.i, label %.preheader77.us.i, !llvm.loop !121

.preheader.preheader.i:                           ; preds = %._crit_edge.us94.i.1, %.preheader78.i
  %i.nb = phi <8 x i32> [ %i.ma, %.preheader78.i ], [ %i.mx, %._crit_edge.us94.i.1 ] ; 2 uses
  %i.nc = shufflevector <8 x i32> %i.nb, <8 x i32> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3>
  %i.nd = add <8 x i32> %i.nc, %i.nb              ; 2 uses
  %i.ne = shufflevector <8 x i32> %i.nd, <8 x i32> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4>
  %i.nf = add <8 x i32> %i.ne, %i.nd              ; 2 uses
  %i.ng = shufflevector <8 x i32> %i.nf, <8 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.nh = shufflevector <8 x i32> %i.nf, <8 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ni = add <4 x i32> %i.ng, %i.nh
  %i.nj = extractelement <4 x i32> %i.ni, i64 0
  %i.nk = add nsw i32 %i.nj, %i.gw                ; 2 uses
  %i.nl = sext i32 %i.nk to i64
  %i.nm = add nsw i64 %i.gx, %i.nl
  %i.nn = lshr i64 %i.nm, %i.gm
  %i.no = trunc i64 %i.nn to i32                  ; 3 uses
  %broadcast.splatinsert424 = insertelement <8 x i32> poison, i32 %i.no, i64 0
  %broadcast.splat425 = shufflevector <8 x i32> %broadcast.splatinsert424, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert438 = insertelement <4 x i32> poison, i32 %i.no, i64 0
  %broadcast.splat439 = shufflevector <4 x i32> %broadcast.splatinsert438, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %iter.check432

iter.check432:                                    ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.06298.i = phi i64 [ %i.nx, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.np = mul i64 %.06298.i, %i.bo
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.io, i64 %i.np ; 3 uses
  br i1 %min.iters.check419.not, label %vector.main.loop.iter.check420, label %vec.epilog.scalar.ph433.preheader

vector.main.loop.iter.check420:                   ; preds = %iter.check432
  br i1 %min.iters.check421.not, label %vector.body426, label %vec.epilog.ph436

vector.body426:                                   ; preds = %vector.main.loop.iter.check420, %vector.body426
  %index427 = phi i64 [ %index.next428, %vector.body426 ], [ 0, %vector.main.loop.iter.check420 ] ; 2 uses
  %i.nq = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index427 ; 4 uses
  %i.nr = getelementptr i8, ptr %i.nq, i64 32
  %i.ns = getelementptr i8, ptr %i.nq, i64 64
  %i.nt = getelementptr i8, ptr %i.nq, i64 96
  store <8 x i32> %broadcast.splat425, ptr %i.nq, align 4, !tbaa !17, !alias.scope !148, !noalias !145
  store <8 x i32> %broadcast.splat425, ptr %i.nr, align 4, !tbaa !17, !alias.scope !148, !noalias !145
  store <8 x i32> %broadcast.splat425, ptr %i.ns, align 4, !tbaa !17, !alias.scope !148, !noalias !145
  store <8 x i32> %broadcast.splat425, ptr %i.nt, align 4, !tbaa !17, !alias.scope !148, !noalias !145
  %index.next428 = add nuw i64 %index427, 32      ; 2 uses
  %i.nu = icmp eq i64 %index.next428, %n.vec423
  br i1 %i.nu, label %middle.block429, label %vector.body426, !llvm.loop !151

middle.block429:                                  ; preds = %vector.body426
  br i1 %cmp.n430, label %._crit_edge.i, label %vec.epilog.iter.check434

vec.epilog.iter.check434:                         ; preds = %middle.block429
  br i1 %min.epilog.iters.check435, label %vec.epilog.scalar.ph433.preheader, label %vec.epilog.ph436, !prof !123

vec.epilog.ph436:                                 ; preds = %vector.main.loop.iter.check420, %vec.epilog.iter.check434
  %vec.epilog.resume.val431 = phi i64 [ %n.vec423, %vec.epilog.iter.check434 ], [ 0, %vector.main.loop.iter.check420 ]
  br label %vec.epilog.vector.body440

vec.epilog.vector.body440:                        ; preds = %vec.epilog.vector.body440, %vec.epilog.ph436
  %index441 = phi i64 [ %vec.epilog.resume.val431, %vec.epilog.ph436 ], [ %index.next442, %vec.epilog.vector.body440 ] ; 2 uses
  %i.nv = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index441
  store <4 x i32> %broadcast.splat439, ptr %i.nv, align 4, !tbaa !17, !alias.scope !148, !noalias !145
  %index.next442 = add nuw i64 %index441, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next442, %n.vec437
  br i1 %i.nw, label %vec.epilog.middle.block443, label %vec.epilog.vector.body440, !llvm.loop !152

vec.epilog.middle.block443:                       ; preds = %vec.epilog.vector.body440
  br i1 %cmp.n444, label %._crit_edge.i, label %vec.epilog.scalar.ph433.preheader

vec.epilog.scalar.ph433.preheader:                ; preds = %iter.check432, %vec.epilog.iter.check434, %vec.epilog.middle.block443
  %.097.i.ph = phi i64 [ 0, %iter.check432 ], [ %n.vec423, %vec.epilog.iter.check434 ], [ %n.vec437, %vec.epilog.middle.block443 ]
  br label %vec.epilog.scalar.ph433

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph433, %vec.epilog.middle.block443, %middle.block429
  %i.nx = add nuw nsw i64 %.06298.i, 1            ; 2 uses
  %exitcond112.not.i = icmp eq i64 %i.nx, %umax111.i
  br i1 %exitcond112.not.i, label %_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit, label %iter.check432, !llvm.loop !125

vec.epilog.scalar.ph433:                          ; preds = %vec.epilog.scalar.ph433.preheader, %vec.epilog.scalar.ph433
  %.097.i = phi i64 [ %i.ny, %vec.epilog.scalar.ph433 ], [ %.097.i.ph, %vec.epilog.scalar.ph433.preheader ] ; 2 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.097.i
  store i32 %i.no, ptr %gep.i, align 4, !tbaa !17, !alias.scope !148, !noalias !145
  %i.ny = add nuw nsw i64 %.097.i, 1              ; 2 uses
  %exitcond110.not.i = icmp eq i64 %i.ny, %umax.i
  br i1 %exitcond110.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph433, !llvm.loop !153

_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit: ; preds = %._crit_edge.i, %bb.p
  %i.nz = phi i32 [ %i.kj, %bb.p ], [ %i.nk, %._crit_edge.i ] ; 6 uses
  %i.oa = load i8, ptr %i.gy, align 1, !tbaa !9   ; 2 uses
  %i.ob = zext i8 %i.oa to i32
  %i.oc = mul nuw nsw i32 %i.ob, 3
  %i.od = add nsw i32 %i.oc, %i.hk
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %i.oe
  %i.og = load i64, ptr %i.of, align 8, !tbaa !53
  %.idx = shl i64 %i.og, 8
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.hl
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !54 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.ok = icmp eq i64 %i.hn, 0
  %i.ol = icmp eq ptr %i.oj, null                 ; 2 uses
  br i1 %i.ok, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit
  br i1 %i.ol, label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.om = load i32, ptr %i.oj, align 4, !tbaa !17, !alias.scope !154, !noalias !157
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.z:                                             ; preds = %_ZN3jxl6N_AVX219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit
  br i1 %i.ol, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.on = getelementptr [4 x i8], ptr %i.in, i64 %i.hn
  %i.oo = getelementptr i8, ptr %i.on, i64 -4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !17, !alias.scope !157, !noalias !154
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.ab:                                            ; preds = %bb.z
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.hn
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !17, !alias.scope !154, !noalias !157
  %i.os = getelementptr [4 x i8], ptr %i.in, i64 %i.hn
  %i.ot = getelementptr i8, ptr %i.os, i64 -4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !17, !alias.scope !157, !noalias !154
  %i.ov = add i32 %i.or, 1
  %i.ow = add i32 %i.ov, %i.ou
  %i.ox = sdiv i32 %i.ow, 2
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit:    ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab
  %.0.i = phi i32 [ %i.ox, %bb.ab ], [ %i.op, %bb.aa ], [ %i.om, %bb.y ], [ 32, %bb.x ] ; 2 uses
  %i.oy = load i8, ptr %i.gz, align 1, !tbaa !9
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.hn
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !17 ; 3 uses
  %i.pb = zext i8 %i.oa to i64
  %i.pc = load ptr, ptr %i.cp, align 8, !tbaa !77 ; 8 uses
  %i.pd = load ptr, ptr %i.cq, align 8, !tbaa !81 ; 4 uses
  %.not17.i = icmp eq ptr %i.pc, %i.pd
  br i1 %.not17.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %iter.check401

iter.check401:                                    ; preds = %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %i.pe = ptrtoaddr ptr %i.pd to i64
  %i.pf = ptrtoaddr ptr %i.pc to i64
  %i.pg = add i64 %i.pe, -4
  %i.ph = sub i64 %i.pg, %i.pf                    ; 3 uses
  %i.pi = lshr i64 %i.ph, 2
  %i.pj = add nuw nsw i64 %i.pi, 1                ; 5 uses
  %min.iters.check380 = icmp ult i64 %i.ph, 12
  br i1 %min.iters.check380, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check381

vector.main.loop.iter.check381:                   ; preds = %iter.check401
  %min.iters.check382 = icmp ult i64 %i.ph, 60
  br i1 %min.iters.check382, label %vec.epilog.ph405, label %vector.ph383

vector.ph383:                                     ; preds = %vector.main.loop.iter.check381
  %i.pk = and i64 %i.pj, 12
  %n.vec384 = and i64 %i.pj, 9223372036854775792  ; 4 uses
  %i.pl = shl i64 %n.vec384, 2
  %i.pm = getelementptr i8, ptr %i.pc, i64 %i.pl
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.pa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next395, %vector.body385 ] ; 2 uses
  %vec.phi = phi <4 x i64> [ zeroinitializer, %vector.ph383 ], [ %i.pz, %vector.body385 ]
  %vec.phi387 = phi <4 x i64> [ zeroinitializer, %vector.ph383 ], [ %i.qa, %vector.body385 ]
  %vec.phi388 = phi <4 x i64> [ zeroinitializer, %vector.ph383 ], [ %i.qb, %vector.body385 ]
  %vec.phi389 = phi <4 x i64> [ zeroinitializer, %vector.ph383 ], [ %i.qc, %vector.body385 ]
  %i.pn = shl i64 %index386, 2
  %next.gep390 = getelementptr i8, ptr %i.pc, i64 %i.pn ; 4 uses
  %i.po = getelementptr i8, ptr %next.gep390, i64 16
  %i.pp = getelementptr i8, ptr %next.gep390, i64 32
  %i.pq = getelementptr i8, ptr %next.gep390, i64 48
  %wide.load391 = load <4 x i32>, ptr %next.gep390, align 4, !tbaa !17
  %wide.load392 = load <4 x i32>, ptr %i.po, align 4, !tbaa !17
  %wide.load393 = load <4 x i32>, ptr %i.pp, align 4, !tbaa !17
  %wide.load394 = load <4 x i32>, ptr %i.pq, align 4, !tbaa !17
  %i.pr = icmp ugt <4 x i32> %broadcast.splat, %wide.load391
  %i.ps = icmp ugt <4 x i32> %broadcast.splat, %wide.load392
  %i.pt = icmp ugt <4 x i32> %broadcast.splat, %wide.load393
  %i.pu = icmp ugt <4 x i32> %broadcast.splat, %wide.load394
  %i.pv = zext <4 x i1> %i.pr to <4 x i64>
  %i.pw = zext <4 x i1> %i.ps to <4 x i64>
  %i.px = zext <4 x i1> %i.pt to <4 x i64>
  %i.py = zext <4 x i1> %i.pu to <4 x i64>
  %i.pz = add <4 x i64> %vec.phi, %i.pv           ; 2 uses
  %i.qa = add <4 x i64> %vec.phi387, %i.pw        ; 2 uses
  %i.qb = add <4 x i64> %vec.phi388, %i.px        ; 2 uses
  %i.qc = add <4 x i64> %vec.phi389, %i.py        ; 2 uses
  %index.next395 = add nuw i64 %index386, 16      ; 2 uses
  %i.qd = icmp eq i64 %index.next395, %n.vec384
  br i1 %i.qd, label %middle.block396, label %vector.body385, !llvm.loop !159

middle.block396:                                  ; preds = %vector.body385
  %bin.rdx = add <4 x i64> %i.qa, %i.pz
  %bin.rdx397 = add <4 x i64> %i.qb, %bin.rdx
  %bin.rdx398 = add <4 x i64> %i.qc, %bin.rdx397
end_hunk_1
begin_hunk_2_@_ZN3jxl6N_SSE220TokenizeCoefficientsEPKjRKNS_5RectTImEEPrPKiRKNS_15AcStrategyImageERKNS_22YCbCrChromaSubsamplingEPNS_6Image3IiEEPNSt3__16vectorINS_5TokenENSK_9allocatorISM_EEEERKNS_5PlaneIhEERKNSR_IiEERKNS_11BlockCtxMapE:bb.a
  %i.ij = icmp eq <4 x i32> %i.ii, zeroinitializer
  %i.ik = sext <4 x i1> %i.ij to <4 x i32>
  %i.il = add nsw <4 x i32> %i.ig, %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.hg, i64 96
  %i.in = load <4 x i32>, ptr %i.im, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.io = icmp eq <4 x i32> %i.in, zeroinitializer
  %i.ip = sext <4 x i1> %i.io to <4 x i32>
  %i.iq = add nsw <4 x i32> %i.il, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hg, i64 112
  %i.is = load <4 x i32>, ptr %i.ir, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.it = icmp eq <4 x i32> %i.is, zeroinitializer
  %i.iu = sext <4 x i1> %i.it to <4 x i32>
  %i.iv = add nsw <4 x i32> %i.iq, %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.ix = load <4 x i32>, ptr %i.iw, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.iy = icmp eq <4 x i32> %i.ix, zeroinitializer
  %i.iz = sext <4 x i1> %i.iy to <4 x i32>
  %i.ja = add nsw <4 x i32> %i.iv, %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hg, i64 144
  %i.jc = load <4 x i32>, ptr %i.jb, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.jd = icmp eq <4 x i32> %i.jc, zeroinitializer
  %i.je = sext <4 x i1> %i.jd to <4 x i32>
  %i.jf = add nsw <4 x i32> %i.ja, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hg, i64 160
  %i.jh = load <4 x i32>, ptr %i.jg, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.ji = icmp eq <4 x i32> %i.jh, zeroinitializer
  %i.jj = sext <4 x i1> %i.ji to <4 x i32>
  %i.jk = add nsw <4 x i32> %i.jf, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hg, i64 176
  %i.jm = load <4 x i32>, ptr %i.jl, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.jn = icmp eq <4 x i32> %i.jm, zeroinitializer
  %i.jo = sext <4 x i1> %i.jn to <4 x i32>
  %i.jp = add nsw <4 x i32> %i.jk, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hg, i64 192
  %i.jr = load <4 x i32>, ptr %i.jq, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.js = icmp eq <4 x i32> %i.jr, zeroinitializer
  %i.jt = sext <4 x i1> %i.js to <4 x i32>
  %i.ju = add nsw <4 x i32> %i.jp, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.hg, i64 208
  %i.jw = load <4 x i32>, ptr %i.jv, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.jx = icmp eq <4 x i32> %i.jw, zeroinitializer
  %i.jy = sext <4 x i1> %i.jx to <4 x i32>
  %i.jz = add nsw <4 x i32> %i.ju, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.hg, i64 224
  %i.kb = load <4 x i32>, ptr %i.ka, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.kc = icmp eq <4 x i32> %i.kb, zeroinitializer
  %i.kd = sext <4 x i1> %i.kc to <4 x i32>
  %i.ke = add nsw <4 x i32> %i.jz, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.hg, i64 240
  %i.kg = load <4 x i32>, ptr %i.kf, align 16, !tbaa !9, !alias.scope !206, !noalias !209
  %i.kh = icmp eq <4 x i32> %i.kg, zeroinitializer
  %i.ki = sext <4 x i1> %i.kh to <4 x i32>
  %i.kj = add nsw <4 x i32> %i.ke, %i.ki          ; 2 uses
  %i.kk = shufflevector <4 x i32> %i.kj, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kl = add <4 x i32> %i.kk, %i.kj              ; 2 uses
  %i.km = shufflevector <4 x i32> %i.kl, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.kn = add <4 x i32> %i.km, %i.kl
  %i.ko = extractelement <4 x i32> %i.kn, i64 0
  %i.kp = add nsw i32 %i.ko, 64                   ; 2 uses
  store i32 %i.kp, ptr %i.hj, align 4, !tbaa !17, !alias.scope !209, !noalias !206
  br label %_ZN3jxl6N_SSE219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  switch i64 %i.fl, label %.preheader76.us.i [
    i64 0, label %.preheader75.i
    i64 1, label %.preheader76.us.i.epil.preheader
  ]

.preheader76.us.i:                                ; preds = %bb.q, %._crit_edge.us.i.1
  %i.kq = phi <4 x i32> [ %i.lr, %._crit_edge.us.i.1 ], [ zeroinitializer, %bb.q ]
  %.06382.us.i = phi i64 [ %i.lu, %._crit_edge.us.i.1 ], [ 0, %bb.q ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %._crit_edge.us.i.1 ], [ 0, %bb.q ]
  %factor.op.mul.reass.us.i = mul nuw nsw i64 %.06382.us.i, %factor.op.mul81.i
  %i.kr = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us.i
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader76.us.i
  %i.ks = phi <4 x i32> [ %i.kq, %.preheader76.us.i ], [ %i.lc, %bb.r ]
  %.06480.us.i = phi i64 [ 0, %.preheader76.us.i ], [ %i.ld, %bb.r ] ; 3 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.06480.us.i
  %i.ku = load <2 x i64>, ptr %i.kt, align 4, !tbaa !9, !noalias !216
  %i.kv = getelementptr [4 x i8], ptr %i.kr, i64 %.06480.us.i
  %i.kw = load <2 x i64>, ptr %i.kv, align 16, !tbaa !9, !alias.scope !211, !noalias !214
  %i.kx = xor <2 x i64> %i.ku, splat (i64 -1)
  %i.ky = and <2 x i64> %i.kw, %i.kx
  %i.kz = bitcast <2 x i64> %i.ky to <4 x i32>
  %i.la = icmp eq <4 x i32> %i.kz, zeroinitializer
  %i.lb = sext <4 x i1> %i.la to <4 x i32>
  %i.lc = add <4 x i32> %i.ks, %i.lb              ; 2 uses
  %i.ld = add nuw nsw i64 %.06480.us.i, 4         ; 2 uses
  %i.le = icmp samesign ult i64 %i.ld, %i.fq
  br i1 %i.le, label %bb.r, label %._crit_edge.us.i, !llvm.loop !189

._crit_edge.us.i:                                 ; preds = %bb.r
  %i.lf = or disjoint i64 %.06382.us.i, 1
  %factor.op.mul.reass.us.i.1 = mul nuw nsw i64 %i.lf, %factor.op.mul81.i
  %i.lg = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us.i.1
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %._crit_edge.us.i
  %i.lh = phi <4 x i32> [ %i.lc, %._crit_edge.us.i ], [ %i.lr, %bb.s ]
  %.06480.us.i.1 = phi i64 [ 0, %._crit_edge.us.i ], [ %i.ls, %bb.s ] ; 3 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.06480.us.i.1
  %i.lj = load <2 x i64>, ptr %i.li, align 4, !tbaa !9, !noalias !216
  %i.lk = getelementptr [4 x i8], ptr %i.lg, i64 %.06480.us.i.1
  %i.ll = load <2 x i64>, ptr %i.lk, align 16, !tbaa !9, !alias.scope !211, !noalias !214
  %i.lm = xor <2 x i64> %i.lj, splat (i64 -1)
  %i.ln = and <2 x i64> %i.ll, %i.lm
  %i.lo = bitcast <2 x i64> %i.ln to <4 x i32>
  %i.lp = icmp eq <4 x i32> %i.lo, zeroinitializer
  %i.lq = sext <4 x i1> %i.lp to <4 x i32>
  %i.lr = add <4 x i32> %i.lh, %i.lq              ; 4 uses
  %i.ls = add nuw nsw i64 %.06480.us.i.1, 4       ; 2 uses
  %i.lt = icmp samesign ult i64 %i.ls, %i.fq
  br i1 %i.lt, label %bb.s, label %._crit_edge.us.i.1, !llvm.loop !189

._crit_edge.us.i.1:                               ; preds = %bb.s
  %i.lu = add nuw nsw i64 %.06382.us.i, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader75.i.loopexit.unr-lcssa, label %.preheader76.us.i, !llvm.loop !190

.preheader75.i.loopexit.unr-lcssa:                ; preds = %._crit_edge.us.i.1
  br i1 %lcmp.mod.not, label %.preheader75.i, label %.preheader76.us.i.epil.preheader

.preheader76.us.i.epil.preheader:                 ; preds = %bb.q, %.preheader75.i.loopexit.unr-lcssa
  %.epil.init = phi <4 x i32> [ zeroinitializer, %bb.q ], [ %i.lr, %.preheader75.i.loopexit.unr-lcssa ]
  %.06382.us.i.epil.init = phi i64 [ 0, %bb.q ], [ %i.lu, %.preheader75.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %factor.op.mul.reass.us.i.epil = mul nuw nsw i64 %.06382.us.i.epil.init, %factor.op.mul81.i
  %i.lv = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us.i.epil
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader76.us.i.epil.preheader
  %i.lw = phi <4 x i32> [ %.epil.init, %.preheader76.us.i.epil.preheader ], [ %i.mg, %bb.t ]
  %.06480.us.i.epil = phi i64 [ 0, %.preheader76.us.i.epil.preheader ], [ %i.mh, %bb.t ] ; 3 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.06480.us.i.epil
  %i.ly = load <2 x i64>, ptr %i.lx, align 4, !tbaa !9, !noalias !216
  %i.lz = getelementptr [4 x i8], ptr %i.lv, i64 %.06480.us.i.epil
  %i.ma = load <2 x i64>, ptr %i.lz, align 16, !tbaa !9, !alias.scope !211, !noalias !214
  %i.mb = xor <2 x i64> %i.ly, splat (i64 -1)
  %i.mc = and <2 x i64> %i.ma, %i.mb
  %i.md = bitcast <2 x i64> %i.mc to <4 x i32>
  %i.me = icmp eq <4 x i32> %i.md, zeroinitializer
  %i.mf = sext <4 x i1> %i.me to <4 x i32>
  %i.mg = add <4 x i32> %i.lw, %i.mf              ; 2 uses
  %i.mh = add nuw nsw i64 %.06480.us.i.epil, 4    ; 2 uses
  %i.mi = icmp samesign ult i64 %i.mh, %i.fq
  br i1 %i.mi, label %bb.t, label %.preheader75.i, !llvm.loop !189

.preheader75.i:                                   ; preds = %.preheader75.i.loopexit.unr-lcssa, %bb.t, %bb.q
  %.lcssa79.i = phi <4 x i32> [ zeroinitializer, %bb.q ], [ %i.lr, %.preheader75.i.loopexit.unr-lcssa ], [ %i.mg, %bb.t ] ; 3 uses
  br i1 %i.fs, label %.preheader74.us.i.preheader, label %.preheader.preheader.i

.preheader74.us.i.preheader:                      ; preds = %.preheader75.i
  br i1 %lcmp.mod318.not, label %.preheader74.us.i.preheader.new, label %.preheader74.us.i.prol

.preheader74.us.i.prol:                           ; preds = %.preheader74.us.i.preheader
  %i.mj = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us89.i.prol
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader74.us.i.prol
  %i.mk = phi <4 x i32> [ %.lcssa79.i, %.preheader74.us.i.prol ], [ %i.mp, %bb.u ]
  %.06684.us.i.prol = phi i64 [ 0, %.preheader74.us.i.prol ], [ %i.mq, %bb.u ] ; 2 uses
  %i.ml = getelementptr [4 x i8], ptr %i.mj, i64 %.06684.us.i.prol
  %i.mm = load <4 x i32>, ptr %i.ml, align 16, !tbaa !9, !alias.scope !211, !noalias !214
  %i.mn = icmp eq <4 x i32> %i.mm, zeroinitializer
  %i.mo = sext <4 x i1> %i.mn to <4 x i32>
  %i.mp = add <4 x i32> %i.mk, %i.mo              ; 2 uses
  %i.mq = add nuw nsw i64 %.06684.us.i.prol, 4    ; 2 uses
  %i.mr = icmp samesign ult i64 %i.mq, %i.fq
  br i1 %i.mr, label %bb.u, label %.preheader74.us.i.preheader.new, !llvm.loop !191

.preheader74.us.i.preheader.new:                  ; preds = %.preheader74.us.i.preheader, %bb.u
  %.unr319 = phi <4 x i32> [ %.lcssa79.i, %.preheader74.us.i.preheader ], [ %i.mp, %bb.u ]
  %.06586.us.i.unr = phi i64 [ %i.fl, %.preheader74.us.i.preheader ], [ %i.gc, %bb.u ]
  br label %.preheader74.us.i

.preheader74.us.i:                                ; preds = %._crit_edge.us90.i.1, %.preheader74.us.i.preheader.new
  %i.ms = phi <4 x i32> [ %.unr319, %.preheader74.us.i.preheader.new ], [ %i.nj, %._crit_edge.us90.i.1 ]
  %.06586.us.i = phi i64 [ %.06586.us.i.unr, %.preheader74.us.i.preheader.new ], [ %i.nm, %._crit_edge.us90.i.1 ] ; 3 uses
  %factor.op.mul.reass.us89.i = mul i64 %.06586.us.i, %factor.op.mul81.i
  %i.mt = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us89.i
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.preheader74.us.i
  %i.mu = phi <4 x i32> [ %i.ms, %.preheader74.us.i ], [ %i.mz, %bb.v ]
  %.06684.us.i = phi i64 [ 0, %.preheader74.us.i ], [ %i.na, %bb.v ] ; 2 uses
  %i.mv = getelementptr [4 x i8], ptr %i.mt, i64 %.06684.us.i
  %i.mw = load <4 x i32>, ptr %i.mv, align 16, !tbaa !9, !alias.scope !211, !noalias !214
  %i.mx = icmp eq <4 x i32> %i.mw, zeroinitializer
  %i.my = sext <4 x i1> %i.mx to <4 x i32>
  %i.mz = add <4 x i32> %i.mu, %i.my              ; 2 uses
  %i.na = add nuw nsw i64 %.06684.us.i, 4         ; 2 uses
  %i.nb = icmp samesign ult i64 %i.na, %i.fq
  br i1 %i.nb, label %bb.v, label %._crit_edge.us90.i, !llvm.loop !191

._crit_edge.us90.i:                               ; preds = %bb.v
  %i.nc = add nuw nsw i64 %.06586.us.i, 1
  %factor.op.mul.reass.us89.i.1 = mul i64 %i.nc, %factor.op.mul81.i
  %i.nd = getelementptr i8, ptr %i.hg, i64 %factor.op.mul.reass.us89.i.1
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %._crit_edge.us90.i
  %i.ne = phi <4 x i32> [ %i.mz, %._crit_edge.us90.i ], [ %i.nj, %bb.w ]
  %.06684.us.i.1 = phi i64 [ 0, %._crit_edge.us90.i ], [ %i.nk, %bb.w ] ; 2 uses
  %i.nf = getelementptr [4 x i8], ptr %i.nd, i64 %.06684.us.i.1
  %i.ng = load <4 x i32>, ptr %i.nf, align 16, !tbaa !9, !alias.scope !211, !noalias !214
  %i.nh = icmp eq <4 x i32> %i.ng, zeroinitializer
  %i.ni = sext <4 x i1> %i.nh to <4 x i32>
  %i.nj = add <4 x i32> %i.ne, %i.ni              ; 3 uses
  %i.nk = add nuw nsw i64 %.06684.us.i.1, 4       ; 2 uses
  %i.nl = icmp samesign ult i64 %i.nk, %i.fq
  br i1 %i.nl, label %bb.w, label %._crit_edge.us90.i.1, !llvm.loop !191

._crit_edge.us90.i.1:                             ; preds = %bb.w
  %i.nm = add nuw nsw i64 %.06586.us.i, 2         ; 2 uses
  %exitcond103.not.i.1 = icmp eq i64 %i.nm, %i.fr
  br i1 %exitcond103.not.i.1, label %.preheader.preheader.i, label %.preheader74.us.i, !llvm.loop !193

.preheader.preheader.i:                           ; preds = %._crit_edge.us90.i.1, %.preheader75.i
  %.lcssa77.i = phi <4 x i32> [ %.lcssa79.i, %.preheader75.i ], [ %i.nj, %._crit_edge.us90.i.1 ]
  %i.nn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa77.i)
  %i.no = add nsw i32 %i.nn, %i.ft                ; 2 uses
  %i.np = sext i32 %i.no to i64
  %i.nq = add nsw i64 %i.fu, %i.np
  %i.nr = lshr i64 %i.nq, %i.fj
  %i.ns = trunc i64 %i.nr to i32                  ; 2 uses
  %broadcast.splatinsert299 = insertelement <4 x i32> poison, i32 %i.ns, i64 0
  %broadcast.splat300 = shufflevector <4 x i32> %broadcast.splatinsert299, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.06294.i = phi i64 [ %i.nx, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.nt = mul i64 %.06294.i, %i.al
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.hj, i64 %i.nt ; 2 uses
  br i1 %min.iters.check296.not, label %vector.body301, label %scalar.ph295.preheader

vector.body301:                                   ; preds = %.preheader.i, %vector.body301
  %index302 = phi i64 [ %index.next303, %vector.body301 ], [ 0, %.preheader.i ] ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index302 ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 16
  store <4 x i32> %broadcast.splat300, ptr %i.nu, align 4, !tbaa !17, !alias.scope !214, !noalias !211
  store <4 x i32> %broadcast.splat300, ptr %i.nv, align 4, !tbaa !17, !alias.scope !214, !noalias !211
  %index.next303 = add nuw i64 %index302, 8       ; 2 uses
  %i.nw = icmp eq i64 %index.next303, %n.vec298
  br i1 %i.nw, label %middle.block304, label %vector.body301, !llvm.loop !217

middle.block304:                                  ; preds = %vector.body301
  br i1 %cmp.n305, label %._crit_edge.i, label %scalar.ph295.preheader

scalar.ph295.preheader:                           ; preds = %.preheader.i, %middle.block304
  %.093.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec298, %middle.block304 ]
  br label %scalar.ph295

._crit_edge.i:                                    ; preds = %scalar.ph295, %middle.block304
  %i.nx = add nuw nsw i64 %.06294.i, 1            ; 2 uses
  %exitcond106.not.i = icmp eq i64 %i.nx, %umax105.i
  br i1 %exitcond106.not.i, label %_ZN3jxl6N_SSE219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit, label %.preheader.i, !llvm.loop !195

scalar.ph295:                                     ; preds = %scalar.ph295.preheader, %scalar.ph295
  %.093.i = phi i64 [ %i.ny, %scalar.ph295 ], [ %.093.i.ph, %scalar.ph295.preheader ] ; 2 uses
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %.093.i
  store i32 %i.ns, ptr %gep.i, align 4, !tbaa !17, !alias.scope !214, !noalias !211
  %i.ny = add nuw nsw i64 %.093.i, 1              ; 2 uses
  %exitcond104.not.i = icmp eq i64 %i.ny, %umax.i
  br i1 %exitcond104.not.i, label %._crit_edge.i, label %scalar.ph295, !llvm.loop !218

_ZN3jxl6N_SSE219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit: ; preds = %._crit_edge.i, %bb.p
  %i.nz = phi i32 [ %i.kp, %bb.p ], [ %i.no, %._crit_edge.i ] ; 6 uses
  %i.oa = load i8, ptr %i.fv, align 1, !tbaa !9   ; 2 uses
  %i.ob = zext i8 %i.oa to i32
  %i.oc = mul nuw nsw i32 %i.ob, 3
  %i.od = add nsw i32 %i.oc, %i.gf
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL17kCoeffOrderOffsetE, i64 %i.oe
  %i.og = load i64, ptr %i.of, align 8, !tbaa !53
  %.idx = shl i64 %i.og, 8
  %i.oh = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.oi = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.gg
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !54 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.ok = icmp eq i64 %i.gi, 0
  %i.ol = icmp eq ptr %i.oj, null                 ; 2 uses
  br i1 %i.ok, label %bb.x, label %bb.z

bb.x:                                             ; preds = %_ZN3jxl6N_SSE219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit
  br i1 %i.ol, label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.om = load i32, ptr %i.oj, align 4, !tbaa !17, !alias.scope !219, !noalias !222
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.z:                                             ; preds = %_ZN3jxl6N_SSE219NumNonZeroExceptLLFEmmNS_10AcStrategyEmmPKimPi.exit
  br i1 %i.ol, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.on = getelementptr [4 x i8], ptr %i.hi, i64 %i.gi
  %i.oo = getelementptr i8, ptr %i.on, i64 -4
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !17, !alias.scope !222, !noalias !219
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

bb.ab:                                            ; preds = %bb.z
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.gi
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !17, !alias.scope !219, !noalias !222
  %i.os = getelementptr [4 x i8], ptr %i.hi, i64 %i.gi
  %i.ot = getelementptr i8, ptr %i.os, i64 -4
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !17, !alias.scope !222, !noalias !219
  %i.ov = add i32 %i.or, 1
  %i.ow = add i32 %i.ov, %i.ou
  %i.ox = sdiv i32 %i.ow, 2
  br label %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit

_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit:    ; preds = %bb.x, %bb.y, %bb.aa, %bb.ab
  %.0.i = phi i32 [ %i.ox, %bb.ab ], [ %i.op, %bb.aa ], [ %i.om, %bb.y ], [ 32, %bb.x ] ; 2 uses
  %i.oy = load i8, ptr %i.fw, align 1, !tbaa !9
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.gi
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !17 ; 2 uses
  %i.pb = zext i8 %i.oa to i64
  %i.pc = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 6 uses
  %i.pd = load ptr, ptr %i.bn, align 8, !tbaa !81 ; 4 uses
  %.not17.i = icmp eq ptr %i.pc, %i.pd
  br i1 %.not17.i, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %i.pe = ptrtoaddr ptr %i.pd to i64
  %i.pf = ptrtoaddr ptr %i.pc to i64
  %i.pg = add i64 %i.pe, -4
  %i.ph = sub i64 %i.pg, %i.pf                    ; 2 uses
  %i.pi = lshr i64 %i.ph, 2
  %i.pj = add nuw nsw i64 %i.pi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ph, 12
  br i1 %min.iters.check, label %.lr.ph.i.preheader307, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.pj, 9223372036854775804     ; 3 uses
  %i.pk = shl i64 %n.vec, 2
  %i.pl = getelementptr i8, ptr %i.pc, i64 %i.pk
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.pa, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ps, %vector.body ]
  %vec.phi293 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.pt, %vector.body ]
  %i.pm = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.pc, i64 %i.pm ; 2 uses
  %i.pn = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 4, !tbaa !17
  %wide.load294 = load <2 x i32>, ptr %i.pn, align 4, !tbaa !17
  %i.po = icmp ugt <2 x i32> %broadcast.splat, %wide.load
  %i.pp = icmp ugt <2 x i32> %broadcast.splat, %wide.load294
  %i.pq = zext <2 x i1> %i.po to <2 x i64>
  %i.pr = zext <2 x i1> %i.pp to <2 x i64>
  %i.ps = add <2 x i64> %vec.phi, %i.pq           ; 2 uses
  %i.pt = add <2 x i64> %vec.phi293, %i.pr        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pu = icmp eq i64 %index.next, %n.vec
  br i1 %i.pu, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.pt, %i.ps
  %i.pv = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.pj, %n.vec
  br i1 %cmp.n, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i.preheader307

.lr.ph.i.preheader307:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.019.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.pv, %middle.block ]
  %.sroa.014.018.i.ph = phi ptr [ %i.pc, %.lr.ph.i.preheader ], [ %i.pl, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader307, %.lr.ph.i
  %.019.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.019.i.ph, %.lr.ph.i.preheader307 ]
  %.sroa.014.018.i = phi ptr [ %i.pz, %.lr.ph.i ], [ %.sroa.014.018.i.ph, %.lr.ph.i.preheader307 ] ; 2 uses
  %i.pw = load i32, ptr %.sroa.014.018.i, align 4, !tbaa !17
  %i.px = icmp ugt i32 %i.pa, %i.pw
  %i.py = zext i1 %i.px to i64
  %spec.select.i = add i64 %.019.i, %i.py         ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.014.018.i, i64 4 ; 2 uses
  %.not.i136 = icmp eq ptr %i.pz, %i.pd
  br i1 %.not.i136, label %_ZNK3jxl11BlockCtxMap7ContextEijmm.exit, label %.lr.ph.i, !llvm.loop !225

_ZNK3jxl11BlockCtxMap7ContextEijmm.exit:          ; preds = %.lr.ph.i, %middle.block, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZN3jxlL21PredictFromTopAndLeftEPKiS1_mi.exit ], [ %i.pv, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.qa = icmp ult i32 %i.gf, 2
  %i.qb = xor i64 %i.gg, 1
  %i.qc = mul nsw i64 %i.qb, 13
  %i.qd = select i1 %i.qa, i64 %i.qc, i64 26
  %i.qe = add nsw i64 %i.qd, %i.pb
  %i.qf = ptrtoint ptr %i.pd to i64
  %i.qg = ptrtoint ptr %i.pc to i64
  %i.qh = sub i64 %i.qf, %i.qg
  %i.qi = ashr exact i64 %i.qh, 2
  %i.qj = add nsw i64 %i.qi, 1
  %i.qk = mul i64 %i.qj, %i.qe
  %i.ql = add i64 %.0.lcssa.i, %i.qk
  %i.qm = load i64, ptr %i.bo, align 8, !tbaa !84
  %i.qn = mul i64 %i.qm, %i.ql
  %i.qo = zext i8 %i.oy to i64
  %i.qp = load ptr, ptr %i.bp, align 8, !tbaa !90
  %i.qq = getelementptr i8, ptr %i.qp, i64 %i.qn
  %i.qr = getelementptr i8, ptr %i.qq, i64 %i.qo
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !9
  %i.qt = zext i8 %i.qs to i32                    ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 64) ; 2 uses
  %i.qu = icmp ult i32 %.0.i, 8
  %i.qv = lshr i32 %spec.store.select.i, 1
  %i.qw = add nuw nsw i32 %i.qv, 4
  %.0.i138 = select i1 %i.qu, i32 %spec.store.select.i, i32 %i.qw
  %i.qx = load i64, ptr %i.bq, align 8, !tbaa !91
  %i.qy = trunc i64 %i.qx to i32
  %i.qz = mul i32 %.0.i138, %i.qy
  %i.ra = add i32 %i.qz, %i.qt                    ; 2 uses
  %i.rb = load ptr, ptr %i.j, align 8, !tbaa !33  ; 5 uses
  %i.rc = load ptr, ptr %i.o, align 8, !tbaa !34  ; 2 uses
end_hunk_2
