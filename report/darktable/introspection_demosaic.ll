Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_demosaic?download=true
inline.NumInlined: 382
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 134
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 177
begin_hunk_0_@process:bb.a
  %.not158.i.i = icmp eq ptr %i.ir, null
  br i1 %.not158.i.i, label %_calc_auto_radius.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.is = icmp sgt i32 %i.ii, 0                   ; 3 uses
  br i1 %.not.i.i462, label %.preheader180.i.i, label %bb.au

.preheader180.i.i:                                ; preds = %bb.at
  %i.it = icmp sgt i32 %i.ic, 0
  %or.cond.i.i = and i1 %i.it, %i.is
  br i1 %or.cond.i.i, label %.preheader.preheader.i.i, label %.loopexit.i.i

.preheader.preheader.i.i:                         ; preds = %.preheader180.i.i
  %wide.trip.count226.i.i = zext nneg i32 %i.ii to i64 ; 2 uses
  %wide.trip.count221.i.i = zext nneg i32 %i.ic to i64 ; 10 uses
  %i.iu = add nsw i64 %wide.trip.count221.i.i, -1 ; 2 uses
  %i.iv = add nuw nsw i64 %wide.trip.count226.i.i, 4611686018427387903
  %i.iw = mul i64 %i.iv, %i.in
  %i.ix = add i64 %i.iw, %wide.trip.count221.i.i
  %i.iy = shl i64 %i.ix, 2
  %scevgep1644 = getelementptr i8, ptr %i.ir, i64 %i.iy
  %i.iz = extractelement <2 x i32> %i.hq, i64 1   ; 2 uses
  %i.ja = mul i32 %i.iz, %i.hg
  %i.jb = extractelement <2 x i32> %i.hq, i64 0   ; 2 uses
  %i.jc = add i32 %i.jb, %i.ja
  %i.jd = shl nuw nsw i64 %wide.trip.count221.i.i, 4
  %i.je = getelementptr i8, ptr %2, i64 %i.jd
  %scevgep1646 = getelementptr i8, ptr %i.je, i64 -12
  %min.iters.check1652 = icmp ult i32 %i.ic, 5
  %i.jf = trunc nsw i64 %i.iu to i32
  %i.jg = icmp ugt i64 %i.iu, 4294967295
  %min.iters.check1653 = icmp ult i32 %i.ic, 33
  %i.jh = and i64 %wide.trip.count221.i.i, 31     ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  %i.jj = select i1 %i.ji, i64 32, i64 %i.jh      ; 2 uses
  %n.vec1655 = sub nsw i64 %wide.trip.count221.i.i, %i.jj ; 3 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.jj, 5
  %i.jk = and i64 %wide.trip.count221.i.i, 3      ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 0
  %i.jm = select i1 %i.jl, i64 4, i64 %i.jk
  %n.vec1666 = sub nsw i64 %wide.trip.count221.i.i, %i.jm ; 2 uses
  br label %iter.check

bb.au:                                            ; preds = %bb.at
  br i1 %i.bd, label %.preheader182.i.i, label %.preheader185.i.i

.preheader185.i.i:                                ; preds = %bb.au
  br i1 %i.is, label %.preheader184.lr.ph.i.i, label %.loopexit.i.i

.preheader184.lr.ph.i.i:                          ; preds = %.preheader185.i.i
  %i.jn = icmp sgt i32 %i.ic, 0
  %i.jo = sext i32 %i.hg to i64                   ; 3 uses
  %i.jp = extractelement <2 x i32> %i.hq, i64 0
  %i.jq = sext i32 %i.jp to i64                   ; 3 uses
  %invariant.gep189.i.i = getelementptr [4 x i8], ptr %2, i64 %i.jq
  br i1 %i.jn, label %.preheader184.preheader.i.i, label %.loopexit.i.i

.preheader184.preheader.i.i:                      ; preds = %.preheader184.lr.ph.i.i
  %i.jr = extractelement <2 x i32> %i.hq, i64 1
  %i.js = sext i32 %i.jr to i64                   ; 3 uses
  %wide.trip.count206.i.i = zext nneg i32 %i.ii to i64 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.ic to i64 ; 7 uses
  %i.jt = add nuw nsw i64 %wide.trip.count206.i.i, 4611686018427387903
  %i.ju = mul i64 %i.jt, %i.in
  %i.jv = add i64 %i.ju, %wide.trip.count.i.i
  %i.jw = shl i64 %i.jv, 2
  %scevgep = getelementptr i8, ptr %i.ir, i64 %i.jw
  %i.jx = mul nsw i64 %i.js, %i.jo
  %i.jy = add i64 %i.jx, %i.jq
  %i.jz = shl i64 %i.jy, 2
  %scevgep1639 = getelementptr i8, ptr %2, i64 %i.jz
  %i.ka = add nsw i64 %i.js, %wide.trip.count206.i.i
  %i.kb = shl nsw i64 %i.ka, 2
  %i.kc = add nsw i64 %i.kb, -4
  %i.kd = mul i64 %i.kc, %i.jo
  %i.ke = add nsw i64 %i.jq, %wide.trip.count.i.i
  %i.kf = shl nsw i64 %i.ke, 2
  %i.kg = getelementptr i8, ptr %2, i64 %i.kf
  %scevgep1640 = getelementptr i8, ptr %i.kg, i64 %i.kd
  %min.iters.check = icmp ult i32 %i.ic, 8
  %bound0 = icmp ult ptr %i.ir, %scevgep1640
  %bound1 = icmp ult ptr %scevgep1639, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.hg, 0
  %i.kh = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1641 = insertelement <8 x i32> poison, i32 %.fr1043, i64 0
  %broadcast.splat1642 = shufflevector <8 x i32> %broadcast.splatinsert1641, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader184.i.i

.preheader182.i.i:                                ; preds = %bb.au
  br i1 %i.is, label %.preheader181.lr.ph.i.i, label %.preheader.i.preheader.i.i

.preheader181.lr.ph.i.i:                          ; preds = %.preheader182.i.i
  %i.ki = icmp sgt i32 %i.ic, 0
  %i.kj = sext i32 %i.hg to i64
  %i.kk = extractelement <2 x i32> %i.hq, i64 0
  %i.kl = sext i32 %i.kk to i64
  %invariant.gep195.i.i = getelementptr [4 x i8], ptr %2, i64 %i.kl
  br i1 %i.ki, label %.preheader181.preheader.i.i, label %.preheader.i.preheader.i.i

.preheader181.preheader.i.i:                      ; preds = %.preheader181.lr.ph.i.i
  %i.km = extractelement <2 x i32> %i.hq, i64 1
  %i.kn = sext i32 %i.km to i64
  %wide.trip.count216.i.i = zext nneg i32 %i.ii to i64
  %wide.trip.count211.i.i = zext nneg i32 %i.ic to i64 ; 2 uses
  %xtraiter4711 = and i64 %wide.trip.count211.i.i, 1
  %i.ko = icmp eq i32 %i.ic, 1
  %unroll_iter = and i64 %wide.trip.count211.i.i, 2147483646
  %lcmp.mod4712.not = icmp eq i64 %xtraiter4711, 0
  %lcmp.mod4713 = trunc i32 %i.ic to i1
  br label %.preheader181.i.i

.preheader181.i.i:                                ; preds = %._crit_edge192.i.i, %.preheader181.preheader.i.i
  %indvars.iv213.i.i = phi i64 [ 0, %.preheader181.preheader.i.i ], [ %indvars.iv.next214.i.i, %._crit_edge192.i.i ] ; 4 uses
  %i.kp = mul nuw nsw i64 %indvars.iv213.i.i, %i.in
  %i.kq = add nsw i64 %indvars.iv213.i.i, %i.kn
  %i.kr = mul nsw i64 %i.kq, %i.kj
  %gep196.i.i = getelementptr [4 x i8], ptr %invariant.gep195.i.i, i64 %i.kr ; 3 uses
  %i.ks = trunc i64 %indvars.iv213.i.i to i32
  %i.kt = add i32 %i.ks, 600
  %i.ku = urem i32 %i.kt, 6
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.kv ; 3 uses
  %i.kx = getelementptr [4 x i8], ptr %i.ir, i64 %i.kp ; 3 uses
  br i1 %i.ko, label %.epil.preheader, label %.preheader181.i.i.new

._crit_edge192.i.i.unr-lcssa:                     ; preds = %.preheader181.i.i.new
  br i1 %lcmp.mod4712.not, label %._crit_edge192.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge192.i.i.unr-lcssa, %.preheader181.i.i
  %indvars.iv208.i.i.epil.init = phi i64 [ 0, %.preheader181.i.i ], [ %indvars.iv.next209.i.i.1, %._crit_edge192.i.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod4713)
  %gep193.i.i.epil = getelementptr [4 x i8], ptr %gep196.i.i, i64 %indvars.iv208.i.i.epil.init
  %i.ky = load float, ptr %gep193.i.i.epil, align 4, !tbaa !22
  %i.kz = trunc i64 %indvars.iv208.i.i.epil.init to i32
  %i.la = add i32 %i.kz, 600
  %i.lb = urem i32 %i.la, 6
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !169
  %i.lf = zext i8 %i.le to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.lf
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !22
  %i.li = fmul reassoc nsz arcp contract afn float %i.lh, %i.ky
  %i.lj = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv208.i.i.epil.init
  store float %i.li, ptr %i.lj, align 4, !tbaa !22
  br label %._crit_edge192.i.i

._crit_edge192.i.i:                               ; preds = %._crit_edge192.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next214.i.i = add nuw nsw i64 %indvars.iv213.i.i, 1 ; 2 uses
  %exitcond217.not.i.i = icmp eq i64 %indvars.iv.next214.i.i, %wide.trip.count216.i.i
  br i1 %exitcond217.not.i.i, label %.loopexit.i.i, label %.preheader181.i.i

.preheader181.i.i.new:                            ; preds = %.preheader181.i.i, %.preheader181.i.i.new
  %indvars.iv208.i.i = phi i64 [ %indvars.iv.next209.i.i.1, %.preheader181.i.i.new ], [ 0, %.preheader181.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader181.i.i.new ], [ 0, %.preheader181.i.i ]
  %gep193.i.i = getelementptr [4 x i8], ptr %gep196.i.i, i64 %indvars.iv208.i.i
  %i.lk = load float, ptr %gep193.i.i, align 4, !tbaa !22
  %i.ll = trunc i64 %indvars.iv208.i.i to i32
  %i.lm = add i32 %i.ll, 600
  %i.ln = urem i32 %i.lm, 6
  %i.lo = zext nneg i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.lo
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !169
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.lr
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !22
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, %i.lk
  %i.lv = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv208.i.i
  store float %i.lu, ptr %i.lv, align 4, !tbaa !22
  %indvars.iv.next209.i.i = or disjoint i64 %indvars.iv208.i.i, 1 ; 3 uses
  %gep193.i.i.1 = getelementptr [4 x i8], ptr %gep196.i.i, i64 %indvars.iv.next209.i.i
  %i.lw = load float, ptr %gep193.i.i.1, align 4, !tbaa !22
  %i.lx = trunc i64 %indvars.iv.next209.i.i to i32
  %i.ly = add i32 %i.lx, 600
  %i.lz = urem i32 %i.ly, 6
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !169
  %i.md = zext i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.md
  %i.mf = load float, ptr %i.me, align 4, !tbaa !22
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, %i.lw
  %i.mh = getelementptr [4 x i8], ptr %i.kx, i64 %indvars.iv.next209.i.i
  store float %i.mg, ptr %i.mh, align 4, !tbaa !22
  %indvars.iv.next209.i.i.1 = add nuw nsw i64 %indvars.iv208.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge192.i.i.unr-lcssa, label %.preheader181.i.i.new

.preheader184.i.i:                                ; preds = %._crit_edge.i.i, %.preheader184.preheader.i.i
  %indvars.iv203.i.i = phi i64 [ 0, %.preheader184.preheader.i.i ], [ %indvars.iv.next204.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.mi = mul nuw nsw i64 %indvars.iv203.i.i, %i.in
  %i.mj = add nsw i64 %indvars.iv203.i.i, %i.js
  %i.mk = mul nsw i64 %i.mj, %i.jo
  %gep190.i.i = getelementptr [4 x i8], ptr %invariant.gep189.i.i, i64 %i.mk ; 6 uses
  %indvars.iv203.tr.i.i = trunc i64 %indvars.iv203.i.i to i32
  %i.ml = shl i32 %indvars.iv203.tr.i.i, 1
  %i.mm = and i32 %i.ml, 14                       ; 6 uses
  %i.mn = getelementptr [4 x i8], ptr %i.ir, i64 %i.mi ; 6 uses
  %brmerge4913 = select i1 %min.iters.check, i1 true, i1 %i.kh
  br i1 %brmerge4913, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader184.i.i
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.mm, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.mo = getelementptr [4 x i8], ptr %gep190.i.i, i64 %index
  %wide.load = load <8 x float>, ptr %i.mo, align 4, !tbaa !22, !alias.scope !170
  %i.mp = and <8 x i32> %vec.ind, splat (i32 1)
  %i.mq = or disjoint <8 x i32> %i.mp, %broadcast.splat
  %i.mr = shl nuw nsw <8 x i32> %i.mq, splat (i32 1)
  %i.ms = lshr <8 x i32> %broadcast.splat1642, %i.mr
  %i.mt = and <8 x i32> %i.ms, splat (i32 3)
  %i.mu = zext nneg <8 x i32> %i.mt to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.n, <8 x i64> %i.mu
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !22
  %i.mv = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.load
  %i.mw = getelementptr [4 x i8], ptr %i.mn, i64 %index
  store <8 x float> %i.mv, ptr %i.mw, align 4, !tbaa !22, !alias.scope !173, !noalias !170
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.mx = icmp eq i64 %index.next, %n.vec
  br i1 %i.mx, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader184.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader184.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.prol = getelementptr [4 x i8], ptr %gep190.i.i, i64 %indvars.iv.i.i.prol
  %i.my = load float, ptr %gep.i.i.prol, align 4, !tbaa !22
  %i.mz = trunc nuw nsw i64 %indvars.iv.i.i.prol to i32
  %i.na = and i32 %i.mz, 1
  %.tr.i.i.i.prol = or disjoint i32 %i.na, %i.mm
  %i.nb = shl nuw nsw i32 %.tr.i.i.i.prol, 1
  %i.nc = lshr i32 %.fr1043, %i.nb
  %i.nd = and i32 %i.nc, 3
  %i.ne = zext nneg i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ne
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !22
  %i.nh = fmul reassoc nsz arcp contract afn float %i.ng, %i.my
  %i.ni = getelementptr [4 x i8], ptr %i.mn, i64 %indvars.iv.i.i.prol
  store float %i.nh, ptr %i.ni, align 4, !tbaa !22
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !178

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ] ; 3 uses
  %i.nj = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.nk = icmp ugt i64 %i.nj, -4
  br i1 %i.nk, label %._crit_edge.i.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.nl = trunc i64 %indvars.iv.i.i.unr to i32
  %i.nm = trunc i64 %indvars.iv.i.i.unr to i32
  %i.nn = and i32 %i.nm, 1                        ; 2 uses
  %i.no = and i32 %i.nl, 1
  %i.np = xor i32 %i.no, 1                        ; 2 uses
  %.tr.i.i.i = or disjoint i32 %i.nn, %i.mm
  %i.nq = shl nuw nsw i32 %.tr.i.i.i, 1
  %i.nr = lshr i32 %.fr1043, %i.nq
  %i.ns = and i32 %i.nr, 3
  %i.nt = zext nneg i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.nt
  %.tr.i.i.i.1 = or disjoint i32 %i.np, %i.mm
  %i.nv = shl nuw nsw i32 %.tr.i.i.i.1, 1
  %i.nw = lshr i32 %.fr1043, %i.nv
  %i.nx = and i32 %i.nw, 3
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ny
  %.tr.i.i.i.2 = or disjoint i32 %i.nn, %i.mm
  %i.oa = shl nuw nsw i32 %.tr.i.i.i.2, 1
  %i.ob = lshr i32 %.fr1043, %i.oa
  %i.oc = and i32 %i.ob, 3
  %i.od = zext nneg i32 %i.oc to i64
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.od
  %.tr.i.i.i.3 = or disjoint i32 %i.np, %i.mm
  %i.of = shl nuw nsw i32 %.tr.i.i.i.3, 1
  %i.og = lshr i32 %.fr1043, %i.of
  %i.oh = and i32 %i.og, 3
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.oi
  br label %scalar.ph

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next204.i.i = add nuw nsw i64 %indvars.iv203.i.i, 1 ; 2 uses
  %exitcond207.not.i.i = icmp eq i64 %indvars.iv.next204.i.i, %wide.trip.count206.i.i
  br i1 %exitcond207.not.i.i, label %.loopexit.i.i, label %.preheader184.i.i

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.i.3, %scalar.ph ] ; 6 uses
  %gep.i.i = getelementptr [4 x i8], ptr %gep190.i.i, i64 %indvars.iv.i.i
  %i.ok = load float, ptr %gep.i.i, align 4, !tbaa !22
  %i.ol = load float, ptr %i.nu, align 4, !tbaa !22
  %i.om = fmul reassoc nsz arcp contract afn float %i.ol, %i.ok
  %i.on = getelementptr [4 x i8], ptr %i.mn, i64 %indvars.iv.i.i
  store float %i.om, ptr %i.on, align 4, !tbaa !22
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %gep.i.i.1 = getelementptr [4 x i8], ptr %gep190.i.i, i64 %indvars.iv.next.i.i
  %i.oo = load float, ptr %gep.i.i.1, align 4, !tbaa !22
  %i.op = load float, ptr %i.nz, align 4, !tbaa !22
  %i.oq = fmul reassoc nsz arcp contract afn float %i.op, %i.oo
  %i.or = getelementptr [4 x i8], ptr %i.mn, i64 %indvars.iv.next.i.i
  store float %i.oq, ptr %i.or, align 4, !tbaa !22
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %gep.i.i.2 = getelementptr [4 x i8], ptr %gep190.i.i, i64 %indvars.iv.next.i.i.1
  %i.os = load float, ptr %gep.i.i.2, align 4, !tbaa !22
  %i.ot = load float, ptr %i.oe, align 4, !tbaa !22
  %i.ou = fmul reassoc nsz arcp contract afn float %i.ot, %i.os
  %i.ov = getelementptr [4 x i8], ptr %i.mn, i64 %indvars.iv.next.i.i.1
  store float %i.ou, ptr %i.ov, align 4, !tbaa !22
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %gep.i.i.3 = getelementptr [4 x i8], ptr %gep190.i.i, i64 %indvars.iv.next.i.i.2
  %i.ow = load float, ptr %gep.i.i.3, align 4, !tbaa !22
  %i.ox = load float, ptr %i.oj, align 4, !tbaa !22
  %i.oy = fmul reassoc nsz arcp contract afn float %i.ox, %i.ow
  %i.oz = getelementptr [4 x i8], ptr %i.mn, i64 %indvars.iv.next.i.i.2
  store float %i.oy, ptr %i.oz, align 4, !tbaa !22
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !180

iter.check:                                       ; preds = %._crit_edge198.i.i, %.preheader.preheader.i.i
  %indvars.iv223.i.i = phi i64 [ 0, %.preheader.preheader.i.i ], [ %indvars.iv.next224.i.i, %._crit_edge198.i.i ] ; 4 uses
  %i.pa = trunc i64 %indvars.iv223.i.i to i32
  %i.pb = mul i32 %i.hg, %i.pa
  %i.pc = add i32 %i.pb, %i.jc
  %i.pd = sext i32 %i.pc to i64
  %i.pe = shl nsw i64 %i.pd, 4                    ; 2 uses
  %scevgep1645 = getelementptr i8, ptr %2, i64 %i.pe
  %scevgep1647 = getelementptr i8, ptr %scevgep1646, i64 %i.pe
  %i.pf = mul nuw nsw i64 %indvars.iv223.i.i, %i.in
  %i.pg = trunc i64 %indvars.iv223.i.i to i32
  %i.ph = add i32 %i.iz, %i.pg
  %i.pi = mul i32 %i.ph, %i.hg
  %i.pj = add i32 %i.pi, %i.jb                    ; 12 uses
  %i.pk = getelementptr [4 x i8], ptr %i.ir, i64 %i.pf ; 7 uses
  br i1 %min.iters.check1652, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.pl = add i32 %i.pj, %i.jf
  %i.pm = icmp slt i32 %i.pl, %i.pj
  %i.pn = or i1 %i.pm, %i.jg
  br i1 %i.pn, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck1643

vector.memcheck1643:                              ; preds = %vector.scevcheck
  %bound01648 = icmp ult ptr %i.ir, %scevgep1647
  %bound11649 = icmp ult ptr %scevgep1645, %scevgep1644
  %found.conflict1650 = and i1 %bound01648, %bound11649
  br i1 %found.conflict1650, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck1643
  br i1 %min.iters.check1653, label %vec.epilog.ph, label %vector.body1656

vector.body1656:                                  ; preds = %vector.main.loop.iter.check, %vector.body1656
  %index1657 = phi i64 [ %index.next1664, %vector.body1656 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.po = trunc i64 %index1657 to i32             ; 4 uses
  %i.pp = or disjoint i32 %i.po, 8
  %i.pq = or disjoint i32 %i.po, 16
  %i.pr = or disjoint i32 %i.po, 24
  %i.ps = add i32 %i.pj, %i.po
  %i.pt = add i32 %i.pj, %i.pp
  %i.pu = add i32 %i.pj, %i.pq
  %i.pv = add i32 %i.pj, %i.pr
  %i.pw = sext i32 %i.ps to i64
  %i.px = sext i32 %i.pt to i64
  %i.py = sext i32 %i.pu to i64
  %i.pz = sext i32 %i.pv to i64
  %i.qa = shl nsw i64 %i.pw, 4
  %i.qb = shl nsw i64 %i.px, 4
  %i.qc = shl nsw i64 %i.py, 4
  %i.qd = shl nsw i64 %i.pz, 4
  %i.qe = getelementptr inbounds nuw i8, ptr %2, i64 %i.qa
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 %i.qb
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 %i.qc
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 %i.qd
  %wide.vec = load <32 x float>, ptr %i.qe, align 4, !tbaa !22, !alias.scope !181
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1658 = load <32 x float>, ptr %i.qf, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1659 = shufflevector <32 x float> %wide.vec1658, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1660 = load <32 x float>, ptr %i.qg, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1661 = shufflevector <32 x float> %wide.vec1660, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.vec1662 = load <32 x float>, ptr %i.qh, align 4, !tbaa !22, !alias.scope !181
  %strided.vec1663 = shufflevector <32 x float> %wide.vec1662, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %i.qi = getelementptr [4 x i8], ptr %i.pk, i64 %index1657 ; 4 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 32
end_hunk_0
begin_hunk_1_@process:bb.a
  %indvars.iv.i471.prol = phi i64 [ %indvars.iv.next.i473.prol, %.preheader.i470.prol ], [ %indvars.iv.i471.ph, %.preheader.i470.preheader ] ; 3 uses
  %prol.iter4730 = phi i64 [ %prol.iter4730.next, %.preheader.i470.prol ], [ 0, %.preheader.i470.preheader ]
  %i.bmv = add nuw nsw i64 %indvars.iv.i471.prol, %i.bmm ; 2 uses
  %i.bmw = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %i.bmv ; 2 uses
  %.idx23.i.prol = shl i64 %i.bmv, 4
  %i.bmx = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx23.i.prol ; 3 uses
  %i.bmy = load float, ptr %i.bmw, align 4, !tbaa !22 ; 2 uses
  store float %i.bmy, ptr %i.bmx, align 4, !tbaa !22
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmx, i64 4
  store float %i.bmy, ptr %i.bmz, align 4, !tbaa !22
  %i.bna = load float, ptr %i.bmw, align 4, !tbaa !22
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bmx, i64 8
  store float %i.bna, ptr %i.bnb, align 4, !tbaa !22
  %i.bnc = add nuw nsw i64 %indvars.iv.i471.prol, %i.bmn
  %.idx.i472.prol = shl i64 %i.bnc, 4
  %i.bnd = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i472.prol
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 12
  store float 0.000000e+00, ptr %i.bne, align 4, !tbaa !22
  %indvars.iv.next.i473.prol = add nuw nsw i64 %indvars.iv.i471.prol, 1 ; 2 uses
  %prol.iter4730.next = add i64 %prol.iter4730, 1 ; 2 uses
  %prol.iter4730.cmp.not = icmp eq i64 %prol.iter4730.next, %xtraiter4728
  br i1 %prol.iter4730.cmp.not, label %.preheader.i470.prol.loopexit, label %.preheader.i470.prol, !llvm.loop !213

.preheader.i470.prol.loopexit:                    ; preds = %.preheader.i470.prol, %.preheader.i470.preheader
  %indvars.iv.i471.unr = phi i64 [ %indvars.iv.i471.ph, %.preheader.i470.preheader ], [ %indvars.iv.next.i473.prol, %.preheader.i470.prol ]
  %i.bnf = sub nsw i64 %indvars.iv.i471.ph, %i.aow
  %i.bng = icmp ugt i64 %i.bnf, -4
  br i1 %i.bng, label %._crit_edge.i475, label %.preheader.i470

.preheader.i470:                                  ; preds = %.preheader.i470.prol.loopexit, %.preheader.i470
  %indvars.iv.i471 = phi i64 [ %indvars.iv.next.i473.3, %.preheader.i470 ], [ %indvars.iv.i471.unr, %.preheader.i470.prol.loopexit ] ; 6 uses
  %i.bnh = add nuw nsw i64 %indvars.iv.i471, %i.bmm ; 2 uses
  %i.bni = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %i.bnh ; 2 uses
  %.idx23.i = shl i64 %i.bnh, 4
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx23.i ; 3 uses
  %i.bnk = load float, ptr %i.bni, align 4, !tbaa !22 ; 2 uses
  store float %i.bnk, ptr %i.bnj, align 4, !tbaa !22
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnj, i64 4
  store float %i.bnk, ptr %i.bnl, align 4, !tbaa !22
  %i.bnm = load float, ptr %i.bni, align 4, !tbaa !22
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnj, i64 8
  store float %i.bnm, ptr %i.bnn, align 4, !tbaa !22
  %i.bno = add nuw nsw i64 %indvars.iv.i471, %i.bmn
  %.idx.i472 = shl i64 %i.bno, 4
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i472
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 12
  store float 0.000000e+00, ptr %i.bnq, align 4, !tbaa !22
  %indvars.iv.next.i473 = add nuw nsw i64 %indvars.iv.i471, 1 ; 2 uses
  %i.bnr = add nuw nsw i64 %indvars.iv.next.i473, %i.bmm ; 2 uses
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %i.bnr ; 2 uses
  %.idx23.i.1 = shl i64 %i.bnr, 4
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx23.i.1 ; 3 uses
  %i.bnu = load float, ptr %i.bns, align 4, !tbaa !22 ; 2 uses
  store float %i.bnu, ptr %i.bnt, align 4, !tbaa !22
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bnt, i64 4
  store float %i.bnu, ptr %i.bnv, align 4, !tbaa !22
  %i.bnw = load float, ptr %i.bns, align 4, !tbaa !22
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnt, i64 8
  store float %i.bnw, ptr %i.bnx, align 4, !tbaa !22
  %i.bny = add nuw nsw i64 %indvars.iv.next.i473, %i.bmn
  %.idx.i472.1 = shl i64 %i.bny, 4
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i472.1
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 12
  store float 0.000000e+00, ptr %i.boa, align 4, !tbaa !22
  %indvars.iv.next.i473.1 = add nuw nsw i64 %indvars.iv.i471, 2 ; 2 uses
  %i.bob = add nuw nsw i64 %indvars.iv.next.i473.1, %i.bmm ; 2 uses
  %i.boc = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %i.bob ; 2 uses
  %.idx23.i.2 = shl i64 %i.bob, 4
  %i.bod = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx23.i.2 ; 3 uses
  %i.boe = load float, ptr %i.boc, align 4, !tbaa !22 ; 2 uses
  store float %i.boe, ptr %i.bod, align 4, !tbaa !22
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bod, i64 4
  store float %i.boe, ptr %i.bof, align 4, !tbaa !22
  %i.bog = load float, ptr %i.boc, align 4, !tbaa !22
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bod, i64 8
  store float %i.bog, ptr %i.boh, align 4, !tbaa !22
  %i.boi = add nuw nsw i64 %indvars.iv.next.i473.1, %i.bmn
  %.idx.i472.2 = shl i64 %i.boi, 4
  %i.boj = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i472.2
  %i.bok = getelementptr inbounds nuw i8, ptr %i.boj, i64 12
  store float 0.000000e+00, ptr %i.bok, align 4, !tbaa !22
  %indvars.iv.next.i473.2 = add nuw nsw i64 %indvars.iv.i471, 3 ; 2 uses
  %i.bol = add nuw nsw i64 %indvars.iv.next.i473.2, %i.bmm ; 2 uses
  %i.bom = getelementptr inbounds nuw [4 x i8], ptr %i.ayl, i64 %i.bol ; 2 uses
  %.idx23.i.3 = shl i64 %i.bol, 4
  %i.bon = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx23.i.3 ; 3 uses
  %i.boo = load float, ptr %i.bom, align 4, !tbaa !22 ; 2 uses
  store float %i.boo, ptr %i.bon, align 4, !tbaa !22
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bon, i64 4
  store float %i.boo, ptr %i.bop, align 4, !tbaa !22
  %i.boq = load float, ptr %i.bom, align 4, !tbaa !22
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bon, i64 8
  store float %i.boq, ptr %i.bor, align 4, !tbaa !22
  %i.bos = add nuw nsw i64 %indvars.iv.next.i473.2, %i.bmn
  %.idx.i472.3 = shl i64 %i.bos, 4
  %i.bot = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i472.3
  %i.bou = getelementptr inbounds nuw i8, ptr %i.bot, i64 12
  store float 0.000000e+00, ptr %i.bou, align 4, !tbaa !22
  %indvars.iv.next.i473.3 = add nuw nsw i64 %indvars.iv.i471, 4 ; 2 uses
  %exitcond.not.i474.3 = icmp eq i64 %indvars.iv.next.i473.3, %i.aow
  br i1 %exitcond.not.i474.3, label %._crit_edge.i475, label %.preheader.i470, !llvm.loop !214

._crit_edge.i475:                                 ; preds = %.preheader.i470.prol.loopexit, %.preheader.i470, %middle.block4543
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %demosaic_box3.exit, label %.preheader24.i

bb.iu:                                            ; preds = %bb.ir
  %i.bov = icmp slt i32 %i.ayb, 1
  %brmerge1036 = select i1 %i.bov, i1 true, i1 %i.aou
  br i1 %brmerge1036, label %demosaic_box3.exit, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %bb.iu
  %wide.trip.count50.i = zext nneg i32 %i.ayb to i64 ; 2 uses
  br i1 %i.bd, label %.preheader.us.i, label %.preheader.i476

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.split.i, %._crit_edge.split.us.us.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %._crit_edge.split.us.us.i ], [ 0, %.preheader.lr.ph.split.i ] ; 4 uses
  %i.bow = mul nuw nsw i64 %indvars.iv47.i, %i.aow
  %invariant.gep.us.i = getelementptr [4 x i8], ptr %i.ayl, i64 %i.bow ; 3 uses
  %i.box = mul nuw nsw i64 %indvars.iv47.i, %i.aov ; 3 uses
  %i.boy = trunc i64 %indvars.iv47.i to i32
  %i.boz = add i32 %i.boy, 600
  %i.bpa = urem i32 %i.boz, 6
  %i.bpb = zext nneg i32 %i.bpa to i64
  %i.bpc = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bpb ; 3 uses
  br i1 %i.awn, label %fcol.exit.us.us.i.epil.preheader, label %fcol.exit.us.us.i

fcol.exit.us.us.i:                                ; preds = %.preheader.us.i, %fcol.exit.us.us.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i.1, %fcol.exit.us.us.i ], [ 0, %.preheader.us.i ] ; 5 uses
  %niter4727 = phi i64 [ %niter4727.next.1, %fcol.exit.us.us.i ], [ 0, %.preheader.us.i ]
  %gep.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv42.i
  %i.bpd = load float, ptr %gep.us.us.i, align 4, !tbaa !22
  %i.bpe = add nuw nsw i64 %indvars.iv42.i, %i.box
  %i.bpf = trunc i64 %indvars.iv42.i to i32
  %i.bpg = add i32 %i.bpf, 600
  %i.bph = urem i32 %i.bpg, 6
  %i.bpi = zext nneg i32 %i.bph to i64
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpc, i64 %i.bpi
  %i.bpk = load i8, ptr %i.bpj, align 1, !tbaa !169
  %i.bpl = zext i8 %i.bpk to i64
  %.idx.us.us.i = shl i64 %i.bpe, 4
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.us.us.i ; 2 uses
  %i.bpn = getelementptr [4 x i8], ptr %i.bpm, i64 %i.bpl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bpm, i8 0, i64 16, i1 false)
  store float %i.bpd, ptr %i.bpn, align 4, !tbaa !22
  %indvars.iv.next43.i = or disjoint i64 %indvars.iv42.i, 1 ; 3 uses
  %gep.us.us.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.next43.i
  %i.bpo = load float, ptr %gep.us.us.i.1, align 4, !tbaa !22
  %i.bpp = add nuw nsw i64 %indvars.iv.next43.i, %i.box
  %i.bpq = trunc i64 %indvars.iv.next43.i to i32
  %i.bpr = add i32 %i.bpq, 600
  %i.bps = urem i32 %i.bpr, 6
  %i.bpt = zext nneg i32 %i.bps to i64
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpc, i64 %i.bpt
  %i.bpv = load i8, ptr %i.bpu, align 1, !tbaa !169
  %i.bpw = zext i8 %i.bpv to i64
  %.idx.us.us.i.1 = shl i64 %i.bpp, 4
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.us.us.i.1 ; 2 uses
  %i.bpy = getelementptr [4 x i8], ptr %i.bpx, i64 %i.bpw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bpx, i8 0, i64 16, i1 false)
  store float %i.bpo, ptr %i.bpy, align 4, !tbaa !22
  %indvars.iv.next43.i.1 = add nuw nsw i64 %indvars.iv42.i, 2 ; 2 uses
  %niter4727.next.1 = add i64 %niter4727, 2       ; 2 uses
  %niter4727.ncmp.1 = icmp eq i64 %niter4727.next.1, %unroll_iter4726
  br i1 %niter4727.ncmp.1, label %._crit_edge.split.us.us.i.unr-lcssa, label %fcol.exit.us.us.i

._crit_edge.split.us.us.i.unr-lcssa:              ; preds = %fcol.exit.us.us.i
  br i1 %lcmp.mod4724.not, label %._crit_edge.split.us.us.i, label %fcol.exit.us.us.i.epil.preheader

fcol.exit.us.us.i.epil.preheader:                 ; preds = %._crit_edge.split.us.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv42.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next43.i.1, %._crit_edge.split.us.us.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4725)
  %gep.us.us.i.epil = getelementptr [4 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv42.i.epil.init
  %i.bpz = load float, ptr %gep.us.us.i.epil, align 4, !tbaa !22
  %i.bqa = add nuw nsw i64 %indvars.iv42.i.epil.init, %i.box
  %i.bqb = trunc i64 %indvars.iv42.i.epil.init to i32
  %i.bqc = add i32 %i.bqb, 600
  %i.bqd = urem i32 %i.bqc, 6
  %i.bqe = zext nneg i32 %i.bqd to i64
  %i.bqf = getelementptr inbounds nuw i8, ptr %i.bpc, i64 %i.bqe
  %i.bqg = load i8, ptr %i.bqf, align 1, !tbaa !169
  %i.bqh = zext i8 %i.bqg to i64
  %.idx.us.us.i.epil = shl i64 %i.bqa, 4
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.us.us.i.epil ; 2 uses
  %i.bqj = getelementptr [4 x i8], ptr %i.bqi, i64 %i.bqh
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bqi, i8 0, i64 16, i1 false)
  store float %i.bpz, ptr %i.bqj, align 4, !tbaa !22
  br label %._crit_edge.split.us.us.i

._crit_edge.split.us.us.i:                        ; preds = %._crit_edge.split.us.us.i.unr-lcssa, %fcol.exit.us.us.i.epil.preheader
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count50.i
  br i1 %exitcond51.not.i, label %demosaic_box3.exit, label %.preheader.us.i

.preheader.i476:                                  ; preds = %.preheader.lr.ph.split.i, %._crit_edge.split.i
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %._crit_edge.split.i ], [ 0, %.preheader.lr.ph.split.i ] ; 4 uses
  %i.bqk = mul nuw nsw i64 %indvars.iv37.i, %i.aow
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.ayl, i64 %i.bqk ; 5 uses
  %i.bql = mul nuw nsw i64 %indvars.iv37.i, %i.aov ; 5 uses
  %indvars.iv37.tr.i = trunc i64 %indvars.iv37.i to i32
  %i.bqm = shl i32 %indvars.iv37.tr.i, 1
  %i.bqn = and i32 %i.bqm, 14                     ; 5 uses
  br i1 %i.awm, label %fcol.exit.i.epil.preheader, label %.preheader.i476.new

.preheader.i476.new:                              ; preds = %.preheader.i476
  %i.bqo = shl nuw nsw i32 %i.bqn, 1
  %i.bqp = lshr i32 %.fr1043, %i.bqo
  %i.bqq = and i32 %i.bqp, 3
  %i.bqr = zext nneg i32 %i.bqq to i64
  %.tr.i.i.i478.1 = shl nuw nsw i32 %i.bqn, 1
  %i.bqs = or disjoint i32 %.tr.i.i.i478.1, 2
  %i.bqt = lshr i32 %.fr1043, %i.bqs
  %i.bqu = and i32 %i.bqt, 3
  %i.bqv = zext nneg i32 %i.bqu to i64
  %i.bqw = shl nuw nsw i32 %i.bqn, 1
  %i.bqx = lshr i32 %.fr1043, %i.bqw
  %i.bqy = and i32 %i.bqx, 3
  %i.bqz = zext nneg i32 %i.bqy to i64
  %.tr.i.i.i478.3 = shl nuw nsw i32 %i.bqn, 1
  %i.bra = or disjoint i32 %.tr.i.i.i478.3, 2
  %i.brb = lshr i32 %.fr1043, %i.bra
  %i.brc = and i32 %i.brb, 3
  %i.brd = zext nneg i32 %i.brc to i64
  br label %fcol.exit.i

._crit_edge.split.i.unr-lcssa:                    ; preds = %fcol.exit.i
  br i1 %lcmp.mod4718.not, label %._crit_edge.split.i, label %fcol.exit.i.epil.preheader

fcol.exit.i.epil.preheader:                       ; preds = %._crit_edge.split.i.unr-lcssa, %.preheader.i476
  %indvars.iv.i477.epil.init = phi i64 [ 0, %.preheader.i476 ], [ %indvars.iv.next.i480.3, %._crit_edge.split.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4719)
  br label %fcol.exit.i.epil

fcol.exit.i.epil:                                 ; preds = %fcol.exit.i.epil, %fcol.exit.i.epil.preheader
  %indvars.iv.i477.epil = phi i64 [ %indvars.iv.i477.epil.init, %fcol.exit.i.epil.preheader ], [ %indvars.iv.next.i480.epil, %fcol.exit.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %fcol.exit.i.epil.preheader ], [ %epil.iter.next, %fcol.exit.i.epil ]
  %gep.i.epil = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i477.epil
  %i.bre = load float, ptr %gep.i.epil, align 4, !tbaa !22
  %i.brf = add nuw nsw i64 %indvars.iv.i477.epil, %i.bql
  %i.brg = trunc nuw nsw i64 %indvars.iv.i477.epil to i32
  %i.brh = and i32 %i.brg, 1
  %.tr.i.i.i478.epil = or disjoint i32 %i.brh, %i.bqn
  %i.bri = shl nuw nsw i32 %.tr.i.i.i478.epil, 1
  %i.brj = lshr i32 %.fr1043, %i.bri
  %i.brk = and i32 %i.brj, 3
  %i.brl = zext nneg i32 %i.brk to i64
  %.idx.i479.epil = shl i64 %i.brf, 4
  %i.brm = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i479.epil ; 2 uses
  %i.brn = getelementptr [4 x i8], ptr %i.brm, i64 %i.brl
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.brm, i8 0, i64 16, i1 false)
  store float %i.bre, ptr %i.brn, align 4, !tbaa !22
  %indvars.iv.next.i480.epil = add nuw nsw i64 %indvars.iv.i477.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter4717
  br i1 %epil.iter.cmp.not, label %._crit_edge.split.i, label %fcol.exit.i.epil, !llvm.loop !215

._crit_edge.split.i:                              ; preds = %fcol.exit.i.epil, %._crit_edge.split.i.unr-lcssa
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %wide.trip.count50.i
  br i1 %exitcond41.not.i, label %demosaic_box3.exit, label %.preheader.i476

fcol.exit.i:                                      ; preds = %fcol.exit.i, %.preheader.i476.new
  %indvars.iv.i477 = phi i64 [ 0, %.preheader.i476.new ], [ %indvars.iv.next.i480.3, %fcol.exit.i ] ; 6 uses
  %niter4721 = phi i64 [ 0, %.preheader.i476.new ], [ %niter4721.next.3, %fcol.exit.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i477
  %i.bro = load float, ptr %gep.i, align 4, !tbaa !22
  %i.brp = add nuw nsw i64 %indvars.iv.i477, %i.bql
  %.idx.i479 = shl i64 %i.brp, 4
  %i.brq = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i479 ; 2 uses
  %i.brr = getelementptr [4 x i8], ptr %i.brq, i64 %i.bqr
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.brq, i8 0, i64 16, i1 false)
  store float %i.bro, ptr %i.brr, align 4, !tbaa !22
  %indvars.iv.next.i480 = or disjoint i64 %indvars.iv.i477, 1 ; 2 uses
  %gep.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i480
  %i.brs = load float, ptr %gep.i.1, align 4, !tbaa !22
  %i.brt = add nuw nsw i64 %indvars.iv.next.i480, %i.bql
  %.idx.i479.1 = shl i64 %i.brt, 4
  %i.bru = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i479.1 ; 2 uses
  %i.brv = getelementptr [4 x i8], ptr %i.bru, i64 %i.bqv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bru, i8 0, i64 16, i1 false)
  store float %i.brs, ptr %i.brv, align 4, !tbaa !22
  %indvars.iv.next.i480.1 = or disjoint i64 %indvars.iv.i477, 2 ; 2 uses
  %gep.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i480.1
  %i.brw = load float, ptr %gep.i.2, align 4, !tbaa !22
  %i.brx = add nuw nsw i64 %indvars.iv.next.i480.1, %i.bql
  %.idx.i479.2 = shl i64 %i.brx, 4
  %i.bry = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i479.2 ; 2 uses
  %i.brz = getelementptr [4 x i8], ptr %i.bry, i64 %i.bqz
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bry, i8 0, i64 16, i1 false)
  store float %i.brw, ptr %i.brz, align 4, !tbaa !22
  %indvars.iv.next.i480.2 = or disjoint i64 %indvars.iv.i477, 3 ; 2 uses
  %gep.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i480.2
  %i.bsa = load float, ptr %gep.i.3, align 4, !tbaa !22
  %i.bsb = add nuw nsw i64 %indvars.iv.next.i480.2, %i.bql
  %.idx.i479.3 = shl i64 %i.bsb, 4
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.aop, i64 %.idx.i479.3 ; 2 uses
  %i.bsd = getelementptr [4 x i8], ptr %i.bsc, i64 %i.brd
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bsc, i8 0, i64 16, i1 false)
  store float %i.bsa, ptr %i.bsd, align 4, !tbaa !22
  %indvars.iv.next.i480.3 = add nuw nsw i64 %indvars.iv.i477, 4 ; 2 uses
  %niter4721.next.3 = add i64 %niter4721, 4       ; 2 uses
  %niter4721.ncmp.3 = icmp eq i64 %niter4721.next.3, %unroll_iter4720
  br i1 %niter4721.ncmp.3, label %._crit_edge.split.i.unr-lcssa, label %fcol.exit.i

bb.iv:                                            ; preds = %bb.ir
  br i1 %i.bd, label %bb.iw, label %bb.ou

bb.iw:                                            ; preds = %bb.iv
  br i1 %i.apv, label %bb.ix, label %bb.mf

bb.ix:                                            ; preds = %bb.iw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #27
  %i.bse = tail call ptr @dt_alloc_aligned(i64 noundef 1369344) #27 ; 74 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bse, i64 64) ]
  %.not.i482 = icmp eq ptr %i.bse, null
  br i1 %.not.i482, label %bb.iy, label %.preheader1259.i

bb.iy:                                            ; preds = %bb.ix
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.208) #27
  br label %xtrans_fdc_interpolate.exit

.preheader1259.i:                                 ; preds = %bb.ix, %bb.iz
  %indvars.iv1537.i = phi i64 [ %indvars.iv.next1538.i, %bb.iz ], [ 0, %bb.ix ] ; 4 uses
  %.010101276.i = phi i16 [ %.31013.4.fr.i, %bb.iz ], [ 0, %bb.ix ]
  %.010161275.i = phi i16 [ %.31019.4.fr.i, %bb.iz ], [ 0, %bb.ix ]
  %i.bsf = trunc nsw i64 %indvars.iv1537.i to i32
  %i.bsg = trunc nuw nsw i64 %indvars.iv1537.i to i16
  %i.bsh = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %indvars.iv1537.i
  %i.bsi = insertelement <4 x i32> poison, i32 %i.bsf, i64 0
  %i.bsj = shufflevector <4 x i32> %i.bsi, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bsk = or <4 x i32> %i.bsj, <i32 600, i32 poison, i32 poison, i32 poison>
  %i.bsl = add nuw nsw <4 x i32> %i.bsj, <i32 poison, i32 601, i32 600, i32 599>
  %i.bsm = shufflevector <4 x i32> %i.bsk, <4 x i32> %i.bsl, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.bsn = urem <4 x i32> %i.bsm, splat (i32 6)
  %i.bso = trunc nuw nsw <4 x i32> %i.bsn to <4 x i8> ; 4 uses
  %i.bsp = extractelement <4 x i8> %i.bso, i64 0
  %i.bsq = zext nneg i8 %i.bsp to i64
  %i.bsr = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bsq
  %i.bss = extractelement <4 x i8> %i.bso, i64 1
  %i.bst = zext nneg i8 %i.bss to i64
  %i.bsu = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bst
  %i.bsv = extractelement <4 x i8> %i.bso, i64 2
  %i.bsw = zext nneg i8 %i.bsv to i64
  %i.bsx = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bsw ; 2 uses
  %i.bsy = extractelement <4 x i8> %i.bso, i64 3
  %i.bsz = zext nneg i8 %i.bsy to i64
  %i.bta = getelementptr inbounds nuw [6 x i8], ptr %i.x, i64 %i.bsz
  br label %.preheader1258.i

.preheader1254.i:                                 ; preds = %bb.iz
  %i.btb = zext i16 %.31013.4.fr.i to i32         ; 4 uses
  %i.btc = urem i16 %.31013.4.fr.i, 3
  %.not1121.i = icmp eq i16 %i.btc, 0
  br i1 %.not1121.i, label %.preheader1252.i, label %bb.jm

.preheader1258.i:                                 ; preds = %.loopexit1257.4.i, %.preheader1259.i
  %indvars.iv.i483 = phi i64 [ 0, %.preheader1259.i ], [ %indvars.iv.next.i484, %.loopexit1257.4.i ] ; 4 uses
  %.110111273.i = phi i16 [ %.010101276.i, %.preheader1259.i ], [ %.31013.4.fr.i, %.loopexit1257.4.i ]
  %.110171272.i = phi i16 [ %.010161275.i, %.preheader1259.i ], [ %.31019.4.fr.i, %.loopexit1257.4.i ]
  %i.btd = trunc nuw nsw i64 %indvars.iv.i483 to i32 ; 4 uses
  %i.bte = trunc nuw nsw i64 %indvars.iv.i483 to i16
  %i.btf = getelementptr inbounds nuw [16 x i8], ptr %i.bsh, i64 %indvars.iv.i483 ; 32 uses
  %i.btg = add nuw nsw i32 %i.btd, 600
  %i.bth = or i32 %i.btd, 600
  %i.bti = insertelement <2 x i32> poison, i32 %i.bth, i64 0
  %i.btj = insertelement <2 x i32> %i.bti, i32 %i.btg, i64 1
  %i.btk = urem <2 x i32> %i.btj, splat (i32 6)   ; 2 uses
  %i.btl = extractelement <2 x i32> %i.btk, i64 0
  %i.btm = zext nneg i32 %i.btl to i64
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bsr, i64 %i.btm
  %i.bto = load i8, ptr %i.btn, align 1, !tbaa !169
  %i.btp = icmp eq i8 %i.bto, 1                   ; 3 uses
  %i.btq = select i1 %i.btp, i32 2, i32 1         ; 10 uses
  %i.btr = zext i1 %i.btp to i64
  %i.bts = getelementptr inbounds nuw [32 x i8], ptr @xtrans_markesteijn_interpolate.patt, i64 %i.btr ; 26 uses
  %i.btt = extractelement <2 x i32> %i.btk, i64 1
  %i.btu = zext nneg i32 %i.btt to i64            ; 2 uses
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bsu, i64 %i.btu
  %i.btw = load i8, ptr %i.btv, align 1, !tbaa !169
  %i.btx = icmp eq i8 %i.btw, 1                   ; 3 uses
  %.not2123.i = select i1 %i.btp, i1 true, i1 %i.btx
  br i1 %.not2123.i, label %.loopexit1257.i, label %.preheader1256.i

bb.iz:                                            ; preds = %.loopexit1257.4.i
  %indvars.iv.next1538.i = add nuw nsw i64 %indvars.iv1537.i, 1 ; 2 uses
  %exitcond1539.not.i = icmp eq i64 %indvars.iv.next1538.i, 3
  br i1 %exitcond1539.not.i, label %.preheader1254.i, label %.preheader1259.i

.preheader1256.i:                                 ; preds = %.preheader1258.i
  store i16 1, ptr %i.btf, align 16, !tbaa !216
  %i.bty = getelementptr inbounds nuw i8, ptr %i.bts, i64 6
  %i.btz = load i16, ptr %i.bty, align 2, !tbaa !216
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btf, i64 2
  store i16 %i.btz, ptr %i.bua, align 2, !tbaa !216
  %i.bub = getelementptr inbounds nuw i8, ptr %i.bts, i64 8
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btf, i64 4
  %i.bud = call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 8 %i.bub, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison), !tbaa !216
  %i.bue = shufflevector <3 x i16> %i.bud, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.buf = mul <2 x i16> %i.bue, splat (i16 122)
  store <2 x i16> %i.buf, ptr %i.buc, align 4, !tbaa !216
  %i.bug = getelementptr inbounds nuw i8, ptr %i.btf, i64 8
end_hunk_1
begin_hunk_2_@process:bb.a
  %i.nbn = fmul reassoc nsz arcp contract afn <8 x float> %i.naw, %i.naw
  %i.nbo = fadd reassoc nsz arcp contract afn <8 x float> %i.nbm, %i.nbn
  %i.nbp = fmul reassoc nsz arcp contract afn <8 x float> %i.nay, %i.nay
  %i.nbq = fadd reassoc nsz arcp contract afn <8 x float> %i.nbo, %i.nbp ; 3 uses
  %i.nbr = fmul reassoc nsz arcp contract afn <8 x float> %i.nah, %strided.vec4304
  %i.nbs = fmul reassoc nsz arcp contract afn <8 x float> %i.nbq, %strided.vec4286
  %i.nbt = fadd reassoc nsz arcp contract afn <8 x float> %i.nbr, %i.nbs
  %i.nbu = fadd reassoc nsz arcp contract afn <8 x float> %i.nah, %i.nbq ; 2 uses
  %i.nbv = fmul reassoc nsz arcp contract afn <8 x float> %i.nah, %i.nbq
  %i.nbw = fdiv reassoc nsz arcp contract afn <8 x float> %i.nbv, %i.nbu ; 2 uses
  %i.nbx = fmul reassoc nsz arcp contract afn <8 x float> %i.nbw, %i.mym
  %i.nby = fdiv reassoc nsz arcp contract afn <8 x float> %i.nbx, %i.myn
  %i.nbz = fmul reassoc nsz arcp contract afn <8 x float> %i.nbt, %i.myp
  %i.nca = fdiv reassoc nsz arcp contract afn <8 x float> %i.nbz, %i.nbu
  %i.ncb = fadd reassoc nsz arcp contract afn <8 x float> %i.nby, %i.nca
  %i.ncc = fadd reassoc nsz arcp contract afn <8 x float> %i.nbw, %i.myp
  %i.ncd = fdiv reassoc nsz arcp contract afn <8 x float> %i.ncb, %i.ncc
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ncd, <8 x ptr> align 4 %wide.gep4248, <8 x i1> splat (i1 true)), !tbaa !22, !noalias !402
  %index.next4313 = add nuw i64 %index4246, 8     ; 2 uses
  %vec.ind.next4314 = add nuw nsw <8 x i64> %vec.ind4247, splat (i64 16)
  %i.nce = icmp eq i64 %index.next4313, %n.vec4241
  br i1 %i.nce, label %scalar.ph4238.preheader, label %vector.body4245, !llvm.loop !418

._crit_edge1050.i:                                ; preds = %scalar.ph4238, %bb.qp
  %indvars.iv.next1239.i = add nuw nsw i64 %indvars.iv1238.i, 1 ; 2 uses
  %exitcond1102.not = icmp eq i64 %indvars.iv.next1239.i, %smax1125
  br i1 %exitcond1102.not, label %._crit_edge1053.i, label %bb.qp

scalar.ph4238:                                    ; preds = %scalar.ph4238.preheader, %scalar.ph4238
  %indvars.iv1235.i = phi i64 [ %indvars.iv.next1236.i, %scalar.ph4238 ], [ %indvars.iv1235.i.ph, %scalar.ph4238.preheader ] ; 7 uses
  %i.ncf = getelementptr inbounds nuw [4 x i8], ptr %i.mup, i64 %indvars.iv1235.i ; 3 uses
  %i.ncg = getelementptr inbounds nuw [4 x i8], ptr %i.muq, i64 %indvars.iv1235.i ; 9 uses
  %i.nch = getelementptr inbounds nuw [4 x i8], ptr %i.mur, i64 %indvars.iv1235.i ; 2 uses
  %i.nci = getelementptr inbounds nuw [4 x i8], ptr %i.mus, i64 %indvars.iv1235.i ; 9 uses
  %i.ncj = getelementptr inbounds nuw [4 x i8], ptr %i.mut, i64 %indvars.iv1235.i
  %i.nck = getelementptr inbounds i8, ptr %i.nch, i64 -16
  %i.ncl = getelementptr inbounds nuw i8, ptr %i.nch, i64 16
  %i.ncm = load float, ptr %i.ncl, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ncn = load <8 x float>, ptr %i.nck, align 4, !tbaa !22, !noalias !402 ; 4 uses
  %i.nco = getelementptr inbounds i8, ptr %i.ncf, i64 -16
  %i.ncp = getelementptr inbounds nuw i8, ptr %i.ncf, i64 16
  %i.ncq = load <8 x float>, ptr %i.nco, align 4, !tbaa !22, !noalias !402
  %i.ncr = fsub reassoc nsz arcp contract afn <8 x float> %i.ncn, %i.ncq ; 2 uses
  %i.ncs = fmul reassoc nsz arcp contract afn <8 x float> %i.ncr, %i.ncr
  %i.nct = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ncs)
  %i.ncu = getelementptr inbounds i8, ptr %i.nci, i64 -2176
  %i.ncv = load float, ptr %i.ncu, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ncw = getelementptr inbounds i8, ptr %i.nci, i64 -1632
  %i.ncx = load float, ptr %i.ncw, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ncy = getelementptr inbounds i8, ptr %i.nci, i64 -1088
  %i.ncz = load float, ptr %i.ncy, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.nda = getelementptr inbounds i8, ptr %i.nci, i64 -544
  %i.ndb = load float, ptr %i.nda, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndc = load float, ptr %i.nci, align 4, !tbaa !22, !noalias !402 ; 4 uses
  %i.ndd = getelementptr inbounds nuw i8, ptr %i.nci, i64 544
  %i.nde = load float, ptr %i.ndd, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndf = getelementptr inbounds nuw i8, ptr %i.nci, i64 1088
  %i.ndg = load float, ptr %i.ndf, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndh = getelementptr inbounds nuw i8, ptr %i.nci, i64 1632
  %i.ndi = load float, ptr %i.ndh, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndj = getelementptr inbounds nuw i8, ptr %i.nci, i64 2176
  %i.ndk = load float, ptr %i.ndj, align 4, !tbaa !22, !noalias !402 ; 3 uses
  %i.ndl = fadd reassoc nsz arcp contract afn float %i.ncx, %i.ncv
  %i.ndm = fadd reassoc nsz arcp contract afn float %i.ndl, %i.ncz
  %i.ndn = fadd reassoc nsz arcp contract afn float %i.ndm, %i.ndb
  %i.ndo = fadd reassoc nsz arcp contract afn float %i.ndn, %i.ndc
  %i.ndp = fadd reassoc nsz arcp contract afn float %i.ndo, %i.nde
  %i.ndq = fadd reassoc nsz arcp contract afn float %i.ndp, %i.ndg
  %i.ndr = fadd reassoc nsz arcp contract afn float %i.ndq, %i.ndi
  %i.nds = getelementptr inbounds i8, ptr %i.ncg, i64 -2176
  %i.ndt = load float, ptr %i.nds, align 4, !tbaa !22, !noalias !402
  %i.ndu = fsub reassoc nsz arcp contract afn float %i.ncv, %i.ndt ; 2 uses
  %i.ndv = getelementptr inbounds i8, ptr %i.ncg, i64 -1632
  %i.ndw = load float, ptr %i.ndv, align 4, !tbaa !22, !noalias !402
  %i.ndx = fsub reassoc nsz arcp contract afn float %i.ncx, %i.ndw ; 2 uses
  %i.ndy = getelementptr inbounds i8, ptr %i.ncg, i64 -1088
  %i.ndz = load float, ptr %i.ndy, align 4, !tbaa !22, !noalias !402
  %i.nea = fsub reassoc nsz arcp contract afn float %i.ncz, %i.ndz ; 2 uses
  %i.neb = getelementptr inbounds i8, ptr %i.ncg, i64 -544
  %i.nec = load float, ptr %i.neb, align 4, !tbaa !22, !noalias !402
  %i.ned = fsub reassoc nsz arcp contract afn float %i.ndb, %i.nec ; 2 uses
  %i.nee = getelementptr inbounds nuw i8, ptr %i.ncg, i64 544
  %i.nef = load float, ptr %i.nee, align 4, !tbaa !22, !noalias !402
  %i.neg = fsub reassoc nsz arcp contract afn float %i.nde, %i.nef ; 2 uses
  %i.neh = getelementptr inbounds nuw i8, ptr %i.ncg, i64 1088
  %i.nei = load float, ptr %i.neh, align 4, !tbaa !22, !noalias !402
  %i.nej = fsub reassoc nsz arcp contract afn float %i.ndg, %i.nei ; 2 uses
  %i.nek = getelementptr inbounds nuw i8, ptr %i.ncg, i64 1632
  %i.nel = getelementptr inbounds nuw i8, ptr %i.ncg, i64 2176
  %i.nem = load float, ptr %i.nel, align 4, !tbaa !22, !noalias !402
  %i.nen = fsub reassoc nsz arcp contract afn float %i.ndk, %i.nem ; 2 uses
  %i.neo = fmul reassoc nsz arcp contract afn float %i.ndu, %i.ndu
  %i.nep = fadd reassoc nsz arcp contract afn float %i.neo, 1.000000e-07
  %i.neq = fmul reassoc nsz arcp contract afn float %i.ndx, %i.ndx
  %i.ner = fadd reassoc nsz arcp contract afn float %i.nep, %i.neq
  %i.nes = fmul reassoc nsz arcp contract afn float %i.nea, %i.nea
  %i.net = fadd reassoc nsz arcp contract afn float %i.ner, %i.nes
  %i.neu = fmul reassoc nsz arcp contract afn float %i.ned, %i.ned
  %i.nev = fadd reassoc nsz arcp contract afn float %i.net, %i.neu
  %i.new = fmul reassoc nsz arcp contract afn float %i.neg, %i.neg
  %i.nex = fmul reassoc nsz arcp contract afn float %i.nej, %i.nej
  %i.ney = fmul reassoc nsz arcp contract afn float %i.nen, %i.nen
  %op.rdx4624 = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float %i.ncm, <8 x float> %i.ncn)
  %i.nez = fadd reassoc nsz arcp contract afn float %i.ndr, %i.ndk
  %i.nfa = insertelement <2 x float> poison, float %op.rdx4624, i64 0
  %i.nfb = insertelement <2 x float> %i.nfa, float %i.nez, i64 1
  %i.nfc = fmul reassoc nsz arcp contract afn <2 x float> %i.nfb, splat (float f0x3DE38E39) ; 3 uses
  %i.nfd = shufflevector <2 x float> %i.nfc, <2 x float> poison, <8 x i32> zeroinitializer
  %i.nfe = fsub reassoc nsz arcp contract afn <8 x float> %i.ncn, %i.nfd ; 2 uses
  %i.nff = fmul reassoc nsz arcp contract afn <8 x float> %i.nfe, %i.nfe
  %i.nfg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.nff)
  %i.nfh = extractelement <2 x float> %i.nfc, i64 1 ; 8 uses
  %i.nfi = fsub reassoc nsz arcp contract afn float %i.ncv, %i.nfh ; 2 uses
  %i.nfj = fmul reassoc nsz arcp contract afn float %i.nfi, %i.nfi
  %i.nfk = fadd reassoc nsz arcp contract afn float %i.nfj, 1.000000e-07
  %i.nfl = fsub reassoc nsz arcp contract afn float %i.ncx, %i.nfh ; 2 uses
  %i.nfm = fmul reassoc nsz arcp contract afn float %i.nfl, %i.nfl
  %i.nfn = fadd reassoc nsz arcp contract afn float %i.nfm, %i.nfk
  %i.nfo = fsub reassoc nsz arcp contract afn float %i.ncz, %i.nfh ; 2 uses
  %i.nfp = fmul reassoc nsz arcp contract afn float %i.nfo, %i.nfo
  %i.nfq = fadd reassoc nsz arcp contract afn float %i.nfp, %i.nfn
  %i.nfr = fsub reassoc nsz arcp contract afn float %i.ndb, %i.nfh ; 2 uses
  %i.nfs = fmul reassoc nsz arcp contract afn float %i.nfr, %i.nfr
  %i.nft = fadd reassoc nsz arcp contract afn float %i.nfs, %i.nfq
  %i.nfu = fsub reassoc nsz arcp contract afn float %i.ndc, %i.nfh ; 2 uses
  %i.nfv = fmul reassoc nsz arcp contract afn float %i.nfu, %i.nfu
  %i.nfw = fadd reassoc nsz arcp contract afn float %i.nfv, %i.nft
  %i.nfx = fsub reassoc nsz arcp contract afn float %i.nde, %i.nfh ; 2 uses
  %i.nfy = fmul reassoc nsz arcp contract afn float %i.nfx, %i.nfx
  %i.nfz = fadd reassoc nsz arcp contract afn float %i.nfy, %i.nfw
  %i.nga = fsub reassoc nsz arcp contract afn float %i.ndg, %i.nfh ; 2 uses
  %i.ngb = fmul reassoc nsz arcp contract afn float %i.nga, %i.nga
  %i.ngc = fadd reassoc nsz arcp contract afn float %i.ngb, %i.nfz
  %i.ngd = insertelement <2 x float> poison, float %i.ncm, i64 0
  %i.nge = insertelement <2 x float> %i.ngd, float %i.ndi, i64 1
  %i.ngf = fsub reassoc nsz arcp contract afn <2 x float> %i.nge, %i.nfc ; 2 uses
  %i.ngg = fmul reassoc nsz arcp contract afn <2 x float> %i.ngf, %i.ngf
  %i.ngh = insertelement <2 x float> poison, float %i.nfg, i64 0
  %i.ngi = insertelement <2 x float> %i.ngh, float %i.ngc, i64 1
  %i.ngj = fadd reassoc nsz arcp contract afn <2 x float> %i.ngi, %i.ngg
  %i.ngk = fsub reassoc nsz arcp contract afn float %i.ndk, %i.nfh ; 2 uses
  %i.ngl = fmul reassoc nsz arcp contract afn float %i.ngk, %i.ngk
  %i.ngm = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.ngl, i64 1
  %i.ngn = fadd reassoc nsz arcp contract afn <2 x float> %i.ngj, %i.ngm ; 3 uses
  %i.ngo = load float, ptr %i.nek, align 4, !tbaa !22, !noalias !402
  %i.ngp = load float, ptr %i.ncg, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ngq = load float, ptr %i.ncp, align 4, !tbaa !22, !noalias !402
  %i.ngr = load float, ptr %i.ncf, align 4, !tbaa !22, !noalias !402
  %i.ngs = fsub reassoc nsz arcp contract afn float %i.ndc, %i.ngp ; 2 uses
  %i.ngt = fsub reassoc nsz arcp contract afn float %i.ncm, %i.ngq
  %i.ngu = fsub reassoc nsz arcp contract afn float %i.ndi, %i.ngo
  %i.ngv = fmul reassoc nsz arcp contract afn float %i.ngs, %i.ngs
  %i.ngw = fadd reassoc nsz arcp contract afn float %i.nev, %i.ngv
  %i.ngx = fadd reassoc nsz arcp contract afn float %i.ngw, %i.new
  %i.ngy = fadd reassoc nsz arcp contract afn float %i.ngx, %i.nex
  %i.ngz = insertelement <2 x float> poison, float %i.ngt, i64 0
  %i.nha = insertelement <2 x float> %i.ngz, float %i.ngu, i64 1 ; 2 uses
  %i.nhb = fmul reassoc nsz arcp contract afn <2 x float> %i.nha, %i.nha
  %i.nhc = insertelement <2 x float> poison, float %i.nct, i64 0
  %i.nhd = insertelement <2 x float> %i.nhc, float %i.ngy, i64 1
  %i.nhe = fadd reassoc nsz arcp contract afn <2 x float> %i.nhd, %i.nhb
  %i.nhf = insertelement <2 x float> <float 1.000000e-07, float poison>, float %i.ney, i64 1
  %i.nhg = fadd reassoc nsz arcp contract afn <2 x float> %i.nhe, %i.nhf ; 3 uses
  %i.nhh = insertelement <2 x float> poison, float %i.ngr, i64 0
  %i.nhi = insertelement <2 x float> %i.nhh, float %i.ngp, i64 1
  %i.nhj = fmul reassoc nsz arcp contract afn <2 x float> %i.ngn, %i.nhi
  %i.nhk = shufflevector <8 x float> %i.ncn, <8 x float> poison, <2 x i32> <i32 4, i32 poison>
  %i.nhl = insertelement <2 x float> %i.nhk, float %i.ndc, i64 1
  %i.nhm = fmul reassoc nsz arcp contract afn <2 x float> %i.nhg, %i.nhl
  %i.nhn = fadd reassoc nsz arcp contract afn <2 x float> %i.nhj, %i.nhm
  %i.nho = fadd reassoc nsz arcp contract afn <2 x float> %i.ngn, %i.nhg ; 2 uses
  %i.nhp = fmul reassoc nsz arcp contract afn <2 x float> %i.ngn, %i.nhg
  %i.nhq = fdiv reassoc nsz arcp contract afn <2 x float> %i.nhp, %i.nho ; 3 uses
  %i.nhr = shufflevector <2 x float> %i.nhn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nhs = fmul reassoc nsz arcp contract afn <2 x float> %i.nhq, %i.nhr
  %i.nht = shufflevector <2 x float> %i.nho, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.nhu = fdiv reassoc nsz arcp contract afn <2 x float> %i.nhs, %i.nht ; 2 uses
  %shift = shufflevector <2 x float> %i.nhu, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <2 x float> %shift, %i.nhu
  %shift4629 = shufflevector <2 x float> %i.nhq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop4630 = fadd reassoc nsz arcp contract afn <2 x float> %shift4629, %i.nhq
  %foldExtExtBinop4632 = fdiv reassoc nsz arcp contract afn <2 x float> %foldExtExtBinop, %foldExtExtBinop4630
  %i.nhv = extractelement <2 x float> %foldExtExtBinop4632, i64 0
  store float %i.nhv, ptr %i.ncj, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1236.i = add nuw nsw i64 %indvars.iv1235.i, 2
  %i.nhw = icmp slt i64 %indvars.iv1235.i, %i.mpn
  br i1 %i.nhw, label %scalar.ph4238, label %._crit_edge1050.i, !llvm.loop !419

.preheader1016.i:                                 ; preds = %._crit_edge1060.i, %.lr.ph1064.i
  br i1 %i.lyg, label %.lr.ph1070.i, label %._crit_edge1078.i

.lr.ph1070.i:                                     ; preds = %.preheader1016.i
  %i.nhx = add nsw i32 %i.maw, 7                  ; 3 uses
  %i.nhy = sext i32 %i.nhx to i64                 ; 3 uses
  %i.nhz = add nsw i32 %i.maw, 6
  br label %bb.qy

.lr.ph1059.i:                                     ; preds = %._crit_edge1060.i, %.lr.ph1059.preheader.i
  %indvars.iv1250.i = phi i64 [ 0, %.lr.ph1059.preheader.i ], [ %indvars.iv.next1251.i, %._crit_edge1060.i ] ; 3 uses
  %.09261062.i = phi i32 [ %i.lye, %.lr.ph1059.preheader.i ], [ %i.nlc, %._crit_edge1060.i ] ; 3 uses
  %indvars.iv1250.tr.i = trunc i64 %indvars.iv1250.i to i32
  %i.nia = shl i32 %indvars.iv1250.tr.i, 1
  %i.nib = and i32 %i.nia, 14                     ; 7 uses
  %i.nic = icmp sgt i32 %.09261062.i, -1
  %i.nid = mul nuw nsw i64 %indvars.iv1250.i, 136 ; 10 uses
  %i.nie = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.nid ; 7 uses
  %i.nif = getelementptr inbounds nuw [4 x i8], ptr %i.lxc, i64 %i.nid
  br i1 %i.nic, label %.lr.ph1059.split.us.i, label %.thread978.i.preheader

.thread978.i.preheader:                           ; preds = %.lr.ph1059.i
  br i1 %i.mue, label %.thread978.i.epil.preheader, label %.thread978.i.preheader.new

.thread978.i.preheader.new:                       ; preds = %.thread978.i.preheader
  %i.nig = shl nuw nsw i32 %i.nib, 1
  %i.nih = lshr i32 %.fr1043, %i.nig
  %i.nii = and i32 %i.nih, 3                      ; 2 uses
  %i.nij = zext nneg i32 %i.nii to i64
  %i.nik = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nij
  %i.nil = load ptr, ptr %i.nik, align 8, !tbaa !407, !noalias !408
  %i.nim = getelementptr inbounds nuw [4 x i8], ptr %i.nil, i64 %i.nid
  %.not955979.i = icmp eq i32 %i.nii, 1
  %.tr.i958.i.1 = shl nuw nsw i32 %i.nib, 1
  %i.nin = or disjoint i32 %.tr.i958.i.1, 2
  %i.nio = lshr i32 %.fr1043, %i.nin
  %i.nip = and i32 %i.nio, 3                      ; 2 uses
  %i.niq = zext nneg i32 %i.nip to i64
  %i.nir = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.niq
  %i.nis = load ptr, ptr %i.nir, align 8, !tbaa !407, !noalias !408
  %i.nit = getelementptr inbounds nuw [4 x i8], ptr %i.nis, i64 %i.nid
  %.not955979.i.1 = icmp eq i32 %i.nip, 1
  br label %.thread978.i

.lr.ph1059.split.us.i:                            ; preds = %.lr.ph1059.i
  %i.niu = icmp slt i32 %.09261062.i, %i.ayb
  br i1 %i.niu, label %.lr.ph1059.split.us.split.preheader.i, label %.lr.ph1059.split.us.split.us.i.preheader

.lr.ph1059.split.us.split.us.i.preheader:         ; preds = %.lr.ph1059.split.us.i
  br i1 %i.mug, label %.lr.ph1059.split.us.split.us.i.epil.preheader, label %.lr.ph1059.split.us.split.us.i.preheader.new

.lr.ph1059.split.us.split.us.i.preheader.new:     ; preds = %.lr.ph1059.split.us.split.us.i.preheader
  %i.niv = shl nuw nsw i32 %i.nib, 1
  %i.niw = lshr i32 %.fr1043, %i.niv
  %i.nix = and i32 %i.niw, 3                      ; 2 uses
  %i.niy = zext nneg i32 %i.nix to i64
  %i.niz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.niy
  %i.nja = load ptr, ptr %i.niz, align 8, !tbaa !407, !noalias !408
  %i.njb = getelementptr inbounds nuw [4 x i8], ptr %i.nja, i64 %i.nid
  %.not955.us.us.i = icmp eq i32 %i.nix, 1
  %.tr.i958.us.us.i.1 = shl nuw nsw i32 %i.nib, 1
  %i.njc = or disjoint i32 %.tr.i958.us.us.i.1, 2
  %i.njd = lshr i32 %.fr1043, %i.njc
  %i.nje = and i32 %i.njd, 3                      ; 2 uses
  %i.njf = zext nneg i32 %i.nje to i64
  %i.njg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njf
  %i.njh = load ptr, ptr %i.njg, align 8, !tbaa !407, !noalias !408
  %i.nji = getelementptr inbounds nuw [4 x i8], ptr %i.njh, i64 %i.nid
  %.not955.us.us.i.1 = icmp eq i32 %i.nje, 1
  br label %.lr.ph1059.split.us.split.us.i

.lr.ph1059.split.us.split.preheader.i:            ; preds = %.lr.ph1059.split.us.i
  %invariant.gep1371.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.nid
  br label %.lr.ph1059.split.us.split.i

.lr.ph1059.split.us.split.us.i:                   ; preds = %bb.qs, %.lr.ph1059.split.us.split.us.i.preheader.new
  %indvars.iv1244.i = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader.new ], [ %indvars.iv.next1245.i.1, %bb.qs ] ; 4 uses
  %niter4754 = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader.new ], [ %niter4754.next.1, %bb.qs ]
  %i.njj = getelementptr inbounds nuw [4 x i8], ptr %i.njb, i64 %indvars.iv1244.i
  store float 0.000000e+00, ptr %i.njj, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i, label %.lr.ph1059.split.us.split.us.i.1, label %bb.qq

bb.qq:                                            ; preds = %.lr.ph1059.split.us.split.us.i
  %i.njk = getelementptr inbounds nuw [4 x i8], ptr %i.nie, i64 %indvars.iv1244.i
  store float 0.000000e+00, ptr %i.njk, align 8, !tbaa !22, !noalias !402
  br label %.lr.ph1059.split.us.split.us.i.1

.lr.ph1059.split.us.split.us.i.1:                 ; preds = %bb.qq, %.lr.ph1059.split.us.split.us.i
  %indvars.iv.next1245.i = or disjoint i64 %indvars.iv1244.i, 1 ; 2 uses
  %i.njl = getelementptr inbounds nuw [4 x i8], ptr %i.nji, i64 %indvars.iv.next1245.i
  store float 0.000000e+00, ptr %i.njl, align 4, !tbaa !22, !noalias !402
  br i1 %.not955.us.us.i.1, label %bb.qs, label %bb.qr

bb.qr:                                            ; preds = %.lr.ph1059.split.us.split.us.i.1
  %i.njm = getelementptr inbounds nuw [4 x i8], ptr %i.nie, i64 %indvars.iv.next1245.i
  store float 0.000000e+00, ptr %i.njm, align 4, !tbaa !22, !noalias !402
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %.lr.ph1059.split.us.split.us.i.1
  %indvars.iv.next1245.i.1 = add nuw nsw i64 %indvars.iv1244.i, 2 ; 2 uses
  %niter4754.next.1 = add i64 %niter4754, 2       ; 2 uses
  %niter4754.ncmp.1.not = icmp eq i64 %niter4754.next.1, %unroll_iter4753
  br i1 %niter4754.ncmp.1.not, label %._crit_edge1060.i.loopexit4648.unr-lcssa, label %.lr.ph1059.split.us.split.us.i

.lr.ph1059.split.us.split.i:                      ; preds = %bb.qv, %.lr.ph1059.split.us.split.preheader.i
  %indvars.iv1247.i = phi i64 [ 0, %.lr.ph1059.split.us.split.preheader.i ], [ %indvars.iv.next1248.i, %bb.qv ] ; 6 uses
  %.09241057.us.i = phi i32 [ %i.mub, %.lr.ph1059.split.us.split.preheader.i ], [ %i.nke, %bb.qv ] ; 2 uses
  %i.njn = trunc nuw nsw i64 %indvars.iv1247.i to i32
  %i.njo = and i32 %i.njn, 1
  %.tr.i958.us.i = or disjoint i32 %i.njo, %i.nib
  %i.njp = shl nuw nsw i32 %.tr.i958.us.i, 1
  %i.njq = lshr i32 %.fr1043, %i.njp
  %i.njr = and i32 %i.njq, 3                      ; 3 uses
  %i.njs = icmp ult i32 %.09241057.us.i, %i.bo
  %i.njt = zext nneg i32 %i.njr to i64
  %i.nju = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.njt
  %i.njv = load ptr, ptr %i.nju, align 8, !tbaa !407, !noalias !408
  %i.njw = getelementptr inbounds nuw [4 x i8], ptr %i.njv, i64 %i.nid
  %i.njx = getelementptr inbounds nuw [4 x i8], ptr %i.njw, i64 %indvars.iv1247.i ; 2 uses
  br i1 %i.njs, label %bb.qt, label %.thread.i562

bb.qt:                                            ; preds = %.lr.ph1059.split.us.split.i
  %gep1372.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1371.i, i64 %indvars.iv1247.i
  %i.njy = load float, ptr %gep1372.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  store float %i.njy, ptr %i.njx, align 4, !tbaa !22, !noalias !402
  %.not955.us.i = icmp eq i32 %i.njr, 1
  br i1 %.not955.us.i, label %bb.qv, label %bb.qu

.thread.i562:                                     ; preds = %.lr.ph1059.split.us.split.i
  store float 0.000000e+00, ptr %i.njx, align 4, !tbaa !22, !noalias !402
  %.not955.us1351.i = icmp eq i32 %i.njr, 1
  br i1 %.not955.us1351.i, label %bb.qv, label %.thread1352.i

bb.qu:                                            ; preds = %bb.qt
  %i.njz = getelementptr inbounds nuw [4 x i8], ptr %i.nif, i64 %indvars.iv1247.i
  %i.nka = load float, ptr %i.njz, align 4, !tbaa !22, !noalias !402
  %i.nkb = fadd reassoc nsz arcp contract afn float %i.nka, %i.njy
  br label %.thread1352.i

.thread1352.i:                                    ; preds = %bb.qu, %.thread.i562
  %i.nkc = phi reassoc nsz arcp contract afn float [ %i.nkb, %bb.qu ], [ 0.000000e+00, %.thread.i562 ]
  %i.nkd = getelementptr inbounds nuw [4 x i8], ptr %i.nie, i64 %indvars.iv1247.i
  store float %i.nkc, ptr %i.nkd, align 4, !tbaa !22, !noalias !402
  br label %bb.qv

bb.qv:                                            ; preds = %.thread1352.i, %.thread.i562, %bb.qt
  %indvars.iv.next1248.i = add nuw nsw i64 %indvars.iv1247.i, 1 ; 2 uses
  %i.nke = add nsw i32 %.09241057.us.i, 1
  %i.nkf = icmp slt i64 %indvars.iv.next1248.i, %i.mud
  br i1 %i.nkf, label %.lr.ph1059.split.us.split.i, label %._crit_edge1060.i

._crit_edge1060.i.loopexit4648.unr-lcssa:         ; preds = %bb.qs
  br i1 %lcmp.mod4751.not, label %._crit_edge1060.i, label %.lr.ph1059.split.us.split.us.i.epil.preheader

.lr.ph1059.split.us.split.us.i.epil.preheader:    ; preds = %._crit_edge1060.i.loopexit4648.unr-lcssa, %.lr.ph1059.split.us.split.us.i.preheader
  %indvars.iv1244.i.epil.init = phi i64 [ 0, %.lr.ph1059.split.us.split.us.i.preheader ], [ %indvars.iv.next1245.i.1, %._crit_edge1060.i.loopexit4648.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4752)
  %i.nkg = trunc nuw nsw i64 %indvars.iv1244.i.epil.init to i32
  %i.nkh = and i32 %i.nkg, 1
  %.tr.i958.us.us.i.epil = or disjoint i32 %i.nkh, %i.nib
  %i.nki = shl nuw nsw i32 %.tr.i958.us.us.i.epil, 1
  %i.nkj = lshr i32 %.fr1043, %i.nki
  %i.nkk = and i32 %i.nkj, 3                      ; 2 uses
  %i.nkl = zext nneg i32 %i.nkk to i64
  %i.nkm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nkl
  %i.nkn = load ptr, ptr %i.nkm, align 8, !tbaa !407, !noalias !408
  %i.nko = getelementptr inbounds nuw [4 x i8], ptr %i.nkn, i64 %i.nid
  %i.nkp = getelementptr inbounds nuw [4 x i8], ptr %i.nko, i64 %indvars.iv1244.i.epil.init
  store float 0.000000e+00, ptr %i.nkp, align 4, !tbaa !22, !noalias !402
  %.not955.us.us.i.epil = icmp eq i32 %i.nkk, 1
  br i1 %.not955.us.us.i.epil, label %._crit_edge1060.i, label %bb.qw

bb.qw:                                            ; preds = %.lr.ph1059.split.us.split.us.i.epil.preheader
  %i.nkq = getelementptr inbounds nuw [4 x i8], ptr %i.nie, i64 %indvars.iv1244.i.epil.init
  store float 0.000000e+00, ptr %i.nkq, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1060.i

._crit_edge1060.i.loopexit4649.unr-lcssa:         ; preds = %bb.qx
  br i1 %lcmp.mod4743.not, label %._crit_edge1060.i, label %.thread978.i.epil.preheader

.thread978.i.epil.preheader:                      ; preds = %._crit_edge1060.i.loopexit4649.unr-lcssa, %.thread978.i.preheader
  %indvars.iv1241.i.epil.init = phi i64 [ 0, %.thread978.i.preheader ], [ %indvars.iv.next1242.i.1, %._crit_edge1060.i.loopexit4649.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod4744)
  %i.nkr = trunc nuw nsw i64 %indvars.iv1241.i.epil.init to i32
  %i.nks = and i32 %i.nkr, 1
  %.tr.i958.i.epil = or disjoint i32 %i.nks, %i.nib
  %i.nkt = shl nuw nsw i32 %.tr.i958.i.epil, 1
  %i.nku = lshr i32 %.fr1043, %i.nkt
  %i.nkv = and i32 %i.nku, 3                      ; 2 uses
  %i.nkw = zext nneg i32 %i.nkv to i64
  %i.nkx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nkw
  %i.nky = load ptr, ptr %i.nkx, align 8, !tbaa !407, !noalias !408
  %i.nkz = getelementptr inbounds nuw [4 x i8], ptr %i.nky, i64 %i.nid
  %i.nla = getelementptr inbounds nuw [4 x i8], ptr %i.nkz, i64 %indvars.iv1241.i.epil.init
  store float 0.000000e+00, ptr %i.nla, align 4, !tbaa !22, !noalias !402
  %.not955979.i.epil = icmp eq i32 %i.nkv, 1
  br i1 %.not955979.i.epil, label %._crit_edge1060.i, label %.thread980.i.epil

.thread980.i.epil:                                ; preds = %.thread978.i.epil.preheader
  %i.nlb = getelementptr inbounds nuw [4 x i8], ptr %i.nie, i64 %indvars.iv1241.i.epil.init
  store float 0.000000e+00, ptr %i.nlb, align 4, !tbaa !22, !noalias !402
  br label %._crit_edge1060.i

._crit_edge1060.i:                                ; preds = %._crit_edge1060.i.loopexit4649.unr-lcssa, %.thread980.i.epil, %.thread978.i.epil.preheader, %._crit_edge1060.i.loopexit4648.unr-lcssa, %bb.qw, %.lr.ph1059.split.us.split.us.i.epil.preheader, %bb.qv
  %indvars.iv.next1251.i = add nuw nsw i64 %indvars.iv1250.i, 1 ; 2 uses
  %i.nlc = add i32 %.09261062.i, 1
  %exitcond1107.not = icmp eq i64 %indvars.iv.next1251.i, %smax1106
  br i1 %exitcond1107.not, label %.preheader1016.i, label %.lr.ph1059.i

.thread978.i:                                     ; preds = %bb.qx, %.thread978.i.preheader.new
  %indvars.iv1241.i = phi i64 [ 0, %.thread978.i.preheader.new ], [ %indvars.iv.next1242.i.1, %bb.qx ] ; 4 uses
  %niter4746 = phi i64 [ 0, %.thread978.i.preheader.new ], [ %niter4746.next.1, %bb.qx ]
  %i.nld = getelementptr inbounds nuw [4 x i8], ptr %i.nim, i64 %indvars.iv1241.i
  store float 0.000000e+00, ptr %i.nld, align 4, !tbaa !22, !noalias !402
  br i1 %.not955979.i, label %.thread978.i.1, label %.thread980.i

.thread980.i:                                     ; preds = %.thread978.i
  %i.nle = getelementptr inbounds nuw [4 x i8], ptr %i.nie, i64 %indvars.iv1241.i
  store float 0.000000e+00, ptr %i.nle, align 8, !tbaa !22, !noalias !402
  br label %.thread978.i.1

.thread978.i.1:                                   ; preds = %.thread980.i, %.thread978.i
  %indvars.iv.next1242.i = or disjoint i64 %indvars.iv1241.i, 1 ; 2 uses
  %i.nlf = getelementptr inbounds nuw [4 x i8], ptr %i.nit, i64 %indvars.iv.next1242.i
  store float 0.000000e+00, ptr %i.nlf, align 4, !tbaa !22, !noalias !402
  br i1 %.not955979.i.1, label %bb.qx, label %.thread980.i.1

.thread980.i.1:                                   ; preds = %.thread978.i.1
  %i.nlg = getelementptr inbounds nuw [4 x i8], ptr %i.nie, i64 %indvars.iv.next1242.i
  store float 0.000000e+00, ptr %i.nlg, align 4, !tbaa !22, !noalias !402
  br label %bb.qx

bb.qx:                                            ; preds = %.thread980.i.1, %.thread978.i.1
  %indvars.iv.next1242.i.1 = add nuw nsw i64 %indvars.iv1241.i, 2 ; 2 uses
  %niter4746.next.1 = add i64 %niter4746, 2       ; 2 uses
  %niter4746.ncmp.1.not = icmp eq i64 %niter4746.next.1, %unroll_iter4745
  br i1 %niter4746.ncmp.1.not, label %._crit_edge1060.i.loopexit4649.unr-lcssa, label %.thread978.i

.preheader1015.i:                                 ; preds = %._crit_edge1068.i
  %i.nlh = zext i32 %i.nhx to i64                 ; 3 uses
  br label %bb.qz

bb.qy:                                            ; preds = %._crit_edge1068.i, %.lr.ph1070.i
  %indvar4182 = phi i64 [ %indvar.next4183, %._crit_edge1068.i ], [ 0, %.lr.ph1070.i ] ; 2 uses
  %indvars.iv1256.i = phi i64 [ %indvars.iv.next1257.i, %._crit_edge1068.i ], [ 1, %.lr.ph1070.i ] ; 3 uses
  %i.nli = mul nuw nsw i64 %indvar4182, 544       ; 6 uses
  %i.nlj = getelementptr i8, ptr %i.lwx, i64 %i.nli
  %scevgep4189 = getelementptr i8, ptr %i.nlj, i64 73988
  %i.nlk = getelementptr i8, ptr %i.lwx, i64 %i.nli
  %scevgep4191 = getelementptr i8, ptr %i.nlk, i64 75080
  %indvars.iv1256.tr.i = trunc i64 %indvars.iv1256.i to i32
  %i.nll = shl i32 %indvars.iv1256.tr.i, 1
  %i.nlm = and i32 %i.nll, 14                     ; 2 uses
  %i.nln = shl nuw nsw i32 %i.nlm, 1
  %i.nlo = lshr i32 %.fr1043, %i.nln              ; 3 uses
  %i.nlp = and i32 %i.nlo, 1                      ; 3 uses
  %i.nlq = icmp slt i32 %i.nlp, %i.nhz
  br i1 %i.nlq, label %.lr.ph1067.i, label %._crit_edge1068.i

.lr.ph1067.i:                                     ; preds = %bb.qy
  %i.nlr = or disjoint i32 %i.nlp, %i.nlm
  %i.nls = shl nuw nsw i32 %i.nlr, 1
  %i.nlt = lshr i32 %.fr1043, %i.nls
  %i.nlu = and i32 %i.nlt, 3                      ; 2 uses
  %i.nlv = zext nneg i32 %i.nlu to i64
  %i.nlw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.nlv
  %i.nlx = load ptr, ptr %i.nlw, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nly = mul nuw nsw i64 %indvars.iv1256.i, 136 ; 3 uses
  %i.nlz = getelementptr inbounds nuw [4 x i8], ptr %i.nlx, i64 %i.nly ; 2 uses
  %i.nma = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.nly ; 2 uses
  %i.nmb = sub nsw i32 2, %i.nlu
  %i.nmc = sext i32 %i.nmb to i64
  %i.nmd = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nmc
  %i.nme = load ptr, ptr %i.nmd, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nmf = getelementptr inbounds nuw [4 x i8], ptr %i.nme, i64 %i.nly ; 2 uses
  %narrow1347.i = add nuw nsw i32 %i.nlp, 1
  %i.nmg = zext nneg i32 %narrow1347.i to i64     ; 5 uses
  %i.nmh = and i32 %i.nlo, 1
  %i.nmi = zext nneg i32 %i.nmh to i64            ; 2 uses
  %i.nmj = add nuw nsw i64 %i.nmi, 3
  %i.nmk = call i64 @llvm.smax.i64(i64 %i.nhy, i64 %i.nmj)
  %i.nml = add nsw i64 %i.nmk, -2
  %i.nmm = sub i64 %i.nml, %i.nmi                 ; 2 uses
  %i.nmn = lshr i64 %i.nmm, 1
  %i.nmo = add nuw nsw i64 %i.nmn, 1              ; 2 uses
  %min.iters.check4205 = icmp ult i64 %i.nmm, 16
  br i1 %min.iters.check4205, label %scalar.ph4204.preheader, label %vector.memcheck4181

scalar.ph4204.preheader:                          ; preds = %vector.body4211, %vector.memcheck4181, %.lr.ph1067.i
  %indvars.iv1253.i.ph = phi i64 [ %i.nmg, %vector.memcheck4181 ], [ %i.nmg, %.lr.ph1067.i ], [ %i.nnm, %vector.body4211 ]
  br label %scalar.ph4204

vector.memcheck4181:                              ; preds = %.lr.ph1067.i
  %i.nmp = and i32 %i.nlo, 1
  %i.nmq = zext nneg i32 %i.nmp to i64            ; 3 uses
  %i.nmr = shl nuw nsw i64 %i.nmq, 2              ; 6 uses
  %i.nms = getelementptr i8, ptr %i.nlx, i64 %i.nli
  %i.nmt = getelementptr i8, ptr %i.nms, i64 544
  %scevgep4184 = getelementptr i8, ptr %i.nmt, i64 %i.nmr ; 2 uses
  %i.nmu = add nuw nsw i64 %i.nmq, 3
  %smax4185 = call i64 @llvm.smax.i64(i64 %i.nhy, i64 %i.nmu)
  %i.nmv = add nsw i64 %smax4185, -2
  %i.nmw = sub i64 %i.nmv, %i.nmq
  %i.nmx = shl nuw nsw i64 %i.nmw, 2
  %i.nmy = and i64 %i.nmx, 9223372036854775800    ; 3 uses
  %i.nmz = getelementptr i8, ptr %i.nlx, i64 %i.nli
  %i.nna = getelementptr i8, ptr %i.nmz, i64 556
  %i.nnb = getelementptr i8, ptr %i.nna, i64 %i.nmy
  %scevgep4186 = getelementptr i8, ptr %i.nnb, i64 %i.nmr ; 2 uses
  %i.nnc = getelementptr i8, ptr %i.nme, i64 %i.nli
  %i.nnd = getelementptr i8, ptr %i.nnc, i64 4
  %scevgep4187 = getelementptr i8, ptr %i.nnd, i64 %i.nmr ; 2 uses
  %i.nne = getelementptr i8, ptr %i.nme, i64 %i.nli
  %i.nnf = getelementptr i8, ptr %i.nne, i64 1096
  %i.nng = getelementptr i8, ptr %i.nnf, i64 %i.nmy
  %scevgep4188 = getelementptr i8, ptr %i.nng, i64 %i.nmr ; 2 uses
  %scevgep4190 = getelementptr i8, ptr %scevgep4189, i64 %i.nmr ; 2 uses
  %i.nnh = getelementptr i8, ptr %scevgep4191, i64 %i.nmy
  %scevgep4192 = getelementptr i8, ptr %i.nnh, i64 %i.nmr ; 2 uses
  %bound04193 = icmp ult ptr %scevgep4184, %scevgep4188
  %bound14194 = icmp ult ptr %scevgep4187, %scevgep4186
  %found.conflict4195 = and i1 %bound04193, %bound14194
  %bound04196 = icmp ult ptr %scevgep4184, %scevgep4192
  %bound14197 = icmp ult ptr %scevgep4190, %scevgep4186
  %found.conflict4198 = and i1 %bound04196, %bound14197
  %conflict.rdx4199 = or i1 %found.conflict4195, %found.conflict4198
  %bound04200 = icmp ult ptr %scevgep4187, %scevgep4192
  %bound14201 = icmp ult ptr %scevgep4190, %scevgep4188
  %found.conflict4202 = and i1 %bound04200, %bound14201
  %conflict.rdx4203 = or i1 %conflict.rdx4199, %found.conflict4202
  br i1 %conflict.rdx4203, label %scalar.ph4204.preheader, label %vector.ph4206

vector.ph4206:                                    ; preds = %vector.memcheck4181
  %i.nni = and i64 %i.nmo, 7                      ; 2 uses
  %i.nnj = icmp eq i64 %i.nni, 0
  %i.nnk = select i1 %i.nnj, i64 8, i64 %i.nni
  %n.vec4207 = sub nsw i64 %i.nmo, %i.nnk         ; 2 uses
  %i.nnl = shl i64 %n.vec4207, 1
  %i.nnm = add i64 %i.nnl, %i.nmg
  %broadcast.splatinsert4208 = insertelement <8 x i64> poison, i64 %i.nmg, i64 0
  %broadcast.splat4209 = shufflevector <8 x i64> %broadcast.splatinsert4208, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction4210 = add nuw nsw <8 x i64> %broadcast.splat4209, <i64 0, i64 2, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14>
  %invariant.gep4883 = getelementptr [4 x i8], ptr %i.nma, i64 %i.nmg
  br label %vector.body4211

vector.body4211:                                  ; preds = %vector.body4211, %vector.ph4206
  %index4212 = phi i64 [ 0, %vector.ph4206 ], [ %index.next4234, %vector.body4211 ] ; 2 uses
  %vec.ind4213 = phi <8 x i64> [ %induction4210, %vector.ph4206 ], [ %vec.ind.next4235, %vector.body4211 ] ; 3 uses
  %wide.gep4214 = getelementptr inbounds nuw [4 x i8], ptr %i.nlz, <8 x i64> %vec.ind4213 ; 2 uses
  %i.nnn = extractelement <8 x ptr> %wide.gep4214, i64 0 ; 2 uses
  %.idx4572 = shl nuw i64 %index4212, 3
  %gep4884 = getelementptr i8, ptr %invariant.gep4883, i64 %.idx4572 ; 4 uses
  %i.nno = getelementptr inbounds i8, ptr %gep4884, i64 -4
  %wide.vec4215 = load <16 x float>, ptr %i.nno, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4216 = shufflevector <16 x float> %wide.vec4215, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4217 = shufflevector <16 x float> %wide.vec4215, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nnp = getelementptr inbounds i8, ptr %i.nnn, i64 -4
  %wide.vec4218 = load <16 x float>, ptr %i.nnp, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4219 = shufflevector <16 x float> %wide.vec4218, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nnq = getelementptr inbounds nuw i8, ptr %i.nnn, i64 4
  %wide.vec4220 = load <16 x float>, ptr %i.nnq, align 4, !tbaa !22, !alias.scope !423, !noalias !402
  %strided.vec4221 = shufflevector <16 x float> %wide.vec4220, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4222 = load <16 x float>, ptr %gep4884, align 4, !tbaa !22, !alias.scope !420, !noalias !402 ; 2 uses
  %strided.vec4223 = shufflevector <16 x float> %wide.vec4222, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4224 = shufflevector <16 x float> %wide.vec4222, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.nnr = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4219, %strided.vec4221
  %i.nns = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4216, %strided.vec4224
  %i.nnt = fsub reassoc nsz arcp contract afn <8 x float> %i.nnr, %i.nns
  %i.nnu = fmul reassoc nsz arcp contract afn <8 x float> %i.nnt, splat (float 5.000000e-01)
  %i.nnv = fadd reassoc nsz arcp contract afn <8 x float> %i.nnu, %strided.vec4217
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nnv, <8 x ptr> align 4 %wide.gep4214, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !423, !noalias !425
  %wide.gep4225 = getelementptr inbounds nuw [4 x i8], ptr %i.nmf, <8 x i64> %vec.ind4213 ; 2 uses
  %i.nnw = extractelement <8 x ptr> %wide.gep4225, i64 0 ; 2 uses
  %i.nnx = getelementptr inbounds i8, ptr %i.nnw, i64 -544
  %wide.vec4226 = load <16 x float>, ptr %i.nnx, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4227 = shufflevector <16 x float> %wide.vec4226, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nny = getelementptr inbounds i8, ptr %gep4884, i64 -544
  %wide.vec4228 = load <16 x float>, ptr %i.nny, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4229 = shufflevector <16 x float> %wide.vec4228, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nnz = getelementptr inbounds nuw i8, ptr %i.nnw, i64 544
  %wide.vec4230 = load <16 x float>, ptr %i.nnz, align 4, !tbaa !22, !alias.scope !427, !noalias !402
  %strided.vec4231 = shufflevector <16 x float> %wide.vec4230, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.noa = getelementptr inbounds nuw i8, ptr %gep4884, i64 544
  %wide.vec4232 = load <16 x float>, ptr %i.noa, align 4, !tbaa !22, !alias.scope !420, !noalias !402
  %strided.vec4233 = shufflevector <16 x float> %wide.vec4232, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.nob = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4227, %strided.vec4231
  %i.noc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4229, %strided.vec4233
  %i.nod = fsub reassoc nsz arcp contract afn <8 x float> %i.nob, %i.noc
  %i.noe = fmul reassoc nsz arcp contract afn <8 x float> %i.nod, splat (float 5.000000e-01)
  %i.nof = fadd reassoc nsz arcp contract afn <8 x float> %i.noe, %strided.vec4223
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.nof, <8 x ptr> align 4 %wide.gep4225, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !427, !noalias !428
  %index.next4234 = add nuw i64 %index4212, 8     ; 2 uses
  %vec.ind.next4235 = add nuw nsw <8 x i64> %vec.ind4213, splat (i64 16)
  %i.nog = icmp eq i64 %index.next4234, %n.vec4207
  br i1 %i.nog, label %scalar.ph4204.preheader, label %vector.body4211, !llvm.loop !429

._crit_edge1068.i:                                ; preds = %scalar.ph4204, %bb.qy
  %indvars.iv.next1257.i = add nuw nsw i64 %indvars.iv1256.i, 1 ; 2 uses
  %exitcond1112.not = icmp eq i64 %indvars.iv.next1257.i, %smax1117
  %indvar.next4183 = add i64 %indvar4182, 1
  br i1 %exitcond1112.not, label %.preheader1015.i, label %bb.qy

scalar.ph4204:                                    ; preds = %scalar.ph4204.preheader, %scalar.ph4204
  %indvars.iv1253.i = phi i64 [ %indvars.iv.next1254.i, %scalar.ph4204 ], [ %indvars.iv1253.i.ph, %scalar.ph4204.preheader ] ; 4 uses
  %i.noh = getelementptr inbounds nuw [4 x i8], ptr %i.nlz, i64 %indvars.iv1253.i ; 3 uses
  %i.noi = getelementptr inbounds nuw [4 x i8], ptr %i.nma, i64 %indvars.iv1253.i ; 6 uses
  %i.noj = load float, ptr %i.noi, align 4, !tbaa !22, !noalias !402
  %i.nok = getelementptr inbounds i8, ptr %i.noh, i64 -4
  %i.nol = load float, ptr %i.nok, align 4, !tbaa !22, !noalias !402
  %i.nom = getelementptr inbounds i8, ptr %i.noi, i64 -4
  %i.non = load float, ptr %i.nom, align 4, !tbaa !22, !noalias !402
  %i.noo = getelementptr inbounds nuw i8, ptr %i.noh, i64 4
  %i.nop = load float, ptr %i.noo, align 4, !tbaa !22, !noalias !402
  %i.noq = getelementptr inbounds nuw i8, ptr %i.noi, i64 4
  %i.nor = load float, ptr %i.noq, align 4, !tbaa !22, !noalias !402
  %i.nos = fadd reassoc nsz arcp contract afn float %i.nol, %i.nop
  %i.not = fadd reassoc nsz arcp contract afn float %i.non, %i.nor
  %i.nou = fsub reassoc nsz arcp contract afn float %i.nos, %i.not
  %i.nov = fmul reassoc nsz arcp contract afn float %i.nou, 5.000000e-01
  %i.now = fadd reassoc nsz arcp contract afn float %i.nov, %i.noj
  store float %i.now, ptr %i.noh, align 4, !tbaa !22, !noalias !402
  %i.nox = getelementptr inbounds nuw [4 x i8], ptr %i.nmf, i64 %indvars.iv1253.i ; 3 uses
  %i.noy = load float, ptr %i.noi, align 4, !tbaa !22, !noalias !402
  %i.noz = getelementptr inbounds i8, ptr %i.nox, i64 -544
  %i.npa = load float, ptr %i.noz, align 4, !tbaa !22, !noalias !402
  %i.npb = getelementptr inbounds i8, ptr %i.noi, i64 -544
  %i.npc = load float, ptr %i.npb, align 4, !tbaa !22, !noalias !402
  %i.npd = getelementptr inbounds nuw i8, ptr %i.nox, i64 544
  %i.npe = load float, ptr %i.npd, align 4, !tbaa !22, !noalias !402
  %i.npf = getelementptr inbounds nuw i8, ptr %i.noi, i64 544
  %i.npg = load float, ptr %i.npf, align 4, !tbaa !22, !noalias !402
  %i.nph = fadd reassoc nsz arcp contract afn float %i.npa, %i.npe
  %i.npi = fadd reassoc nsz arcp contract afn float %i.npc, %i.npg
  %i.npj = fsub reassoc nsz arcp contract afn float %i.nph, %i.npi
  %i.npk = fmul reassoc nsz arcp contract afn float %i.npj, 5.000000e-01
  %i.npl = fadd reassoc nsz arcp contract afn float %i.npk, %i.noy
  store float %i.npl, ptr %i.nox, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1254.i = add nuw nsw i64 %indvars.iv1253.i, 2 ; 2 uses
  %i.npm = icmp slt i64 %indvars.iv.next1254.i, %i.nhy
  br i1 %i.npm, label %scalar.ph4204, label %._crit_edge1068.i, !llvm.loop !430

._crit_edge1078.i:                                ; preds = %._crit_edge1075.i, %.preheader1016.i, %._crit_edge1053.i
  %i.npn = icmp eq i32 %.08871178.i, 0            ; 2 uses
  %i.npo = select i1 %i.npn, i32 6, i32 0         ; 21 uses
  %i.npp = icmp eq i32 %.08871178.i, %i.aph       ; 2 uses
  %.neg.i554 = select i1 %i.npp, i32 -6, i32 0    ; 10 uses
  %i.npq = add nsw i32 %i.max, %.neg.i554         ; 4 uses
  br i1 %.not1186.i, label %.preheader1014.i, label %.preheader1011.lr.ph.i

.preheader1011.lr.ph.i:                           ; preds = %._crit_edge1078.i
  %i.npr = icmp slt i32 %i.mav, -5
  %i.nps = zext nneg i32 %i.npo to i64            ; 11 uses
  %invariant.gep.i555 = getelementptr inbounds nuw [4 x i8], ptr %i.lwx, i64 %i.nps
  %invariant.gep1124.i = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.nps
  %invariant.gep1126.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxa, i64 %i.nps
  %invariant.gep1128.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxb, i64 %i.nps
  %invariant.gep1130.i = getelementptr inbounds nuw [4 x i8], ptr %i.lxc, i64 %i.nps
  %i.npt = add nsw i32 %i.npq, -1                 ; 3 uses
  %i.npu = icmp slt i32 %i.npo, %i.npt            ; 2 uses
  %brmerge.i556 = select i1 %i.lyl, i1 true, i1 %i.npr
  %i.npv = add nsw i32 %i.maw, 6                  ; 3 uses
  %i.npw = sext i32 %i.npv to i64                 ; 6 uses
  %i.npx = shl nuw nsw i64 %i.nps, 2              ; 4 uses
  %scevgep3946 = getelementptr i8, ptr %scevgep3945, i64 %i.npx ; 2 uses
  %i.npy = add nsw i32 %.neg.i554, 6
  %i.npz = add i32 %i.npy, %i.maw
  %i.nqa = sub i32 %i.npz, %i.npo
  %i.nqb = lshr i32 %i.nqa, 1
  %i.nqc = zext nneg i32 %i.nqb to i64
  %i.nqd = shl nuw nsw i64 %i.nqc, 3              ; 2 uses
  %i.nqe = getelementptr i8, ptr %scevgep3948, i64 %i.nqd
  %scevgep3949 = getelementptr i8, ptr %i.nqe, i64 %i.npx ; 2 uses
  %.reass = or disjoint i64 %i.npx, %invariant.op
  %i.nqf = add nuw nsw i64 %i.lzk, %i.nqd
  %i.nqg = add nuw nsw i64 %i.nqf, %i.npx
  %i.nqh = add nsw i32 %.neg.i554, 6
  %i.nqi = add i32 %i.nqh, %i.maw
  %i.nqj = sub i32 %i.nqi, %i.npo
  %i.nqk = lshr i32 %i.nqj, 1
  %i.nql = zext nneg i32 %i.nqk to i64
  %i.nqm = shl nuw nsw i64 %i.nql, 3              ; 2 uses
  %i.nqn = add nuw nsw i64 %i.lzl, %i.nqm
  %i.nqo = shl nuw nsw i64 %i.nps, 2              ; 3 uses
  %i.nqp = add nuw nsw i64 %i.nqn, %i.nqo
  %scevgep4015 = getelementptr i8, ptr %scevgep4014, i64 %i.nqo ; 2 uses
  %i.nqq = getelementptr i8, ptr %scevgep4017, i64 %i.nqm
  %scevgep4018 = getelementptr i8, ptr %i.nqq, i64 %i.nqo ; 2 uses
  %min.iters.check4109 = icmp ult i32 %i.npv, 8
  %n.vec4111 = and i64 %i.npw, -8                 ; 3 uses
  %i.nqr = or disjoint i64 %n.vec4111, 1
  %cmp.n4134 = icmp eq i64 %n.vec4111, %i.npw
  %min.iters.check4081 = icmp ult i32 %i.npv, 8
  %n.vec4083 = and i64 %i.npw, -8                 ; 3 uses
  %i.nqs = or disjoint i64 %n.vec4083, 1
  %cmp.n4106 = icmp eq i64 %n.vec4083, %i.npw
  %i.nqt = add i32 %.neg.i554, %i.maw
  %i.nqu = add i32 %i.nqt, 6
  %i.nqv = sub i32 %i.nqu, %i.npo                 ; 2 uses
  %i.nqw = lshr i32 %i.nqv, 1
  %narrow = add nuw i32 %i.nqw, 1
  %i.nqx = zext i32 %narrow to i64                ; 2 uses
  %min.iters.check4032 = icmp ult i32 %i.nqv, 16
  %i.nqy = and i64 %i.nqx, 7                      ; 2 uses
  %i.nqz = icmp eq i64 %i.nqy, 0
  %i.nra = select i1 %i.nqz, i64 8, i64 %i.nqy
  %n.vec4034 = sub nsw i64 %i.nqx, %i.nra         ; 3 uses
  %i.nrb = trunc i64 %n.vec4034 to i32
  %i.nrc = shl i32 %i.nrb, 1
  %i.nrd = add i32 %i.npo, %i.nrc
  %i.nre = shl nsw i64 %n.vec4034, 3              ; 7 uses
  %i.nrf = add i32 %.neg.i554, %i.maw
  %i.nrg = add i32 %i.nrf, 6
  %i.nrh = sub i32 %i.nrg, %i.npo                 ; 2 uses
  %i.nri = lshr i32 %i.nrh, 1
  %narrow4574 = add nuw i32 %i.nri, 1
  %i.nrj = zext i32 %narrow4574 to i64            ; 2 uses
  %min.iters.check3968 = icmp ult i32 %i.nrh, 16
  %i.nrk = and i64 %i.nrj, 7                      ; 2 uses
  %i.nrl = icmp eq i64 %i.nrk, 0
  %i.nrm = select i1 %i.nrl, i64 8, i64 %i.nrk
  %n.vec3970 = sub nsw i64 %i.nrj, %i.nrm         ; 3 uses
  %i.nrn = shl nsw i64 %n.vec3970, 3              ; 7 uses
  %i.nro = trunc i64 %n.vec3970 to i32
  %i.nrp = shl i32 %i.nro, 1
  %i.nrq = add i32 %i.npo, %i.nrp
  br label %.preheader1011.i

bb.qz:                                            ; preds = %._crit_edge1075.i, %.preheader1015.i
  %indvar4137 = phi i64 [ %indvar.next4138, %._crit_edge1075.i ], [ 0, %.preheader1015.i ] ; 2 uses
  %indvars.iv1262.i = phi i64 [ %indvars.iv.next1263.i, %._crit_edge1075.i ], [ 1, %.preheader1015.i ] ; 3 uses
  %i.nrr = mul nuw nsw i64 %indvar4137, 544       ; 4 uses
  %i.nrs = getelementptr i8, ptr %i.lwx, i64 %i.nrr
  %scevgep4142 = getelementptr i8, ptr %i.nrs, i64 73988
  %i.nrt = getelementptr i8, ptr %i.lwx, i64 %i.nrr
  %scevgep4144 = getelementptr i8, ptr %i.nrt, i64 75080
  %indvars.iv1262.tr.i = trunc i64 %indvars.iv1262.i to i32
  %i.nru = shl i32 %indvars.iv1262.tr.i, 1
  %i.nrv = and i32 %i.nru, 14                     ; 2 uses
  %.tr.i961.i = shl nuw nsw i32 %i.nrv, 1
  %i.nrw = or disjoint i32 %.tr.i961.i, 2
  %i.nrx = lshr i32 %.fr1043, %i.nrw              ; 3 uses
  %i.nry = and i32 %i.nrx, 1
  %i.nrz = add nuw nsw i32 %i.nry, 1              ; 3 uses
  %i.nsa = icmp slt i32 %i.nrz, %i.nhx
  br i1 %i.nsa, label %.lr.ph1074.i, label %._crit_edge1075.i

.lr.ph1074.i:                                     ; preds = %bb.qz
  %i.nsb = and i32 %i.nrz, 1
  %i.nsc = or disjoint i32 %i.nsb, %i.nrv
  %i.nsd = shl nuw nsw i32 %i.nsc, 1
  %i.nse = lshr i32 %.fr1043, %i.nsd
  %i.nsf = and i32 %i.nse, 3
  %i.nsg = sub nsw i32 2, %i.nsf
  %i.nsh = sext i32 %i.nsg to i64
  %i.nsi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nsh
  %i.nsj = load ptr, ptr %i.nsi, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.nsk = mul nuw nsw i64 %indvars.iv1262.i, 136 ; 2 uses
  %i.nsl = getelementptr inbounds nuw [4 x i8], ptr %i.nsj, i64 %i.nsk ; 2 uses
  %i.nsm = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.nsk ; 2 uses
  %i.nsn = zext nneg i32 %i.nrz to i64            ; 5 uses
  %i.nso = and i32 %i.nrx, 1
  %i.nsp = zext nneg i32 %i.nso to i64            ; 2 uses
  %i.nsq = add nuw nsw i64 %i.nsp, 3
  %i.nsr = call i64 @llvm.umax.i64(i64 %i.nsq, i64 %i.nlh)
  %i.nss = add nsw i64 %i.nsr, -2
  %i.nst = sub nsw i64 %i.nss, %i.nsp             ; 2 uses
  %i.nsu = lshr i64 %i.nst, 1
  %i.nsv = add nuw nsw i64 %i.nsu, 1              ; 2 uses
  %min.iters.check4150 = icmp ult i64 %i.nst, 8
  br i1 %min.iters.check4150, label %scalar.ph4149.preheader, label %vector.memcheck4136

scalar.ph4149.preheader:                          ; preds = %vector.body4156, %vector.memcheck4136, %.lr.ph1074.i
  %indvars.iv1259.i.ph = phi i64 [ %i.nsn, %vector.memcheck4136 ], [ %i.nsn, %.lr.ph1074.i ], [ %i.nto, %vector.body4156 ]
  br label %scalar.ph4149

vector.memcheck4136:                              ; preds = %.lr.ph1074.i
  %i.nsw = and i32 %i.nrx, 1
  %i.nsx = zext nneg i32 %i.nsw to i64            ; 3 uses
  %i.nsy = shl nuw nsw i64 %i.nsx, 2              ; 4 uses
  %i.nsz = getelementptr i8, ptr %i.nsj, i64 %i.nrr
  %i.nta = getelementptr i8, ptr %i.nsz, i64 4
  %scevgep4139 = getelementptr i8, ptr %i.nta, i64 %i.nsy
  %i.ntb = add nuw nsw i64 %i.nsx, 3
  %umax4140 = call i64 @llvm.umax.i64(i64 %i.ntb, i64 %i.nlh)
  %i.ntc = add nsw i64 %umax4140, -2
  %i.ntd = sub nsw i64 %i.ntc, %i.nsx
  %i.nte = shl nuw nsw i64 %i.ntd, 2
  %i.ntf = and i64 %i.nte, 9223372036854775800    ; 2 uses
  %i.ntg = getelementptr i8, ptr %i.nsj, i64 %i.nrr
  %i.nth = getelementptr i8, ptr %i.ntg, i64 1096
  %i.nti = getelementptr i8, ptr %i.nth, i64 %i.ntf
  %scevgep4141 = getelementptr i8, ptr %i.nti, i64 %i.nsy
  %scevgep4143 = getelementptr i8, ptr %scevgep4142, i64 %i.nsy
  %i.ntj = getelementptr i8, ptr %scevgep4144, i64 %i.ntf
  %scevgep4145 = getelementptr i8, ptr %i.ntj, i64 %i.nsy
  %bound04146 = icmp ult ptr %scevgep4139, %scevgep4145
  %bound14147 = icmp ult ptr %scevgep4143, %scevgep4141
  %found.conflict4148 = and i1 %bound04146, %bound14147
  br i1 %found.conflict4148, label %scalar.ph4149.preheader, label %vector.ph4151

vector.ph4151:                                    ; preds = %vector.memcheck4136
  %i.ntk = and i64 %i.nsv, 3                      ; 2 uses
  %i.ntl = icmp eq i64 %i.ntk, 0
  %i.ntm = select i1 %i.ntl, i64 4, i64 %i.ntk
  %n.vec4152 = sub nsw i64 %i.nsv, %i.ntm         ; 2 uses
  %i.ntn = shl i64 %n.vec4152, 1
  %i.nto = add i64 %i.ntn, %i.nsn
  %broadcast.splatinsert4153 = insertelement <4 x i64> poison, i64 %i.nsn, i64 0
  %broadcast.splat4154 = shufflevector <4 x i64> %broadcast.splatinsert4153, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction4155 = add nuw nsw <4 x i64> %broadcast.splat4154, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4885 = getelementptr [4 x i8], ptr %i.nsm, i64 %i.nsn
  br label %vector.body4156

vector.body4156:                                  ; preds = %vector.body4156, %vector.ph4151
  %index4157 = phi i64 [ 0, %vector.ph4151 ], [ %index.next4177, %vector.body4156 ] ; 2 uses
  %vec.ind4158 = phi <4 x i64> [ %induction4155, %vector.ph4151 ], [ %vec.ind.next4178, %vector.body4156 ] ; 2 uses
  %wide.gep4159 = getelementptr inbounds nuw [4 x i8], ptr %i.nsl, <4 x i64> %vec.ind4158 ; 2 uses
  %i.ntp = extractelement <4 x ptr> %wide.gep4159, i64 0 ; 4 uses
  %.idx4573 = shl nuw i64 %index4157, 3
  %gep4886 = getelementptr i8, ptr %invariant.gep4885, i64 %.idx4573 ; 4 uses
  %wide.vec4160 = load <8 x float>, ptr %gep4886, align 4, !tbaa !22, !alias.scope !431, !noalias !402 ; 2 uses
  %strided.vec4161 = shufflevector <8 x float> %wide.vec4160, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec4162 = shufflevector <8 x float> %wide.vec4160, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ntq = getelementptr inbounds i8, ptr %i.ntp, i64 -544
  %wide.vec4163 = load <8 x float>, ptr %i.ntq, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4164 = shufflevector <8 x float> %wide.vec4163, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntr = getelementptr inbounds i8, ptr %gep4886, i64 -544
  %wide.vec4165 = load <8 x float>, ptr %i.ntr, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4166 = shufflevector <8 x float> %wide.vec4165, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.nts = getelementptr inbounds i8, ptr %i.ntp, i64 -4
  %wide.vec4167 = load <8 x float>, ptr %i.nts, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4168 = shufflevector <8 x float> %wide.vec4167, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntt = getelementptr inbounds i8, ptr %gep4886, i64 -4
  %wide.vec4169 = load <8 x float>, ptr %i.ntt, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4170 = shufflevector <8 x float> %wide.vec4169, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntu = getelementptr inbounds nuw i8, ptr %i.ntp, i64 4
  %wide.vec4171 = load <8 x float>, ptr %i.ntu, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4172 = shufflevector <8 x float> %wide.vec4171, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntv = getelementptr inbounds nuw i8, ptr %i.ntp, i64 544
  %wide.vec4173 = load <8 x float>, ptr %i.ntv, align 4, !tbaa !22, !alias.scope !434, !noalias !402
  %strided.vec4174 = shufflevector <8 x float> %wide.vec4173, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntw = getelementptr inbounds nuw i8, ptr %gep4886, i64 544
  %wide.vec4175 = load <8 x float>, ptr %i.ntw, align 4, !tbaa !22, !alias.scope !431, !noalias !402
  %strided.vec4176 = shufflevector <8 x float> %wide.vec4175, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ntx = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4164, %strided.vec4168
  %i.nty = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec4166, %strided.vec4170
  %i.ntz = fadd reassoc nsz arcp contract afn <4 x float> %i.ntx, %strided.vec4172
  %i.nua = fadd reassoc nsz arcp contract afn <4 x float> %i.nty, %strided.vec4162
  %i.nub = fadd reassoc nsz arcp contract afn <4 x float> %i.ntz, %strided.vec4174
  %i.nuc = fadd reassoc nsz arcp contract afn <4 x float> %i.nua, %strided.vec4176
  %i.nud = fsub reassoc nsz arcp contract afn <4 x float> %i.nub, %i.nuc
  %i.nue = fmul reassoc nsz arcp contract afn <4 x float> %i.nud, splat (float 2.500000e-01)
  %i.nuf = fadd reassoc nsz arcp contract afn <4 x float> %i.nue, %strided.vec4161
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.nuf, <4 x ptr> align 4 %wide.gep4159, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !434, !noalias !436
  %index.next4177 = add nuw i64 %index4157, 4     ; 2 uses
  %vec.ind.next4178 = add nuw nsw <4 x i64> %vec.ind4158, splat (i64 8)
  %i.nug = icmp eq i64 %index.next4177, %n.vec4152
  br i1 %i.nug, label %scalar.ph4149.preheader, label %vector.body4156, !llvm.loop !437

._crit_edge1075.i:                                ; preds = %scalar.ph4149, %bb.qz
  %indvars.iv.next1263.i = add nuw nsw i64 %indvars.iv1262.i, 1 ; 2 uses
  %exitcond1115.not = icmp eq i64 %indvars.iv.next1263.i, %smax1117
  %indvar.next4138 = add i64 %indvar4137, 1
  br i1 %exitcond1115.not, label %._crit_edge1078.i, label %bb.qz

scalar.ph4149:                                    ; preds = %scalar.ph4149.preheader, %scalar.ph4149
  %indvars.iv1259.i = phi i64 [ %indvars.iv.next1260.i, %scalar.ph4149 ], [ %indvars.iv1259.i.ph, %scalar.ph4149.preheader ] ; 3 uses
  %i.nuh = getelementptr inbounds nuw [4 x i8], ptr %i.nsl, i64 %indvars.iv1259.i ; 5 uses
  %i.nui = getelementptr inbounds nuw [4 x i8], ptr %i.nsm, i64 %indvars.iv1259.i ; 5 uses
  %i.nuj = load float, ptr %i.nui, align 4, !tbaa !22, !noalias !402
  %i.nuk = getelementptr inbounds i8, ptr %i.nuh, i64 -544
  %i.nul = load float, ptr %i.nuk, align 4, !tbaa !22, !noalias !402
  %i.num = getelementptr inbounds i8, ptr %i.nui, i64 -544
  %i.nun = load float, ptr %i.num, align 4, !tbaa !22, !noalias !402
  %i.nuo = getelementptr inbounds i8, ptr %i.nuh, i64 -4
  %i.nup = load float, ptr %i.nuo, align 4, !tbaa !22, !noalias !402
  %i.nuq = getelementptr inbounds i8, ptr %i.nui, i64 -4
  %i.nur = load float, ptr %i.nuq, align 4, !tbaa !22, !noalias !402
  %i.nus = getelementptr inbounds nuw i8, ptr %i.nuh, i64 4
  %i.nut = load float, ptr %i.nus, align 4, !tbaa !22, !noalias !402
  %i.nuu = getelementptr inbounds nuw i8, ptr %i.nui, i64 4
  %i.nuv = load float, ptr %i.nuu, align 4, !tbaa !22, !noalias !402
  %i.nuw = getelementptr inbounds nuw i8, ptr %i.nuh, i64 544
  %i.nux = load float, ptr %i.nuw, align 4, !tbaa !22, !noalias !402
  %i.nuy = getelementptr inbounds nuw i8, ptr %i.nui, i64 544
  %i.nuz = load float, ptr %i.nuy, align 4, !tbaa !22, !noalias !402
  %i.nva = fadd reassoc nsz arcp contract afn float %i.nul, %i.nup
  %i.nvb = fadd reassoc nsz arcp contract afn float %i.nun, %i.nur
  %i.nvc = fadd reassoc nsz arcp contract afn float %i.nva, %i.nut
  %i.nvd = fadd reassoc nsz arcp contract afn float %i.nvb, %i.nuv
  %i.nve = fadd reassoc nsz arcp contract afn float %i.nvc, %i.nux
  %i.nvf = fadd reassoc nsz arcp contract afn float %i.nvd, %i.nuz
  %i.nvg = fsub reassoc nsz arcp contract afn float %i.nve, %i.nvf
  %i.nvh = fmul reassoc nsz arcp contract afn float %i.nvg, 2.500000e-01
  %i.nvi = fadd reassoc nsz arcp contract afn float %i.nvh, %i.nuj
  store float %i.nvi, ptr %i.nuh, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1260.i = add nuw nsw i64 %indvars.iv1259.i, 2 ; 2 uses
  %i.nvj = icmp samesign ult i64 %indvars.iv.next1260.i, %i.nlh
  br i1 %i.nvj, label %scalar.ph4149, label %._crit_edge1075.i, !llvm.loop !438

.preheader1014.i:                                 ; preds = %._crit_edge1123.i, %._crit_edge1078.i
  %i.nvk = icmp sgt i32 %i.mav, 0
  %or.cond1373.i = select i1 %i.lyc, i1 %i.nvk, i1 false
  br i1 %or.cond1373.i, label %.preheader1009.i.preheader, label %.preheader1013.i

.preheader1009.i.preheader:                       ; preds = %.preheader1014.i
  %xtraiter4758 = and i64 %i.mac, 3               ; 3 uses
  %i.nvl = add i32 %smin4757, -1
  %i.nvm = icmp ult i32 %i.nvl, 3
  %unroll_iter4762 = and i64 %i.mac, -4
  %lcmp.mod4760.not = icmp eq i64 %xtraiter4758, 0
  %lcmp.mod4761 = icmp ne i64 %xtraiter4758, 0
  br label %.preheader1009.i

.preheader1011.i:                                 ; preds = %._crit_edge1123.i, %.preheader1011.lr.ph.i
  %.09141132.i = phi i32 [ 0, %.preheader1011.lr.ph.i ], [ %i.okt, %._crit_edge1123.i ]
  br i1 %brmerge.i556, label %.preheader1010.i, label %.preheader1006.i

.preheader1010.i:                                 ; preds = %._crit_edge1082.1.i, %.preheader1011.i
  br i1 %i.lyn, label %.lr.ph1122.i, label %._crit_edge1123.i

.preheader1006.i:                                 ; preds = %.preheader1011.i, %._crit_edge1082.1.i
  %indvars.iv1272.i = phi i64 [ %indvars.iv.next1273.i, %._crit_edge1082.1.i ], [ 1, %.preheader1011.i ] ; 2 uses
  %i.nvn = mul nuw nsw i64 %indvars.iv1272.i, 136 ; 5 uses
  %i.nvo = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.nvn ; 4 uses
  %i.nvp = getelementptr inbounds nuw [4 x i8], ptr %i.lxb, i64 %i.nvn ; 2 uses
  %i.nvq = getelementptr inbounds nuw [4 x i8], ptr %i.lwx, i64 %i.nvn ; 2 uses
  br i1 %min.iters.check4109, label %scalar.ph4108.preheader, label %vector.body4112

vector.body4112:                                  ; preds = %.preheader1006.i, %vector.body4112
  %index4113 = phi i64 [ %index.next4132, %vector.body4112 ], [ 0, %.preheader1006.i ] ; 2 uses
  %i.nvr = or disjoint i64 %index4113, 1          ; 3 uses
  %i.nvs = getelementptr inbounds nuw [4 x i8], ptr %i.nvp, i64 %i.nvr
  %i.nvt = getelementptr inbounds nuw [4 x i8], ptr %i.nvq, i64 %i.nvr ; 9 uses
  %i.nvu = getelementptr inbounds nuw [4 x i8], ptr %i.nvo, i64 %i.nvr ; 9 uses
  %i.nvv = getelementptr inbounds i8, ptr %i.nvt, i64 -548
  %wide.load4114 = load <8 x float>, ptr %i.nvv, align 32, !tbaa !22, !noalias !402
end_hunk_2
begin_hunk_3_@process:bb.a
  %i.oek = insertelement <2 x float> poison, float %i.oeg, i64 0
  %i.oel = insertelement <2 x float> %i.oek, float %i.odh, i64 1 ; 2 uses
  %i.oem = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.oed, %i.oel
  %i.oen = select <2 x i1> %i.oem, <2 x float> %i.oed, <2 x float> %i.oel ; 2 uses
  %i.oeo = load <2 x float>, ptr %i.odi, align 4, !tbaa !22, !noalias !402
  %i.oep = load <2 x float>, ptr %i.odj, align 4, !tbaa !22, !noalias !402
  %i.oeq = fsub reassoc nsz arcp contract afn <2 x float> %i.oeo, %i.oep ; 4 uses
  %i.oer = extractelement <2 x float> %i.oeq, i64 1 ; 2 uses
  %i.oes = fcmp reassoc nsz arcp contract afn olt float %i.oer, %i.odo
  %i.oet = select reassoc nsz arcp contract afn i1 %i.oes, float %i.oer, float %i.odo ; 3 uses
  %i.oeu = extractelement <2 x float> %i.oeq, i64 0 ; 2 uses
  %i.oev = fcmp reassoc nsz arcp contract afn olt float %i.oeu, %i.oet
  %i.oew = select reassoc nsz arcp contract afn i1 %i.oev, float %i.oeu, float %i.oet ; 2 uses
  %i.oex = insertelement <2 x float> poison, float %i.oet, i64 0
  %i.oey = insertelement <2 x float> %i.oex, float %i.odo, i64 1 ; 2 uses
  %i.oez = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.oeq, %i.oey
  %i.ofa = select <2 x i1> %i.oez, <2 x float> %i.oeq, <2 x float> %i.oey ; 2 uses
  %i.ofb = extractelement <2 x float> %i.oea, i64 0 ; 4 uses
  %i.ofc = extractelement <2 x float> %i.oea, i64 1 ; 4 uses
  %i.ofd = fcmp reassoc nsz arcp contract afn olt float %i.ofb, %i.ofc
  %i.ofe = select reassoc nsz arcp contract afn i1 %i.ofd, float %i.ofb, float %i.ofc ; 2 uses
  %i.off = fcmp reassoc nsz arcp contract afn ogt float %i.ofb, %i.ofc
  %i.ofg = select reassoc nsz arcp contract afn i1 %i.off, float %i.ofb, float %i.ofc ; 2 uses
  %i.ofh = extractelement <2 x float> %i.oen, i64 0 ; 4 uses
  %i.ofi = extractelement <2 x float> %i.oen, i64 1 ; 4 uses
  %i.ofj = fcmp reassoc nsz arcp contract afn olt float %i.ofh, %i.ofi
  %i.ofk = select reassoc nsz arcp contract afn i1 %i.ofj, float %i.ofh, float %i.ofi ; 4 uses
  %i.ofl = fcmp reassoc nsz arcp contract afn ogt float %i.ofh, %i.ofi
  %i.ofm = select reassoc nsz arcp contract afn i1 %i.ofl, float %i.ofh, float %i.ofi ; 2 uses
  %i.ofn = extractelement <2 x float> %i.ofa, i64 0 ; 4 uses
  %i.ofo = extractelement <2 x float> %i.ofa, i64 1 ; 4 uses
  %i.ofp = fcmp reassoc nsz arcp contract afn olt float %i.ofn, %i.ofo
  %i.ofq = select reassoc nsz arcp contract afn i1 %i.ofp, float %i.ofn, float %i.ofo ; 4 uses
  %i.ofr = fcmp reassoc nsz arcp contract afn ogt float %i.ofn, %i.ofo
  %i.ofs = select reassoc nsz arcp contract afn i1 %i.ofr, float %i.ofn, float %i.ofo ; 2 uses
  %i.oft = fcmp reassoc nsz arcp contract afn ogt float %i.odw, %i.oej
  %i.ofu = select reassoc nsz arcp contract afn i1 %i.oft, float %i.odw, float %i.oej ; 2 uses
  %i.ofv = fcmp reassoc nsz arcp contract afn olt float %i.ofm, %i.ofs
  %i.ofw = select reassoc nsz arcp contract afn i1 %i.ofv, float %i.ofm, float %i.ofs ; 2 uses
  %i.ofx = fcmp reassoc nsz arcp contract afn ogt float %i.ofk, %i.ofq
  %i.ofy = select reassoc nsz arcp contract afn i1 %i.ofx, float %i.ofk, float %i.ofq ; 2 uses
  %i.ofz = fcmp reassoc nsz arcp contract afn olt float %i.ofk, %i.ofq
  %i.oga = select reassoc nsz arcp contract afn i1 %i.ofz, float %i.ofk, float %i.ofq ; 2 uses
  %i.ogb = fcmp reassoc nsz arcp contract afn ogt float %i.ofu, %i.oew
  %i.ogc = select reassoc nsz arcp contract afn i1 %i.ogb, float %i.ofu, float %i.oew ; 2 uses
  %i.ogd = fcmp reassoc nsz arcp contract afn ogt float %i.ofe, %i.oga
  %i.oge = select reassoc nsz arcp contract afn i1 %i.ogd, float %i.ofe, float %i.oga ; 2 uses
  %i.ogf = fcmp reassoc nsz arcp contract afn olt float %i.ofg, %i.ofw
  %i.ogg = select reassoc nsz arcp contract afn i1 %i.ogf, float %i.ofg, float %i.ofw ; 4 uses
  %i.ogh = fcmp reassoc nsz arcp contract afn olt float %i.oge, %i.ofy
  %i.ogi = select reassoc nsz arcp contract afn i1 %i.ogh, float %i.oge, float %i.ofy ; 4 uses
  %i.ogj = fcmp reassoc nsz arcp contract afn olt float %i.ogi, %i.ogg
  %i.ogk = select reassoc nsz arcp contract afn i1 %i.ogj, float %i.ogi, float %i.ogg ; 2 uses
  %i.ogl = fcmp reassoc nsz arcp contract afn ogt float %i.ogi, %i.ogg
  %i.ogm = select reassoc nsz arcp contract afn i1 %i.ogl, float %i.ogi, float %i.ogg ; 2 uses
  %i.ogn = fcmp reassoc nsz arcp contract afn ogt float %i.ogc, %i.ogk
  %i.ogo = select reassoc nsz arcp contract afn i1 %i.ogn, float %i.ogc, float %i.ogk ; 2 uses
  %i.ogp = fcmp reassoc nsz arcp contract afn olt float %i.ogm, %i.ogo
  %i.ogq = select reassoc nsz arcp contract afn i1 %i.ogp, float %i.ogm, float %i.ogo
  store float %i.ogq, ptr %i.ocr, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1266.1.i = add nuw nsw i64 %indvars.iv1265.1.i, 1
  %i.ogr = icmp slt i64 %indvars.iv1265.1.i, %i.npw
  br i1 %i.ogr, label %scalar.ph4080, label %._crit_edge1082.1.i, !llvm.loop !441

._crit_edge1082.1.i:                              ; preds = %scalar.ph4080, %middle.block4105
  %indvars.iv.next1273.i = add nuw nsw i64 %indvars.iv1272.i, 1 ; 2 uses
  %exitcond1118.not = icmp eq i64 %indvars.iv.next1273.i, %smax1117
  br i1 %exitcond1118.not, label %.preheader1010.i, label %.preheader1006.i

scalar.ph4108:                                    ; preds = %scalar.ph4108.preheader, %scalar.ph4108
  %indvars.iv1265.i = phi i64 [ %indvars.iv.next1266.i, %scalar.ph4108 ], [ %indvars.iv1265.i.ph, %scalar.ph4108.preheader ] ; 5 uses
  %i.ogs = getelementptr inbounds nuw [4 x i8], ptr %i.nvp, i64 %indvars.iv1265.i
  %i.ogt = getelementptr inbounds nuw [4 x i8], ptr %i.nvq, i64 %indvars.iv1265.i ; 6 uses
  %i.ogu = getelementptr inbounds nuw [4 x i8], ptr %i.nvo, i64 %indvars.iv1265.i ; 6 uses
  %i.ogv = getelementptr inbounds i8, ptr %i.ogt, i64 -548
  %i.ogw = getelementptr inbounds i8, ptr %i.ogu, i64 -548
  %i.ogx = getelementptr inbounds i8, ptr %i.ogt, i64 -540
  %i.ogy = load float, ptr %i.ogx, align 4, !tbaa !22, !noalias !402
  %i.ogz = getelementptr inbounds i8, ptr %i.ogu, i64 -540
  %i.oha = load float, ptr %i.ogz, align 4, !tbaa !22, !noalias !402
  %i.ohb = fsub reassoc nsz arcp contract afn float %i.ogy, %i.oha ; 3 uses
  %i.ohc = getelementptr inbounds i8, ptr %i.ogt, i64 -4
  %i.ohd = getelementptr inbounds i8, ptr %i.ogu, i64 -4
  %i.ohe = getelementptr inbounds nuw i8, ptr %i.ogt, i64 4
  %i.ohf = load float, ptr %i.ohe, align 4, !tbaa !22, !noalias !402
  %i.ohg = getelementptr inbounds nuw i8, ptr %i.ogu, i64 4
  %i.ohh = load float, ptr %i.ohg, align 4, !tbaa !22, !noalias !402
  %i.ohi = fsub reassoc nsz arcp contract afn float %i.ohf, %i.ohh ; 3 uses
  %i.ohj = getelementptr inbounds nuw i8, ptr %i.ogt, i64 540
  %i.ohk = getelementptr inbounds nuw i8, ptr %i.ogu, i64 540
  %i.ohl = getelementptr inbounds nuw i8, ptr %i.ogt, i64 548
  %i.ohm = load float, ptr %i.ohl, align 4, !tbaa !22, !noalias !402
  %i.ohn = getelementptr inbounds nuw i8, ptr %i.ogu, i64 548
  %i.oho = load float, ptr %i.ohn, align 4, !tbaa !22, !noalias !402
  %i.ohp = fsub reassoc nsz arcp contract afn float %i.ohm, %i.oho ; 3 uses
  %i.ohq = load <2 x float>, ptr %i.ogv, align 4, !tbaa !22, !noalias !402
  %i.ohr = load <2 x float>, ptr %i.ogw, align 4, !tbaa !22, !noalias !402
  %i.ohs = fsub reassoc nsz arcp contract afn <2 x float> %i.ohq, %i.ohr ; 4 uses
  %i.oht = extractelement <2 x float> %i.ohs, i64 1 ; 2 uses
  %i.ohu = fcmp reassoc nsz arcp contract afn olt float %i.oht, %i.ohb
  %..i.i = select reassoc nsz arcp contract afn i1 %i.ohu, float %i.oht, float %i.ohb ; 3 uses
  %i.ohv = extractelement <2 x float> %i.ohs, i64 0 ; 2 uses
  %i.ohw = fcmp reassoc nsz arcp contract afn olt float %i.ohv, %..i.i
  %i.ohx = select reassoc nsz arcp contract afn i1 %i.ohw, float %i.ohv, float %..i.i ; 2 uses
  %i.ohy = insertelement <2 x float> poison, float %..i.i, i64 0
  %i.ohz = insertelement <2 x float> %i.ohy, float %i.ohb, i64 1 ; 2 uses
  %i.oia = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ohs, %i.ohz
  %i.oib = select <2 x i1> %i.oia, <2 x float> %i.ohs, <2 x float> %i.ohz ; 2 uses
  %i.oic = load <2 x float>, ptr %i.ohc, align 4, !tbaa !22, !noalias !402
  %i.oid = load <2 x float>, ptr %i.ohd, align 4, !tbaa !22, !noalias !402
  %i.oie = fsub reassoc nsz arcp contract afn <2 x float> %i.oic, %i.oid ; 4 uses
  %i.oif = extractelement <2 x float> %i.oie, i64 1 ; 2 uses
  %i.oig = fcmp reassoc nsz arcp contract afn olt float %i.oif, %i.ohi
  %i.oih = select reassoc nsz arcp contract afn i1 %i.oig, float %i.oif, float %i.ohi ; 3 uses
  %i.oii = extractelement <2 x float> %i.oie, i64 0 ; 2 uses
  %i.oij = fcmp reassoc nsz arcp contract afn olt float %i.oii, %i.oih
  %i.oik = select reassoc nsz arcp contract afn i1 %i.oij, float %i.oii, float %i.oih ; 2 uses
  %i.oil = insertelement <2 x float> poison, float %i.oih, i64 0
  %i.oim = insertelement <2 x float> %i.oil, float %i.ohi, i64 1 ; 2 uses
  %i.oin = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.oie, %i.oim
  %i.oio = select <2 x i1> %i.oin, <2 x float> %i.oie, <2 x float> %i.oim ; 2 uses
  %i.oip = load <2 x float>, ptr %i.ohj, align 4, !tbaa !22, !noalias !402
  %i.oiq = load <2 x float>, ptr %i.ohk, align 4, !tbaa !22, !noalias !402
  %i.oir = fsub reassoc nsz arcp contract afn <2 x float> %i.oip, %i.oiq ; 4 uses
  %i.ois = extractelement <2 x float> %i.oir, i64 1 ; 2 uses
  %i.oit = fcmp reassoc nsz arcp contract afn olt float %i.ois, %i.ohp
  %i.oiu = select reassoc nsz arcp contract afn i1 %i.oit, float %i.ois, float %i.ohp ; 3 uses
  %i.oiv = extractelement <2 x float> %i.oir, i64 0 ; 2 uses
  %i.oiw = fcmp reassoc nsz arcp contract afn olt float %i.oiv, %i.oiu
  %i.oix = select reassoc nsz arcp contract afn i1 %i.oiw, float %i.oiv, float %i.oiu ; 2 uses
  %i.oiy = insertelement <2 x float> poison, float %i.oiu, i64 0
  %i.oiz = insertelement <2 x float> %i.oiy, float %i.ohp, i64 1 ; 2 uses
  %i.oja = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.oir, %i.oiz
  %i.ojb = select <2 x i1> %i.oja, <2 x float> %i.oir, <2 x float> %i.oiz ; 2 uses
  %i.ojc = extractelement <2 x float> %i.oib, i64 0 ; 4 uses
  %i.ojd = extractelement <2 x float> %i.oib, i64 1 ; 4 uses
  %i.oje = fcmp reassoc nsz arcp contract afn olt float %i.ojc, %i.ojd
  %i.ojf = select reassoc nsz arcp contract afn i1 %i.oje, float %i.ojc, float %i.ojd ; 2 uses
  %i.ojg = fcmp reassoc nsz arcp contract afn ogt float %i.ojc, %i.ojd
  %i.ojh = select reassoc nsz arcp contract afn i1 %i.ojg, float %i.ojc, float %i.ojd ; 2 uses
  %i.oji = extractelement <2 x float> %i.oio, i64 0 ; 4 uses
  %i.ojj = extractelement <2 x float> %i.oio, i64 1 ; 4 uses
  %i.ojk = fcmp reassoc nsz arcp contract afn olt float %i.oji, %i.ojj
  %i.ojl = select reassoc nsz arcp contract afn i1 %i.ojk, float %i.oji, float %i.ojj ; 4 uses
  %i.ojm = fcmp reassoc nsz arcp contract afn ogt float %i.oji, %i.ojj
  %i.ojn = select reassoc nsz arcp contract afn i1 %i.ojm, float %i.oji, float %i.ojj ; 2 uses
  %i.ojo = extractelement <2 x float> %i.ojb, i64 0 ; 4 uses
  %i.ojp = extractelement <2 x float> %i.ojb, i64 1 ; 4 uses
  %i.ojq = fcmp reassoc nsz arcp contract afn olt float %i.ojo, %i.ojp
  %i.ojr = select reassoc nsz arcp contract afn i1 %i.ojq, float %i.ojo, float %i.ojp ; 4 uses
  %i.ojs = fcmp reassoc nsz arcp contract afn ogt float %i.ojo, %i.ojp
  %i.ojt = select reassoc nsz arcp contract afn i1 %i.ojs, float %i.ojo, float %i.ojp ; 2 uses
  %i.oju = fcmp reassoc nsz arcp contract afn ogt float %i.ohx, %i.oik
  %i.ojv = select reassoc nsz arcp contract afn i1 %i.oju, float %i.ohx, float %i.oik ; 2 uses
  %i.ojw = fcmp reassoc nsz arcp contract afn olt float %i.ojn, %i.ojt
  %i.ojx = select reassoc nsz arcp contract afn i1 %i.ojw, float %i.ojn, float %i.ojt ; 2 uses
  %i.ojy = fcmp reassoc nsz arcp contract afn ogt float %i.ojl, %i.ojr
  %i.ojz = select reassoc nsz arcp contract afn i1 %i.ojy, float %i.ojl, float %i.ojr ; 2 uses
  %i.oka = fcmp reassoc nsz arcp contract afn olt float %i.ojl, %i.ojr
  %i.okb = select reassoc nsz arcp contract afn i1 %i.oka, float %i.ojl, float %i.ojr ; 2 uses
  %i.okc = fcmp reassoc nsz arcp contract afn ogt float %i.ojv, %i.oix
  %i.okd = select reassoc nsz arcp contract afn i1 %i.okc, float %i.ojv, float %i.oix ; 2 uses
  %i.oke = fcmp reassoc nsz arcp contract afn ogt float %i.ojf, %i.okb
  %i.okf = select reassoc nsz arcp contract afn i1 %i.oke, float %i.ojf, float %i.okb ; 2 uses
  %i.okg = fcmp reassoc nsz arcp contract afn olt float %i.ojh, %i.ojx
  %i.okh = select reassoc nsz arcp contract afn i1 %i.okg, float %i.ojh, float %i.ojx ; 4 uses
  %i.oki = fcmp reassoc nsz arcp contract afn olt float %i.okf, %i.ojz
  %i.okj = select reassoc nsz arcp contract afn i1 %i.oki, float %i.okf, float %i.ojz ; 4 uses
  %i.okk = fcmp reassoc nsz arcp contract afn olt float %i.okj, %i.okh
  %i.okl = select reassoc nsz arcp contract afn i1 %i.okk, float %i.okj, float %i.okh ; 2 uses
  %i.okm = fcmp reassoc nsz arcp contract afn ogt float %i.okj, %i.okh
  %i.okn = select reassoc nsz arcp contract afn i1 %i.okm, float %i.okj, float %i.okh ; 2 uses
  %i.oko = fcmp reassoc nsz arcp contract afn ogt float %i.okd, %i.okl
  %i.okp = select reassoc nsz arcp contract afn i1 %i.oko, float %i.okd, float %i.okl ; 2 uses
  %i.okq = fcmp reassoc nsz arcp contract afn olt float %i.okn, %i.okp
  %i.okr = select reassoc nsz arcp contract afn i1 %i.okq, float %i.okn, float %i.okp
  store float %i.okr, ptr %i.ogs, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1266.i = add nuw nsw i64 %indvars.iv1265.i, 1
  %i.oks = icmp slt i64 %indvars.iv1265.i, %i.npw
  br i1 %i.oks, label %scalar.ph4108, label %._crit_edge1082.i, !llvm.loop !442

._crit_edge1123.i:                                ; preds = %bb.re, %.preheader1010.i
  %i.okt = add nuw nsw i32 %.09141132.i, 1        ; 2 uses
  %exitcond.not.i557 = icmp eq i32 %i.okt, %i.lxf
  br i1 %exitcond.not.i557, label %.preheader1014.i, label %.preheader1011.i

.lr.ph1122.i:                                     ; preds = %.preheader1010.i, %bb.re
  %indvar3950 = phi i64 [ %indvar.next3951, %bb.re ], [ 0, %.preheader1010.i ] ; 3 uses
  %indvars.iv1275.i = phi i64 [ %indvars.iv.next1276.i, %bb.re ], [ %i.lyv, %.preheader1010.i ] ; 3 uses
  %i.oku = mul i64 %indvar3950, 544
  %i.okv = add i64 %i.nqp, %i.oku                 ; 2 uses
  %i.okw = mul i64 %indvar3950, 544               ; 2 uses
  %i.okx = add i64 %.reass, %i.okw                ; 2 uses
  %i.oky = add i64 %i.nqg, %i.okw                 ; 2 uses
  %i.okz = mul i64 %indvars.iv1275.i, 136         ; 9 uses
  %gep.i561 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i555, i64 %i.okz ; 10 uses
  %gep1125.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1124.i, i64 %i.okz ; 10 uses
  %gep1127.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1126.i, i64 %i.okz ; 10 uses
  %gep1129.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1128.i, i64 %i.okz ; 10 uses
  %gep1131.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep1130.i, i64 %i.okz ; 10 uses
  %indvars.iv1275.tr.i = trunc i64 %indvars.iv1275.i to i32
  %i.ola = shl i32 %indvars.iv1275.tr.i, 2
  %i.olb = and i32 %i.ola, 28                     ; 2 uses
  %i.olc = lshr i32 %.fr1043, %i.olb
  %i.old = and i32 %i.olc, 3                      ; 4 uses
  %i.ole = icmp eq i32 %i.old, 1
  br i1 %i.ole, label %bb.ra, label %bb.rc

bb.ra:                                            ; preds = %.lr.ph1122.i
  br i1 %i.npu, label %.lr.ph1113.preheader.i, label %._crit_edge1114.i

.lr.ph1113.preheader.i:                           ; preds = %bb.ra
  %i.olf = or disjoint i32 %i.olb, 2
  %i.olg = lshr i32 %.fr1043, %i.olf
  %i.olh = and i32 %i.olg, 3                      ; 3 uses
  %i.oli = icmp ne i32 %i.olh, 2
  %.neg953.i = sext i1 %i.oli to i32
  %reass.sub954.i = sub nsw i32 %.neg953.i, %i.olh
  %i.olj = sext i32 %reass.sub954.i to i64
  %i.olk = getelementptr [8 x i8], ptr %i.b, i64 %i.olj
  %i.oll = getelementptr i8, ptr %i.olk, i64 40
  %i.olm = load ptr, ptr %i.oll, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.oln = getelementptr inbounds nuw [4 x i8], ptr %i.olm, i64 %i.okz
  %i.olo = getelementptr inbounds nuw [4 x i8], ptr %i.oln, i64 %i.nps ; 4 uses
  %i.olp = sub nsw i32 2, %i.olh
  %i.olq = sext i32 %i.olp to i64
  %i.olr = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.olq
  %i.ols = load ptr, ptr %i.olr, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.olt = getelementptr inbounds nuw [4 x i8], ptr %i.ols, i64 %i.okz
  %i.olu = getelementptr inbounds nuw [4 x i8], ptr %i.olt, i64 %i.nps ; 4 uses
  br i1 %min.iters.check3968, label %.lr.ph1113.i.preheader, label %vector.memcheck3944

vector.memcheck3944:                              ; preds = %.lr.ph1113.preheader.i
  %scevgep3952 = getelementptr i8, ptr %i.ols, i64 %i.okx ; 2 uses
  %scevgep3953 = getelementptr i8, ptr %i.ols, i64 %i.oky ; 2 uses
  %scevgep3954 = getelementptr i8, ptr %i.olm, i64 %i.okx ; 2 uses
  %scevgep3955 = getelementptr i8, ptr %i.olm, i64 %i.oky ; 2 uses
  %bound03956 = icmp ult ptr %scevgep3946, %scevgep3953
  %bound13957 = icmp ult ptr %scevgep3952, %scevgep3949
  %found.conflict3958 = and i1 %bound03956, %bound13957
  %bound03959 = icmp ult ptr %scevgep3946, %scevgep3955
  %bound13960 = icmp ult ptr %scevgep3954, %scevgep3949
  %found.conflict3961 = and i1 %bound03959, %bound13960
  %conflict.rdx3962 = or i1 %found.conflict3958, %found.conflict3961
  %bound03963 = icmp ult ptr %scevgep3952, %scevgep3955
  %bound13964 = icmp ult ptr %scevgep3954, %scevgep3953
  %found.conflict3965 = and i1 %bound03963, %bound13964
  %conflict.rdx3966 = or i1 %conflict.rdx3962, %found.conflict3965
  br i1 %conflict.rdx3966, label %.lr.ph1113.i.preheader, label %vector.ph3969

vector.ph3969:                                    ; preds = %vector.memcheck3944
  %i.olv = getelementptr i8, ptr %i.olo, i64 %i.nrn
  %i.olw = getelementptr i8, ptr %i.olu, i64 %i.nrn
  %i.olx = getelementptr i8, ptr %gep1131.i, i64 %i.nrn
  %i.oly = getelementptr i8, ptr %gep1129.i, i64 %i.nrn
  %i.olz = getelementptr i8, ptr %gep1127.i, i64 %i.nrn
  %i.oma = getelementptr i8, ptr %gep1125.i, i64 %i.nrn
  %i.omb = getelementptr i8, ptr %gep.i561, i64 %i.nrn
  br label %vector.body3971

vector.body3971:                                  ; preds = %vector.body3971, %vector.ph3969
  %index3972 = phi i64 [ 0, %vector.ph3969 ], [ %index.next3999, %vector.body3971 ] ; 2 uses
  %pointer.phi = phi ptr [ %i.olu, %vector.ph3969 ], [ %ptr.ind, %vector.body3971 ] ; 2 uses
  %pointer.phi3973 = phi ptr [ %gep1127.i, %vector.ph3969 ], [ %ptr.ind4000, %vector.body3971 ] ; 2 uses
  %pointer.phi3974 = phi ptr [ %gep1125.i, %vector.ph3969 ], [ %ptr.ind4001, %vector.body3971 ] ; 2 uses
  %pointer.phi3975 = phi ptr [ %gep.i561, %vector.ph3969 ], [ %ptr.ind4002, %vector.body3971 ] ; 2 uses
  %vector.gep = getelementptr i8, ptr %pointer.phi3975, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep3976 = getelementptr i8, ptr %pointer.phi3974, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep3977 = getelementptr i8, ptr %pointer.phi3973, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep3978 = getelementptr i8, ptr %pointer.phi, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.omc = extractelement <8 x ptr> %vector.gep, i64 0
  %i.omd = extractelement <8 x ptr> %vector.gep3976, i64 0
  %i.ome = extractelement <8 x ptr> %vector.gep3977, i64 0
  %i.omf = shl i64 %index3972, 3                  ; 3 uses
  %next.gep3979 = getelementptr i8, ptr %i.olo, i64 %i.omf
  %next.gep3980 = getelementptr i8, ptr %gep1131.i, i64 %i.omf
  %next.gep3981 = getelementptr i8, ptr %gep1129.i, i64 %i.omf
  %wide.vec3982 = load <16 x float>, ptr %i.omd, align 4, !tbaa !22, !alias.scope !443, !noalias !402 ; 2 uses
  %strided.vec3983 = shufflevector <16 x float> %wide.vec3982, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec3984 = shufflevector <16 x float> %wide.vec3982, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec3985 = load <16 x float>, ptr %next.gep3981, align 8, !tbaa !22, !alias.scope !443, !noalias !402 ; 2 uses
  %strided.vec3986 = shufflevector <16 x float> %wide.vec3985, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3987 = shufflevector <16 x float> %wide.vec3985, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.omg = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3986, %strided.vec3983
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.omg, <8 x ptr> align 4 %vector.gep, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !443, !noalias !446
  %wide.vec3988 = load <16 x float>, ptr %next.gep3980, align 8, !tbaa !22, !alias.scope !443, !noalias !402 ; 2 uses
  %strided.vec3989 = shufflevector <16 x float> %wide.vec3988, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec3990 = shufflevector <16 x float> %wide.vec3988, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %i.omh = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3989, %strided.vec3983
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.omh, <8 x ptr> align 4 %vector.gep3977, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !443, !noalias !446
  %i.omi = getelementptr inbounds nuw i8, ptr %i.omc, i64 4
  %wide.gep3991 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep3976, i64 4
  %i.omj = getelementptr inbounds nuw i8, ptr %i.ome, i64 4
  %wide.gep3992 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep3978, i64 4
  %i.omk = getelementptr inbounds nuw i8, ptr %next.gep3979, i64 4
  %wide.vec3993 = load <16 x float>, ptr %i.omk, align 4, !tbaa !22, !alias.scope !449, !noalias !402
  %strided.vec3994 = shufflevector <16 x float> %wide.vec3993, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.oml = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3994, %strided.vec3984
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.oml, <8 x ptr> align 4 %wide.gep3992, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !450, !noalias !451
  %wide.vec3995 = load <16 x float>, ptr %i.omi, align 4, !tbaa !22, !alias.scope !443, !noalias !402
  %strided.vec3996 = shufflevector <16 x float> %wide.vec3995, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec3997 = load <16 x float>, ptr %i.omj, align 4, !tbaa !22, !alias.scope !443, !noalias !402
  %strided.vec3998 = shufflevector <16 x float> %wide.vec3997, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.omm = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3996, %strided.vec3998
  %i.omn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec3987, %strided.vec3990
  %i.omo = fsub reassoc nsz arcp contract afn <8 x float> %i.omm, %i.omn
  %i.omp = fmul reassoc nsz arcp contract afn <8 x float> %i.omo, splat (float 5.000000e-01)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.omp, <8 x ptr> align 4 %wide.gep3991, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !443, !noalias !446
  %index.next3999 = add nuw i64 %index3972, 8     ; 2 uses
  %ptr.ind = getelementptr i8, ptr %pointer.phi, i64 64
  %ptr.ind4000 = getelementptr i8, ptr %pointer.phi3973, i64 64
  %ptr.ind4001 = getelementptr i8, ptr %pointer.phi3974, i64 64
  %ptr.ind4002 = getelementptr i8, ptr %pointer.phi3975, i64 64
  %i.omq = icmp eq i64 %index.next3999, %n.vec3970
  br i1 %i.omq, label %.lr.ph1113.i.preheader, label %vector.body3971, !llvm.loop !452

.lr.ph1113.i.preheader:                           ; preds = %vector.body3971, %vector.memcheck3944, %.lr.ph1113.preheader.i
  %.08961111.i.ph = phi ptr [ %i.olo, %vector.memcheck3944 ], [ %i.olo, %.lr.ph1113.preheader.i ], [ %i.olv, %vector.body3971 ]
  %.08971110.i.ph = phi ptr [ %i.olu, %vector.memcheck3944 ], [ %i.olu, %.lr.ph1113.preheader.i ], [ %i.olw, %vector.body3971 ]
  %.08981109.i.ph = phi i32 [ %i.npo, %vector.memcheck3944 ], [ %i.npo, %.lr.ph1113.preheader.i ], [ %i.nrq, %vector.body3971 ]
  %.08991108.i.ph = phi ptr [ %gep1131.i, %vector.memcheck3944 ], [ %gep1131.i, %.lr.ph1113.preheader.i ], [ %i.olx, %vector.body3971 ]
  %.09011107.i.ph = phi ptr [ %gep1129.i, %vector.memcheck3944 ], [ %gep1129.i, %.lr.ph1113.preheader.i ], [ %i.oly, %vector.body3971 ]
  %.09031106.i.ph = phi ptr [ %gep1127.i, %vector.memcheck3944 ], [ %gep1127.i, %.lr.ph1113.preheader.i ], [ %i.olz, %vector.body3971 ]
  %.09051105.i.ph = phi ptr [ %gep1125.i, %vector.memcheck3944 ], [ %gep1125.i, %.lr.ph1113.preheader.i ], [ %i.oma, %vector.body3971 ]
  %.09071104.i.ph = phi ptr [ %gep.i561, %vector.memcheck3944 ], [ %gep.i561, %.lr.ph1113.preheader.i ], [ %i.omb, %vector.body3971 ]
  br label %.lr.ph1113.i

.lr.ph1113.i:                                     ; preds = %.lr.ph1113.i.preheader, %.lr.ph1113.i
  %.08961111.i = phi ptr [ %i.onu, %.lr.ph1113.i ], [ %.08961111.i.ph, %.lr.ph1113.i.preheader ] ; 2 uses
  %.08971110.i = phi ptr [ %i.ont, %.lr.ph1113.i ], [ %.08971110.i.ph, %.lr.ph1113.i.preheader ] ; 2 uses
  %.08981109.i = phi i32 [ %i.onv, %.lr.ph1113.i ], [ %.08981109.i.ph, %.lr.ph1113.i.preheader ]
  %.08991108.i = phi ptr [ %i.ons, %.lr.ph1113.i ], [ %.08991108.i.ph, %.lr.ph1113.i.preheader ] ; 3 uses
  %.09011107.i = phi ptr [ %i.onr, %.lr.ph1113.i ], [ %.09011107.i.ph, %.lr.ph1113.i.preheader ] ; 3 uses
  %.09031106.i = phi ptr [ %i.onq, %.lr.ph1113.i ], [ %.09031106.i.ph, %.lr.ph1113.i.preheader ] ; 3 uses
  %.09051105.i = phi ptr [ %i.onp, %.lr.ph1113.i ], [ %.09051105.i.ph, %.lr.ph1113.i.preheader ] ; 3 uses
  %.09071104.i = phi ptr [ %i.ono, %.lr.ph1113.i ], [ %.09071104.i.ph, %.lr.ph1113.i.preheader ] ; 3 uses
  %i.omr = load float, ptr %.09051105.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.oms = load float, ptr %.09011107.i, align 4, !tbaa !22, !noalias !402
  %i.omt = fadd reassoc nsz arcp contract afn float %i.oms, %i.omr
  store float %i.omt, ptr %.09071104.i, align 4, !tbaa !22, !noalias !402
  %i.omu = load float, ptr %.08991108.i, align 4, !tbaa !22, !noalias !402
  %i.omv = fadd reassoc nsz arcp contract afn float %i.omu, %i.omr
  store float %i.omv, ptr %.09031106.i, align 4, !tbaa !22, !noalias !402
  %i.omw = getelementptr inbounds nuw i8, ptr %.09071104.i, i64 4
  %i.omx = getelementptr inbounds nuw i8, ptr %.09051105.i, i64 4 ; 2 uses
  %i.omy = getelementptr inbounds nuw i8, ptr %.09031106.i, i64 4
  %i.omz = getelementptr inbounds nuw i8, ptr %.09011107.i, i64 4
  %i.ona = getelementptr inbounds nuw i8, ptr %.08991108.i, i64 4
  %i.onb = getelementptr inbounds nuw i8, ptr %.08971110.i, i64 4
  %i.onc = getelementptr inbounds nuw i8, ptr %.08961111.i, i64 4
  %i.ond = load float, ptr %i.omx, align 4, !tbaa !22, !noalias !402
  %i.one = load float, ptr %i.onc, align 4, !tbaa !22, !noalias !402
  %i.onf = fadd reassoc nsz arcp contract afn float %i.one, %i.ond
  store float %i.onf, ptr %i.onb, align 4, !tbaa !22, !noalias !402
  %i.ong = load float, ptr %i.omw, align 4, !tbaa !22, !noalias !402
  %i.onh = load float, ptr %i.omz, align 4, !tbaa !22, !noalias !402
  %i.oni = load float, ptr %i.omy, align 4, !tbaa !22, !noalias !402
  %i.onj = load float, ptr %i.ona, align 4, !tbaa !22, !noalias !402
  %i.onk = fadd reassoc nsz arcp contract afn float %i.ong, %i.oni
  %i.onl = fadd reassoc nsz arcp contract afn float %i.onh, %i.onj
  %i.onm = fsub reassoc nsz arcp contract afn float %i.onk, %i.onl
  %i.onn = fmul reassoc nsz arcp contract afn float %i.onm, 5.000000e-01
  store float %i.onn, ptr %i.omx, align 4, !tbaa !22, !noalias !402
  %i.ono = getelementptr inbounds nuw i8, ptr %.09071104.i, i64 8 ; 2 uses
  %i.onp = getelementptr inbounds nuw i8, ptr %.09051105.i, i64 8 ; 2 uses
  %i.onq = getelementptr inbounds nuw i8, ptr %.09031106.i, i64 8 ; 2 uses
  %i.onr = getelementptr inbounds nuw i8, ptr %.09011107.i, i64 8 ; 2 uses
  %i.ons = getelementptr inbounds nuw i8, ptr %.08991108.i, i64 8 ; 2 uses
  %i.ont = getelementptr inbounds nuw i8, ptr %.08971110.i, i64 8
  %i.onu = getelementptr inbounds nuw i8, ptr %.08961111.i, i64 8
  %i.onv = add nuw nsw i32 %.08981109.i, 2        ; 3 uses
  %i.onw = icmp slt i32 %i.onv, %i.npt
  br i1 %i.onw, label %.lr.ph1113.i, label %._crit_edge1114.i, !llvm.loop !453

._crit_edge1114.i:                                ; preds = %.lr.ph1113.i, %bb.ra
  %.0907.lcssa.i = phi ptr [ %gep.i561, %bb.ra ], [ %i.ono, %.lr.ph1113.i ]
  %.0905.lcssa.i = phi ptr [ %gep1125.i, %bb.ra ], [ %i.onp, %.lr.ph1113.i ]
  %.0903.lcssa.i = phi ptr [ %gep1127.i, %bb.ra ], [ %i.onq, %.lr.ph1113.i ]
  %.0901.lcssa.i = phi ptr [ %gep1129.i, %bb.ra ], [ %i.onr, %.lr.ph1113.i ]
  %.0899.lcssa.i = phi ptr [ %gep1131.i, %bb.ra ], [ %i.ons, %.lr.ph1113.i ]
  %.0898.lcssa.i = phi i32 [ %i.npo, %bb.ra ], [ %i.onv, %.lr.ph1113.i ]
  %i.onx = icmp slt i32 %.0898.lcssa.i, %i.npq
  br i1 %i.onx, label %bb.rb, label %bb.re

bb.rb:                                            ; preds = %._crit_edge1114.i
  %i.ony = load float, ptr %.0905.lcssa.i, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.onz = load float, ptr %.0901.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ooa = fadd reassoc nsz arcp contract afn float %i.onz, %i.ony
  store float %i.ooa, ptr %.0907.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oob = load float, ptr %.0899.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.ooc = fadd reassoc nsz arcp contract afn float %i.oob, %i.ony
  store float %i.ooc, ptr %.0903.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.re

bb.rc:                                            ; preds = %.lr.ph1122.i
  %i.ood = sub nsw i32 2, %i.old
  %i.ooe = icmp ne i32 %i.old, 2
  %.neg952.i = sext i1 %i.ooe to i32
  %reass.sub.i = sub nsw i32 %.neg952.i, %i.old
  %i.oof = sext i32 %i.ood to i64
  %i.oog = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.oof
end_hunk_3
begin_hunk_4_@process:bb.a
  %bound14028 = icmp ult ptr %i.oop, %scevgep4018
  %found.conflict4029 = and i1 %bound04027, %bound14028
  %conflict.rdx4030 = or i1 %conflict.rdx4026, %found.conflict4029
  br i1 %conflict.rdx4030, label %.lr.ph1094.i.preheader4642, label %vector.ph4033

vector.ph4033:                                    ; preds = %vector.memcheck4012
  %i.ooq = getelementptr i8, ptr %i.oop, i64 %i.nre
  %i.oor = getelementptr i8, ptr %i.ooj, i64 %i.nre
  %i.oos = getelementptr i8, ptr %gep1131.i, i64 %i.nre
  %i.oot = getelementptr i8, ptr %gep1129.i, i64 %i.nre
  %i.oou = getelementptr i8, ptr %gep1127.i, i64 %i.nre
  %i.oov = getelementptr i8, ptr %gep1125.i, i64 %i.nre
  %i.oow = getelementptr i8, ptr %gep.i561, i64 %i.nre
  br label %vector.body4035

vector.body4035:                                  ; preds = %vector.body4035, %vector.ph4033
  %index4036 = phi i64 [ 0, %vector.ph4033 ], [ %index.next4066, %vector.body4035 ] ; 2 uses
  %pointer.phi4037 = phi ptr [ %i.ooj, %vector.ph4033 ], [ %ptr.ind4067, %vector.body4035 ] ; 2 uses
  %pointer.phi4038 = phi ptr [ %gep1127.i, %vector.ph4033 ], [ %ptr.ind4068, %vector.body4035 ] ; 2 uses
  %pointer.phi4039 = phi ptr [ %gep1125.i, %vector.ph4033 ], [ %ptr.ind4069, %vector.body4035 ] ; 2 uses
  %pointer.phi4040 = phi ptr [ %gep.i561, %vector.ph4033 ], [ %ptr.ind4070, %vector.body4035 ] ; 2 uses
  %vector.gep4041 = getelementptr i8, ptr %pointer.phi4040, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4042 = getelementptr i8, ptr %pointer.phi4039, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4043 = getelementptr i8, ptr %pointer.phi4038, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56> ; 2 uses
  %vector.gep4044 = getelementptr i8, ptr %pointer.phi4037, <8 x i64> <i64 0, i64 8, i64 16, i64 24, i64 32, i64 40, i64 48, i64 56>
  %i.oox = extractelement <8 x ptr> %vector.gep4041, i64 0
  %i.ooy = extractelement <8 x ptr> %vector.gep4042, i64 0
  %i.ooz = extractelement <8 x ptr> %vector.gep4043, i64 0
  %i.opa = shl i64 %index4036, 3                  ; 3 uses
  %next.gep4045 = getelementptr i8, ptr %i.oop, i64 %i.opa
  %next.gep4046 = getelementptr i8, ptr %gep1131.i, i64 %i.opa ; 2 uses
  %next.gep4047 = getelementptr i8, ptr %gep1129.i, i64 %i.opa
  %wide.vec4048 = load <16 x float>, ptr %i.ooy, align 4, !tbaa !22, !alias.scope !454, !noalias !402 ; 2 uses
  %strided.vec4049 = shufflevector <16 x float> %wide.vec4048, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4050 = shufflevector <16 x float> %wide.vec4048, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec4051 = load <16 x float>, ptr %next.gep4045, align 4, !tbaa !22, !alias.scope !457, !noalias !402
  %strided.vec4052 = shufflevector <16 x float> %wide.vec4051, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.opb = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4052, %strided.vec4049
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.opb, <8 x ptr> align 4 %vector.gep4044, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !459, !noalias !461
  %wide.vec4053 = load <16 x float>, ptr %i.oox, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4054 = shufflevector <16 x float> %wide.vec4053, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4055 = load <16 x float>, ptr %next.gep4047, align 8, !tbaa !22, !alias.scope !454, !noalias !402 ; 2 uses
  %strided.vec4056 = shufflevector <16 x float> %wide.vec4055, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec4057 = shufflevector <16 x float> %wide.vec4055, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.vec4058 = load <16 x float>, ptr %i.ooz, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4059 = shufflevector <16 x float> %wide.vec4058, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %wide.vec4060 = load <16 x float>, ptr %next.gep4046, align 8, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4061 = shufflevector <16 x float> %wide.vec4060, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.opc = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4054, %strided.vec4059
  %i.opd = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4056, %strided.vec4061
  %i.ope = fsub reassoc nsz arcp contract afn <8 x float> %i.opc, %i.opd
  %i.opf = fmul reassoc nsz arcp contract afn <8 x float> %i.ope, splat (float 5.000000e-01)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.opf, <8 x ptr> align 4 %vector.gep4042, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %wide.gep4062 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4041, i64 4
  %wide.gep4063 = getelementptr inbounds nuw i8, <8 x ptr> %vector.gep4043, i64 4
  %i.opg = getelementptr inbounds nuw i8, ptr %next.gep4046, i64 4
  %i.oph = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4057, %strided.vec4050
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.oph, <8 x ptr> align 4 %wide.gep4062, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %wide.vec4064 = load <16 x float>, ptr %i.opg, align 4, !tbaa !22, !alias.scope !454, !noalias !402
  %strided.vec4065 = shufflevector <16 x float> %wide.vec4064, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.opi = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec4065, %strided.vec4050
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.opi, <8 x ptr> align 4 %wide.gep4063, <8 x i1> splat (i1 true)), !tbaa !22, !alias.scope !454, !noalias !462
  %index.next4066 = add nuw i64 %index4036, 8     ; 2 uses
  %ptr.ind4067 = getelementptr i8, ptr %pointer.phi4037, i64 64
  %ptr.ind4068 = getelementptr i8, ptr %pointer.phi4038, i64 64
  %ptr.ind4069 = getelementptr i8, ptr %pointer.phi4039, i64 64
  %ptr.ind4070 = getelementptr i8, ptr %pointer.phi4040, i64 64
  %i.opj = icmp eq i64 %index.next4066, %n.vec4034
  br i1 %i.opj, label %.lr.ph1094.i.preheader4642, label %vector.body4035, !llvm.loop !463

.lr.ph1094.i.preheader4642:                       ; preds = %vector.body4035, %vector.memcheck4012, %.lr.ph1094.i.preheader
  %.08931092.i.ph = phi i32 [ %i.npo, %vector.memcheck4012 ], [ %i.npo, %.lr.ph1094.i.preheader ], [ %i.nrd, %vector.body4035 ]
  %.08941091.i.ph = phi ptr [ %i.oop, %vector.memcheck4012 ], [ %i.oop, %.lr.ph1094.i.preheader ], [ %i.ooq, %vector.body4035 ]
  %.08951090.i.ph = phi ptr [ %i.ooj, %vector.memcheck4012 ], [ %i.ooj, %.lr.ph1094.i.preheader ], [ %i.oor, %vector.body4035 ]
  %.19001089.i.ph = phi ptr [ %gep1131.i, %vector.memcheck4012 ], [ %gep1131.i, %.lr.ph1094.i.preheader ], [ %i.oos, %vector.body4035 ]
  %.19021088.i.ph = phi ptr [ %gep1129.i, %vector.memcheck4012 ], [ %gep1129.i, %.lr.ph1094.i.preheader ], [ %i.oot, %vector.body4035 ]
  %.19041087.i.ph = phi ptr [ %gep1127.i, %vector.memcheck4012 ], [ %gep1127.i, %.lr.ph1094.i.preheader ], [ %i.oou, %vector.body4035 ]
  %.19061086.i.ph = phi ptr [ %gep1125.i, %vector.memcheck4012 ], [ %gep1125.i, %.lr.ph1094.i.preheader ], [ %i.oov, %vector.body4035 ]
  %.19081085.i.ph = phi ptr [ %gep.i561, %vector.memcheck4012 ], [ %gep.i561, %.lr.ph1094.i.preheader ], [ %i.oow, %vector.body4035 ]
  br label %.lr.ph1094.i

.lr.ph1094.i:                                     ; preds = %.lr.ph1094.i.preheader4642, %.lr.ph1094.i
  %.08931092.i = phi i32 [ %i.oqm, %.lr.ph1094.i ], [ %.08931092.i.ph, %.lr.ph1094.i.preheader4642 ]
  %.08941091.i = phi ptr [ %i.oql, %.lr.ph1094.i ], [ %.08941091.i.ph, %.lr.ph1094.i.preheader4642 ] ; 2 uses
  %.08951090.i = phi ptr [ %i.oqk, %.lr.ph1094.i ], [ %.08951090.i.ph, %.lr.ph1094.i.preheader4642 ] ; 2 uses
  %.19001089.i = phi ptr [ %i.oqj, %.lr.ph1094.i ], [ %.19001089.i.ph, %.lr.ph1094.i.preheader4642 ] ; 3 uses
  %.19021088.i = phi ptr [ %i.oqi, %.lr.ph1094.i ], [ %.19021088.i.ph, %.lr.ph1094.i.preheader4642 ] ; 3 uses
  %.19041087.i = phi ptr [ %i.oqh, %.lr.ph1094.i ], [ %.19041087.i.ph, %.lr.ph1094.i.preheader4642 ] ; 3 uses
  %.19061086.i = phi ptr [ %i.oqg, %.lr.ph1094.i ], [ %.19061086.i.ph, %.lr.ph1094.i.preheader4642 ] ; 4 uses
  %.19081085.i = phi ptr [ %i.oqf, %.lr.ph1094.i ], [ %.19081085.i.ph, %.lr.ph1094.i.preheader4642 ] ; 3 uses
  %i.opk = load float, ptr %.19061086.i, align 4, !tbaa !22, !noalias !402
  %i.opl = load float, ptr %.08941091.i, align 4, !tbaa !22, !noalias !402
  %i.opm = fadd reassoc nsz arcp contract afn float %i.opl, %i.opk
  store float %i.opm, ptr %.08951090.i, align 4, !tbaa !22, !noalias !402
  %i.opn = load float, ptr %.19081085.i, align 4, !tbaa !22, !noalias !402
  %i.opo = load float, ptr %.19021088.i, align 4, !tbaa !22, !noalias !402
  %i.opp = load float, ptr %.19041087.i, align 4, !tbaa !22, !noalias !402
  %i.opq = load float, ptr %.19001089.i, align 4, !tbaa !22, !noalias !402
  %i.opr = fadd reassoc nsz arcp contract afn float %i.opn, %i.opp
  %i.ops = fadd reassoc nsz arcp contract afn float %i.opo, %i.opq
  %i.opt = fsub reassoc nsz arcp contract afn float %i.opr, %i.ops
  %i.opu = fmul reassoc nsz arcp contract afn float %i.opt, 5.000000e-01
  store float %i.opu, ptr %.19061086.i, align 4, !tbaa !22, !noalias !402
  %i.opv = getelementptr inbounds nuw i8, ptr %.19081085.i, i64 4
  %i.opw = getelementptr inbounds nuw i8, ptr %.19061086.i, i64 4
  %i.opx = getelementptr inbounds nuw i8, ptr %.19041087.i, i64 4
  %i.opy = getelementptr inbounds nuw i8, ptr %.19021088.i, i64 4
  %i.opz = getelementptr inbounds nuw i8, ptr %.19001089.i, i64 4
  %i.oqa = load float, ptr %i.opw, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.oqb = load float, ptr %i.opy, align 4, !tbaa !22, !noalias !402
  %i.oqc = fadd reassoc nsz arcp contract afn float %i.oqb, %i.oqa
  store float %i.oqc, ptr %i.opv, align 4, !tbaa !22, !noalias !402
  %i.oqd = load float, ptr %i.opz, align 4, !tbaa !22, !noalias !402
  %i.oqe = fadd reassoc nsz arcp contract afn float %i.oqd, %i.oqa
  store float %i.oqe, ptr %i.opx, align 4, !tbaa !22, !noalias !402
  %i.oqf = getelementptr inbounds nuw i8, ptr %.19081085.i, i64 8 ; 2 uses
  %i.oqg = getelementptr inbounds nuw i8, ptr %.19061086.i, i64 8 ; 2 uses
  %i.oqh = getelementptr inbounds nuw i8, ptr %.19041087.i, i64 8 ; 2 uses
  %i.oqi = getelementptr inbounds nuw i8, ptr %.19021088.i, i64 8 ; 2 uses
  %i.oqj = getelementptr inbounds nuw i8, ptr %.19001089.i, i64 8 ; 2 uses
  %i.oqk = getelementptr inbounds nuw i8, ptr %.08951090.i, i64 8 ; 2 uses
  %i.oql = getelementptr inbounds nuw i8, ptr %.08941091.i, i64 8 ; 2 uses
  %i.oqm = add nuw nsw i32 %.08931092.i, 2        ; 3 uses
  %i.oqn = icmp slt i32 %i.oqm, %i.npt
  br i1 %i.oqn, label %.lr.ph1094.i, label %._crit_edge1095.i, !llvm.loop !464

._crit_edge1095.i:                                ; preds = %.lr.ph1094.i, %bb.rc
  %.1908.lcssa.i = phi ptr [ %gep.i561, %bb.rc ], [ %i.oqf, %.lr.ph1094.i ]
  %.1906.lcssa.i = phi ptr [ %gep1125.i, %bb.rc ], [ %i.oqg, %.lr.ph1094.i ] ; 2 uses
  %.1904.lcssa.i = phi ptr [ %gep1127.i, %bb.rc ], [ %i.oqh, %.lr.ph1094.i ]
  %.1902.lcssa.i = phi ptr [ %gep1129.i, %bb.rc ], [ %i.oqi, %.lr.ph1094.i ]
  %.1900.lcssa.i = phi ptr [ %gep1131.i, %bb.rc ], [ %i.oqj, %.lr.ph1094.i ]
  %.0895.lcssa.i = phi ptr [ %i.ooj, %bb.rc ], [ %i.oqk, %.lr.ph1094.i ]
  %.0894.lcssa.i = phi ptr [ %i.oop, %bb.rc ], [ %i.oql, %.lr.ph1094.i ]
  %.0893.lcssa.i = phi i32 [ %i.npo, %bb.rc ], [ %i.oqm, %.lr.ph1094.i ]
  %i.oqo = icmp slt i32 %.0893.lcssa.i, %i.npq
  br i1 %i.oqo, label %bb.rd, label %bb.re

bb.rd:                                            ; preds = %._crit_edge1095.i
  %i.oqp = load float, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqq = load float, ptr %.0894.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqr = fadd reassoc nsz arcp contract afn float %i.oqq, %i.oqp
  store float %i.oqr, ptr %.0895.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqs = load float, ptr %.1908.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqt = load float, ptr %.1902.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqu = load float, ptr %.1904.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqv = load float, ptr %.1900.lcssa.i, align 4, !tbaa !22, !noalias !402
  %i.oqw = fadd reassoc nsz arcp contract afn float %i.oqs, %i.oqu
  %i.oqx = fadd reassoc nsz arcp contract afn float %i.oqt, %i.oqv
  %i.oqy = fsub reassoc nsz arcp contract afn float %i.oqw, %i.oqx
  %i.oqz = fmul reassoc nsz arcp contract afn float %i.oqy, 5.000000e-01
  store float %i.oqz, ptr %.1906.lcssa.i, align 4, !tbaa !22, !noalias !402
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %._crit_edge1095.i, %bb.rb, %._crit_edge1114.i
  %indvars.iv.next1276.i = add nuw nsw i64 %indvars.iv1275.i, 1 ; 2 uses
  %exitcond1120.not = icmp eq i64 %indvars.iv.next1276.i, %i.lzb
  %indvar.next3951 = add i64 %indvar3950, 1
  br i1 %exitcond1120.not, label %._crit_edge1123.i, label %.lr.ph1122.i

.preheader1013.i:                                 ; preds = %._crit_edge1135.i, %.preheader1014.i
  br i1 %i.lxj, label %.lr.ph1160.i, label %._crit_edge1161.i

.lr.ph1160.i:                                     ; preds = %.preheader1013.i
  %i.ora = add nuw nsw i32 %i.npo, 2              ; 3 uses
  %i.orb = add nsw i32 %i.npq, -2                 ; 4 uses
  %i.orc = sext i32 %i.orb to i64                 ; 3 uses
  br i1 %i.lyq, label %.lr.ph1143.i.preheader.preheader, label %._crit_edge1161.i

.lr.ph1143.i.preheader.preheader:                 ; preds = %.lr.ph1160.i
  %i.ord = zext nneg i32 %i.npo to i64            ; 3 uses
  %i.ore = add nuw nsw i64 %i.ord, 4
  %i.orf = add nsw i32 %.neg.i554, 6
  %i.org = add i32 %i.orf, %i.maw                 ; 2 uses
  %i.orh = sext i32 %i.org to i64
  %i.ori = zext nneg i32 %i.npo to i64            ; 3 uses
  %i.orj = add nuw nsw i64 %i.ori, 4
  %i.ork = sext i32 %i.org to i64
  %i.orl = zext nneg i32 %i.npo to i64            ; 3 uses
  %i.orm = add nuw nsw i64 %i.orl, 4
  %i.orn = add nsw i32 %.neg.i554, 6
  %i.oro = add i32 %i.orn, %i.maw
  %i.orp = sext i32 %i.oro to i64
  %i.orq = zext nneg i32 %i.npo to i64            ; 2 uses
  %i.orr = add i32 %.neg.i554, %i.maw
  %i.ors = add i32 %i.orr, 6
  %i.ort = sext i32 %i.ors to i64
  %i.oru = zext nneg i32 %i.npo to i64            ; 2 uses
  %i.orv = add i32 %.neg.i554, %i.maw
  %i.orw = add i32 %i.orv, 6
  %i.orx = sext i32 %i.orw to i64
  %i.ory = zext nneg i32 %i.npo to i64            ; 2 uses
  %i.orz = add i32 %.neg.i554, %i.maw
  %i.osa = add i32 %i.orz, 6
  %i.osb = sext i32 %i.osa to i64
  br label %.lr.ph1143.i.preheader

.preheader1009.i:                                 ; preds = %.preheader1009.i.preheader, %._crit_edge1135.i
  %indvars.iv1281.i = phi i64 [ %indvars.iv.next1282.i, %._crit_edge1135.i ], [ 4, %.preheader1009.i.preheader ] ; 3 uses
  %i.osc = mul nuw nsw i64 %indvars.iv1281.i, 136 ; 5 uses
  %indvars.iv1281.tr.i = trunc i64 %indvars.iv1281.i to i32
  %i.osd = shl i32 %indvars.iv1281.tr.i, 1
  %i.ose = and i32 %i.osd, 14                     ; 5 uses
  br i1 %i.nvm, label %.epil.preheader4755, label %.preheader1009.i.new

.preheader1009.i.new:                             ; preds = %.preheader1009.i
  %i.osf = shl nuw nsw i32 %i.ose, 1
  %i.osg = lshr i32 %.fr1043, %i.osf
  %i.osh = and i32 %i.osg, 3
  %i.osi = zext nneg i32 %i.osh to i64
  %i.osj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osi
  %i.osk = load ptr, ptr %i.osj, align 8, !tbaa !407, !noalias !408
  %i.osl = shl nuw nsw i32 %i.ose, 1
  %i.osm = or disjoint i32 %i.osl, 2
  %i.osn = lshr i32 %.fr1043, %i.osm
  %i.oso = and i32 %i.osn, 3
  %i.osp = zext nneg i32 %i.oso to i64
  %i.osq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osp
  %i.osr = load ptr, ptr %i.osq, align 8, !tbaa !407, !noalias !408
  %i.oss = shl nuw nsw i32 %i.ose, 1
  %i.ost = lshr i32 %.fr1043, %i.oss
  %i.osu = and i32 %i.ost, 3
  %i.osv = zext nneg i32 %i.osu to i64
  %i.osw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.osv
  %i.osx = load ptr, ptr %i.osw, align 8, !tbaa !407, !noalias !408
  %i.osy = shl nuw nsw i32 %i.ose, 1
  %i.osz = or disjoint i32 %i.osy, 2
  %i.ota = lshr i32 %.fr1043, %i.osz
  %i.otb = and i32 %i.ota, 3
  %i.otc = zext nneg i32 %i.otb to i64
  %i.otd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.otc
  %i.ote = load ptr, ptr %i.otd, align 8, !tbaa !407, !noalias !408
  br label %bb.rg

._crit_edge1135.i.unr-lcssa:                      ; preds = %bb.rg
  br i1 %lcmp.mod4760.not, label %._crit_edge1135.i, label %.epil.preheader4755

.epil.preheader4755:                              ; preds = %._crit_edge1135.i.unr-lcssa, %.preheader1009.i
  %indvars.iv1278.i.epil.init = phi i64 [ 4, %.preheader1009.i ], [ %indvars.iv.next1279.i.3, %._crit_edge1135.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod4761)
  br label %bb.rf

bb.rf:                                            ; preds = %bb.rf, %.epil.preheader4755
  %indvars.iv1278.i.epil = phi i64 [ %indvars.iv1278.i.epil.init, %.epil.preheader4755 ], [ %indvars.iv.next1279.i.epil, %bb.rf ] ; 3 uses
  %epil.iter4759 = phi i64 [ 0, %.epil.preheader4755 ], [ %epil.iter4759.next, %bb.rf ]
  %i.otf = add nuw nsw i64 %indvars.iv1278.i.epil, %i.osc ; 2 uses
  %i.otg = trunc nuw nsw i64 %indvars.iv1278.i.epil to i32
  %i.oth = and i32 %i.otg, 1
  %i.oti = or disjoint i32 %i.oth, %i.ose
  %i.otj = shl nuw nsw i32 %i.oti, 1
  %i.otk = lshr i32 %.fr1043, %i.otj
  %i.otl = and i32 %i.otk, 3
  %i.otm = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.otf
  %i.otn = load float, ptr %i.otm, align 4, !tbaa !22, !noalias !402
  %i.oto = zext nneg i32 %i.otl to i64
  %i.otp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.oto
  %i.otq = load ptr, ptr %i.otp, align 8, !tbaa !407, !noalias !408
  %i.otr = getelementptr inbounds nuw [4 x i8], ptr %i.otq, i64 %i.otf
  store float %i.otn, ptr %i.otr, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.epil = add nuw nsw i64 %indvars.iv1278.i.epil, 1
  %epil.iter4759.next = add i64 %epil.iter4759, 1 ; 2 uses
  %epil.iter4759.cmp.not = icmp eq i64 %epil.iter4759.next, %xtraiter4758
  br i1 %epil.iter4759.cmp.not, label %._crit_edge1135.i, label %bb.rf, !llvm.loop !465

._crit_edge1135.i:                                ; preds = %bb.rf, %._crit_edge1135.i.unr-lcssa
  %indvars.iv.next1282.i = add nuw nsw i64 %indvars.iv1281.i, 1 ; 2 uses
  %exitcond1126.not = icmp eq i64 %indvars.iv.next1282.i, %smax1125
  br i1 %exitcond1126.not, label %.preheader1013.i, label %.preheader1009.i

bb.rg:                                            ; preds = %bb.rg, %.preheader1009.i.new
  %indvars.iv1278.i = phi i64 [ 4, %.preheader1009.i.new ], [ %indvars.iv.next1279.i.3, %bb.rg ] ; 5 uses
  %niter4763 = phi i64 [ 0, %.preheader1009.i.new ], [ %niter4763.next.3, %bb.rg ]
  %i.ots = add nuw nsw i64 %indvars.iv1278.i, %i.osc ; 2 uses
  %i.ott = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.ots
  %i.otu = load float, ptr %i.ott, align 16, !tbaa !22, !noalias !402
  %i.otv = getelementptr inbounds nuw [4 x i8], ptr %i.osk, i64 %i.ots
  store float %i.otu, ptr %i.otv, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i = or disjoint i64 %indvars.iv1278.i, 1
  %i.otw = add nuw nsw i64 %indvars.iv.next1279.i, %i.osc ; 2 uses
  %i.otx = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.otw
  %i.oty = load float, ptr %i.otx, align 4, !tbaa !22, !noalias !402
  %i.otz = getelementptr inbounds nuw [4 x i8], ptr %i.osr, i64 %i.otw
  store float %i.oty, ptr %i.otz, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.1 = or disjoint i64 %indvars.iv1278.i, 2
  %i.oua = add nuw nsw i64 %indvars.iv.next1279.i.1, %i.osc ; 2 uses
  %i.oub = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.oua
  %i.ouc = load float, ptr %i.oub, align 8, !tbaa !22, !noalias !402
  %i.oud = getelementptr inbounds nuw [4 x i8], ptr %i.osx, i64 %i.oua
  store float %i.ouc, ptr %i.oud, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.2 = or disjoint i64 %indvars.iv1278.i, 3
  %i.oue = add nuw nsw i64 %indvars.iv.next1279.i.2, %i.osc ; 2 uses
  %i.ouf = getelementptr inbounds nuw [4 x i8], ptr %i.lxd, i64 %i.oue
  %i.oug = load float, ptr %i.ouf, align 4, !tbaa !22, !noalias !402
  %i.ouh = getelementptr inbounds nuw [4 x i8], ptr %i.ote, i64 %i.oue
  store float %i.oug, ptr %i.ouh, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1279.i.3 = add nuw nsw i64 %indvars.iv1278.i, 4 ; 2 uses
  %niter4763.next.3 = add i64 %niter4763, 4       ; 2 uses
  %niter4763.ncmp.3 = icmp eq i64 %niter4763.next.3, %unroll_iter4762
  br i1 %niter4763.ncmp.3, label %._crit_edge1135.i.unr-lcssa, label %bb.rg

._crit_edge1161.i:                                ; preds = %._crit_edge1158.i.loopexit, %.lr.ph1160.i, %.preheader1013.i
  %i.oui = select i1 %i.npn, i32 4, i32 8         ; 3 uses
  %i.ouj = or disjoint i32 %i.oui, %i.mas         ; 7 uses
  %.neg951.i = select i1 %i.npp, i32 -4, i32 -8   ; 2 uses
  %i.ouk = add nsw i32 %i.mau, %.neg951.i         ; 3 uses
  br i1 %i.lyu, label %.lr.ph1175.i, label %._crit_edge1176.split.i

.lr.ph1175.i:                                     ; preds = %._crit_edge1161.i
  %i.oul = icmp slt i32 %i.ouj, %i.ouk
  %i.oum = load ptr, ptr @lmmse_gamma_out, align 8, !noalias !408 ; 7 uses
  %i.oun = icmp eq ptr %i.oum, null
  br i1 %i.oul, label %.lr.ph1168.i.preheader, label %._crit_edge1176.split.i

.lr.ph1168.i.preheader:                           ; preds = %.lr.ph1175.i
  %reass.sub = sub nsw i32 %i.ouj, %i.mas
  %.reass1171.i = add nsw i32 %reass.sub, 4
  %i.ouo = add i32 %.neg951.i, %i.mau             ; 2 uses
  %i.oup = add i32 %i.ouo, %i.mao
  %i.ouq = sub i32 %i.oup, %i.oui                 ; 2 uses
  %i.our = zext i32 %i.ouq to i64
  %i.ous = add nuw nsw i64 %i.our, 1              ; 2 uses
  %i.out = add i32 %i.ouo, %i.man
  %i.ouu = sub i32 %i.out, %i.oui                 ; 2 uses
  %i.ouv = zext i32 %i.ouu to i64
  %i.ouw = add nuw nsw i64 %i.ouv, 1              ; 2 uses
  %min.iters.check3703 = icmp ult i32 %i.ouu, 7
  %n.vec3705 = and i64 %i.ouw, 8589934584         ; 5 uses
  %i.oux = trunc i64 %n.vec3705 to i32
  %i.ouy = add i32 %i.ouj, %i.oux
  %i.ouz = shl nuw nsw i64 %n.vec3705, 2          ; 3 uses
  %i.ova = shl nuw nsw i64 %n.vec3705, 4
  %cmp.n3738 = icmp eq i64 %i.ouw, %n.vec3705
  %min.iters.check3680 = icmp ult i32 %i.ouq, 7
  %n.vec3682 = and i64 %i.ous, 8589934584         ; 5 uses
  %i.ovb = trunc i64 %n.vec3682 to i32
  %i.ovc = add i32 %i.ouj, %i.ovb
  %i.ovd = shl nuw nsw i64 %n.vec3682, 2          ; 3 uses
  %i.ove = shl nuw nsw i64 %n.vec3682, 4
  %cmp.n3696 = icmp eq i64 %i.ous, %n.vec3682
  br label %.lr.ph1168.i

.lr.ph1143.i.preheader:                           ; preds = %.lr.ph1143.i.preheader.preheader, %._crit_edge1158.i.loopexit
  %.08901159.i = phi i32 [ %i.plg, %._crit_edge1158.i.loopexit ], [ 0, %.lr.ph1143.i.preheader.preheader ]
  br label %.lr.ph1143.i

.lr.ph1143.i:                                     ; preds = %.lr.ph1143.i.preheader, %._crit_edge1140.i
  %indvar3893 = phi i64 [ 0, %.lr.ph1143.i.preheader ], [ %indvar.next3894, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1287.i = phi i64 [ %i.lyw, %.lr.ph1143.i.preheader ], [ %indvars.iv.next1288.i, %._crit_edge1140.i ] ; 3 uses
  %i.ovf = mul i64 %indvar3893, 544               ; 4 uses
  %scevgep3895 = getelementptr i8, ptr %i.lzn, i64 %i.ovf
  %scevgep3897 = getelementptr i8, ptr %i.lzp, i64 %i.ovf
  %indvars.iv1287.tr.i = trunc i64 %indvars.iv1287.i to i32
  %i.ovg = shl i32 %indvars.iv1287.tr.i, 1
  %i.ovh = and i32 %i.ovg, 14                     ; 2 uses
  %i.ovi = shl nuw nsw i32 %i.ovh, 1
  %i.ovj = lshr i32 %.fr1043, %i.ovi              ; 3 uses
  %i.ovk = and i32 %i.ovj, 1                      ; 2 uses
  %i.ovl = or disjoint i32 %i.ovk, %i.ora         ; 2 uses
  %i.ovm = icmp slt i32 %i.ovl, %i.orb
  br i1 %i.ovm, label %.lr.ph1139.i, label %._crit_edge1140.i

.lr.ph1139.i:                                     ; preds = %.lr.ph1143.i
  %i.ovn = or disjoint i32 %i.ovk, %i.ovh
  %i.ovo = shl nuw nsw i32 %i.ovn, 1
  %i.ovp = lshr i32 %.fr1043, %i.ovo
  %i.ovq = and i32 %i.ovp, 3
  %i.ovr = mul nuw nsw i64 %indvars.iv1287.i, 136 ; 2 uses
  %i.ovs = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.ovr ; 2 uses
  %i.ovt = zext nneg i32 %i.ovq to i64
  %i.ovu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ovt
  %i.ovv = load ptr, ptr %i.ovu, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.ovw = getelementptr inbounds nuw [4 x i8], ptr %i.ovv, i64 %i.ovr ; 2 uses
  %i.ovx = zext nneg i32 %i.ovl to i64            ; 5 uses
  %i.ovy = and i32 %i.ovj, 1
  %i.ovz = zext nneg i32 %i.ovy to i64            ; 2 uses
  %i.owa = or disjoint i64 %i.orq, %i.ovz
  %i.owb = add nuw nsw i64 %i.owa, 4
  %i.owc = call i64 @llvm.smax.i64(i64 %i.owb, i64 %i.ort)
  %i.owd = add nsw i64 %i.owc, -3
  %i.owe = or disjoint i64 %i.orq, %i.ovz
  %i.owf = sub i64 %i.owd, %i.owe                 ; 2 uses
  %i.owg = lshr i64 %i.owf, 1
  %i.owh = add nuw i64 %i.owg, 1                  ; 2 uses
  %min.iters.check3906 = icmp ult i64 %i.owf, 8
  br i1 %min.iters.check3906, label %scalar.ph3905.preheader, label %vector.memcheck3892

scalar.ph3905.preheader:                          ; preds = %vector.body3912, %vector.memcheck3892, %.lr.ph1139.i
  %indvars.iv1284.i.ph = phi i64 [ %i.ovx, %vector.memcheck3892 ], [ %i.ovx, %.lr.ph1139.i ], [ %i.oxe, %vector.body3912 ]
  br label %scalar.ph3905

vector.memcheck3892:                              ; preds = %.lr.ph1139.i
  %i.owi = and i32 %i.ovj, 1
  %i.owj = zext nneg i32 %i.owi to i64            ; 3 uses
  %i.owk = or disjoint i64 %i.orl, %i.owj
  %i.owl = shl nuw nsw i64 %i.owk, 2              ; 4 uses
  %scevgep3896 = getelementptr i8, ptr %scevgep3895, i64 %i.owl
  %i.owm = or disjoint i64 %i.orm, %i.owj
  %smax3898 = call i64 @llvm.smax.i64(i64 %i.owm, i64 %i.orp)
  %i.own = add nuw i64 %smax3898, 4611686018427387901
  %i.owo = or disjoint i64 %i.orl, %i.owj
  %i.owp = sub nuw i64 %i.own, %i.owo
  %i.owq = shl i64 %i.owp, 2
  %i.owr = and i64 %i.owq, -8                     ; 2 uses
  %i.ows = getelementptr i8, ptr %scevgep3897, i64 %i.owr
  %scevgep3899 = getelementptr i8, ptr %i.ows, i64 %i.owl
  %i.owt = getelementptr i8, ptr %i.ovv, i64 %i.lzf
  %i.owu = getelementptr i8, ptr %i.owt, i64 8
  %i.owv = getelementptr i8, ptr %i.owu, i64 %i.ovf
  %scevgep3900 = getelementptr i8, ptr %i.owv, i64 %i.owl
  %i.oww = getelementptr i8, ptr %i.ovv, i64 %i.lzf
  %i.owx = getelementptr i8, ptr %i.oww, i64 2188
  %i.owy = getelementptr i8, ptr %i.owx, i64 %i.ovf
  %i.owz = getelementptr i8, ptr %i.owy, i64 %i.owr
  %scevgep3901 = getelementptr i8, ptr %i.owz, i64 %i.owl
  %bound03902 = icmp ult ptr %scevgep3896, %scevgep3901
  %bound13903 = icmp ult ptr %scevgep3900, %scevgep3899
  %found.conflict3904 = and i1 %bound03902, %bound13903
  br i1 %found.conflict3904, label %scalar.ph3905.preheader, label %vector.ph3907

vector.ph3907:                                    ; preds = %vector.memcheck3892
  %i.oxa = and i64 %i.owh, 3                      ; 2 uses
  %i.oxb = icmp eq i64 %i.oxa, 0
  %i.oxc = select i1 %i.oxb, i64 4, i64 %i.oxa
  %n.vec3908 = sub i64 %i.owh, %i.oxc             ; 2 uses
  %i.oxd = shl i64 %n.vec3908, 1
  %i.oxe = add i64 %i.oxd, %i.ovx
  %broadcast.splatinsert3909 = insertelement <4 x i64> poison, i64 %i.ovx, i64 0
  %broadcast.splat3910 = shufflevector <4 x i64> %broadcast.splatinsert3909, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3911 = add nuw nsw <4 x i64> %broadcast.splat3910, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4887 = getelementptr [4 x i8], ptr %i.ovw, i64 %i.ovx
  br label %vector.body3912

vector.body3912:                                  ; preds = %vector.body3912, %vector.ph3907
  %index3913 = phi i64 [ 0, %vector.ph3907 ], [ %index.next3940, %vector.body3912 ] ; 2 uses
  %vec.ind3914 = phi <4 x i64> [ %induction3911, %vector.ph3907 ], [ %vec.ind.next3941, %vector.body3912 ] ; 2 uses
  %wide.gep3915 = getelementptr inbounds nuw [4 x i8], ptr %i.ovs, <4 x i64> %vec.ind3914 ; 2 uses
  %i.oxf = extractelement <4 x ptr> %wide.gep3915, i64 0 ; 4 uses
  %.idx4576 = shl nuw i64 %index3913, 3
  %gep4888 = getelementptr i8, ptr %invariant.gep4887, i64 %.idx4576 ; 7 uses
  %i.oxg = getelementptr inbounds i8, ptr %gep4888, i64 -8
  %wide.vec3916 = load <8 x float>, ptr %i.oxg, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3917 = shufflevector <8 x float> %wide.vec3916, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxh = getelementptr inbounds i8, ptr %gep4888, i64 -4
  %wide.vec3918 = load <8 x float>, ptr %i.oxh, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3919 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3920 = shufflevector <8 x float> %wide.vec3918, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.oxi = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3917, %strided.vec3920
  %i.oxj = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxi)
  %i.oxk = getelementptr inbounds nuw i8, ptr %i.oxf, i64 4
  %wide.vec3921 = load <8 x float>, ptr %i.oxk, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3922 = shufflevector <8 x float> %wide.vec3921, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxl = getelementptr inbounds i8, ptr %i.oxf, i64 -4
  %wide.vec3923 = load <8 x float>, ptr %i.oxl, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3924 = shufflevector <8 x float> %wide.vec3923, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oxm = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3922, %strided.vec3924
  %i.oxn = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxm)
  %i.oxo = fadd reassoc nsz arcp contract afn <4 x float> %i.oxn, splat (float 1.000000e+00) ; 2 uses
  %i.oxp = fadd reassoc nsz arcp contract afn <4 x float> %i.oxo, %i.oxj
  %i.oxq = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxp ; 2 uses
  %i.oxr = getelementptr inbounds nuw i8, ptr %gep4888, i64 4
  %wide.vec3925 = load <8 x float>, ptr %i.oxr, align 4, !tbaa !22, !alias.scope !466, !noalias !402 ; 2 uses
  %strided.vec3926 = shufflevector <8 x float> %wide.vec3925, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3927 = shufflevector <8 x float> %wide.vec3925, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.oxs = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3927, %strided.vec3920
  %i.oxt = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxs)
  %i.oxu = fadd reassoc nsz arcp contract afn <4 x float> %i.oxo, %i.oxt
  %i.oxv = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oxu ; 2 uses
  %i.oxw = getelementptr inbounds i8, ptr %gep4888, i64 -1088
  %wide.vec3928 = load <8 x float>, ptr %i.oxw, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3929 = shufflevector <8 x float> %wide.vec3928, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oxx = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3929, %strided.vec3920
  %i.oxy = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oxx)
  %i.oxz = getelementptr inbounds nuw i8, ptr %i.oxf, i64 544
  %wide.vec3930 = load <8 x float>, ptr %i.oxz, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3931 = shufflevector <8 x float> %wide.vec3930, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oya = getelementptr inbounds i8, ptr %i.oxf, i64 -544
  %wide.vec3932 = load <8 x float>, ptr %i.oya, align 4, !tbaa !22, !alias.scope !469, !noalias !402
  %strided.vec3933 = shufflevector <8 x float> %wide.vec3932, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.oyb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3931, %strided.vec3933
  %i.oyc = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyb)
  %i.oyd = fadd reassoc nsz arcp contract afn <4 x float> %i.oyc, splat (float 1.000000e+00) ; 2 uses
  %i.oye = fadd reassoc nsz arcp contract afn <4 x float> %i.oyd, %i.oxy
  %i.oyf = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oye ; 2 uses
  %i.oyg = getelementptr inbounds nuw i8, ptr %gep4888, i64 1088
  %wide.vec3934 = load <8 x float>, ptr %i.oyg, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3935 = shufflevector <8 x float> %wide.vec3934, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyh = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3935, %strided.vec3920
  %i.oyi = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.oyh)
  %i.oyj = fadd reassoc nsz arcp contract afn <4 x float> %i.oyd, %i.oyi
  %i.oyk = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.oyj ; 2 uses
  %i.oyl = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3924, %strided.vec3919
  %i.oym = fmul reassoc nsz arcp contract afn <4 x float> %i.oyl, %i.oxq
  %i.oyn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3922, %strided.vec3926
  %i.oyo = fmul reassoc nsz arcp contract afn <4 x float> %i.oyn, %i.oxv
  %i.oyp = fadd reassoc nsz arcp contract afn <4 x float> %i.oym, %i.oyo
  %i.oyq = getelementptr inbounds i8, ptr %gep4888, i64 -544
  %wide.vec3936 = load <8 x float>, ptr %i.oyq, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3937 = shufflevector <8 x float> %wide.vec3936, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3933, %strided.vec3937
  %i.oys = fmul reassoc nsz arcp contract afn <4 x float> %i.oyr, %i.oyf
  %i.oyt = fadd reassoc nsz arcp contract afn <4 x float> %i.oyp, %i.oys
  %i.oyu = getelementptr inbounds nuw i8, ptr %gep4888, i64 544
  %wide.vec3938 = load <8 x float>, ptr %i.oyu, align 4, !tbaa !22, !alias.scope !466, !noalias !402
  %strided.vec3939 = shufflevector <8 x float> %wide.vec3938, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.oyv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3931, %strided.vec3939
  %i.oyw = fmul reassoc nsz arcp contract afn <4 x float> %i.oyv, %i.oyk
  %i.oyx = fadd reassoc nsz arcp contract afn <4 x float> %i.oyt, %i.oyw
  %i.oyy = fadd reassoc nsz arcp contract afn <4 x float> %i.oxv, %i.oxq
  %i.oyz = fadd reassoc nsz arcp contract afn <4 x float> %i.oyy, %i.oyf
  %i.oza = fadd reassoc nsz arcp contract afn <4 x float> %i.oyz, %i.oyk
  %i.ozb = fdiv reassoc nsz arcp contract afn <4 x float> %i.oyx, %i.oza
  %i.ozc = fadd reassoc nsz arcp contract afn <4 x float> %i.ozb, %strided.vec3920
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ozc, <4 x ptr> align 4 %wide.gep3915, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !469, !noalias !471
  %index.next3940 = add nuw i64 %index3913, 4     ; 2 uses
  %vec.ind.next3941 = add nuw nsw <4 x i64> %vec.ind3914, splat (i64 8)
  %i.ozd = icmp eq i64 %index.next3940, %n.vec3908
  br i1 %i.ozd, label %scalar.ph3905.preheader, label %vector.body3912, !llvm.loop !472

._crit_edge1140.i:                                ; preds = %scalar.ph3905, %.lr.ph1143.i
  %indvars.iv.next1288.i = add nuw nsw i64 %indvars.iv1287.i, 1 ; 2 uses
  %exitcond1130.not = icmp eq i64 %indvars.iv.next1288.i, %i.lzd
  %indvar.next3894 = add i64 %indvar3893, 1
  br i1 %exitcond1130.not, label %.lr.ph1151.i, label %.lr.ph1143.i

scalar.ph3905:                                    ; preds = %scalar.ph3905.preheader, %scalar.ph3905
  %indvars.iv1284.i = phi i64 [ %indvars.iv.next1285.i, %scalar.ph3905 ], [ %indvars.iv1284.i.ph, %scalar.ph3905.preheader ] ; 3 uses
  %i.oze = getelementptr inbounds nuw [4 x i8], ptr %i.ovs, i64 %indvars.iv1284.i ; 5 uses
  %i.ozf = getelementptr inbounds nuw [4 x i8], ptr %i.ovw, i64 %indvars.iv1284.i ; 9 uses
  %i.ozg = getelementptr inbounds i8, ptr %i.ozf, i64 -4
  %i.ozh = getelementptr inbounds nuw i8, ptr %i.ozf, i64 4
  %i.ozi = getelementptr inbounds nuw i8, ptr %i.oze, i64 544
  %i.ozj = getelementptr inbounds i8, ptr %i.oze, i64 -544
  %i.ozk = getelementptr inbounds nuw i8, ptr %i.oze, i64 4
  %i.ozl = getelementptr inbounds i8, ptr %i.oze, i64 -4
  %i.ozm = load float, ptr %i.ozi, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozn = load float, ptr %i.ozj, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozo = load float, ptr %i.ozk, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozp = load float, ptr %i.ozl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.ozq = fsub reassoc nsz arcp contract afn float %i.ozm, %i.ozn
  %i.ozr = fsub reassoc nsz arcp contract afn float %i.ozo, %i.ozp
  %i.ozs = insertelement <2 x float> poison, float %i.ozr, i64 0
  %i.ozt = insertelement <2 x float> %i.ozs, float %i.ozq, i64 1
  %i.ozu = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ozt)
  %i.ozv = shufflevector <2 x float> %i.ozu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ozw = fadd reassoc nsz arcp contract afn <4 x float> %i.ozv, splat (float 1.000000e+00)
  %i.ozx = getelementptr inbounds nuw i8, ptr %i.ozf, i64 544
  %i.ozy = getelementptr inbounds i8, ptr %i.ozf, i64 -544
  %i.ozz = load float, ptr %i.ozh, align 4, !tbaa !22, !noalias !402
  %i.paa = load float, ptr %i.ozf, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pab = load float, ptr %i.ozg, align 4, !tbaa !22, !noalias !402
  %i.pac = load float, ptr %i.ozx, align 4, !tbaa !22, !noalias !402
  %i.pad = load float, ptr %i.ozy, align 4, !tbaa !22, !noalias !402
  %i.pae = getelementptr inbounds nuw i8, ptr %i.ozf, i64 1088
  %i.paf = getelementptr inbounds i8, ptr %i.ozf, i64 -1088
  %i.pag = getelementptr inbounds nuw i8, ptr %i.ozf, i64 8
  %i.pah = getelementptr inbounds i8, ptr %i.ozf, i64 -8
  %i.pai = load float, ptr %i.pae, align 4, !tbaa !22, !noalias !402
  %i.paj = load float, ptr %i.paf, align 4, !tbaa !22, !noalias !402
  %i.pak = load float, ptr %i.pag, align 4, !tbaa !22, !noalias !402
  %i.pal = load float, ptr %i.pah, align 4, !tbaa !22, !noalias !402
  %i.pam = insertelement <4 x float> poison, float %i.pal, i64 0
  %i.pan = insertelement <4 x float> %i.pam, float %i.pak, i64 1
  %i.pao = insertelement <4 x float> %i.pan, float %i.paj, i64 2
  %i.pap = insertelement <4 x float> %i.pao, float %i.pai, i64 3
  %i.paq = insertelement <4 x float> poison, float %i.paa, i64 0
  %i.par = shufflevector <4 x float> %i.paq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pas = fsub reassoc nsz arcp contract afn <4 x float> %i.pap, %i.par
  %i.pat = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pas)
  %i.pau = fadd reassoc nsz arcp contract afn <4 x float> %i.ozw, %i.pat
  %i.pav = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pau ; 2 uses
  %i.paw = fsub reassoc nsz arcp contract afn float %i.ozm, %i.pac
  %i.pax = fsub reassoc nsz arcp contract afn float %i.ozn, %i.pad
  %i.pay = fsub reassoc nsz arcp contract afn float %i.ozo, %i.ozz
  %i.paz = fsub reassoc nsz arcp contract afn float %i.ozp, %i.pab
  %i.pba = insertelement <4 x float> poison, float %i.paz, i64 0
  %i.pbb = insertelement <4 x float> %i.pba, float %i.pay, i64 1
  %i.pbc = insertelement <4 x float> %i.pbb, float %i.pax, i64 2
  %i.pbd = insertelement <4 x float> %i.pbc, float %i.paw, i64 3
  %i.pbe = fmul reassoc nsz arcp contract afn <4 x float> %i.pbd, %i.pav
  %i.pbf = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pbe)
  %i.pbg = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pav)
  %i.pbh = fdiv reassoc nsz arcp contract afn float %i.pbf, %i.pbg
  %i.pbi = fadd reassoc nsz arcp contract afn float %i.pbh, %i.paa
  store float %i.pbi, ptr %i.oze, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1285.i = add nuw nsw i64 %indvars.iv1284.i, 2 ; 2 uses
  %i.pbj = icmp slt i64 %indvars.iv.next1285.i, %i.orc
  br i1 %i.pbj, label %scalar.ph3905, label %._crit_edge1140.i, !llvm.loop !473

.lr.ph1151.i:                                     ; preds = %._crit_edge1140.i, %._crit_edge1149.i
  %indvar3806 = phi i64 [ %indvar.next3807, %._crit_edge1149.i ], [ 0, %._crit_edge1140.i ] ; 2 uses
  %indvars.iv1293.i = phi i64 [ %indvars.iv.next1294.i, %._crit_edge1149.i ], [ %i.lyw, %._crit_edge1140.i ] ; 3 uses
  %i.pbk = mul i64 %indvar3806, 544               ; 4 uses
  %i.pbl = add i64 %i.lzg, %i.pbk
  %i.pbm = add i64 %i.lzh, %i.pbk
  %scevgep3813 = getelementptr i8, ptr %i.lzr, i64 %i.pbk
  %scevgep3815 = getelementptr i8, ptr %i.lzt, i64 %i.pbk
  %indvars.iv1293.tr.i = trunc i64 %indvars.iv1293.i to i32
  %i.pbn = shl i32 %indvars.iv1293.tr.i, 1
  %i.pbo = and i32 %i.pbn, 14                     ; 2 uses
  %.tr.i968.i = shl nuw nsw i32 %i.pbo, 1
  %i.pbp = or disjoint i32 %.tr.i968.i, 2
  %i.pbq = lshr i32 %.fr1043, %i.pbp              ; 3 uses
  %i.pbr = and i32 %i.pbq, 1                      ; 2 uses
  %i.pbs = or disjoint i32 %i.pbr, %i.ora         ; 2 uses
  %i.pbt = icmp slt i32 %i.pbs, %i.orb
  br i1 %i.pbt, label %.preheader.lr.ph.i559, label %._crit_edge1149.i

.preheader.lr.ph.i559:                            ; preds = %.lr.ph1151.i
  %i.pbu = or disjoint i32 %i.pbr, %i.pbo
  %i.pbv = shl nuw nsw i32 %i.pbu, 1
  %i.pbw = xor i32 %i.pbv, 2
  %i.pbx = lshr i32 %.fr1043, %i.pbw
  %i.pby = and i32 %i.pbx, 3                      ; 2 uses
  %i.pbz = mul nuw nsw i64 %indvars.iv1293.i, 136 ; 3 uses
  %i.pca = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.pbz ; 2 uses
  %i.pcb = zext nneg i32 %i.pby to i64
  %i.pcc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pcb
  %i.pcd = zext nneg i32 %i.pbs to i64            ; 5 uses
  %i.pce = load ptr, ptr %i.pcc, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pcf = getelementptr inbounds nuw [4 x i8], ptr %i.pce, i64 %i.pbz ; 2 uses
  %i.pcg = sub nsw i32 2, %i.pby
  %i.pch = sext i32 %i.pcg to i64
  %i.pci = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pch
  %i.pcj = load ptr, ptr %i.pci, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pck = getelementptr inbounds nuw [4 x i8], ptr %i.pcj, i64 %i.pbz ; 2 uses
  %i.pcl = and i32 %i.pbq, 1
  %i.pcm = zext nneg i32 %i.pcl to i64            ; 2 uses
  %i.pcn = or disjoint i64 %i.oru, %i.pcm
  %i.pco = add nuw nsw i64 %i.pcn, 4
  %i.pcp = call i64 @llvm.smax.i64(i64 %i.pco, i64 %i.orx)
  %i.pcq = add nsw i64 %i.pcp, -3
  %i.pcr = or disjoint i64 %i.oru, %i.pcm
  %i.pcs = sub i64 %i.pcq, %i.pcr                 ; 2 uses
  %i.pct = lshr i64 %i.pcs, 1
  %i.pcu = add nuw i64 %i.pct, 1                  ; 2 uses
  %min.iters.check3829 = icmp ult i64 %i.pcs, 8
  br i1 %min.iters.check3829, label %.preheader.i560.preheader, label %vector.memcheck3805

vector.memcheck3805:                              ; preds = %.preheader.lr.ph.i559
  %i.pcv = and i32 %i.pbq, 1
  %i.pcw = zext nneg i32 %i.pcv to i64            ; 3 uses
  %i.pcx = or disjoint i64 %i.ori, %i.pcw
  %i.pcy = shl nuw nsw i64 %i.pcx, 2              ; 4 uses
  %i.pcz = add i64 %i.pbl, %i.pcy                 ; 2 uses
  %scevgep3808 = getelementptr i8, ptr %i.pce, i64 %i.pcz ; 2 uses
  %i.pda = or disjoint i64 %i.orj, %i.pcw
  %smax3809 = call i64 @llvm.smax.i64(i64 %i.pda, i64 %i.ork)
  %i.pdb = add nuw i64 %smax3809, 4611686018427387901
  %i.pdc = or disjoint i64 %i.ori, %i.pcw
  %i.pdd = sub nuw i64 %i.pdb, %i.pdc
  %i.pde = shl i64 %i.pdd, 2
  %i.pdf = and i64 %i.pde, -8                     ; 2 uses
  %i.pdg = add i64 %i.pbm, %i.pdf
  %i.pdh = add i64 %i.pdg, %i.pcy                 ; 2 uses
  %scevgep3810 = getelementptr i8, ptr %i.pce, i64 %i.pdh ; 2 uses
  %scevgep3811 = getelementptr i8, ptr %i.pcj, i64 %i.pcz ; 2 uses
  %scevgep3812 = getelementptr i8, ptr %i.pcj, i64 %i.pdh ; 2 uses
  %scevgep3814 = getelementptr i8, ptr %scevgep3813, i64 %i.pcy ; 2 uses
  %i.pdi = getelementptr i8, ptr %scevgep3815, i64 %i.pdf
  %scevgep3816 = getelementptr i8, ptr %i.pdi, i64 %i.pcy ; 2 uses
  %bound03817 = icmp ult ptr %scevgep3808, %scevgep3812
  %bound13818 = icmp ult ptr %scevgep3811, %scevgep3810
  %found.conflict3819 = and i1 %bound03817, %bound13818
  %bound03820 = icmp ult ptr %scevgep3808, %scevgep3816
  %bound13821 = icmp ult ptr %scevgep3814, %scevgep3810
  %found.conflict3822 = and i1 %bound03820, %bound13821
  %conflict.rdx3823 = or i1 %found.conflict3819, %found.conflict3822
  %bound03824 = icmp ult ptr %scevgep3811, %scevgep3816
  %bound13825 = icmp ult ptr %scevgep3814, %scevgep3812
  %found.conflict3826 = and i1 %bound03824, %bound13825
  %conflict.rdx3827 = or i1 %conflict.rdx3823, %found.conflict3826
  br i1 %conflict.rdx3827, label %.preheader.i560.preheader, label %vector.ph3830

vector.ph3830:                                    ; preds = %vector.memcheck3805
  %i.pdj = and i64 %i.pcu, 3                      ; 2 uses
  %i.pdk = icmp eq i64 %i.pdj, 0
  %i.pdl = select i1 %i.pdk, i64 4, i64 %i.pdj
  %n.vec3831 = sub i64 %i.pcu, %i.pdl             ; 2 uses
  %i.pdm = shl i64 %n.vec3831, 1
  %i.pdn = add i64 %i.pdm, %i.pcd
  %broadcast.splatinsert3832 = insertelement <4 x i64> poison, i64 %i.pcd, i64 0
  %broadcast.splat3833 = shufflevector <4 x i64> %broadcast.splatinsert3832, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3834 = add nuw nsw <4 x i64> %broadcast.splat3833, <i64 0, i64 2, i64 4, i64 6>
  %invariant.gep4889 = getelementptr [4 x i8], ptr %i.pca, i64 %i.pcd
  br label %vector.body3835

vector.body3835:                                  ; preds = %vector.body3835, %vector.ph3830
  %index3836 = phi i64 [ 0, %vector.ph3830 ], [ %index.next3888, %vector.body3835 ] ; 2 uses
  %vec.ind3837 = phi <4 x i64> [ %induction3834, %vector.ph3830 ], [ %vec.ind.next3889, %vector.body3835 ] ; 3 uses
  %.idx4578 = shl nuw i64 %index3836, 3
  %gep4890 = getelementptr i8, ptr %invariant.gep4889, i64 %.idx4578 ; 8 uses
  %i.pdo = getelementptr inbounds i8, ptr %gep4890, i64 -8 ; 2 uses
  %i.pdp = getelementptr inbounds i8, ptr %gep4890, i64 -1088 ; 2 uses
  %i.pdq = getelementptr inbounds nuw i8, ptr %gep4890, i64 1088 ; 2 uses
  %i.pdr = getelementptr inbounds i8, ptr %gep4890, i64 -4
  %i.pds = getelementptr inbounds nuw i8, ptr %gep4890, i64 4 ; 2 uses
  %i.pdt = getelementptr inbounds i8, ptr %gep4890, i64 -544 ; 2 uses
  %i.pdu = getelementptr inbounds nuw i8, ptr %gep4890, i64 544 ; 2 uses
  %wide.gep3838 = getelementptr inbounds nuw [4 x i8], ptr %i.pcf, <4 x i64> %vec.ind3837 ; 2 uses
  %i.pdv = extractelement <4 x ptr> %wide.gep3838, i64 0 ; 4 uses
  %wide.vec3839 = load <8 x float>, ptr %i.pdo, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3840 = shufflevector <8 x float> %wide.vec3839, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3841 = load <8 x float>, ptr %gep4890, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3842 = shufflevector <8 x float> %wide.vec3841, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 5 uses
  %i.pdw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3840, %strided.vec3842
  %i.pdx = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pdw)
  %i.pdy = getelementptr inbounds nuw i8, ptr %i.pdv, i64 4
  %wide.vec3843 = load <8 x float>, ptr %i.pdy, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3844 = shufflevector <8 x float> %wide.vec3843, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pdz = getelementptr inbounds i8, ptr %i.pdv, i64 -4
  %wide.vec3845 = load <8 x float>, ptr %i.pdz, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3846 = shufflevector <8 x float> %wide.vec3845, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pea = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3844, %strided.vec3846
  %i.peb = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pea)
  %i.pec = fadd reassoc nsz arcp contract afn <4 x float> %i.peb, splat (float 1.000000e+00) ; 2 uses
  %i.ped = fadd reassoc nsz arcp contract afn <4 x float> %i.pec, %i.pdx
  %i.pee = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ped ; 2 uses
  %wide.vec3847 = load <8 x float>, ptr %i.pds, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3848 = shufflevector <8 x float> %wide.vec3847, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3849 = shufflevector <8 x float> %wide.vec3847, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pef = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3849, %strided.vec3842
  %i.peg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pef)
  %i.peh = fadd reassoc nsz arcp contract afn <4 x float> %i.pec, %i.peg
  %i.pei = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.peh ; 2 uses
  %wide.vec3850 = load <8 x float>, ptr %i.pdp, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3851 = shufflevector <8 x float> %wide.vec3850, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pej = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3851, %strided.vec3842
  %i.pek = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pej)
  %i.pel = getelementptr inbounds nuw i8, ptr %i.pdv, i64 544
  %wide.vec3852 = load <8 x float>, ptr %i.pel, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3853 = shufflevector <8 x float> %wide.vec3852, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pem = getelementptr inbounds i8, ptr %i.pdv, i64 -544
  %wide.vec3854 = load <8 x float>, ptr %i.pem, align 4, !tbaa !22, !alias.scope !477, !noalias !402
  %strided.vec3855 = shufflevector <8 x float> %wide.vec3854, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pen = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3853, %strided.vec3855
  %i.peo = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pen)
  %i.pep = fadd reassoc nsz arcp contract afn <4 x float> %i.peo, splat (float 1.000000e+00) ; 2 uses
  %i.peq = fadd reassoc nsz arcp contract afn <4 x float> %i.pep, %i.pek
  %i.per = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.peq ; 2 uses
  %wide.vec3856 = load <8 x float>, ptr %i.pdq, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3857 = shufflevector <8 x float> %wide.vec3856, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pes = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3857, %strided.vec3842
  %i.pet = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pes)
  %i.peu = fadd reassoc nsz arcp contract afn <4 x float> %i.pep, %i.pet
  %i.pev = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.peu ; 2 uses
  %wide.vec3858 = load <8 x float>, ptr %i.pdo, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3859 = shufflevector <8 x float> %wide.vec3858, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3860 = shufflevector <8 x float> %wide.vec3858, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pew = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3860, %strided.vec3846
  %i.pex = fmul reassoc nsz arcp contract afn <4 x float> %i.pew, %i.pee
  %i.pey = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3848, %strided.vec3844
  %i.pez = fmul reassoc nsz arcp contract afn <4 x float> %i.pey, %i.pei
  %i.pfa = fadd reassoc nsz arcp contract afn <4 x float> %i.pex, %i.pez
  %wide.vec3861 = load <8 x float>, ptr %i.pdt, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3862 = shufflevector <8 x float> %wide.vec3861, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pfb = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3862, %strided.vec3855
  %i.pfc = fmul reassoc nsz arcp contract afn <4 x float> %i.pfb, %i.per
  %i.pfd = fadd reassoc nsz arcp contract afn <4 x float> %i.pfa, %i.pfc
  %wide.vec3863 = load <8 x float>, ptr %i.pdu, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3864 = shufflevector <8 x float> %wide.vec3863, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pfe = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3864, %strided.vec3853
  %i.pff = fmul reassoc nsz arcp contract afn <4 x float> %i.pfe, %i.pev
  %i.pfg = fadd reassoc nsz arcp contract afn <4 x float> %i.pfd, %i.pff
  %i.pfh = fadd reassoc nsz arcp contract afn <4 x float> %i.pei, %i.pee
  %i.pfi = fadd reassoc nsz arcp contract afn <4 x float> %i.pfh, %i.per
  %i.pfj = fadd reassoc nsz arcp contract afn <4 x float> %i.pfi, %i.pev
  %i.pfk = fdiv reassoc nsz arcp contract afn <4 x float> %i.pfg, %i.pfj
  %i.pfl = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3842, %i.pfk
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.pfl, <4 x ptr> align 4 %wide.gep3838, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !477, !noalias !479
  %wide.gep3865 = getelementptr inbounds nuw [4 x i8], ptr %i.pck, <4 x i64> %vec.ind3837 ; 2 uses
  %i.pfm = extractelement <4 x ptr> %wide.gep3865, i64 0 ; 4 uses
  %wide.vec3866 = load <8 x float>, ptr %i.pdr, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3867 = shufflevector <8 x float> %wide.vec3866, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3868 = shufflevector <8 x float> %wide.vec3866, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 5 uses
  %i.pfn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3859, %strided.vec3868
  %i.pfo = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfn)
  %i.pfp = getelementptr inbounds nuw i8, ptr %i.pfm, i64 4
  %wide.vec3869 = load <8 x float>, ptr %i.pfp, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3870 = shufflevector <8 x float> %wide.vec3869, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pfq = getelementptr inbounds i8, ptr %i.pfm, i64 -4
  %wide.vec3871 = load <8 x float>, ptr %i.pfq, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3872 = shufflevector <8 x float> %wide.vec3871, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pfr = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3870, %strided.vec3872
  %i.pfs = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfr)
  %i.pft = fadd reassoc nsz arcp contract afn <4 x float> %i.pfs, splat (float 1.000000e+00) ; 2 uses
  %i.pfu = fadd reassoc nsz arcp contract afn <4 x float> %i.pft, %i.pfo
  %i.pfv = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pfu ; 2 uses
  %wide.vec3873 = load <8 x float>, ptr %i.pds, align 4, !tbaa !22, !alias.scope !474, !noalias !402 ; 2 uses
  %strided.vec3874 = shufflevector <8 x float> %wide.vec3873, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec3875 = shufflevector <8 x float> %wide.vec3873, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.pfw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3875, %strided.vec3868
  %i.pfx = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pfw)
  %i.pfy = fadd reassoc nsz arcp contract afn <4 x float> %i.pft, %i.pfx
  %i.pfz = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pfy ; 2 uses
  %wide.vec3876 = load <8 x float>, ptr %i.pdp, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3877 = shufflevector <8 x float> %wide.vec3876, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pga = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3877, %strided.vec3868
  %i.pgb = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pga)
  %i.pgc = getelementptr inbounds nuw i8, ptr %i.pfm, i64 544
  %wide.vec3878 = load <8 x float>, ptr %i.pgc, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3879 = shufflevector <8 x float> %wide.vec3878, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pgd = getelementptr inbounds i8, ptr %i.pfm, i64 -544
  %wide.vec3880 = load <8 x float>, ptr %i.pgd, align 4, !tbaa !22, !alias.scope !481, !noalias !402
  %strided.vec3881 = shufflevector <8 x float> %wide.vec3880, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pge = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3879, %strided.vec3881
  %i.pgf = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pge)
  %i.pgg = fadd reassoc nsz arcp contract afn <4 x float> %i.pgf, splat (float 1.000000e+00) ; 2 uses
  %i.pgh = fadd reassoc nsz arcp contract afn <4 x float> %i.pgg, %i.pgb
  %i.pgi = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pgh ; 2 uses
  %wide.vec3882 = load <8 x float>, ptr %i.pdq, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3883 = shufflevector <8 x float> %wide.vec3882, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pgj = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3883, %strided.vec3868
  %i.pgk = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pgj)
  %i.pgl = fadd reassoc nsz arcp contract afn <4 x float> %i.pgg, %i.pgk
  %i.pgm = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pgl ; 2 uses
  %i.pgn = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3867, %strided.vec3872
  %i.pgo = fmul reassoc nsz arcp contract afn <4 x float> %i.pgn, %i.pfv
  %i.pgp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3874, %strided.vec3870
  %i.pgq = fmul reassoc nsz arcp contract afn <4 x float> %i.pgp, %i.pfz
  %i.pgr = fadd reassoc nsz arcp contract afn <4 x float> %i.pgo, %i.pgq
  %wide.vec3884 = load <8 x float>, ptr %i.pdt, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3885 = shufflevector <8 x float> %wide.vec3884, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pgs = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3885, %strided.vec3881
  %i.pgt = fmul reassoc nsz arcp contract afn <4 x float> %i.pgs, %i.pgi
  %i.pgu = fadd reassoc nsz arcp contract afn <4 x float> %i.pgr, %i.pgt
  %wide.vec3886 = load <8 x float>, ptr %i.pdu, align 4, !tbaa !22, !alias.scope !474, !noalias !402
  %strided.vec3887 = shufflevector <8 x float> %wide.vec3886, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pgv = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3887, %strided.vec3879
  %i.pgw = fmul reassoc nsz arcp contract afn <4 x float> %i.pgv, %i.pgm
  %i.pgx = fadd reassoc nsz arcp contract afn <4 x float> %i.pgu, %i.pgw
  %i.pgy = fadd reassoc nsz arcp contract afn <4 x float> %i.pfz, %i.pfv
  %i.pgz = fadd reassoc nsz arcp contract afn <4 x float> %i.pgy, %i.pgi
  %i.pha = fadd reassoc nsz arcp contract afn <4 x float> %i.pgz, %i.pgm
  %i.phb = fdiv reassoc nsz arcp contract afn <4 x float> %i.pgx, %i.pha
  %i.phc = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3868, %i.phb
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.phc, <4 x ptr> align 4 %wide.gep3865, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !481, !noalias !482
  %index.next3888 = add nuw i64 %index3836, 4     ; 2 uses
  %vec.ind.next3889 = add nuw nsw <4 x i64> %vec.ind3837, splat (i64 8)
  %i.phd = icmp eq i64 %index.next3888, %n.vec3831
  br i1 %i.phd, label %.preheader.i560.preheader, label %vector.body3835, !llvm.loop !483

.preheader.i560.preheader:                        ; preds = %vector.body3835, %vector.memcheck3805, %.preheader.lr.ph.i559
  %indvars.iv1290.i.ph = phi i64 [ %i.pcd, %vector.memcheck3805 ], [ %i.pcd, %.preheader.lr.ph.i559 ], [ %i.pdn, %vector.body3835 ]
  br label %.preheader.i560

.preheader.i560:                                  ; preds = %.preheader.i560.preheader, %.preheader.i560
  %indvars.iv1290.i = phi i64 [ %indvars.iv.next1291.i, %.preheader.i560 ], [ %indvars.iv1290.i.ph, %.preheader.i560.preheader ] ; 4 uses
  %i.phe = getelementptr inbounds nuw [4 x i8], ptr %i.pca, i64 %indvars.iv1290.i ; 10 uses
  %i.phf = getelementptr inbounds i8, ptr %i.phe, i64 -4 ; 2 uses
  %i.phg = getelementptr inbounds nuw i8, ptr %i.phe, i64 4 ; 2 uses
  %i.phh = getelementptr inbounds nuw [4 x i8], ptr %i.pcf, i64 %indvars.iv1290.i ; 5 uses
  %i.phi = getelementptr inbounds nuw i8, ptr %i.phh, i64 544
  %i.phj = getelementptr inbounds i8, ptr %i.phh, i64 -544
  %i.phk = getelementptr inbounds nuw i8, ptr %i.phh, i64 4
  %i.phl = getelementptr inbounds i8, ptr %i.phh, i64 -4
  %i.phm = load float, ptr %i.phi, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phn = load float, ptr %i.phj, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pho = load float, ptr %i.phk, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.php = load float, ptr %i.phl, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phq = fsub reassoc nsz arcp contract afn float %i.phm, %i.phn
  %i.phr = fsub reassoc nsz arcp contract afn float %i.pho, %i.php
  %i.phs = insertelement <2 x float> poison, float %i.phr, i64 0
  %i.pht = insertelement <2 x float> %i.phs, float %i.phq, i64 1
  %i.phu = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pht)
  %i.phv = shufflevector <2 x float> %i.phu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.phw = fadd reassoc nsz arcp contract afn <4 x float> %i.phv, splat (float 1.000000e+00)
  %i.phx = load float, ptr %i.phg, align 4, !tbaa !22, !noalias !402
  %i.phy = load float, ptr %i.phe, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.phz = load float, ptr %i.phf, align 4, !tbaa !22, !noalias !402
  %i.pia = insertelement <4 x float> poison, float %i.phy, i64 0
  %i.pib = shufflevector <4 x float> %i.pia, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pic = fsub reassoc nsz arcp contract afn float %i.phx, %i.pho
  %i.pid = fsub reassoc nsz arcp contract afn float %i.phz, %i.php
  %i.pie = insertelement <4 x float> poison, float %i.pid, i64 0
  %i.pif = insertelement <4 x float> %i.pie, float %i.pic, i64 1
  %i.pig = getelementptr inbounds nuw [4 x i8], ptr %i.pck, i64 %indvars.iv1290.i ; 5 uses
  %i.pih = getelementptr inbounds nuw i8, ptr %i.phe, i64 544 ; 2 uses
  %i.pii = getelementptr inbounds i8, ptr %i.phe, i64 -544 ; 2 uses
  %i.pij = load float, ptr %i.pih, align 4, !tbaa !22, !noalias !402
  %i.pik = load float, ptr %i.pii, align 4, !tbaa !22, !noalias !402
  %i.pil = fsub reassoc nsz arcp contract afn float %i.pij, %i.phm
  %i.pim = fsub reassoc nsz arcp contract afn float %i.pik, %i.phn
  %i.pin = insertelement <4 x float> %i.pif, float %i.pim, i64 2
  %i.pio = insertelement <4 x float> %i.pin, float %i.pil, i64 3
  %i.pip = getelementptr inbounds nuw i8, ptr %i.pig, i64 544
  %i.piq = getelementptr inbounds i8, ptr %i.pig, i64 -544
  %i.pir = getelementptr inbounds nuw i8, ptr %i.pig, i64 4
  %i.pis = getelementptr inbounds i8, ptr %i.pig, i64 -4
  %i.pit = getelementptr inbounds nuw i8, ptr %i.phe, i64 1088 ; 2 uses
  %i.piu = getelementptr inbounds i8, ptr %i.phe, i64 -1088 ; 2 uses
  %i.piv = getelementptr inbounds nuw i8, ptr %i.phe, i64 8 ; 2 uses
  %i.piw = getelementptr inbounds i8, ptr %i.phe, i64 -8 ; 2 uses
  %i.pix = load float, ptr %i.pit, align 4, !tbaa !22, !noalias !402
  %i.piy = load float, ptr %i.piw, align 4, !tbaa !22, !noalias !402
  %i.piz = insertelement <4 x float> poison, float %i.piy, i64 0
  %i.pja = load float, ptr %i.piu, align 4, !tbaa !22, !noalias !402
  %i.pjb = load float, ptr %i.piv, align 4, !tbaa !22, !noalias !402
  %i.pjc = insertelement <4 x float> %i.piz, float %i.pjb, i64 1
  %i.pjd = insertelement <4 x float> %i.pjc, float %i.pja, i64 2
  %i.pje = insertelement <4 x float> %i.pjd, float %i.pix, i64 3
  %i.pjf = fsub reassoc nsz arcp contract afn <4 x float> %i.pje, %i.pib
  %i.pjg = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pjf)
  %i.pjh = fadd reassoc nsz arcp contract afn <4 x float> %i.phw, %i.pjg
  %i.pji = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pjh ; 2 uses
  %i.pjj = fmul reassoc nsz arcp contract afn <4 x float> %i.pio, %i.pji
  %i.pjk = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pjj)
  %i.pjl = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pji)
  %i.pjm = fdiv reassoc nsz arcp contract afn float %i.pjk, %i.pjl
  %i.pjn = fsub reassoc nsz arcp contract afn float %i.phy, %i.pjm
  store float %i.pjn, ptr %i.phh, align 4, !tbaa !22, !noalias !402
  %i.pjo = load float, ptr %i.pip, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjp = load float, ptr %i.piq, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjq = load float, ptr %i.pir, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjr = load float, ptr %i.pis, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pjs = fsub reassoc nsz arcp contract afn float %i.pjo, %i.pjp
  %i.pjt = fsub reassoc nsz arcp contract afn float %i.pjq, %i.pjr
  %i.pju = insertelement <2 x float> poison, float %i.pjt, i64 0
  %i.pjv = insertelement <2 x float> %i.pju, float %i.pjs, i64 1
  %i.pjw = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.pjv)
  %i.pjx = shufflevector <2 x float> %i.pjw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.pjy = fadd reassoc nsz arcp contract afn <4 x float> %i.pjx, splat (float 1.000000e+00)
  %i.pjz = load float, ptr %i.phg, align 4, !tbaa !22, !noalias !402
  %i.pka = load float, ptr %i.phe, align 4, !tbaa !22, !noalias !402 ; 2 uses
  %i.pkb = load float, ptr %i.phf, align 4, !tbaa !22, !noalias !402
  %i.pkc = load float, ptr %i.pih, align 4, !tbaa !22, !noalias !402
  %i.pkd = load float, ptr %i.pii, align 4, !tbaa !22, !noalias !402
  %i.pke = load float, ptr %i.pit, align 4, !tbaa !22, !noalias !402
  %i.pkf = load float, ptr %i.piu, align 4, !tbaa !22, !noalias !402
  %i.pkg = load float, ptr %i.piv, align 4, !tbaa !22, !noalias !402
  %i.pkh = load float, ptr %i.piw, align 4, !tbaa !22, !noalias !402
  %i.pki = insertelement <4 x float> poison, float %i.pkh, i64 0
  %i.pkj = insertelement <4 x float> %i.pki, float %i.pkg, i64 1
  %i.pkk = insertelement <4 x float> %i.pkj, float %i.pkf, i64 2
  %i.pkl = insertelement <4 x float> %i.pkk, float %i.pke, i64 3
  %i.pkm = insertelement <4 x float> poison, float %i.pka, i64 0
  %i.pkn = shufflevector <4 x float> %i.pkm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pko = fsub reassoc nsz arcp contract afn <4 x float> %i.pkl, %i.pkn
  %i.pkp = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pko)
  %i.pkq = fadd reassoc nsz arcp contract afn <4 x float> %i.pjy, %i.pkp
  %i.pkr = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pkq ; 2 uses
  %i.pks = fsub reassoc nsz arcp contract afn float %i.pkc, %i.pjo
  %i.pkt = fsub reassoc nsz arcp contract afn float %i.pkd, %i.pjp
  %i.pku = fsub reassoc nsz arcp contract afn float %i.pjz, %i.pjq
  %i.pkv = fsub reassoc nsz arcp contract afn float %i.pkb, %i.pjr
  %i.pkw = insertelement <4 x float> poison, float %i.pkv, i64 0
  %i.pkx = insertelement <4 x float> %i.pkw, float %i.pku, i64 1
  %i.pky = insertelement <4 x float> %i.pkx, float %i.pkt, i64 2
  %i.pkz = insertelement <4 x float> %i.pky, float %i.pks, i64 3
  %i.pla = fmul reassoc nsz arcp contract afn <4 x float> %i.pkz, %i.pkr
  %i.plb = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pla)
  %i.plc = call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.pkr)
  %i.pld = fdiv reassoc nsz arcp contract afn float %i.plb, %i.plc
  %i.ple = fsub reassoc nsz arcp contract afn float %i.pka, %i.pld
  store float %i.ple, ptr %i.pig, align 4, !tbaa !22, !noalias !402
  %indvars.iv.next1291.i = add nuw nsw i64 %indvars.iv1290.i, 2 ; 2 uses
  %i.plf = icmp slt i64 %indvars.iv.next1291.i, %i.orc
  br i1 %i.plf, label %.preheader.i560, label %._crit_edge1149.i, !llvm.loop !484

._crit_edge1149.i:                                ; preds = %.preheader.i560, %.lr.ph1151.i
  %indvars.iv.next1294.i = add nuw nsw i64 %indvars.iv1293.i, 1 ; 2 uses
  %exitcond1132.not = icmp eq i64 %indvars.iv.next1294.i, %i.lzd
  %indvar.next3807 = add i64 %indvar3806, 1
  br i1 %exitcond1132.not, label %.lr.ph1157.i, label %.lr.ph1151.i

._crit_edge1158.i.loopexit:                       ; preds = %._crit_edge1155.i
  %i.plg = add nuw nsw i32 %.08901159.i, 1        ; 2 uses
  %i.plh = icmp slt i32 %i.plg, %i.lxg
  br i1 %i.plh, label %.lr.ph1143.i.preheader, label %._crit_edge1161.i

.lr.ph1157.i:                                     ; preds = %._crit_edge1149.i, %._crit_edge1155.i
  %indvar3745 = phi i64 [ %indvar.next3746, %._crit_edge1155.i ], [ 0, %._crit_edge1149.i ] ; 2 uses
  %indvars.iv1299.i = phi i64 [ %indvars.iv.next1300.i, %._crit_edge1155.i ], [ %i.lyw, %._crit_edge1149.i ] ; 3 uses
  %i.pli = mul i64 %indvar3745, 544               ; 6 uses
  %scevgep3752 = getelementptr i8, ptr %i.lzv, i64 %i.pli
  %scevgep3754 = getelementptr i8, ptr %i.lzx, i64 %i.pli
  %indvars.iv1299.tr.i = trunc i64 %indvars.iv1299.i to i32
  %i.plj = shl i32 %indvars.iv1299.tr.i, 1
  %i.plk = and i32 %i.plj, 14                     ; 2 uses
  %i.pll = shl nuw nsw i32 %i.plk, 1
  %i.plm = lshr i32 %.fr1043, %i.pll              ; 3 uses
  %i.pln = and i32 %i.plm, 1                      ; 2 uses
  %i.plo = or disjoint i32 %i.pln, %i.ora         ; 2 uses
  %i.plp = icmp slt i32 %i.plo, %i.orb
  br i1 %i.plp, label %.lr.ph1154.i, label %._crit_edge1155.i

.lr.ph1154.i:                                     ; preds = %.lr.ph1157.i
  %i.plq = or disjoint i32 %i.pln, %i.plk
  %i.plr = shl nuw nsw i32 %i.plq, 1
  %i.pls = lshr i32 %.fr1043, %i.plr
  %i.plt = and i32 %i.pls, 3                      ; 2 uses
  %i.plu = sub nsw i32 2, %i.plt
  %i.plv = mul nuw nsw i64 %indvars.iv1299.i, 136 ; 3 uses
  %i.plw = getelementptr inbounds nuw [4 x i8], ptr %i.lwz, i64 %i.plv ; 2 uses
  %i.plx = sext i32 %i.plu to i64
  %i.ply = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.plx
  %i.plz = load ptr, ptr %i.ply, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pma = getelementptr inbounds nuw [4 x i8], ptr %i.plz, i64 %i.plv ; 2 uses
  %i.pmb = zext nneg i32 %i.plt to i64
  %i.pmc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.pmb
  %i.pmd = load ptr, ptr %i.pmc, align 8, !tbaa !407, !noalias !408 ; 3 uses
  %i.pme = getelementptr inbounds nuw [4 x i8], ptr %i.pmd, i64 %i.plv ; 2 uses
  %i.pmf = zext nneg i32 %i.plo to i64            ; 5 uses
  %i.pmg = and i32 %i.plm, 1
  %i.pmh = zext nneg i32 %i.pmg to i64            ; 2 uses
  %i.pmi = or disjoint i64 %i.ory, %i.pmh
  %i.pmj = add nuw nsw i64 %i.pmi, 4
  %i.pmk = call i64 @llvm.smax.i64(i64 %i.pmj, i64 %i.osb)
  %i.pml = add nsw i64 %i.pmk, -3
  %i.pmm = or disjoint i64 %i.ory, %i.pmh
  %i.pmn = sub i64 %i.pml, %i.pmm                 ; 2 uses
  %i.pmo = lshr i64 %i.pmn, 1
  %i.pmp = add nuw i64 %i.pmo, 1                  ; 2 uses
  %min.iters.check3764 = icmp ult i64 %i.pmn, 8
  br i1 %min.iters.check3764, label %scalar.ph3763.preheader, label %vector.memcheck3744

scalar.ph3763.preheader:                          ; preds = %vector.body3770, %vector.memcheck3744, %.lr.ph1154.i
  %indvars.iv1296.i.ph = phi i64 [ %i.pmf, %vector.memcheck3744 ], [ %i.pmf, %.lr.ph1154.i ], [ %i.pnt, %vector.body3770 ]
  br label %scalar.ph3763

vector.memcheck3744:                              ; preds = %.lr.ph1154.i
  %i.pmq = and i32 %i.plm, 1
  %i.pmr = zext nneg i32 %i.pmq to i64            ; 3 uses
  %i.pms = or disjoint i64 %i.ord, %i.pmr
  %i.pmt = shl nuw nsw i64 %i.pms, 2              ; 6 uses
  %i.pmu = getelementptr i8, ptr %i.plz, i64 %i.lze
  %i.pmv = getelementptr i8, ptr %i.pmu, i64 552
  %i.pmw = getelementptr i8, ptr %i.pmv, i64 %i.pli
  %scevgep3747 = getelementptr i8, ptr %i.pmw, i64 %i.pmt ; 2 uses
  %i.pmx = or disjoint i64 %i.ore, %i.pmr
  %smax3748 = call i64 @llvm.smax.i64(i64 %i.pmx, i64 %i.orh)
  %i.pmy = add nuw i64 %smax3748, 4611686018427387901
  %i.pmz = or disjoint i64 %i.ord, %i.pmr
  %i.pna = sub nuw i64 %i.pmy, %i.pmz
  %i.pnb = shl i64 %i.pna, 2
  %i.pnc = and i64 %i.pnb, -8                     ; 3 uses
  %i.pnd = getelementptr i8, ptr %i.plz, i64 %i.lze
  %i.pne = getelementptr i8, ptr %i.pnd, i64 1644
  %i.pnf = getelementptr i8, ptr %i.pne, i64 %i.pli
  %i.png = getelementptr i8, ptr %i.pnf, i64 %i.pnc
  %scevgep3749 = getelementptr i8, ptr %i.png, i64 %i.pmt ; 2 uses
  %i.pnh = getelementptr i8, ptr %i.pmd, i64 %i.lze
  %i.pni = getelementptr i8, ptr %i.pnh, i64 8
  %i.pnj = getelementptr i8, ptr %i.pni, i64 %i.pli
  %scevgep3750 = getelementptr i8, ptr %i.pnj, i64 %i.pmt
  %i.pnk = getelementptr i8, ptr %i.pmd, i64 %i.lze
  %i.pnl = getelementptr i8, ptr %i.pnk, i64 2188
  %i.pnm = getelementptr i8, ptr %i.pnl, i64 %i.pli
  %i.pnn = getelementptr i8, ptr %i.pnm, i64 %i.pnc
  %scevgep3751 = getelementptr i8, ptr %i.pnn, i64 %i.pmt
  %scevgep3753 = getelementptr i8, ptr %scevgep3752, i64 %i.pmt
  %i.pno = getelementptr i8, ptr %scevgep3754, i64 %i.pnc
  %scevgep3755 = getelementptr i8, ptr %i.pno, i64 %i.pmt
  %bound03756 = icmp ult ptr %scevgep3747, %scevgep3751
  %bound13757 = icmp ult ptr %scevgep3750, %scevgep3749
  %found.conflict3758 = and i1 %bound03756, %bound13757
  %bound03759 = icmp ult ptr %scevgep3747, %scevgep3755
  %bound13760 = icmp ult ptr %scevgep3753, %scevgep3749
  %found.conflict3761 = and i1 %bound03759, %bound13760
  %conflict.rdx3762 = or i1 %found.conflict3758, %found.conflict3761
  br i1 %conflict.rdx3762, label %scalar.ph3763.preheader, label %vector.ph3765

vector.ph3765:                                    ; preds = %vector.memcheck3744
  %i.pnp = and i64 %i.pmp, 3                      ; 2 uses
  %i.pnq = icmp eq i64 %i.pnp, 0
  %i.pnr = select i1 %i.pnq, i64 4, i64 %i.pnp
  %n.vec3766 = sub i64 %i.pmp, %i.pnr             ; 2 uses
  %i.pns = shl i64 %n.vec3766, 1
  %i.pnt = add i64 %i.pns, %i.pmf
  %broadcast.splatinsert3767 = insertelement <4 x i64> poison, i64 %i.pmf, i64 0
  %broadcast.splat3768 = shufflevector <4 x i64> %broadcast.splatinsert3767, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction3769 = add nuw nsw <4 x i64> %broadcast.splat3768, <i64 0, i64 2, i64 4, i64 6>
  br label %vector.body3770

vector.body3770:                                  ; preds = %vector.body3770, %vector.ph3765
  %index3771 = phi i64 [ 0, %vector.ph3765 ], [ %index.next3801, %vector.body3770 ] ; 2 uses
  %vec.ind3772 = phi <4 x i64> [ %induction3769, %vector.ph3765 ], [ %vec.ind.next3802, %vector.body3770 ] ; 2 uses
  %i.pnu = shl nuw i64 %index3771, 1
  %i.pnv = add nuw i64 %i.pnu, %i.pmf             ; 2 uses
  %i.pnw = getelementptr inbounds nuw [4 x i8], ptr %i.plw, i64 %i.pnv ; 4 uses
  %wide.gep3773 = getelementptr inbounds nuw [4 x i8], ptr %i.pma, <4 x i64> %vec.ind3772 ; 2 uses
  %i.pnx = extractelement <4 x ptr> %wide.gep3773, i64 0 ; 4 uses
  %i.pny = getelementptr inbounds nuw [4 x i8], ptr %i.pme, i64 %i.pnv ; 5 uses
  %i.pnz = getelementptr inbounds i8, ptr %i.pny, i64 -8
  %wide.vec3774 = load <8 x float>, ptr %i.pnz, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3775 = shufflevector <8 x float> %wide.vec3774, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec3776 = load <8 x float>, ptr %i.pny, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3777 = shufflevector <8 x float> %wide.vec3776, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %i.poa = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3775, %strided.vec3777
  %i.pob = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poa)
  %i.poc = getelementptr inbounds nuw i8, ptr %i.pnw, i64 4
  %wide.vec3778 = load <8 x float>, ptr %i.poc, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3779 = shufflevector <8 x float> %wide.vec3778, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pod = getelementptr inbounds i8, ptr %i.pnw, i64 -4
  %wide.vec3780 = load <8 x float>, ptr %i.pod, align 4, !tbaa !22, !alias.scope !488, !noalias !402 ; 2 uses
  %strided.vec3781 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec3782 = shufflevector <8 x float> %wide.vec3780, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.poe = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %strided.vec3781
  %i.pof = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poe)
  %i.pog = fadd reassoc nsz arcp contract afn <4 x float> %i.pof, splat (float 1.000000e+00) ; 2 uses
  %i.poh = fadd reassoc nsz arcp contract afn <4 x float> %i.pog, %i.pob
  %i.poi = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.poh ; 2 uses
  %i.poj = getelementptr inbounds nuw i8, ptr %i.pny, i64 8
  %wide.vec3783 = load <8 x float>, ptr %i.poj, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3784 = shufflevector <8 x float> %wide.vec3783, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pok = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3784, %strided.vec3777
  %i.pol = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pok)
  %i.pom = fadd reassoc nsz arcp contract afn <4 x float> %i.pog, %i.pol
  %i.pon = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pom ; 2 uses
  %i.poo = getelementptr inbounds i8, ptr %i.pny, i64 -1088
  %wide.vec3785 = load <8 x float>, ptr %i.poo, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3786 = shufflevector <8 x float> %wide.vec3785, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pop = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3786, %strided.vec3777
  %i.poq = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pop)
  %i.por = getelementptr inbounds nuw i8, ptr %i.pnw, i64 544
  %wide.vec3787 = load <8 x float>, ptr %i.por, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3788 = shufflevector <8 x float> %wide.vec3787, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pos = getelementptr inbounds i8, ptr %i.pnw, i64 -544
  %wide.vec3789 = load <8 x float>, ptr %i.pos, align 4, !tbaa !22, !alias.scope !488, !noalias !402
  %strided.vec3790 = shufflevector <8 x float> %wide.vec3789, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.pot = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788, %strided.vec3790
  %i.pou = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.pot)
  %i.pov = fadd reassoc nsz arcp contract afn <4 x float> %i.pou, splat (float 1.000000e+00) ; 2 uses
  %i.pow = fadd reassoc nsz arcp contract afn <4 x float> %i.pov, %i.poq
  %i.pox = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.pow ; 2 uses
  %i.poy = getelementptr inbounds nuw i8, ptr %i.pny, i64 1088
  %wide.vec3791 = load <8 x float>, ptr %i.poy, align 4, !tbaa !22, !alias.scope !485, !noalias !402
  %strided.vec3792 = shufflevector <8 x float> %wide.vec3791, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.poz = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3792, %strided.vec3777
  %i.ppa = call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.poz)
  %i.ppb = fadd reassoc nsz arcp contract afn <4 x float> %i.pov, %i.ppa
  %i.ppc = fdiv reassoc nsz arcp contract afn <4 x float> splat (float 1.000000e+00), %i.ppb ; 2 uses
  %i.ppd = getelementptr inbounds i8, ptr %i.pnx, i64 -4
  %wide.vec3793 = load <8 x float>, ptr %i.ppd, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3794 = shufflevector <8 x float> %wide.vec3793, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppe = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3781, %strided.vec3794
  %i.ppf = fmul reassoc nsz arcp contract afn <4 x float> %i.ppe, %i.poi
  %i.ppg = getelementptr inbounds nuw i8, ptr %i.pnx, i64 4
  %wide.vec3795 = load <8 x float>, ptr %i.ppg, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3796 = shufflevector <8 x float> %wide.vec3795, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.pph = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3779, %strided.vec3796
  %i.ppi = fmul reassoc nsz arcp contract afn <4 x float> %i.pph, %i.pon
  %i.ppj = fadd reassoc nsz arcp contract afn <4 x float> %i.ppf, %i.ppi
  %i.ppk = getelementptr inbounds i8, ptr %i.pnx, i64 -544
  %wide.vec3797 = load <8 x float>, ptr %i.ppk, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3798 = shufflevector <8 x float> %wide.vec3797, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppl = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3790, %strided.vec3798
  %i.ppm = fmul reassoc nsz arcp contract afn <4 x float> %i.ppl, %i.pox
  %i.ppn = fadd reassoc nsz arcp contract afn <4 x float> %i.ppj, %i.ppm
  %i.ppo = getelementptr inbounds nuw i8, ptr %i.pnx, i64 544
  %wide.vec3799 = load <8 x float>, ptr %i.ppo, align 4, !tbaa !22, !alias.scope !490, !noalias !402
  %strided.vec3800 = shufflevector <8 x float> %wide.vec3799, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ppp = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3788, %strided.vec3800
  %i.ppq = fmul reassoc nsz arcp contract afn <4 x float> %i.ppp, %i.ppc
  %i.ppr = fadd reassoc nsz arcp contract afn <4 x float> %i.ppn, %i.ppq
  %i.pps = fadd reassoc nsz arcp contract afn <4 x float> %i.pon, %i.poi
  %i.ppt = fadd reassoc nsz arcp contract afn <4 x float> %i.pps, %i.pox
  %i.ppu = fadd reassoc nsz arcp contract afn <4 x float> %i.ppt, %i.ppc
  %i.ppv = fdiv reassoc nsz arcp contract afn <4 x float> %i.ppr, %i.ppu
  %i.ppw = fsub reassoc nsz arcp contract afn <4 x float> %strided.vec3782, %i.ppv
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %i.ppw, <4 x ptr> align 4 %wide.gep3773, <4 x i1> splat (i1 true)), !tbaa !22, !alias.scope !490, !noalias !492
  %index.next3801 = add nuw i64 %index3771, 4     ; 2 uses
  %vec.ind.next3802 = add nuw nsw <4 x i64> %vec.ind3772, splat (i64 8)
  %i.ppx = icmp eq i64 %index.next3801, %n.vec3766
  br i1 %i.ppx, label %scalar.ph3763.preheader, label %vector.body3770, !llvm.loop !493

._crit_edge1155.i:                                ; preds = %scalar.ph3763, %.lr.ph1157.i
  %indvars.iv.next1300.i = add nuw nsw i64 %indvars.iv1299.i, 1 ; 2 uses
  %exitcond1134.not = icmp eq i64 %indvars.iv.next1300.i, %i.lzd
  %indvar.next3746 = add i64 %indvar3745, 1
  br i1 %exitcond1134.not, label %._crit_edge1158.i.loopexit, label %.lr.ph1157.i

scalar.ph3763:                                    ; preds = %scalar.ph3763.preheader, %scalar.ph3763
  %indvars.iv1296.i = phi i64 [ %indvars.iv.next1297.i, %scalar.ph3763 ], [ %indvars.iv1296.i.ph, %scalar.ph3763.preheader ] ; 4 uses
  %i.ppy = getelementptr inbounds nuw [4 x i8], ptr %i.plw, i64 %indvars.iv1296.i ; 5 uses
  %i.ppz = getelementptr inbounds nuw [4 x i8], ptr %i.pma, i64 %indvars.iv1296.i ; 5 uses
  %i.pqa = getelementptr inbounds nuw [4 x i8], ptr %i.pme, i64 %indvars.iv1296.i ; 5 uses
  %i.pqb = load float, ptr %i.ppy, align 4, !tbaa !22, !noalias !402
end_hunk_4
begin_hunk_5_@vng_interpolate:bb.a
  br label %.backedge

.thread517:                                       ; preds = %fcol.exit311
  %i.qa = add nuw nsw i32 %.0278374, 1            ; 2 uses
  %exitcond.not519 = icmp eq i32 %i.qa, 64
  br i1 %exitcond.not519, label %.thread520, label %.backedge.backedge

.thread520:                                       ; preds = %.thread517
  %i.qb = getelementptr inbounds nuw i8, ptr %.2371.ph, i64 4
  store i32 2147483647, ptr %.2371.ph, align 4, !tbaa !32
  br label %fcol.exit323.us.preheader

.thread:                                          ; preds = %fcol.exit311.thread
  %i.qc = add nuw nsw i32 %.0278374, 1            ; 2 uses
  %exitcond.not512 = icmp eq i32 %i.qc, 64
  br i1 %exitcond.not512, label %.thread514, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.thread, %.thread517
  %.0278374.be = phi i32 [ %i.qc, %.thread ], [ %i.qa, %.thread517 ]
  br label %.backedge

.thread514:                                       ; preds = %.thread
  %i.qd = getelementptr inbounds nuw i8, ptr %.2371.ph, i64 4
  store i32 2147483647, ptr %.2371.ph, align 4, !tbaa !32
  br label %fcol.exit323.thread.preheader

.split379.us:                                     ; preds = %fcol.exit323.thread.7, %.split379.us.loopexit
  %indvars.iv.next.pre-phi = phi i64 [ %i.qt, %fcol.exit323.thread.7 ], [ %.pre469, %.split379.us.loopexit ] ; 2 uses
  %.us-phi = phi ptr [ %.8.7, %fcol.exit323.thread.7 ], [ %.8.us.7, %.split379.us.loopexit ] ; 2 uses
  %exitcond414.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond414.not, label %bb.h, label %bb.i

fcol.exit326:                                     ; preds = %fcol.exit323.thread.preheader
  %.tr.i.i324 = or disjoint i32 %i.cc, %i.dp
  %i.qe = shl nuw nsw i32 %.tr.i.i324, 1
  %i.qf = lshr i32 %.0286, %i.qe
  %i.qg = and i32 %i.qf, 3
  %i.qh = icmp eq i32 %i.qg, %i.ej
  %i.qi = or disjoint i32 %i.ej, %i.y
  %spec.select = select i1 %i.qh, i32 %i.qi, i32 0
  br label %fcol.exit323.thread.1

fcol.exit323.thread.1:                            ; preds = %fcol.exit326, %fcol.exit323.thread.preheader
  %storemerge = phi i32 [ 0, %fcol.exit323.thread.preheader ], [ %spec.select, %fcol.exit326 ]
  %.8 = getelementptr inbounds nuw i8, ptr %.6513516, i64 12
  store i32 %storemerge, ptr %i.ek, align 4, !tbaa !32
  %i.qj = getelementptr inbounds nuw i8, ptr %.6513516, i64 16
  store i32 %i.z, ptr %.8, align 4, !tbaa !32
  %.tr.i.i321.1 = or disjoint i32 %i.bz, %i.dp
  %i.qk = shl nuw nsw i32 %.tr.i.i321.1, 1
  %i.ql = lshr i32 %.0286, %i.qk
  %i.qm = and i32 %i.ql, 3
  %.not306356.1 = icmp eq i32 %i.qm, %i.ej
  br i1 %.not306356.1, label %fcol.exit323.thread.2, label %fcol.exit326.1

fcol.exit326.1:                                   ; preds = %fcol.exit323.thread.1
  %.tr.i.i324.1 = or disjoint i32 %i.cf, %i.dp
  %i.qn = shl nuw nsw i32 %.tr.i.i324.1, 1
  %i.qo = lshr i32 %.0286, %i.qn
  %i.qp = and i32 %i.qo, 3
  %i.qq = icmp eq i32 %i.qp, %i.ej
  %i.qr = or disjoint i32 %i.ej, %i.aa
  %spec.select581 = select i1 %i.qq, i32 %i.qr, i32 0
  br label %fcol.exit323.thread.2

fcol.exit323.thread.2:                            ; preds = %fcol.exit326.1, %fcol.exit323.thread.1
  %storemerge.1 = phi i32 [ 0, %fcol.exit323.thread.1 ], [ %spec.select581, %fcol.exit326.1 ]
  %.8.1 = getelementptr inbounds nuw i8, ptr %.6513516, i64 20
  store i32 %storemerge.1, ptr %i.qj, align 4, !tbaa !32
  %i.qs = getelementptr inbounds nuw i8, ptr %.6513516, i64 24
  store i32 %i.ac, ptr %.8.1, align 4, !tbaa !32
  %i.qt = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.qu = trunc nuw nsw i64 %i.qt to i32
  %i.qv = and i32 %i.qu, 1                        ; 3 uses
  %.tr.i.i321.2 = or disjoint i32 %i.bz, %i.qv
  %i.qw = shl nuw nsw i32 %.tr.i.i321.2, 1
  %i.qx = lshr i32 %.0286, %i.qw
  %i.qy = and i32 %i.qx, 3
  %.not306356.2 = icmp eq i32 %i.qy, %i.ej
  br i1 %.not306356.2, label %fcol.exit323.thread.3, label %fcol.exit326.2

fcol.exit326.2:                                   ; preds = %fcol.exit323.thread.2
  %.tr.i.i324.2 = or disjoint i32 %i.ci, %i.dp
  %i.qz = shl nuw nsw i32 %.tr.i.i324.2, 1
  %i.ra = lshr i32 %.0286, %i.qz
  %i.rb = and i32 %i.ra, 3
  %i.rc = icmp eq i32 %i.rb, %i.ej
  %i.rd = or disjoint i32 %i.ej, %i.ad
  %spec.select582 = select i1 %i.rc, i32 %i.rd, i32 0
  br label %fcol.exit323.thread.3

fcol.exit323.thread.3:                            ; preds = %fcol.exit326.2, %fcol.exit323.thread.2
  %storemerge.2 = phi i32 [ 0, %fcol.exit323.thread.2 ], [ %spec.select582, %fcol.exit326.2 ]
  %.8.2 = getelementptr inbounds nuw i8, ptr %.6513516, i64 28
  store i32 %storemerge.2, ptr %i.qs, align 4, !tbaa !32
  %i.re = getelementptr inbounds nuw i8, ptr %.6513516, i64 32
  store i32 4, ptr %.8.2, align 4, !tbaa !32
  %.tr.i.i321.3 = or disjoint i32 %i.bi, %i.qv
  %i.rf = shl nuw nsw i32 %.tr.i.i321.3, 1
  %i.rg = lshr i32 %.0286, %i.rf
  %i.rh = and i32 %i.rg, 3
  %.not306356.3 = icmp eq i32 %i.rh, %i.ej
  %i.ri = or disjoint i32 %i.ej, 8
  %spec.select583 = select i1 %.not306356.3, i32 0, i32 %i.ri
  %.8.3 = getelementptr inbounds nuw i8, ptr %.6513516, i64 36
  store i32 %spec.select583, ptr %i.re, align 4, !tbaa !32
  %i.rj = getelementptr inbounds nuw i8, ptr %.6513516, i64 40
  store i32 %i.af, ptr %.8.3, align 4, !tbaa !32
  %.tr.i.i321.4 = or disjoint i32 %i.cl, %i.qv
  %i.rk = shl nuw nsw i32 %.tr.i.i321.4, 1
  %i.rl = lshr i32 %.0286, %i.rk
  %i.rm = and i32 %i.rl, 3
  %.not306356.4 = icmp eq i32 %i.rm, %i.ej
  br i1 %.not306356.4, label %fcol.exit323.thread.5, label %fcol.exit326.4

fcol.exit326.4:                                   ; preds = %fcol.exit323.thread.3
  %.tr.i.i324.4 = or disjoint i32 %i.co, %i.dp
  %i.rn = shl nuw nsw i32 %.tr.i.i324.4, 1
  %i.ro = lshr i32 %.0286, %i.rn
  %i.rp = and i32 %i.ro, 3
  %i.rq = icmp eq i32 %i.rp, %i.ej
  %i.rr = or disjoint i32 %i.ej, %i.ag
  %spec.select584 = select i1 %i.rq, i32 %i.rr, i32 0
  br label %fcol.exit323.thread.5

fcol.exit323.thread.5:                            ; preds = %fcol.exit326.4, %fcol.exit323.thread.3
  %storemerge.4 = phi i32 [ 0, %fcol.exit323.thread.3 ], [ %spec.select584, %fcol.exit326.4 ]
  %.8.4 = getelementptr inbounds nuw i8, ptr %.6513516, i64 44
  store i32 %storemerge.4, ptr %i.rj, align 4, !tbaa !32
  %i.rs = getelementptr inbounds nuw i8, ptr %.6513516, i64 48
  store i32 %i.ah, ptr %.8.4, align 4, !tbaa !32
  %.tr.i.i321.5 = or disjoint i32 %i.cl, %i.dp
  %i.rt = shl nuw nsw i32 %.tr.i.i321.5, 1
  %i.ru = lshr i32 %.0286, %i.rt
  %i.rv = and i32 %i.ru, 3
  %.not306356.5 = icmp eq i32 %i.rv, %i.ej
  br i1 %.not306356.5, label %fcol.exit323.thread.6, label %fcol.exit326.5

fcol.exit326.5:                                   ; preds = %fcol.exit323.thread.5
  %.tr.i.i324.5 = or disjoint i32 %i.cr, %i.dp
  %i.rw = shl nuw nsw i32 %.tr.i.i324.5, 1
  %i.rx = lshr i32 %.0286, %i.rw
  %i.ry = and i32 %i.rx, 3
  %i.rz = icmp eq i32 %i.ry, %i.ej
  %i.sa = or disjoint i32 %i.ej, %i.ai
  %spec.select585 = select i1 %i.rz, i32 %i.sa, i32 0
  br label %fcol.exit323.thread.6

fcol.exit323.thread.6:                            ; preds = %fcol.exit326.5, %fcol.exit323.thread.5
  %storemerge.5 = phi i32 [ 0, %fcol.exit323.thread.5 ], [ %spec.select585, %fcol.exit326.5 ]
  %.8.5 = getelementptr inbounds nuw i8, ptr %.6513516, i64 52
  store i32 %storemerge.5, ptr %i.rs, align 4, !tbaa !32
  %i.sb = getelementptr inbounds nuw i8, ptr %.6513516, i64 56
  store i32 %i.ak, ptr %.8.5, align 4, !tbaa !32
  %.tr.i.i321.6 = or disjoint i32 %i.cl, %i.en
  %i.sc = shl nuw nsw i32 %.tr.i.i321.6, 1
  %i.sd = lshr i32 %.0286, %i.sc
  %i.se = and i32 %i.sd, 3
  %.not306356.6 = icmp eq i32 %i.se, %i.ej
  br i1 %.not306356.6, label %fcol.exit323.thread.7, label %fcol.exit326.6

fcol.exit326.6:                                   ; preds = %fcol.exit323.thread.6
  %.tr.i.i324.6 = or disjoint i32 %i.cu, %i.dp
  %i.sf = shl nuw nsw i32 %.tr.i.i324.6, 1
  %i.sg = lshr i32 %.0286, %i.sf
  %i.sh = and i32 %i.sg, 3
  %i.si = icmp eq i32 %i.sh, %i.ej
  %i.sj = or disjoint i32 %i.ej, %i.al
  %spec.select586 = select i1 %i.si, i32 %i.sj, i32 0
  br label %fcol.exit323.thread.7

fcol.exit323.thread.7:                            ; preds = %fcol.exit326.6, %fcol.exit323.thread.6
  %storemerge.6 = phi i32 [ 0, %fcol.exit323.thread.6 ], [ %spec.select586, %fcol.exit326.6 ]
  %.8.6 = getelementptr inbounds nuw i8, ptr %.6513516, i64 60
  store i32 %storemerge.6, ptr %i.sb, align 4, !tbaa !32
  %i.sk = getelementptr inbounds nuw i8, ptr %.6513516, i64 64
  store i32 -4, ptr %.8.6, align 4, !tbaa !32
  %.tr.i.i321.7 = or disjoint i32 %i.bi, %i.en
  %i.sl = shl nuw nsw i32 %.tr.i.i321.7, 1
  %i.sm = lshr i32 %.0286, %i.sl
  %i.sn = and i32 %i.sm, 3
  %.not306356.7 = icmp eq i32 %i.sn, %i.ej
  %i.so = or disjoint i32 %i.ej, -8
  %spec.select587 = select i1 %.not306356.7, i32 0, i32 %i.so
  %.8.7 = getelementptr inbounds nuw i8, ptr %.6513516, i64 68
  store i32 %spec.select587, ptr %i.sk, align 4, !tbaa !32
  br label %.split379.us

.preheader364:                                    ; preds = %.preheader364.lr.ph, %bb.ex
  %.sroa.11.0 = phi ptr [ %i.s, %.preheader364.lr.ph ], [ %.sroa.0.0, %bb.ex ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.r, %.preheader364.lr.ph ], [ %.sroa.11.0, %bb.ex ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.q, %.preheader364.lr.ph ], [ %.sroa.7.0, %bb.ex ] ; 2 uses
  %indvars.iv447 = phi i64 [ 2, %.preheader364.lr.ph ], [ %indvars.iv.next448, %bb.ex ] ; 7 uses
  br i1 %i.cz, label %.lr.ph398, label %._crit_edge399

.lr.ph398:                                        ; preds = %.preheader364
  %i.sp = trunc nuw nsw i64 %indvars.iv447 to i32
  %i.sq = urem i32 %i.sp, %i.l
  %i.sr = zext nneg i32 %i.sq to i64
  %i.ss = getelementptr inbounds nuw [128 x i8], ptr %i.a, i64 %i.sr
  %indvars.iv447.tr = trunc i64 %indvars.iv447 to i32
  %i.st = shl i32 %indvars.iv447.tr, 1
  %i.su = and i32 %i.st, 14
  %i.sv = trunc i64 %indvars.iv447 to i32
  %i.sw = add i32 %i.sv, 600
  %i.sx = urem i32 %i.sw, 6
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw [6 x i8], ptr %5, i64 %i.sy
  %i.ta = trunc i64 %indvars.iv447 to i32
  %i.tb = mul i32 %2, %i.ta
  br label %bb.an

._crit_edge402:                                   ; preds = %bb.ex, %.preheader365.._crit_edge402_crit_edge
  %.pre-phi475 = phi i64 [ %.pre474, %.preheader365.._crit_edge402_crit_edge ], [ %i.dc, %bb.ex ] ; 2 uses
  %.pre-phi = phi i32 [ %.pre471, %.preheader365.._crit_edge402_crit_edge ], [ %i.da, %bb.ex ] ; 2 uses
  %.sroa.7.1 = phi ptr [ %i.r, %.preheader365.._crit_edge402_crit_edge ], [ %.sroa.11.0, %bb.ex ]
  %.sroa.0.1 = phi ptr [ %i.q, %.preheader365.._crit_edge402_crit_edge ], [ %.sroa.7.0, %bb.ex ]
  %i.tc = add i32 %3, 1073741820
  %i.td = mul i32 %.pre-phi, %i.tc
  %i.te = add i32 %i.td, 8
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 32
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.tg, ptr noundef nonnull %i.th, i64 noundef %.pre-phi475) #27
  %i.ti = add i32 %3, 1073741821
  %i.tj = mul i32 %.pre-phi, %i.ti
  %i.tk = add i32 %i.tj, 8
  %i.tl = sext i32 %i.tk to i64
  %i.tm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %.sroa.7.1, i64 32
  tail call void @dt_iop_image_copy(ptr noundef nonnull %i.tm, ptr noundef nonnull %i.tn, i64 noundef %.pre-phi475) #27
  tail call void @free(ptr noundef %i.q) #27
  br label %._crit_edge470

._crit_edge399:                                   ; preds = %bb.ev, %.preheader364
  %i.to = icmp samesign ugt i64 %indvars.iv447, 3
  br i1 %i.to, label %bb.ew, label %bb.ex

bb.an:                                            ; preds = %.lr.ph398, %bb.ev
  %indvars.iv438 = phi i64 [ 2, %.lr.ph398 ], [ %indvars.iv.next439, %bb.ev ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.tp = trunc i64 %indvars.iv438 to i32
  %i.tq = add i32 %i.tb, %i.tp
  %i.tr = shl nsw i32 %i.tq, 2
  %i.ts = zext nneg i32 %i.tr to i64
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ts ; 60 uses
  %i.tu = trunc nuw nsw i64 %indvars.iv438 to i32 ; 2 uses
  %i.tv = urem i32 %i.tu, %i.k
  %i.tw = zext nneg i32 %i.tv to i64
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.tw
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !600 ; 3 uses
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !32 ; 2 uses
  %.not302385 = icmp eq i32 %i.tz, 2147483647
  br i1 %.not302385, label %._crit_edge, label %.lr.ph387

.lr.ph387:                                        ; preds = %bb.an, %.loopexit362
  %i.ua = phi i32 [ %i.vn, %.loopexit362 ], [ %i.tz, %bb.an ]
  %.9386 = phi ptr [ %.11, %.loopexit362 ], [ %i.ty, %bb.an ] ; 6 uses
  %i.ub = sext i32 %i.ua to i64
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.ub
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !22
  %i.ue = getelementptr inbounds nuw i8, ptr %.9386, i64 4
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !32
  %i.ug = sext i32 %i.uf to i64
  %i.uh = getelementptr inbounds [4 x i8], ptr %i.tt, i64 %i.ug
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !22
  %i.uj = fsub reassoc nsz arcp contract afn float %i.ud, %i.ui
  %i.uk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.uj)
  %i.ul = getelementptr inbounds nuw i8, ptr %.9386, i64 8
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !32
  %i.un = sitofp reassoc nsz arcp contract afn i32 %i.um to float
  %i.uo = fmul reassoc nsz arcp contract afn float %i.uk, %i.un ; 3 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.9386, i64 12
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !32
  %i.ur = sext i32 %i.uq to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ur ; 2 uses
  %i.ut = load float, ptr %i.us, align 4, !tbaa !22
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, %i.uo
  store float %i.uu, ptr %i.us, align 4, !tbaa !22
  %i.uv = getelementptr inbounds nuw i8, ptr %.9386, i64 20 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.9386, i64 16
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !32 ; 2 uses
  %i.uy = icmp eq i32 %i.ux, -1
  br i1 %i.uy, label %.loopexit362, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph387
  %i.uz = sext i32 %i.ux to i64
  %i.va = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.uz ; 2 uses
  %i.vb = load float, ptr %i.va, align 4, !tbaa !22
  %i.vc = fadd reassoc nsz arcp contract afn float %i.vb, %i.uo
  store float %i.vc, ptr %i.va, align 4, !tbaa !22
  %i.vd = getelementptr inbounds nuw i8, ptr %.9386, i64 24 ; 2 uses
  %i.ve = load i32, ptr %i.uv, align 4, !tbaa !32 ; 2 uses
  %.not305384 = icmp eq i32 %i.ve, -1
  br i1 %.not305384, label %.loopexit362, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %.lr.ph
  %i.vf = phi i32 [ %i.vm, %.lr.ph ], [ %i.ve, %bb.ao ]
  %i.vg = phi ptr [ %i.vl, %.lr.ph ], [ %i.vd, %bb.ao ] ; 2 uses
  %i.vh = sext i32 %i.vf to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.vh ; 2 uses
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !22
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, %i.uo
  store float %i.vk, ptr %i.vi, align 4, !tbaa !22
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 4 ; 2 uses
  %i.vm = load i32, ptr %i.vg, align 4, !tbaa !32 ; 2 uses
  %.not305 = icmp eq i32 %i.vm, -1
  br i1 %.not305, label %.loopexit362, label %.lr.ph

.loopexit362:                                     ; preds = %.lr.ph, %bb.ao, %.lr.ph387
  %.11 = phi ptr [ %i.uv, %.lr.ph387 ], [ %i.vd, %bb.ao ], [ %i.vl, %.lr.ph ] ; 3 uses
  %i.vn = load i32, ptr %.11, align 4, !tbaa !32  ; 2 uses
  %.not302 = icmp eq i32 %i.vn, 2147483647
  br i1 %.not302, label %._crit_edge.loopexit, label %.lr.ph387

._crit_edge.loopexit:                             ; preds = %.loopexit362
  %.pre = load float, ptr %i.b, align 16, !tbaa !22
  %.pre456 = load float, ptr %.phi.trans.insert, align 4, !tbaa !22
  %.pre458 = load float, ptr %.phi.trans.insert457, align 8, !tbaa !22
  %.pre460 = load float, ptr %.phi.trans.insert459, align 4, !tbaa !22
  %.pre462 = load float, ptr %.phi.trans.insert461, align 16, !tbaa !22
  %.pre464 = load float, ptr %.phi.trans.insert463, align 4, !tbaa !22
  %.pre466 = load float, ptr %.phi.trans.insert465, align 8, !tbaa !22
  %.pre468 = load float, ptr %.phi.trans.insert467, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.an
  %i.vo = phi float [ 0.000000e+00, %bb.an ], [ %.pre468, %._crit_edge.loopexit ] ; 5 uses
  %i.vp = phi float [ 0.000000e+00, %bb.an ], [ %.pre466, %._crit_edge.loopexit ] ; 5 uses
  %i.vq = phi float [ 0.000000e+00, %bb.an ], [ %.pre464, %._crit_edge.loopexit ] ; 5 uses
  %i.vr = phi float [ 0.000000e+00, %bb.an ], [ %.pre462, %._crit_edge.loopexit ] ; 5 uses
  %i.vs = phi float [ 0.000000e+00, %bb.an ], [ %.pre460, %._crit_edge.loopexit ] ; 5 uses
  %i.vt = phi float [ 0.000000e+00, %bb.an ], [ %.pre458, %._crit_edge.loopexit ] ; 5 uses
  %i.vu = phi float [ 0.000000e+00, %bb.an ], [ %.pre456, %._crit_edge.loopexit ] ; 5 uses
  %i.vv = phi float [ 0.000000e+00, %bb.an ], [ %.pre, %._crit_edge.loopexit ] ; 5 uses
  %.9.lcssa = phi ptr [ %i.ty, %bb.an ], [ %.11, %._crit_edge.loopexit ] ; 16 uses
  %i.vw = fcmp reassoc nsz arcp contract afn olt float %i.vv, %i.vu
  %.1269 = select nsz i1 %i.vw, float %i.vu, float %i.vv ; 2 uses
  %i.vx = fcmp reassoc nsz arcp contract afn olt float %.1269, %i.vt
  %.1269.1 = select nsz i1 %i.vx, float %i.vt, float %.1269 ; 2 uses
  %i.vy = fcmp reassoc nsz arcp contract afn olt float %.1269.1, %i.vs
  %.1269.2 = select nsz i1 %i.vy, float %i.vs, float %.1269.1 ; 2 uses
  %i.vz = fcmp reassoc nsz arcp contract afn olt float %.1269.2, %i.vr
  %.1269.3 = select nsz i1 %i.vz, float %i.vr, float %.1269.2 ; 2 uses
  %i.wa = fcmp reassoc nsz arcp contract afn olt float %.1269.3, %i.vq
  %.1269.4 = select nsz i1 %i.wa, float %i.vq, float %.1269.3 ; 2 uses
  %i.wb = fcmp reassoc nsz arcp contract afn olt float %.1269.4, %i.vp
  %.1269.5 = select nsz i1 %i.wb, float %i.vp, float %.1269.4 ; 2 uses
  %i.wc = fcmp reassoc nsz arcp contract afn olt float %.1269.5, %i.vo
  %.1269.6 = select nsz i1 %i.wc, float %i.vo, float %.1269.5 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.9.lcssa, i64 4 ; 3 uses
  %i.we = fcmp reassoc nsz arcp contract afn oeq float %.1269.6, 0.000000e+00
  br i1 %i.we, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %._crit_edge
  %i.wf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.11.0, i64 %indvars.iv438
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.wf, ptr noundef nonnull align 4 dereferenceable(16) %i.tt, i64 16, i1 false)
  br label %bb.ev

bb.aq:                                            ; preds = %._crit_edge
  %i.wg = fcmp reassoc nsz arcp contract afn ogt float %i.vv, %i.vu
  %.1271 = select nsz i1 %i.wg, float %i.vu, float %i.vv ; 2 uses
  %i.wh = fcmp reassoc nsz arcp contract afn ogt float %.1271, %i.vt
  %.1271.1 = select nsz i1 %i.wh, float %i.vt, float %.1271 ; 2 uses
  %i.wi = fcmp reassoc nsz arcp contract afn ogt float %.1271.1, %i.vs
  %.1271.2 = select nsz i1 %i.wi, float %i.vs, float %.1271.1 ; 2 uses
  %i.wj = fcmp reassoc nsz arcp contract afn ogt float %.1271.2, %i.vr
  %.1271.3 = select nsz i1 %i.wj, float %i.vr, float %.1271.2 ; 2 uses
  %i.wk = fcmp reassoc nsz arcp contract afn ogt float %.1271.3, %i.vq
  %.1271.4 = select nsz i1 %i.wk, float %i.vq, float %.1271.3 ; 2 uses
  %i.wl = fcmp reassoc nsz arcp contract afn ogt float %.1271.4, %i.vp
  %.1271.5 = select nsz i1 %i.wl, float %i.vp, float %.1271.4 ; 2 uses
  %i.wm = fcmp reassoc nsz arcp contract afn ogt float %.1271.5, %i.vo
  %.1271.6 = select nsz i1 %i.wm, float %i.vo, float %.1271.5
  %i.wn = fmul reassoc nsz arcp contract afn float %.1269.6, 5.000000e-01
  %i.wo = fadd reassoc nsz arcp contract afn float %i.wn, %.1271.6 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  br i1 %i.u, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.wp = trunc i64 %indvars.iv438 to i32
  %i.wq = add i32 %i.wp, 600
  %i.wr = urem i32 %i.wq, 6
  %i.ws = zext nneg i32 %i.wr to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !169
  %i.wv = zext i8 %i.wu to i32
  br label %fcol.exit329

bb.as:                                            ; preds = %bb.aq
  %i.ww = and i32 %i.tu, 1
  %.tr.i.i327 = or disjoint i32 %i.ww, %i.su
  %i.wx = shl nuw nsw i32 %.tr.i.i327, 1
  %i.wy = lshr i32 %.0286, %i.wx
  %i.wz = and i32 %i.wy, 3
  br label %fcol.exit329

fcol.exit329:                                     ; preds = %bb.ar, %bb.as
  %.0.i328 = phi i32 [ %i.wv, %bb.ar ], [ %i.wz, %bb.as ]
  %i.xa = zext nneg i32 %.0.i328 to i64           ; 47 uses
end_hunk_5
begin_hunk_6_@vng_interpolate:bb.a
.lr.ph405.split.us:                               ; preds = %.lr.ph405.split.us, %.lr.ph405.split.us.preheader.new
  %.0403.us = phi i64 [ 0, %.lr.ph405.split.us.preheader.new ], [ %i.auh, %.lr.ph405.split.us ] ; 5 uses
  %niter750 = phi i64 [ 0, %.lr.ph405.split.us.preheader.new ], [ %niter750.next.3, %.lr.ph405.split.us ]
  %i.asy = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403.us ; 4 uses
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 4 ; 2 uses
  %i.ata = load float, ptr %i.asz, align 4, !tbaa !22
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asy, i64 12 ; 2 uses
  %i.atc = load float, ptr %i.atb, align 4, !tbaa !22
  %i.atd = fadd reassoc nsz arcp contract afn float %i.atc, %i.ata
  %i.ate = fmul reassoc nsz arcp contract afn float %i.atd, 5.000000e-01
  store float %i.ate, ptr %i.asz, align 4, !tbaa !22
  store float 0.000000e+00, ptr %i.atb, align 4, !tbaa !22
  %.val.i.us = load <4 x float>, ptr %i.asy, align 16, !tbaa !169
  %i.atf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us, <4 x float> zeroinitializer)
  store <4 x float> %i.atf, ptr %i.asy, align 16, !tbaa !169
  %i.atg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403.us ; 3 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 16 ; 2 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atg, i64 20 ; 2 uses
  %i.atj = load float, ptr %i.ati, align 4, !tbaa !22
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atg, i64 28 ; 2 uses
  %i.atl = load float, ptr %i.atk, align 4, !tbaa !22
  %i.atm = fadd reassoc nsz arcp contract afn float %i.atl, %i.atj
  %i.atn = fmul reassoc nsz arcp contract afn float %i.atm, 5.000000e-01
  store float %i.atn, ptr %i.ati, align 4, !tbaa !22
  store float 0.000000e+00, ptr %i.atk, align 4, !tbaa !22
  %.val.i.us.1 = load <4 x float>, ptr %i.ath, align 16, !tbaa !169
  %i.ato = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.1, <4 x float> zeroinitializer)
  store <4 x float> %i.ato, ptr %i.ath, align 16, !tbaa !169
  %i.atp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403.us ; 3 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atp, i64 32 ; 2 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atp, i64 36 ; 2 uses
  %i.ats = load float, ptr %i.atr, align 4, !tbaa !22
  %i.att = getelementptr inbounds nuw i8, ptr %i.atp, i64 44 ; 2 uses
  %i.atu = load float, ptr %i.att, align 4, !tbaa !22
  %i.atv = fadd reassoc nsz arcp contract afn float %i.atu, %i.ats
  %i.atw = fmul reassoc nsz arcp contract afn float %i.atv, 5.000000e-01
  store float %i.atw, ptr %i.atr, align 4, !tbaa !22
  store float 0.000000e+00, ptr %i.att, align 4, !tbaa !22
  %.val.i.us.2 = load <4 x float>, ptr %i.atq, align 16, !tbaa !169
  %i.atx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.2, <4 x float> zeroinitializer)
  store <4 x float> %i.atx, ptr %i.atq, align 16, !tbaa !169
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403.us ; 3 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 48 ; 2 uses
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aty, i64 52 ; 2 uses
  %i.aub = load float, ptr %i.aua, align 4, !tbaa !22
  %i.auc = getelementptr inbounds nuw i8, ptr %i.aty, i64 60 ; 2 uses
  %i.aud = load float, ptr %i.auc, align 4, !tbaa !22
  %i.aue = fadd reassoc nsz arcp contract afn float %i.aud, %i.aub
  %i.auf = fmul reassoc nsz arcp contract afn float %i.aue, 5.000000e-01
  store float %i.auf, ptr %i.aua, align 4, !tbaa !22
  store float 0.000000e+00, ptr %i.auc, align 4, !tbaa !22
  %.val.i.us.3 = load <4 x float>, ptr %i.atz, align 16, !tbaa !169
  %i.aug = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.3, <4 x float> zeroinitializer)
  store <4 x float> %i.aug, ptr %i.atz, align 16, !tbaa !169
  %i.auh = add nuw i64 %.0403.us, 16              ; 2 uses
  %niter750.next.3 = add nuw i64 %niter750, 4     ; 2 uses
  %niter750.ncmp.3.not = icmp eq i64 %niter750.next.3, %unroll_iter749
  br i1 %niter750.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph405.split.us

.lr.ph405.split:                                  ; preds = %.lr.ph405.split, %.lr.ph405.split.preheader.new
  %.0403 = phi i64 [ 0, %.lr.ph405.split.preheader.new ], [ %i.avf, %.lr.ph405.split ] ; 9 uses
  %niter744 = phi i64 [ 0, %.lr.ph405.split.preheader.new ], [ %niter744.next.7, %.lr.ph405.split ]
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403 ; 2 uses
  %.val.i = load <4 x float>, ptr %i.aui, align 16, !tbaa !169
  %i.auj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i, <4 x float> zeroinitializer)
  store <4 x float> %i.auj, ptr %i.aui, align 16, !tbaa !169
  %i.auk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 16 ; 2 uses
  %.val.i.1 = load <4 x float>, ptr %i.aul, align 16, !tbaa !169
  %i.aum = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.1, <4 x float> zeroinitializer)
  store <4 x float> %i.aum, ptr %i.aul, align 16, !tbaa !169
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403
  %i.auo = getelementptr inbounds nuw i8, ptr %i.aun, i64 32 ; 2 uses
  %.val.i.2 = load <4 x float>, ptr %i.auo, align 16, !tbaa !169
  %i.aup = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.2, <4 x float> zeroinitializer)
  store <4 x float> %i.aup, ptr %i.auo, align 16, !tbaa !169
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 48 ; 2 uses
  %.val.i.3 = load <4 x float>, ptr %i.aur, align 16, !tbaa !169
  %i.aus = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.3, <4 x float> zeroinitializer)
  store <4 x float> %i.aus, ptr %i.aur, align 16, !tbaa !169
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 64 ; 2 uses
  %.val.i.4 = load <4 x float>, ptr %i.auu, align 16, !tbaa !169
  %i.auv = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.4, <4 x float> zeroinitializer)
  store <4 x float> %i.auv, ptr %i.auu, align 16, !tbaa !169
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 80 ; 2 uses
  %.val.i.5 = load <4 x float>, ptr %i.aux, align 16, !tbaa !169
  %i.auy = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.5, <4 x float> zeroinitializer)
  store <4 x float> %i.auy, ptr %i.aux, align 16, !tbaa !169
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 96 ; 2 uses
  %.val.i.6 = load <4 x float>, ptr %i.ava, align 16, !tbaa !169
  %i.avb = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.6, <4 x float> zeroinitializer)
  store <4 x float> %i.avb, ptr %i.ava, align 16, !tbaa !169
  %i.avc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 112 ; 2 uses
  %.val.i.7 = load <4 x float>, ptr %i.avd, align 16, !tbaa !169
  %i.ave = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.7, <4 x float> zeroinitializer)
  store <4 x float> %i.ave, ptr %i.avd, align 16, !tbaa !169
  %i.avf = add nuw i64 %.0403, 32                 ; 2 uses
  %niter744.next.7 = add i64 %niter744, 8         ; 2 uses
  %niter744.ncmp.7.not = icmp eq i64 %niter744.next.7, %unroll_iter743
  br i1 %niter744.ncmp.7.not, label %.loopexit.loopexit638.unr-lcssa, label %.lr.ph405.split

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph405.split.us
  %lcmp.mod747.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod747.not, label %.loopexit, label %.lr.ph405.split.us.epil.preheader

.lr.ph405.split.us.epil.preheader:                ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph405.split.us.preheader
  %.0403.us.epil.init = phi i64 [ 0, %.lr.ph405.split.us.preheader ], [ %i.auh, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod748 = icmp ne i64 %xtraiter745, 0
  tail call void @llvm.assume(i1 %lcmp.mod748)
  br label %.lr.ph405.split.us.epil

.lr.ph405.split.us.epil:                          ; preds = %.lr.ph405.split.us.epil, %.lr.ph405.split.us.epil.preheader
  %.0403.us.epil = phi i64 [ %i.avo, %.lr.ph405.split.us.epil ], [ %.0403.us.epil.init, %.lr.ph405.split.us.epil.preheader ] ; 2 uses
  %epil.iter746 = phi i64 [ %epil.iter746.next, %.lr.ph405.split.us.epil ], [ 0, %.lr.ph405.split.us.epil.preheader ]
  %i.avg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403.us.epil ; 4 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 4 ; 2 uses
  %i.avi = load float, ptr %i.avh, align 4, !tbaa !22
  %i.avj = getelementptr inbounds nuw i8, ptr %i.avg, i64 12 ; 2 uses
  %i.avk = load float, ptr %i.avj, align 4, !tbaa !22
  %i.avl = fadd reassoc nsz arcp contract afn float %i.avk, %i.avi
  %i.avm = fmul reassoc nsz arcp contract afn float %i.avl, 5.000000e-01
  store float %i.avm, ptr %i.avh, align 4, !tbaa !22
  store float 0.000000e+00, ptr %i.avj, align 4, !tbaa !22
  %.val.i.us.epil = load <4 x float>, ptr %i.avg, align 16, !tbaa !169
  %i.avn = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.us.epil, <4 x float> zeroinitializer)
  store <4 x float> %i.avn, ptr %i.avg, align 16, !tbaa !169
  %i.avo = add nuw i64 %.0403.us.epil, 4
  %epil.iter746.next = add i64 %epil.iter746, 1   ; 2 uses
  %epil.iter746.cmp.not = icmp eq i64 %epil.iter746.next, %xtraiter745
  br i1 %epil.iter746.cmp.not, label %.loopexit, label %.lr.ph405.split.us.epil, !llvm.loop !602

.loopexit.loopexit638.unr-lcssa:                  ; preds = %.lr.ph405.split
  %lcmp.mod741.not = icmp eq i64 %xtraiter739, 0
  br i1 %lcmp.mod741.not, label %.loopexit, label %.lr.ph405.split.epil.preheader

.lr.ph405.split.epil.preheader:                   ; preds = %.loopexit.loopexit638.unr-lcssa, %.lr.ph405.split.preheader
  %.0403.epil.init = phi i64 [ 0, %.lr.ph405.split.preheader ], [ %i.avf, %.loopexit.loopexit638.unr-lcssa ]
  %lcmp.mod742 = icmp ne i64 %xtraiter739, 0
  tail call void @llvm.assume(i1 %lcmp.mod742)
  br label %.lr.ph405.split.epil

.lr.ph405.split.epil:                             ; preds = %.lr.ph405.split.epil, %.lr.ph405.split.epil.preheader
  %.0403.epil = phi i64 [ %i.avr, %.lr.ph405.split.epil ], [ %.0403.epil.init, %.lr.ph405.split.epil.preheader ] ; 2 uses
  %epil.iter740 = phi i64 [ %epil.iter740.next, %.lr.ph405.split.epil ], [ 0, %.lr.ph405.split.epil.preheader ]
  %i.avp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0403.epil ; 2 uses
  %.val.i.epil = load <4 x float>, ptr %i.avp, align 16, !tbaa !169
  %i.avq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.val.i.epil, <4 x float> zeroinitializer)
  store <4 x float> %i.avq, ptr %i.avp, align 16, !tbaa !169
  %i.avr = add nuw i64 %.0403.epil, 4
  %epil.iter740.next = add i64 %epil.iter740, 1   ; 2 uses
  %epil.iter740.cmp.not = icmp eq i64 %epil.iter740.next, %xtraiter739
  br i1 %epil.iter740.cmp.not, label %.loopexit, label %.lr.ph405.split.epil, !llvm.loop !603

.loopexit:                                        ; preds = %.loopexit.loopexit638.unr-lcssa, %.lr.ph405.split.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph405.split.us.epil, %._crit_edge470, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

declare void @dt_colorspaces_cygm_to_rgb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @demosaic_ppg(ptr nofree noundef nonnull captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 10, 9) %4, float noundef %5, i32 noundef range(i32 4, 100001) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [9 x float], align 16             ; 20 uses
  %i.b = alloca [8 x float], align 16             ; 18 uses
  %i.c = alloca [4 x float], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.d = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.d, label %.preheader402.lr.ph, label %._crit_edge411.split

.preheader402.lr.ph:                              ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 0
  %i.f = add nsw i32 %2, -3
  %i.g = sext i32 %2 to i64                       ; 9 uses
  %i.h = zext i32 %2 to i64
  br i1 %i.e, label %.preheader402.preheader, label %._crit_edge411.split

.preheader402.preheader:                          ; preds = %.preheader402.lr.ph
  %i.i = add nsw i32 %3, -3
  %i.j = sext i32 %i.i to i64
  %i.k = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader402

.preheader402:                                    ; preds = %.preheader402.preheader, %._crit_edge
  %indvars.iv452 = phi i64 [ 0, %.preheader402.preheader ], [ %indvars.iv.next453.pre-phi, %._crit_edge ] ; 9 uses
  %i.q = icmp samesign ugt i64 %indvars.iv452, 2
  %i.r = icmp slt i64 %indvars.iv452, %i.j
  %spec.select = select i1 %i.r, i32 %i.f, i32 3
  %i.s = add nsw i64 %indvars.iv452, -1           ; 2 uses
  %indvars.iv452.tr = trunc i64 %indvars.iv452 to i32
  %i.t = shl i32 %indvars.iv452.tr, 1
  %i.u = and i32 %i.t, 14                         ; 4 uses
  %i.v = mul nuw nsw i64 %indvars.iv452, %i.h
  %i.w = mul nuw nsw i64 %indvars.iv452, %i.g     ; 2 uses
  %i.x = trunc nsw i64 %i.s to i32                ; 4 uses
  %i.y = shl i32 %i.x, 1
  %i.z = and i32 %i.y, 14                         ; 3 uses
  %i.aa = mul nuw nsw i64 %i.s, %i.g
  %i.ab = getelementptr [4 x i8], ptr %1, i64 %i.aa ; 3 uses
  %i.ac = getelementptr [4 x i8], ptr %1, i64 %i.w ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv452 to i32 ; 3 uses
  %i.ae = add nuw nsw i64 %indvars.iv452, 1       ; 5 uses
  %i.af = icmp slt i64 %i.ae, %i.k
  %.tr = trunc i64 %i.ae to i32
  %i.ag = shl i32 %.tr, 1
  %i.ah = and i32 %i.ag, 14                       ; 3 uses
  %i.ai = mul nuw nsw i64 %i.ae, %i.g
  %i.aj = getelementptr [4 x i8], ptr %1, i64 %i.ai ; 3 uses
  %i.ak = trunc nuw nsw i64 %i.ae to i32          ; 3 uses
  br label %bb.b

._crit_edge411.split:                             ; preds = %._crit_edge, %.preheader402.lr.ph, %bb.a
  %i.al = fcmp reassoc nsz arcp contract afn ogt float %5, 0.000000e+00 ; 2 uses
  br i1 %i.al, label %bb.x, label %pre_median.exit

bb.b:                                             ; preds = %.preheader402, %bb.w
  %.0322408 = phi i32 [ 0, %.preheader402 ], [ %i.hk, %bb.w ] ; 2 uses
  %i.am = icmp eq i32 %.0322408, 3
  %or.cond = select i1 %i.am, i1 %i.q, i1 false
  %.1323 = select i1 %or.cond, i32 %spec.select, i32 %.0322408 ; 5 uses
  %i.an = icmp eq i32 %.1323, %2
  br i1 %i.an, label %.._crit_edge_crit_edge, label %.split.preheader

.._crit_edge_crit_edge:                           ; preds = %bb.b
  %.pre = add nuw nsw i64 %indvars.iv452, 1
  br label %._crit_edge

.split.preheader:                                 ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.ao = add i32 %.1323, -1                      ; 10 uses
  %i.ap = sext i32 %i.ao to i64                   ; 9 uses
  %i.aq = or i32 %i.ao, %i.x
  %or.cond3 = icmp sgt i32 %i.aq, -1
  %i.ar = icmp slt i32 %i.ao, %2
  %or.cond354 = and i1 %i.ar, %or.cond3
  br i1 %or.cond354, label %bb.i, label %.split.1

.split.preheader.1:                               ; preds = %bb.k, %.split.2
  %i.as = or i32 %i.ao, %i.ad
  %or.cond3.1440 = icmp sgt i32 %i.as, -1
  %i.at = icmp slt i32 %i.ao, %2
  %or.cond354.1441 = and i1 %i.at, %or.cond3.1440
  br i1 %or.cond354.1441, label %bb.c, label %.split.1.1

bb.c:                                             ; preds = %.split.preheader.1
  %i.au = and i32 %i.ao, 1
  %.tr.i365.1443 = or disjoint i32 %i.au, %i.u
  %i.av = shl nuw nsw i32 %.tr.i365.1443, 1
  %i.aw = lshr i32 %4, %i.av
  %i.ax = and i32 %i.aw, 3
  %i.ay = getelementptr [4 x i8], ptr %i.ac, i64 %i.ap
  %i.az = load float, ptr %i.ay, align 4, !tbaa !22
  %i.ba = zext nneg i32 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ba ; 3 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !22
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bc, %i.az
  store float %i.bd, ptr %i.bb, align 4, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bf = load float, ptr %i.be, align 4, !tbaa !22
  %i.bg = fadd reassoc nsz arcp contract afn float %i.bf, 1.000000e+00
  store float %i.bg, ptr %i.be, align 4, !tbaa !22
  br label %.split.1.1

.split.1.1:                                       ; preds = %bb.c, %.split.preheader.1
  %indvars.iv.next.1444 = add nsw i64 %i.ap, 1    ; 3 uses
  %i.bh = trunc nsw i64 %indvars.iv.next.1444 to i32 ; 2 uses
  %i.bi = or i32 %i.bh, %i.ad
  %or.cond3.1.1 = icmp sgt i32 %i.bi, -1
  %i.bj = icmp slt i64 %indvars.iv.next.1444, %i.g
  %or.cond354.1.1 = and i1 %i.bj, %or.cond3.1.1
  br i1 %or.cond354.1.1, label %bb.d, label %.split.2.1

bb.d:                                             ; preds = %.split.1.1
  %i.bk = and i32 %i.bh, 1
  %.tr.i365.1.1 = or disjoint i32 %i.bk, %i.u
  %i.bl = shl nuw nsw i32 %.tr.i365.1.1, 1
  %i.bm = lshr i32 %4, %i.bl
  %i.bn = and i32 %i.bm, 3
  %i.bo = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv.next.1444
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !22
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bq ; 3 uses
  %i.bs = load float, ptr %i.br, align 4, !tbaa !22
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %i.bp
  store float %i.bt, ptr %i.br, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !22
  %i.bw = fadd reassoc nsz arcp contract afn float %i.bv, 1.000000e+00
  store float %i.bw, ptr %i.bu, align 4, !tbaa !22
  br label %.split.2.1

.split.2.1:                                       ; preds = %bb.d, %.split.1.1
  %indvars.iv.next.1.1 = add nsw i64 %i.ap, 2     ; 3 uses
  %i.bx = trunc nsw i64 %indvars.iv.next.1.1 to i32 ; 2 uses
  %i.by = or i32 %i.bx, %i.ad
  %or.cond3.2.1 = icmp sgt i32 %i.by, -1
  %i.bz = icmp slt i64 %indvars.iv.next.1.1, %i.g
  %or.cond354.2.1 = and i1 %i.bz, %or.cond3.2.1
  br i1 %or.cond354.2.1, label %bb.e, label %.split405.us.1

bb.e:                                             ; preds = %.split.2.1
  %i.ca = and i32 %i.bx, 1
  %.tr.i365.2.1 = or disjoint i32 %i.ca, %i.u
  %i.cb = shl nuw nsw i32 %.tr.i365.2.1, 1
  %i.cc = lshr i32 %4, %i.cb
  %i.cd = and i32 %i.cc, 3
  %i.ce = getelementptr [4 x i8], ptr %i.ac, i64 %indvars.iv.next.1.1
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !22
  %i.cg = zext nneg i32 %i.cd to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cg ; 3 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !22
  %i.cj = fadd reassoc nsz arcp contract afn float %i.ci, %i.cf
  store float %i.cj, ptr %i.ch, align 4, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !22
  %i.cm = fadd reassoc nsz arcp contract afn float %i.cl, 1.000000e+00
  store float %i.cm, ptr %i.ck, align 4, !tbaa !22
  br label %.split405.us.1

.split405.us.1:                                   ; preds = %.split.2.1, %bb.e
  br i1 %i.af, label %.split.preheader.2, label %.split405.us.2

.split.preheader.2:                               ; preds = %.split405.us.1
  %i.cn = or i32 %i.ao, %i.ak
  %or.cond3.2445 = icmp sgt i32 %i.cn, -1
  %i.co = icmp slt i32 %i.ao, %2
  %or.cond354.2446 = and i1 %i.co, %or.cond3.2445
  br i1 %or.cond354.2446, label %bb.f, label %.split.1.2

bb.f:                                             ; preds = %.split.preheader.2
  %i.cp = and i32 %i.ao, 1
  %.tr.i365.2448 = or disjoint i32 %i.cp, %i.ah
  %i.cq = shl nuw nsw i32 %.tr.i365.2448, 1
  %i.cr = lshr i32 %4, %i.cq
  %i.cs = and i32 %i.cr, 3
  %i.ct = getelementptr [4 x i8], ptr %i.aj, i64 %i.ap
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !22
  %i.cv = zext nneg i32 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.cv ; 3 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !22
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, %i.cu
  store float %i.cy, ptr %i.cw, align 4, !tbaa !22
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !22
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, 1.000000e+00
  store float %i.db, ptr %i.cz, align 4, !tbaa !22
  br label %.split.1.2

.split.1.2:                                       ; preds = %bb.f, %.split.preheader.2
  %indvars.iv.next.2 = add nsw i64 %i.ap, 1       ; 3 uses
  %i.dc = trunc nsw i64 %indvars.iv.next.2 to i32 ; 2 uses
  %i.dd = or i32 %i.dc, %i.ak
  %or.cond3.1.2 = icmp sgt i32 %i.dd, -1
  %i.de = icmp slt i64 %indvars.iv.next.2, %i.g
  %or.cond354.1.2 = and i1 %i.de, %or.cond3.1.2
  br i1 %or.cond354.1.2, label %bb.g, label %.split.2.2

bb.g:                                             ; preds = %.split.1.2
  %i.df = and i32 %i.dc, 1
  %.tr.i365.1.2 = or disjoint i32 %i.df, %i.ah
  %i.dg = shl nuw nsw i32 %.tr.i365.1.2, 1
  %i.dh = lshr i32 %4, %i.dg
  %i.di = and i32 %i.dh, 3
  %i.dj = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next.2
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !22
  %i.dl = zext nneg i32 %i.di to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dl ; 3 uses
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !22
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.dk
  store float %i.do, ptr %i.dm, align 4, !tbaa !22
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !22
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dq, 1.000000e+00
  store float %i.dr, ptr %i.dp, align 4, !tbaa !22
  br label %.split.2.2

.split.2.2:                                       ; preds = %bb.g, %.split.1.2
  %indvars.iv.next.1.2 = add nsw i64 %i.ap, 2     ; 3 uses
  %i.ds = trunc nsw i64 %indvars.iv.next.1.2 to i32 ; 2 uses
  %i.dt = or i32 %i.ds, %i.ak
  %or.cond3.2.2 = icmp sgt i32 %i.dt, -1
  %i.du = icmp slt i64 %indvars.iv.next.1.2, %i.g
  %or.cond354.2.2 = and i1 %i.du, %or.cond3.2.2
  br i1 %or.cond354.2.2, label %bb.h, label %.split405.us.2

bb.h:                                             ; preds = %.split.2.2
  %i.dv = and i32 %i.ds, 1
  %.tr.i365.2.2 = or disjoint i32 %i.dv, %i.ah
  %i.dw = shl nuw nsw i32 %.tr.i365.2.2, 1
  %i.dx = lshr i32 %4, %i.dw
  %i.dy = and i32 %i.dx, 3
  %i.dz = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv.next.1.2
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !22
  %i.eb = zext nneg i32 %i.dy to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.eb ; 3 uses
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !22
  %i.ee = fadd reassoc nsz arcp contract afn float %i.ed, %i.ea
  store float %i.ee, ptr %i.ec, align 4, !tbaa !22
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !22
  %i.eh = fadd reassoc nsz arcp contract afn float %i.eg, 1.000000e+00
  store float %i.eh, ptr %i.ef, align 4, !tbaa !22
  br label %.split405.us.2

.split405.us.2:                                   ; preds = %.split.2.2, %bb.h, %.split405.us.1
end_hunk_6
begin_hunk_7_@demosaic_ppg:bb.a

bb.bu:                                            ; preds = %.lr.ph98.7.i.i
  store float %.sink128255.i.i, ptr %i.id, align 16, !tbaa !22
  store float %.sink129262.i.i, ptr %i.ic, align 4, !tbaa !22
  br label %.loopexit.7.i.i

.loopexit.7.i.i:                                  ; preds = %bb.bu, %.lr.ph98.7.i.i
  %i.mv = icmp eq i32 %.274.4.i.i, 1
  br i1 %i.mv, label %bb.ck, label %bb.cl

bb.bv:                                            ; preds = %.lr.ph.i.i
  store float %i.kr, ptr %i.hw, align 4, !tbaa !22
  store float %i.ks, ptr %i.a, align 16, !tbaa !22
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph.i.i
  %.sink232.i.i = phi float [ %i.ks, %.lr.ph.i.i ], [ %i.kr, %bb.bv ] ; 4 uses
  %i.mw = phi float [ %i.kr, %.lr.ph.i.i ], [ %i.ks, %bb.bv ] ; 4 uses
  %i.mx = extractelement <8 x float> %i.kg, i64 2 ; 4 uses
  %i.my = fcmp reassoc nsz arcp contract afn ogt float %i.mw, %i.mx
  br i1 %i.my, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  store float %i.mw, ptr %i.hy, align 8, !tbaa !22
  store float %i.mx, ptr %i.a, align 16, !tbaa !22
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink123233.i.i = phi float [ %i.mw, %bb.bx ], [ %i.mx, %bb.bw ] ; 4 uses
  %i.mz = phi float [ %i.mx, %bb.bx ], [ %i.mw, %bb.bw ] ; 4 uses
  %i.na = extractelement <8 x float> %i.kg, i64 3 ; 4 uses
  %i.nb = fcmp reassoc nsz arcp contract afn ogt float %i.mz, %i.na
  br i1 %i.nb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  store float %i.mz, ptr %i.hz, align 4, !tbaa !22
  store float %i.na, ptr %i.a, align 16, !tbaa !22
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sink124235.i.i = phi float [ %i.mz, %bb.bz ], [ %i.na, %bb.by ] ; 4 uses
  %i.nc = phi float [ %i.na, %bb.bz ], [ %i.mz, %bb.by ] ; 4 uses
  %i.nd = extractelement <8 x float> %i.kg, i64 4 ; 4 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ogt float %i.nc, %i.nd
  br i1 %i.ne, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store float %i.nc, ptr %i.ht, align 16, !tbaa !22
  store float %i.nd, ptr %i.a, align 16, !tbaa !22
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.nf = phi float [ %i.nc, %bb.cb ], [ %i.nd, %bb.ca ] ; 4 uses
  %i.ng = phi float [ %i.nd, %bb.cb ], [ %i.nc, %bb.ca ] ; 4 uses
  %i.nh = extractelement <8 x float> %i.kg, i64 5 ; 4 uses
  %i.ni = fcmp reassoc nsz arcp contract afn ogt float %i.ng, %i.nh
  br i1 %i.ni, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store float %i.ng, ptr %i.ia, align 4, !tbaa !22
  store float %i.nh, ptr %i.a, align 16, !tbaa !22
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sink126238.i.i = phi float [ %i.ng, %bb.cd ], [ %i.nh, %bb.cc ] ; 4 uses
  %i.nj = phi float [ %i.nh, %bb.cd ], [ %i.ng, %bb.cc ] ; 4 uses
  %i.nk = extractelement <8 x float> %i.kg, i64 6 ; 4 uses
  %i.nl = fcmp reassoc nsz arcp contract afn ogt float %i.nj, %i.nk
  br i1 %i.nl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store float %i.nj, ptr %i.ib, align 8, !tbaa !22
  store float %i.nk, ptr %i.a, align 16, !tbaa !22
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.sink127243.i.i = phi float [ %i.nj, %bb.cf ], [ %i.nk, %bb.ce ] ; 4 uses
  %i.nm = phi float [ %i.nk, %bb.cf ], [ %i.nj, %bb.ce ] ; 4 uses
  %i.nn = extractelement <8 x float> %i.kg, i64 7 ; 4 uses
  %i.no = fcmp reassoc nsz arcp contract afn ogt float %i.nm, %i.nn
  br i1 %i.no, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store float %i.nm, ptr %i.ic, align 4, !tbaa !22
  store float %i.nn, ptr %i.a, align 16, !tbaa !22
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.sink128249.i.i = phi float [ %i.nm, %bb.ch ], [ %i.nn, %bb.cg ] ; 4 uses
  %i.np = phi float [ %i.nn, %bb.ch ], [ %i.nm, %bb.cg ] ; 3 uses
  %i.nq = fcmp reassoc nsz arcp contract afn ogt float %i.np, %.sink129.i.i
  br i1 %i.nq, label %bb.cj, label %.lr.ph98.1.i.i

bb.cj:                                            ; preds = %bb.ci
  store float %i.np, ptr %i.id, align 16, !tbaa !22
  store float %.sink129.i.i, ptr %i.a, align 16, !tbaa !22
  br label %.lr.ph98.1.i.i

bb.ck:                                            ; preds = %.loopexit.7.i.i
  %i.nr = fadd reassoc nsz arcp contract afn float %i.ml, -6.400000e+01
  br label %bb.cm

bb.cl:                                            ; preds = %.loopexit.7.i.i
  %i.ns = trunc nuw nsw i32 %.274.4.i.i to i8
  %.lhs.trunc.i.i = add nsw i8 %i.ns, -1
  %i.nt = sdiv i8 %.lhs.trunc.i.i, 2
  %.sext.i.i = zext nneg i8 %i.nt to i64
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sext.i.i
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.nw = phi reassoc nsz arcp contract afn float [ %i.nr, %bb.ck ], [ %i.nv, %bb.cl ]
  store float %i.nw, ptr %.076101.i.i, align 4, !tbaa !22
  %i.nx = getelementptr inbounds nuw i8, ptr %.076101.i.i, i64 8
  %i.ny = add nuw nsw i32 %.178100.i.i, 2         ; 2 uses
  %i.nz = icmp slt i32 %i.ny, %i.hs
  br i1 %i.nz, label %.lr.ph.i.i, label %._crit_edge103.i.i

._crit_edge103.i.i:                               ; preds = %bb.cm, %.preheader86.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pre_median.exit, label %.preheader86.i.i

pre_median.exit:                                  ; preds = %._crit_edge103.i.i, %._crit_edge411.split
  %.0333 = phi ptr [ %1, %._crit_edge411.split ], [ %i.hq, %._crit_edge103.i.i ] ; 4 uses
  %i.oa = add nuw nsw i32 %6, 3                   ; 4 uses
  %i.ob = add nsw i32 %3, -3
  %i.oc = icmp sgt i32 %3, 6
  br i1 %i.oc, label %.lr.ph420, label %.preheader

.lr.ph420:                                        ; preds = %pre_median.exit
  %i.od = sext i32 %2 to i64                      ; 3 uses
  %i.oe = shl nsw i64 %i.od, 2
  %i.of = add nsw i32 %2, -3
  %i.og = icmp sgt i32 %2, 6
  %i.oh = sub nsw i32 %2, %i.oa                   ; 3 uses
  %i.oi = shl nsw i32 %i.oh, 2
  %i.oj = sext i32 %i.oi to i64
  %i.ok = sext i32 %i.oh to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.ok
  %i.ol = sub nsw i32 0, %2                       ; 2 uses
  %i.om = sext i32 %i.ol to i64
  %i.on = shl nsw i32 %i.ol, 1
  %i.oo = sext i32 %i.on to i64
  %i.op = mul i32 %2, -3
  %i.oq = sext i32 %i.op to i64
  %i.or = shl nsw i32 %2, 1
  %i.os = sext i32 %i.or to i64
  %i.ot = mul nsw i32 %2, 3
  %i.ou = sext i32 %i.ot to i64
  br i1 %i.og, label %.lr.ph.preheader, label %.lr.ph430

.lr.ph.preheader:                                 ; preds = %.lr.ph420
  %i.ov = sub nsw i32 %3, %i.oa
  %i.ow = sext i32 %i.ov to i64
  %i.ox = zext nneg i32 %i.oa to i64
  %wide.trip.count458 = zext nneg i32 %i.ob to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %.lr.ph

.preheader:                                       ; preds = %._crit_edge417, %bb.x, %pre_median.exit
  %.0333550 = phi ptr [ %i.hq, %bb.x ], [ %.0333, %pre_median.exit ], [ %.0333, %._crit_edge417 ] ; 2 uses
  br i1 %i.d, label %.lr.ph430, label %._crit_edge431.split

.lr.ph430:                                        ; preds = %.lr.ph420, %.preheader
  %.0333550553 = phi ptr [ %.0333550, %.preheader ], [ %.0333, %.lr.ph420 ] ; 2 uses
  %i.oz = sext i32 %2 to i64                      ; 2 uses
  %i.pa = shl nsw i64 %i.oz, 2
  %i.pb = icmp sgt i32 %2, 0
  %i.pc = sub nsw i32 %2, %6                      ; 3 uses
  %i.pd = add nsw i32 %2, -1
  %i.pe = shl nsw i32 %2, 2
  %i.pf = sext i32 %i.pe to i64                   ; 4 uses
  %i.pg = sub nsw i64 0, %i.pf                    ; 3 uses
  br i1 %i.pb, label %.lr.ph425.preheader, label %._crit_edge431.split

.lr.ph425.preheader:                              ; preds = %.lr.ph430
  %i.ph = add nsw i32 %3, -1
  %i.pi = sub nsw i32 %3, %6
  %i.pj = zext nneg i32 %i.ph to i64
  %i.pk = sext i32 %i.pi to i64
  %i.pl = zext nneg i32 %6 to i64
  %i.pm = sext i32 %i.pc to i64
  %wide.trip.count465 = zext nneg i32 %3 to i64
  br label %.lr.ph425

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge417
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next456, %._crit_edge417 ] ; 6 uses
  %i.pn = mul nuw i64 %i.oe, %indvars.iv
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pn ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  %i.pq = mul nuw nsw i64 %indvars.iv, %i.od      ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.0333, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 12
  %.not347 = icmp samesign uge i64 %indvars.iv, %i.ox
  %i.pt = icmp slt i64 %indvars.iv, %i.ow
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.po, i64 %i.oj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.pq
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.pv = shl i32 %indvars.iv.tr, 1
  %i.pw = and i32 %i.pv, 14
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cs
  %.0325415 = phi i32 [ 3, %.lr.ph ], [ %i.tq, %bb.cs ] ; 2 uses
  %.0327414 = phi ptr [ %i.ps, %.lr.ph ], [ %i.tp, %bb.cs ]
  %.0329413 = phi ptr [ %i.pp, %.lr.ph ], [ %i.to, %bb.cs ]
  %i.px = icmp eq i32 %.0325415, %i.oa
  %or.cond355.not372 = select i1 %i.px, i1 %.not347, i1 false
  %or.cond357 = select i1 %or.cond355.not372, i1 %i.pt, i1 false ; 3 uses
  %.1330 = select i1 %or.cond357, ptr %i.pu, ptr %.0329413 ; 4 uses
  %.1328 = select i1 %or.cond357, ptr %gep, ptr %.0327414 ; 13 uses
  %.1326 = select i1 %or.cond357, i32 %i.oh, i32 %.0325415 ; 3 uses
  %i.py = icmp eq i32 %.1326, %2
  br i1 %i.py, label %._crit_edge417, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pz = and i32 %.1326, 1
  %.tr.i366 = or disjoint i32 %i.pz, %i.pw
  %i.qa = shl nuw nsw i32 %.tr.i366, 1
  %i.qb = lshr i32 %4, %i.qa                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.qc = load float, ptr %.1328, align 4, !tbaa !22 ; 8 uses
  %i.qd = and i32 %i.qb, 1
  %or.cond5 = icmp eq i32 %i.qd, 0
  br i1 %or.cond5, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %bb.co
  %i.qe = and i32 %i.qb, 2
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qf
  store float %i.qc, ptr %i.qg, align 8, !tbaa !22
  %i.qh = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.om
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !22 ; 5 uses
  %i.qj = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.oo
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !22 ; 2 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr %.1328, i64 %i.oq
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !22
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.od
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !22 ; 5 uses
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.os
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !22 ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.1328, i64 %i.ou
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !22
  %i.qt = getelementptr inbounds i8, ptr %.1328, i64 -8
  %i.qu = getelementptr inbounds i8, ptr %.1328, i64 -12
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !22
  %i.qw = getelementptr inbounds nuw i8, ptr %.1328, i64 4
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !22 ; 5 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.1328, i64 8
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !22 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.1328, i64 12
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !22
  %i.rc = fsub reassoc nsz arcp contract afn float %i.qz, %i.qc
  %i.rd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rc)
  %i.re = load <2 x float>, ptr %i.qt, align 4, !tbaa !22 ; 3 uses
  %i.rf = insertelement <2 x float> poison, float %i.qc, i64 0
  %i.rg = insertelement <2 x float> %i.rf, float %i.qx, i64 1
  %i.rh = fsub reassoc nsz arcp contract afn <2 x float> %i.re, %i.rg
  %i.ri = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.rh)
  %i.rj = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float %i.rd, <2 x float> %i.ri)
  %i.rk = fmul reassoc nsz arcp contract afn float %i.rj, 3.000000e+00
  %i.rl = fsub reassoc nsz arcp contract afn float %i.rb, %i.qx
  %i.rm = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rl)
  %i.rn = extractelement <2 x float> %i.re, i64 1 ; 4 uses
  %i.ro = fsub reassoc nsz arcp contract afn float %i.qv, %i.rn
  %i.rp = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ro)
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rm, %i.rp
  %i.rr = fmul reassoc nsz arcp contract afn float %i.rq, 2.000000e+00
  %i.rs = fadd reassoc nsz arcp contract afn float %i.rk, %i.rr
  %i.rt = fsub reassoc nsz arcp contract afn float %i.qk, %i.qc
  %i.ru = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rt)
  %i.rv = fsub reassoc nsz arcp contract afn float %i.qq, %i.qc
  %i.rw = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rv)
  %i.rx = fsub reassoc nsz arcp contract afn float %i.qi, %i.qo
  %i.ry = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.rx)
  %i.rz = fadd reassoc nsz arcp contract afn float %i.ry, %i.ru
  %i.sa = fadd reassoc nsz arcp contract afn float %i.rz, %i.rw
  %i.sb = fmul reassoc nsz arcp contract afn float %i.sa, 3.000000e+00
  %i.sc = fsub reassoc nsz arcp contract afn float %i.qs, %i.qo
  %i.sd = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.sc)
  %i.se = fsub reassoc nsz arcp contract afn float %i.qm, %i.qi
  %i.sf = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.se)
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sd, %i.sf
  %i.sh = fmul reassoc nsz arcp contract afn float %i.sg, 2.000000e+00
  %i.si = fadd reassoc nsz arcp contract afn float %i.sb, %i.sh
  %i.sj = fcmp reassoc nsz arcp contract afn ogt float %i.rs, %i.si
  br i1 %i.sj, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.sk = fadd reassoc nsz arcp contract afn float %i.qi, %i.qc
  %i.sl = fadd reassoc nsz arcp contract afn float %i.sk, %i.qo
  %i.sm = fmul reassoc nsz arcp contract afn float %i.sl, 2.000000e+00
  %i.sn = fadd reassoc nsz arcp contract afn float %i.qk, %i.qq
  %i.so = fsub reassoc nsz arcp contract afn float %i.sm, %i.sn
  %i.sp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qi, float %i.qo)
  %i.sq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qi, float %i.qo)
  %i.sr = fmul reassoc nsz arcp contract afn float %i.so, 2.500000e-01
  %i.ss = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.sr, float %i.sq)
  %i.st = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ss, float %i.sp)
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.su = fadd reassoc nsz arcp contract afn float %i.rn, %i.qc
  %i.sv = fadd reassoc nsz arcp contract afn float %i.su, %i.qx
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sv, 2.000000e+00
  %i.sx = extractelement <2 x float> %i.re, i64 0
  %i.sy = fadd reassoc nsz arcp contract afn float %i.sx, %i.qz
  %i.sz = fsub reassoc nsz arcp contract afn float %i.sw, %i.sy
  %i.ta = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.rn, float %i.qx)
  %i.tb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rn, float %i.qx)
  %i.tc = fmul reassoc nsz arcp contract afn float %i.sz, 2.500000e-01
  %i.td = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.tc, float %i.tb)
  %i.te = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.td, float %i.ta)
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cq, %bb.cr
  %i.tf = phi float [ %i.st, %bb.cq ], [ %i.te, %bb.cr ], [ %i.qc, %bb.co ]
  %i.tg = load <4 x float>, ptr %i.c, align 16
  %i.th = shufflevector <4 x float> %i.tg, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ti = insertelement <2 x float> %i.th, float %i.tf, i64 1
  %i.tj = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ti, <2 x float> zeroinitializer)
  store <2 x float> %i.tj, ptr %.1330, align 4, !tbaa !22
  %i.tk = load float, ptr %i.oy, align 8, !tbaa !22
  %i.tl = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.tk, float 0.000000e+00)
  %i.tm = getelementptr inbounds nuw i8, ptr %.1330, i64 8
  store float %i.tl, ptr %i.tm, align 4, !tbaa !22
  %i.tn = getelementptr inbounds nuw i8, ptr %.1330, i64 12
  store float 0.000000e+00, ptr %i.tn, align 4, !tbaa !22
  %i.to = getelementptr inbounds nuw i8, ptr %.1330, i64 16
  %i.tp = getelementptr inbounds nuw i8, ptr %.1328, i64 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.tq = add nsw i32 %.1326, 1                   ; 2 uses
  %i.tr = icmp slt i32 %i.tq, %i.of
  br i1 %i.tr, label %bb.cn, label %._crit_edge417

._crit_edge417:                                   ; preds = %bb.cs, %bb.cn
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond459.not = icmp eq i64 %indvars.iv.next456, %wide.trip.count458
  br i1 %exitcond459.not, label %.preheader, label %.lr.ph

._crit_edge431.split:                             ; preds = %._crit_edge426, %.lr.ph430, %.preheader
  %.0333550552 = phi ptr [ %.0333550, %.preheader ], [ %.0333550553, %.lr.ph430 ], [ %.0333550553, %._crit_edge426 ]
  br i1 %i.al, label %bb.dj, label %bb.dk

.lr.ph425:                                        ; preds = %.lr.ph425.preheader, %._crit_edge426
  %indvars.iv462 = phi i64 [ 0, %.lr.ph425.preheader ], [ %indvars.iv.next463, %._crit_edge426 ] ; 8 uses
  %i.ts = mul nuw i64 %i.pa, %indvars.iv462
  %i.tt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ts ; 2 uses
  %.not = icmp samesign uge i64 %indvars.iv462, %i.pl ; 2 uses
  %i.tu = icmp slt i64 %indvars.iv462, %i.pk      ; 2 uses
  %i.tv = mul nuw nsw i64 %indvars.iv462, %i.oz
  %i.tw = add nsw i64 %i.tv, %i.pm
  %.idx = shl nsw i64 %i.tw, 4
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.ty = icmp ne i64 %indvars.iv462, 0
  %i.tz = icmp samesign ult i64 %indvars.iv462, %i.pj
  %indvars.iv462.tr = trunc i64 %indvars.iv462 to i32
  %i.ua = shl i32 %indvars.iv462.tr, 1
  %i.ub = and i32 %i.ua, 14
  %.fr427 = freeze i1 %i.tz
  %i.uc = and i1 %.fr427, %i.ty
  br i1 %i.uc, label %.lr.ph425.split, label %.lr.ph425.split.us

.lr.ph425.split.us:                               ; preds = %.lr.ph425, %.lr.ph425.split.us
  %.0316423.us = phi i32 [ %i.uh, %.lr.ph425.split.us ], [ 0, %.lr.ph425 ] ; 2 uses
  %.0317422.us = phi ptr [ %i.ug, %.lr.ph425.split.us ], [ %i.tt, %.lr.ph425 ]
  %i.ud = icmp eq i32 %.0316423.us, %6
  %or.cond358.not370.us = select i1 %i.ud, i1 %.not, i1 false
  %or.cond360.us = select i1 %or.cond358.not370.us, i1 %i.tu, i1 false ; 2 uses
  %spec.select432 = select i1 %or.cond360.us, ptr %i.tx, ptr %.0317422.us ; 3 uses
  %i.ue = load <4 x float>, ptr %spec.select432, align 4, !tbaa !22
  %i.uf = tail call reassoc nsz arcp contract afn <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.ue, <4 x float> zeroinitializer)
  store <4 x float> %i.uf, ptr %spec.select432, align 4, !tbaa !22
  %spec.select433 = select i1 %or.cond360.us, i32 %i.pc, i32 %.0316423.us
  %i.ug = getelementptr inbounds nuw i8, ptr %spec.select432, i64 16
  %i.uh = add nsw i32 %spec.select433, 1          ; 2 uses
  %i.ui = icmp slt i32 %i.uh, %2
  br i1 %i.ui, label %.lr.ph425.split.us, label %._crit_edge426

._crit_edge426:                                   ; preds = %.lr.ph425.split.us, %bb.di
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge431.split, label %.lr.ph425

.lr.ph425.split:                                  ; preds = %.lr.ph425, %bb.di
  %.0316423 = phi i32 [ %i.aaw, %bb.di ], [ 0, %.lr.ph425 ] ; 2 uses
  %.0317422 = phi ptr [ %i.aav, %bb.di ], [ %i.tt, %.lr.ph425 ]
  %i.uj = icmp eq i32 %.0316423, %6
  %or.cond358.not370 = select i1 %i.uj, i1 %.not, i1 false
  %or.cond360 = select i1 %or.cond358.not370, i1 %i.tu, i1 false ; 2 uses
  %spec.select434 = select i1 %or.cond360, ptr %i.tx, ptr %.0317422 ; 18 uses
  %spec.select435 = select i1 %or.cond360, i32 %i.pc, i32 %.0316423 ; 4 uses
  %i.uk = load float, ptr %spec.select434, align 4, !tbaa !22 ; 4 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %spec.select434, i64 4
  %i.um = load float, ptr %i.ul, align 4, !tbaa !22 ; 9 uses
  %i.un = getelementptr inbounds nuw i8, ptr %spec.select434, i64 8
  %i.uo = load float, ptr %i.un, align 4, !tbaa !22 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %spec.select434, i64 12
  %i.uq = load float, ptr %i.up, align 4, !tbaa !22
end_hunk_7
begin_hunk_8_@_vng_lininterpolate:bb.a
  %or.cond3.us.1 = icmp eq i64 %i.kb, 0
  %or.cond218.us.1 = and i1 %i.hf, %or.cond3.us.1
  br i1 %or.cond218.us.1, label %fcol.exit224.us.1, label %.split.split.us.2

fcol.exit224.us.1:                                ; preds = %.split.split.us.1
  %i.kc = getelementptr inbounds i8, ptr %i.jm, i64 %i.hi
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !169
  %i.ke = getelementptr [4 x i8], ptr %i.hj, i64 %i.jn
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !22
  %i.kg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kf, float 0.000000e+00)
  %i.kh = zext i8 %i.kd to i64                    ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kh ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !22
  %i.kk = fadd reassoc nsz arcp contract afn float %i.kj, %i.kg
  store float %i.kk, ptr %i.ki, align 4, !tbaa !22
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kh ; 2 uses
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !169
  %i.kn = add i8 %i.km, 1
  store i8 %i.kn, ptr %i.kl, align 1, !tbaa !169
  br label %.split.split.us.2

.split.split.us.2:                                ; preds = %fcol.exit224.us.1, %.split.split.us.1
  %i.ko = or i64 %indvars.iv.next293.1, %indvars.iv296
  %i.kp = and i64 %i.ko, 2147483648
  %or.cond3.us.2 = icmp eq i64 %i.kp, 0
  %or.cond218.us.2 = and i1 %i.hk, %or.cond3.us.2
  br i1 %or.cond218.us.2, label %fcol.exit224.us.2, label %.split239.us.thread406

fcol.exit224.us.2:                                ; preds = %.split.split.us.2
  %i.kq = getelementptr inbounds i8, ptr %i.jm, i64 %i.hn
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !169
  %i.ks = getelementptr [4 x i8], ptr %i.ho, i64 %i.jn
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !22
  %i.ku = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.kt, float 0.000000e+00)
  %i.kv = zext i8 %i.kr to i64                    ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.kv ; 2 uses
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !22
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kx, %i.ku
  store float %i.ky, ptr %i.kw, align 4, !tbaa !22
  %i.kz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.kv ; 2 uses
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !169
  %i.lb = add i8 %i.la, 1
  store i8 %i.lb, ptr %i.kz, align 1, !tbaa !169
  br label %.split239.us.thread406

.split239.us:                                     ; preds = %.backedge
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next297, %indvars.iv306
  br i1 %exitcond, label %bb.w, label %.backedge.backedge

.backedge.backedge:                               ; preds = %.split239.us, %.split239.us.thread, %.split239.us.thread406
  %indvars.iv296.be = phi i64 [ %indvars.iv.next297, %.split239.us ], [ %indvars.iv.next297404, %.split239.us.thread ], [ %indvars.iv.next297407, %.split239.us.thread406 ]
  br label %.backedge

.split239.us.thread406:                           ; preds = %.split.split.us.2, %fcol.exit224.us.2
  %indvars.iv.next297407 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond408 = icmp eq i64 %indvars.iv.next297407, %indvars.iv306
  br i1 %exitcond408, label %.thread409, label %.backedge.backedge

.split239.us.thread:                              ; preds = %.split.split.2, %fcol.exit224.2
  %indvars.iv.next297404 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond405 = icmp eq i64 %indvars.iv.next297404, %indvars.iv306
  br i1 %exitcond405, label %.thread, label %.backedge.backedge

fcol.exit224:                                     ; preds = %.split.split.preheader
  %.tr.i.i222 = or disjoint i32 %i.gs, %i.jh
  %i.lc = shl nuw nsw i32 %.tr.i.i222, 1
  %i.ld = lshr i32 %4, %i.lc
  %i.le = and i32 %i.ld, 3
  %gep414 = getelementptr [4 x i8], ptr %invariant.gep413, i64 %i.jn
  %i.lf = load float, ptr %gep414, align 4, !tbaa !22
  %i.lg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lf, float 0.000000e+00)
  %i.lh = zext nneg i32 %i.le to i64              ; 2 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lh ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !22
  %i.lk = fadd reassoc nsz arcp contract afn float %i.lj, %i.lg
  store float %i.lk, ptr %i.li, align 4, !tbaa !22
  %i.ll = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lh ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !169
  %i.ln = add i8 %i.lm, 1
  store i8 %i.ln, ptr %i.ll, align 1, !tbaa !169
  br label %.split.split.1

.split.split.1:                                   ; preds = %.split.split.preheader, %fcol.exit224
  %i.lo = or i32 %i.gt, %i.jf
  %or.cond3.1 = icmp sgt i32 %i.lo, -1
  %or.cond218.1 = and i1 %i.gu, %or.cond3.1
  br i1 %or.cond218.1, label %fcol.exit224.1, label %.split.split.2

fcol.exit224.1:                                   ; preds = %.split.split.1
  %.tr.i.i222.1 = or disjoint i32 %i.gv, %i.jh
  %i.lp = shl nuw nsw i32 %.tr.i.i222.1, 1
  %i.lq = lshr i32 %4, %i.lp
  %i.lr = and i32 %i.lq, 3
  %i.ls = getelementptr [4 x i8], ptr %i.gw, i64 %i.jn
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !22
  %i.lu = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.lt, float 0.000000e+00)
  %i.lv = zext nneg i32 %i.lr to i64              ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lv ; 2 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !22
  %i.ly = fadd reassoc nsz arcp contract afn float %i.lx, %i.lu
  store float %i.ly, ptr %i.lw, align 4, !tbaa !22
  %i.lz = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.lv ; 2 uses
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !169
  %i.mb = add i8 %i.ma, 1
  store i8 %i.mb, ptr %i.lz, align 1, !tbaa !169
  br label %.split.split.2

.split.split.2:                                   ; preds = %fcol.exit224.1, %.split.split.1
  %i.mc = or i32 %i.gx, %i.jf
  %or.cond3.2 = icmp sgt i32 %i.mc, -1
  %or.cond218.2 = and i1 %i.gy, %or.cond3.2
  br i1 %or.cond218.2, label %fcol.exit224.2, label %.split239.us.thread

fcol.exit224.2:                                   ; preds = %.split.split.2
  %.tr.i.i222.2 = or disjoint i32 %i.gz, %i.jh
  %i.md = shl nuw nsw i32 %.tr.i.i222.2, 1
  %i.me = lshr i32 %4, %i.md
  %i.mf = and i32 %i.me, 3
  %i.mg = getelementptr [4 x i8], ptr %i.ha, i64 %i.jn
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !22
  %i.mi = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.mh, float 0.000000e+00)
  %i.mj = zext nneg i32 %i.mf to i64              ; 2 uses
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mj ; 2 uses
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !22
  %i.mm = fadd reassoc nsz arcp contract afn float %i.ml, %i.mi
  store float %i.mm, ptr %i.mk, align 4, !tbaa !22
  %i.mn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.mj ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !169
  %i.mp = add i8 %i.mo, 1
  store i8 %i.mp, ptr %i.mn, align 1, !tbaa !169
  br label %.split239.us.thread

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %bb.ag, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.mq = add nsw i32 %.1198, 1                   ; 2 uses
  %i.mr = icmp slt i32 %i.mq, %2
  br i1 %i.mr, label %bb.v, label %._crit_edge

scalar.ph:                                        ; preds = %bb.ag, %scalar.ph.preheader.new
  %indvars.iv301 = phi i64 [ %indvars.iv301.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next302.1, %bb.ag ] ; 6 uses
  %.not214 = icmp eq i64 %indvars.iv301, %i.ie
  br i1 %.not214, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %scalar.ph
  %i.ms = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv301
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !169 ; 2 uses
  %.not215 = icmp eq i8 %i.mt, 0
  br i1 %.not215, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !22
  %i.mw = uitofp i8 %i.mt to float
  %i.mx = fdiv reassoc nsz arcp contract afn float %i.mv, %i.mw
  br label %scalar.ph.1

bb.ac:                                            ; preds = %bb.aa, %scalar.ph
  %i.my = load float, ptr %i.ic, align 4, !tbaa !22
  %i.mz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.my, float 0.000000e+00)
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.ab, %bb.ac
  %.sink = phi float [ %i.mx, %bb.ab ], [ %i.mz, %bb.ac ]
  %gep418 = getelementptr [4 x i8], ptr %invariant.gep417.sink, i64 %indvars.iv301
  store float %.sink, ptr %gep418, align 4, !tbaa !22
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 4 uses
  %.not214.1 = icmp eq i64 %indvars.iv.next302, %i.ie
  br i1 %.not214.1, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %scalar.ph.1
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next302
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !169 ; 2 uses
  %.not215.1 = icmp eq i8 %i.nb, 0
  br i1 %.not215.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next302
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !22
  %i.ne = uitofp i8 %i.nb to float
  %i.nf = fdiv reassoc nsz arcp contract afn float %i.nd, %i.ne
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad, %scalar.ph.1
  %i.ng = load float, ptr %i.ic, align 4, !tbaa !22
  %i.nh = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ng, float 0.000000e+00)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink.1 = phi float [ %i.nf, %bb.ae ], [ %i.nh, %bb.af ]
  %gep418.1 = getelementptr [4 x i8], ptr %invariant.gep417.sink.1, i64 %indvars.iv.next302
  store float %.sink.1, ptr %gep418.1, align 4, !tbaa !22
  %indvars.iv.next302.1 = add nuw nsw i64 %indvars.iv301, 2 ; 2 uses
  %exitcond305.not.1 = icmp eq i64 %indvars.iv.next302.1, %wide.trip.count304
  br i1 %exitcond305.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !726

.preheader235:                                    ; preds = %.preheader235.preheader, %.split264
  %indvars.iv327 = phi i64 [ %i.no, %.split264 ], [ 0, %.preheader235.preheader ] ; 4 uses
  %i.ni = getelementptr inbounds nuw [2048 x i8], ptr %i.x, i64 %indvars.iv327
  %indvars.iv327.tr = trunc i64 %indvars.iv327 to i32
  %i.nj = shl i32 %indvars.iv327.tr, 1
  %i.nk = and i32 %i.nj, 14                       ; 3 uses
  %indvars.iv327.tr403 = trunc i64 %indvars.iv327 to i32
  %i.nl = shl i32 %indvars.iv327.tr403, 1
  %i.nm = add i32 %i.nl, 14
  %i.nn = and i32 %i.nm, 14                       ; 3 uses
  %i.no = add nuw nsw i64 %indvars.iv327, 1       ; 3 uses
  %.tr = trunc i64 %i.no to i32
  %i.np = shl i32 %.tr, 1
  %i.nq = and i32 %i.np, 14                       ; 3 uses
  br label %fcol.exit227

.preheader233:                                    ; preds = %.split264, %.split264.us.us
  %i.nr = add nsw i32 %3, -1
  %i.ns = icmp sgt i32 %3, 2
  br i1 %i.ns, label %.lr.ph284, label %._crit_edge285.split

.lr.ph284:                                        ; preds = %.preheader233
  %i.nt = add nsw i32 %2, -1
  %i.nu = icmp sgt i32 %2, 2
  %i.nv = sub nsw i32 %2, %6                      ; 3 uses
  %i.nw = sext i32 %2 to i64                      ; 2 uses
  %i.nx = shl nsw i64 %i.nw, 2
  %i.ny = shl nsw i32 %i.nv, 2
  %i.nz = sext i32 %i.ny to i64
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.nz
  %i.oa = sext i32 %i.nv to i64
  %invariant.gep286 = getelementptr [4 x i8], ptr %1, i64 %i.oa
  %i.ob = add nsw i32 %i.f, -1
  br i1 %i.nu, label %.lr.ph280.preheader, label %._crit_edge285.split

.lr.ph280.preheader:                              ; preds = %.lr.ph284
  %i.oc = sub nsw i32 %3, %6
  %i.od = shl nsw i32 %2, 2
  %i.oe = sext i32 %i.oc to i64
  %i.of = zext nneg i32 %6 to i64
  %i.og = zext nneg i32 %i.od to i64
  %i.oh = zext nneg i32 %2 to i64
  %wide.trip.count370 = zext nneg i32 %i.nr to i64
  br label %.lr.ph280

.split264:                                        ; preds = %.epilog-lcssa
  %exitcond331.not = icmp eq i64 %i.no, 16
  br i1 %exitcond331.not, label %.preheader233, label %.preheader235

fcol.exit227:                                     ; preds = %.preheader235, %.epilog-lcssa
  %indvars.iv322 = phi i64 [ 0, %.preheader235 ], [ %indvars.iv.next323, %.epilog-lcssa ] ; 4 uses
  %i.oi = getelementptr inbounds nuw [128 x i8], ptr %i.ni, i64 %indvars.iv322 ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.ok = trunc nuw nsw i64 %indvars.iv322 to i32
  %i.ol = and i32 %i.ok, 1                        ; 3 uses
  %.tr.i.i225 = or disjoint i32 %i.ol, %i.nk
  %i.om = shl nuw nsw i32 %.tr.i.i225, 1
  %i.on = lshr i32 %4, %i.om
  %i.oo = and i32 %i.on, 3                        ; 10 uses
  %i.op = trunc i64 %indvars.iv322 to i32
  %i.oq = and i32 %i.op, 1
  %i.or = xor i32 %i.oq, 1                        ; 3 uses
  %.tr.i.i228 = or disjoint i32 %i.or, %i.nn
  %i.os = shl nuw nsw i32 %.tr.i.i228, 1
  %i.ot = lshr i32 %4, %i.os
  %i.ou = and i32 %i.ot, 3                        ; 3 uses
  %i.ov = icmp eq i32 %i.ou, %i.oo
  br i1 %i.ov, label %fcol.exit230.1, label %bb.ah

bb.ah:                                            ; preds = %fcol.exit227
  %i.ow = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store <2 x i32> %i.ad, ptr %i.oj, align 4, !tbaa !32
  %i.ox = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store i32 %i.ou, ptr %i.ow, align 4, !tbaa !32
  %i.oy = zext nneg i32 %i.ou to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.oy ; 2 uses
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !32
  %i.pb = add nsw i32 %i.pa, 1
  store i32 %i.pb, ptr %i.oz, align 4, !tbaa !32
  br label %fcol.exit230.1

fcol.exit230.1:                                   ; preds = %fcol.exit227, %bb.ah
  %.2 = phi ptr [ %i.ox, %bb.ah ], [ %i.oj, %fcol.exit227 ] ; 4 uses
  %.tr.i.i228.1 = or disjoint i32 %i.ol, %i.nn
  %i.pc = shl nuw nsw i32 %.tr.i.i228.1, 1
  %i.pd = lshr i32 %4, %i.pc
  %i.pe = and i32 %i.pd, 3                        ; 3 uses
  %i.pf = icmp eq i32 %i.pe, %i.oo
  br i1 %i.pf, label %fcol.exit230.2, label %bb.ai

bb.ai:                                            ; preds = %fcol.exit230.1
  %i.pg = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store <2 x i32> %i.ab, ptr %.2, align 4, !tbaa !32
  %i.ph = getelementptr inbounds nuw i8, ptr %.2, i64 12
  store i32 %i.pe, ptr %i.pg, align 4, !tbaa !32
  %i.pi = zext nneg i32 %i.pe to i64
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pi ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !32
  %i.pl = add nsw i32 %i.pk, 2
  store i32 %i.pl, ptr %i.pj, align 4, !tbaa !32
  br label %fcol.exit230.2

fcol.exit230.2:                                   ; preds = %bb.ai, %fcol.exit230.1
  %.2.1 = phi ptr [ %i.ph, %bb.ai ], [ %.2, %fcol.exit230.1 ] ; 4 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 3 uses
  %i.pm = trunc nuw nsw i64 %indvars.iv.next323 to i32
  %i.pn = and i32 %i.pm, 1                        ; 3 uses
  %.tr.i.i228.2 = or disjoint i32 %i.pn, %i.nn
  %i.po = shl nuw nsw i32 %.tr.i.i228.2, 1
  %i.pp = lshr i32 %4, %i.po
  %i.pq = and i32 %i.pp, 3                        ; 3 uses
  %i.pr = icmp eq i32 %i.pq, %i.oo
  br i1 %i.pr, label %.split252, label %bb.aj

bb.aj:                                            ; preds = %fcol.exit230.2
  %i.ps = getelementptr inbounds nuw i8, ptr %.2.1, i64 8
  store <2 x i32> %i.af, ptr %.2.1, align 4, !tbaa !32
  %i.pt = getelementptr inbounds nuw i8, ptr %.2.1, i64 12
  store i32 %i.pq, ptr %i.ps, align 4, !tbaa !32
  %i.pu = zext nneg i32 %i.pq to i64
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pu ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !32
  %i.px = add nsw i32 %i.pw, 1
  store i32 %i.px, ptr %i.pv, align 4, !tbaa !32
  br label %.split252

.split252:                                        ; preds = %bb.aj, %fcol.exit230.2
  %.2.2 = phi ptr [ %i.pt, %bb.aj ], [ %.2.1, %fcol.exit230.2 ] ; 5 uses
  %.tr.i.i228.1312 = or disjoint i32 %i.or, %i.nk
  %i.py = shl nuw nsw i32 %.tr.i.i228.1312, 1
  %i.pz = lshr i32 %4, %i.py
  %i.qa = and i32 %i.pz, 3                        ; 3 uses
  %i.qb = icmp eq i32 %i.qa, %i.oo
  br i1 %i.qb, label %fcol.exit230.2.1, label %bb.ak

bb.ak:                                            ; preds = %.split252
  %i.qc = getelementptr inbounds nuw i8, ptr %.2.2, i64 4
  store i32 -1, ptr %.2.2, align 4, !tbaa !32
  %i.qd = getelementptr inbounds nuw i8, ptr %.2.2, i64 8
  store i32 2, ptr %i.qc, align 4, !tbaa !32
  %i.qe = getelementptr inbounds nuw i8, ptr %.2.2, i64 12
  store i32 %i.qa, ptr %i.qd, align 4, !tbaa !32
  %i.qf = zext nneg i32 %i.qa to i64
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qf ; 2 uses
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !32
  %i.qi = add nsw i32 %i.qh, 2
  store i32 %i.qi, ptr %i.qg, align 4, !tbaa !32
  br label %fcol.exit230.2.1

fcol.exit230.2.1:                                 ; preds = %.split252, %bb.ak
  %.2.1314 = phi ptr [ %i.qe, %bb.ak ], [ %.2.2, %.split252 ] ; 5 uses
  %.tr.i.i228.2.1 = or disjoint i32 %i.pn, %i.nk
  %i.qj = shl nuw nsw i32 %.tr.i.i228.2.1, 1
  %i.qk = lshr i32 %4, %i.qj
  %i.ql = and i32 %i.qk, 3                        ; 3 uses
  %i.qm = icmp eq i32 %i.ql, %i.oo
  br i1 %i.qm, label %.split252.1, label %bb.al

bb.al:                                            ; preds = %fcol.exit230.2.1
  %i.qn = getelementptr inbounds nuw i8, ptr %.2.1314, i64 4
  store i32 1, ptr %.2.1314, align 4, !tbaa !32
  %i.qo = getelementptr inbounds nuw i8, ptr %.2.1314, i64 8
  store i32 2, ptr %i.qn, align 4, !tbaa !32
  %i.qp = getelementptr inbounds nuw i8, ptr %.2.1314, i64 12
  store i32 %i.ql, ptr %i.qo, align 4, !tbaa !32
  %i.qq = zext nneg i32 %i.ql to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.qq ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !32
  %i.qt = add nsw i32 %i.qs, 2
  store i32 %i.qt, ptr %i.qr, align 4, !tbaa !32
  br label %.split252.1

.split252.1:                                      ; preds = %bb.al, %fcol.exit230.2.1
  %.2.2.1 = phi ptr [ %i.qp, %bb.al ], [ %.2.1314, %fcol.exit230.2.1 ] ; 4 uses
  %.tr.i.i228.2315 = or disjoint i32 %i.or, %i.nq
  %i.qu = shl nuw nsw i32 %.tr.i.i228.2315, 1
  %i.qv = lshr i32 %4, %i.qu
  %i.qw = and i32 %i.qv, 3                        ; 3 uses
  %i.qx = icmp eq i32 %i.qw, %i.oo
  br i1 %i.qx, label %fcol.exit230.1.2, label %bb.am

bb.am:                                            ; preds = %.split252.1
  %i.qy = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 8
  store <2 x i32> %i.ah, ptr %.2.2.1, align 4, !tbaa !32
  %i.qz = getelementptr inbounds nuw i8, ptr %.2.2.1, i64 12
  store i32 %i.qw, ptr %i.qy, align 4, !tbaa !32
  %i.ra = zext nneg i32 %i.qw to i64
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ra ; 2 uses
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !32
  %i.rd = add nsw i32 %i.rc, 1
  store i32 %i.rd, ptr %i.rb, align 4, !tbaa !32
  br label %fcol.exit230.1.2

fcol.exit230.1.2:                                 ; preds = %bb.am, %.split252.1
  %.2.2317 = phi ptr [ %i.qz, %bb.am ], [ %.2.2.1, %.split252.1 ] ; 4 uses
  %.tr.i.i228.1.2 = or disjoint i32 %i.ol, %i.nq
  %i.re = shl nuw nsw i32 %.tr.i.i228.1.2, 1
  %i.rf = lshr i32 %4, %i.re
  %i.rg = and i32 %i.rf, 3                        ; 3 uses
  %i.rh = icmp eq i32 %i.rg, %i.oo
  br i1 %i.rh, label %fcol.exit230.2.2, label %bb.an

bb.an:                                            ; preds = %fcol.exit230.1.2
  %i.ri = getelementptr inbounds nuw i8, ptr %.2.2317, i64 8
  store <2 x i32> %i.ak, ptr %.2.2317, align 4, !tbaa !32
  %i.rj = getelementptr inbounds nuw i8, ptr %.2.2317, i64 12
  store i32 %i.rg, ptr %i.ri, align 4, !tbaa !32
  %i.rk = zext nneg i32 %i.rg to i64
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.rk ; 2 uses
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !32
  %i.rn = add nsw i32 %i.rm, 2
end_hunk_8
